(async()=>{
  try{
    const u=await boot('Beranda','index.html',`<div id="dash"><div class="dashboard-loading"><span></span><span></span><span></span><b>Memuat dashboard...</b></div></div>`);
    const central=['bos','admin_pusat'].includes(u.role);
    const requests=[api('/api/dashboard')];
    if(central) requests.push(api('/api/stock'),api('/api/activity-logs'));
    const results=await Promise.all(requests);
    const d=results[0], s=d.summary||{};
    const branchRows=central?(results[1].stock||[]):[];
    const logs=central?(results[2].logs||[]):[];

    const byBranch={};
    branchRows.forEach(x=>{
      if(!byBranch[x.branch_id]) byBranch[x.branch_id]={id:x.branch_id,name:x.branch_name,stock:0,low:0,items:0};
      byBranch[x.branch_id].stock+=Number(x.stock||0);
      byBranch[x.branch_id].low+=Number(x.stock||0)<=Number(x.min_stock||0)?1:0;
      byBranch[x.branch_id].items++;
    });

    const recent=(d.recent||[]).map(x=>`
      <tr>
        <td><b>${esc(x.invoice_no||'-')}</b></td>
        <td>${esc(x.branch_name||'-')}</td>
        <td>${esc(x.full_name||'-')}</td>
        <td><b>${money(x.total)}</b></td>
        <td>${x.created_at?new Date(x.created_at).toLocaleString('id-ID'):'-'}</td>
      </tr>`).join('') || `<tr><td colspan="5" class="empty">Belum ada transaksi.</td></tr>`;

    const branchHtml=Object.values(byBranch).map(x=>`
      <div class="branch-status">
        <div class="branch-status-main">
          <b>${esc(x.name)}</b>
          <small>${x.stock.toLocaleString('id-ID')} unit • ${x.items} produk</small>
        </div>
        <span class="badge ${x.low?'warn':'ok'}">${x.low?x.low+' stok minimum':'Stok aman'}</span>
      </div>`).join('') || `<div class="empty">Belum ada data stok cabang.</div>`;

    const logHtml=logs.slice(0,8).map(x=>`
      <div class="activity-item">
        <span class="activity-dot"></span>
        <div><b>${esc(x.full_name||x.username||'Sistem')}</b><small>${esc(x.description||x.action||'-')}</small></div>
        <time>${x.created_at?new Date(x.created_at).toLocaleString('id-ID'):'-'}</time>
      </div>`).join('') || `<div class="empty">Belum ada aktivitas sistem.</div>`;

    const quick=`
      <div class="quick-actions">
        <a class="btn primary" href="transaksi.html">＋ Transaksi Baru</a>
        <a class="btn secondary" href="produk.html">▦ Kelola Produk</a>
        <a class="btn secondary" href="stok.html">▤ Cek Stok</a>
      </div>`;

    document.getElementById('dash').innerHTML=`
      <div class="dashboard-welcome">
        <div>
          <div class="eyebrow">DASHBOARD</div>
          <h1>Selamat datang, ${esc(u.full_name)} 👋</h1>
          <p>${central?'Pantau penjualan, stok, pelanggan, dan aktivitas seluruh cabang dari satu halaman.':'Pantau penjualan, transaksi, stok, dan aktivitas operasional cabang Anda.'}</p>
        </div>
        ${quick}
      </div>

      <div class="cards pro-dashboard-cards dashboard-stat-grid">
        <div class="stat"><div class="stat-top"><span class="stat-icon">Rp</span><span class="stat-label">PENJUALAN</span></div><div class="value">${money(s.sales)}</div><small class="stat-caption">Total penjualan selesai</small></div>
        <div class="stat"><div class="stat-top"><span class="stat-icon">▣</span><span class="stat-label">TRANSAKSI</span></div><div class="value">${Number(s.transactions||0).toLocaleString('id-ID')}</div><small class="stat-caption">Transaksi selesai</small></div>
        <div class="stat"><div class="stat-top"><span class="stat-icon">▦</span><span class="stat-label">PRODUK</span></div><div class="value">${Number(s.products||0).toLocaleString('id-ID')}</div><small class="stat-caption">Produk aktif</small></div>
        <div class="stat"><div class="stat-top"><span class="stat-icon">♙</span><span class="stat-label">PELANGGAN</span></div><div class="value">${Number(s.customers||0).toLocaleString('id-ID')}</div><small class="stat-caption">Data pelanggan</small></div>
        <div class="stat"><div class="stat-top"><span class="stat-icon">▤</span><span class="stat-label">TOTAL STOK</span></div><div class="value">${Number(s.stock||0).toLocaleString('id-ID')}</div><small class="stat-caption">Unit tersedia</small></div>
        <div class="stat ${Number(s.lowStock||0)>0?'stat-warning':''}"><div class="stat-top"><span class="stat-icon">!</span><span class="stat-label">STOK MINIMUM</span></div><div class="value">${Number(s.lowStock||0).toLocaleString('id-ID')}</div><small class="stat-caption">Produk perlu diperiksa</small></div>
        <div class="stat"><div class="stat-top"><span class="stat-icon">Rp</span><span class="stat-label">KASBON</span></div><div class="value">${money(s.kasbon||0)}</div><small class="stat-caption">Saldo belum lunas</small></div>
      </div>

      <div class="dashboard-grid dashboard-grid-main">
        <div class="panel dashboard-panel-wide">
          <div class="panel-head">
            <div><b>Transaksi Terbaru</b><small>Aktivitas penjualan terakhir</small></div>
            <a class="btn secondary btn-small" href="riwayat.html">Lihat semua</a>
          </div>
          <div class="table-wrap">
            <table class="table"><thead><tr><th>Invoice</th><th>Cabang</th><th>Kasir</th><th>Total</th><th>Waktu</th></tr></thead><tbody>${recent}</tbody></table>
          </div>
        </div>

        <div class="panel">
          <div class="panel-head"><div><b>${central?'Ringkasan Cabang':'Status Stok'}</b><small>${central?'Kondisi stok setiap cabang':'Kondisi stok cabang Anda'}</small></div></div>
          <div class="panel-body">${central?branchHtml:`<div class="dashboard-stock-focus"><span class="focus-number">${Number(s.stock||0).toLocaleString('id-ID')}</span><span>unit tersedia</span></div><div class="mini-alert ${Number(s.lowStock||0)>0?'warning':''}"><b>${Number(s.lowStock||0)} produk</b> berada pada atau di bawah stok minimum.</div>`}</div>
        </div>
      </div>

      ${central?`<div class="panel dashboard-activity-panel">
        <div class="panel-head"><div><b>Aktivitas Sistem</b><small>Aktivitas pengguna terbaru</small></div><span class="result-count">${logs.length} aktivitas</span></div>
        <div class="activity-list">${logHtml}</div>
      </div>`:''}
    `;
  }catch(e){
    const dash=document.getElementById('dash');
    if(dash) dash.innerHTML=`<div class="panel error-panel"><b>Dashboard tidak dapat dimuat.</b><p>${esc(e.message||'Terjadi kesalahan.')}</p><button class="btn primary" onclick="location.reload()">Muat ulang</button></div>`;
    else toast(e.message||'Dashboard gagal dimuat.');
  }
})();

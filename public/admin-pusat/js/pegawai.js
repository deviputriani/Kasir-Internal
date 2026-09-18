(async()=>{
const role='admin_pusat';
const central=['bos','admin_pusat'].includes(role);
await boot('Pegawai','pegawai.html',`
<div class="page-head"><div><h1>${central?'Pegawai & Akun':'Pegawai Cabang'}</h1><p>Kelola akun sesuai kewenangan.</p></div><button class="btn primary" id="add">+ Akun</button></div>
<div class="panel"><div class="table-wrap"><table class="table"><thead><tr><th>Username</th><th>Nama</th><th>Role</th><th>Cabang</th><th>Status</th></tr></thead><tbody id="rows"></tbody></table></div></div>`);
let data=(await api('/api/users')).users, branches=central?(await api('/api/branches')).branches:[];
function render(){$('#rows').innerHTML=data.map(x=>`<tr><td><b>${esc(x.username)}</b></td><td>${esc(x.full_name)}</td><td><span class="badge info">${x.role.replace('_',' ')}</span></td><td>${esc(x.branch_name||'Pusat')}</td><td><span class="badge ${x.status==='aktif'?'ok':'danger'}">${x.status}</span></td></tr>`).join('')||'<tr><td colspan="5" class="empty">Belum ada akun.</td></tr>'}
render();$('#add').onclick=()=>{
const m=document.createElement('div');m.className='modal-back';m.innerHTML=`<div class="modal"><div class="panel-head"><b>Tambah Akun</b><button class="btn secondary" id="close">Tutup</button></div><div class="panel-body"><form id="f" class="form-grid">
<label>Username<input name="username" required></label><label>Nama Lengkap<input name="full_name" required></label>
<label>Password<input name="password" type="password" value="password" required></label>
<label>Role<select name="role">${central?'<option value="bos">Bos</option><option value="admin_pusat">Admin Pusat</option>':''}<option value="admin_cabang">Admin Cabang</option><option value="pegawai">Pegawai</option></select></label>
${central?`<label>Cabang<select name="branch_id"><option value="">Pusat</option>${branches.map(b=>`<option value="${b.id}">${esc(b.name)}</option>`).join('')}</select></label>`:''}
<div class="form-actions" style="grid-column:1/-1"><button class="btn primary">Simpan Akun</button></div></form></div></div>`;
document.body.appendChild(m);$('#close').onclick=()=>m.remove();$('#f').onsubmit=async e=>{e.preventDefault();const p=Object.fromEntries(new FormData(e.target));if(p.branch_id)p.branch_id=Number(p.branch_id);try{await api('/api/users',{method:'POST',body:JSON.stringify(p)});m.remove();data=(await api('/api/users')).users;render();toast('Akun berhasil dibuat.')}catch(x){toast(x.message)}}}
})().catch(e=>toast(e.message));

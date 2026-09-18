document.addEventListener('DOMContentLoaded',()=>{
  const form=document.getElementById('loginForm');
  const error=document.getElementById('error');
  const button=document.getElementById('loginButton');
  const pass=document.getElementById('password');
  let selectedRole='bos';

  document.querySelectorAll('.role-option').forEach(option=>option.addEventListener('click',()=>{
    selectedRole=option.dataset.role;
    document.querySelectorAll('.role-option').forEach(x=>x.classList.toggle('active',x===option));
  }));

  document.getElementById('showPass').addEventListener('click',()=>{
    const visible=pass.type==='text';
    pass.type=visible?'password':'text';
    document.getElementById('showPass').textContent=visible?'Lihat':'Sembunyikan';
  });

  form.addEventListener('submit',async e=>{
    e.preventDefault();
    error.textContent='';
    const username=document.getElementById('username').value.trim();
    const password=pass.value;
    if(!username||!password){error.textContent='ID pegawai dan kata sandi wajib diisi.';return;}
    button.disabled=true;
    button.innerHTML='<span>Memeriksa akun...</span><span class="login-spinner"></span>';
    try{
      const res=await fetch('/api/login',{method:'POST',credentials:'include',headers:{'Content-Type':'application/json'},body:JSON.stringify({username,password})});
      let data={};try{data=await res.json()}catch{}
      if(!res.ok||!data.success)throw Error(data.message||'ID pegawai atau kata sandi salah.');
      if(data.user&&data.user.role!==selectedRole)throw Error('Peran yang dipilih tidak sesuai dengan akun ini.');
      button.innerHTML='<span>Berhasil, membuka dashboard...</span><span>✓</span>';
      location.href=data.redirect;
    }catch(err){
      error.textContent=err.message||'Login gagal.';
      button.disabled=false;
      button.innerHTML='<span>Masuk ke sistem</span><span>→</span>';
    }
  });
});

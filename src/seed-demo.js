require('dotenv').config();
const fs = require('fs');
const path = require('path');
const db = require('./db');

async function main(){
  const file=path.join(__dirname,'../database/seed_demo.sql');
  const raw=fs.readFileSync(file,'utf8').replace(/^\s*--.*$/gm,'');
  const sql=raw.split(/;\s*(?:\r?\n|$)/).map(x=>x.trim()).filter(Boolean);
  for(const statement of sql){
    await db.query(statement);
  }
  console.log('Demo data berhasil dimasukkan ke database.');
  await db.end();
}
main().catch(async err=>{console.error('Gagal memasukkan demo data:',err.message);try{await db.end()}catch{}process.exit(1)});

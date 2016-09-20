CREATE TABLE tb_perusahaan (
	id int(255) AUTO_INCREMENT, 
	nama_peserta varchar(255), 
	tgl_lahir varchar(255), 
	asal_daerah varchar(255), 
	jenis_kelamin varchar(255), 
	nama_perusahaan varchar(255), 
	ao varchar(255), 
	jenis_usaha varchar(255), 
	jenis_keterampilan varchar(255), 
	tgl_interview varchar(255), 
	tgl_masuk varchar(255), 
	tgl_rencana_berangkat varchar(255), 
	tgl_berangkat varchar(255), 
	hasil_mcu_1 varchar(255), 
	per_mcu_1 varchar(255), 
	hasil_mcu_2 varchar(255), 
	per_mcu_2 varchar(255), 
	status varchar(255),
	PRIMARY KEY (id)
);
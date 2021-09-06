/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BUS;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import DAO.*;
import DTO.*;
/**
 *
 * @author Admin
 */
public class NhanVienBUS {
        public static ArrayList<NhanVienDTO> dsnv;
        public NhanVienBUS(){}
        public void docDSNV(){
                NhanVienDAO data=new NhanVienDAO();
                if(dsnv==null) dsnv=new ArrayList<NhanVienDTO>();
                dsnv=data.docDSNV();
            }
   public boolean them(NhanVienDTO nv){
        NhanVienDAO data=new NhanVienDAO();
        int check=0;
        for(int i=0;i<dsnv.size();i++){
            if(nv.MaNV.compareTo(dsnv.get(i).MaNV)==0){
                check=1;
            }
        }
        if(check==0){
            data.them(nv);
            dsnv.add(nv);
            return true;
        }
        else{
            JOptionPane.showMessageDialog(null,"Mã nhân viên "+nv.MaNV+" đã bị trùng, vui lòng nhập mã khác!");
            return false;
        }
    }
    public void sua(int i,NhanVienDTO nv){
            NhanVienDAO data=new NhanVienDAO();
            data.sua(nv);
            dsnv.set(i,nv);
    }
    public boolean xoa(int i,String ma){
        NhanVienDAO data=new NhanVienDAO();
        if(data.xoa(ma)==true){
            dsnv.remove(i);
            return true;}
        return false;
    }
    
   boolean checkTimKiem(String s,NhanVienDTO nv){
        if(nv.getMaNV().toLowerCase().contains(s.toLowerCase()) ||
           nv.getTenNV().toLowerCase().contains(s.toLowerCase()) ||
           new SimpleDateFormat("d-M-yyyy").format(nv.getNgaySinh()).toLowerCase().contains(s.toLowerCase()) ||
           new SimpleDateFormat("d/M/yyyy").format(nv.getNgaySinh()).toLowerCase().contains(s.toLowerCase()) ||
           nv.getDiaChi().toLowerCase().contains(s.toLowerCase()) ||
           nv.getSDT().toLowerCase().contains(s.toLowerCase())||
           nv.getGioitinh().toLowerCase().contains(s.toLowerCase())){
            return true;
        }
        return false;
    }
   void duyetNV(ArrayList nvnhom,NhanVienDTO nv){
        NhanVienDTO nv1=new NhanVienDTO();
        nv1.setMaNV(nv.getMaNV());
        nv1.setTenNV(nv.getTenNV());
        nv1.setNgaySinh(nv.getNgaySinh());
        nv1.setDiaChi(nv.getDiaChi());
        nv1.setSDT(nv.getSDT());
        nv1.setGioitinh(nv.getGioitinh());
        nvnhom.add(nv1);
    }
     public ArrayList timKiem(String s){
        ArrayList<NhanVienDTO> nvnhom=new ArrayList<>();
        for(NhanVienDTO nv:dsnv){
            if(checkTimKiem(s,nv)==true){
                duyetNV(nvnhom,nv);
            }
        }
        return nvnhom;
    }
    public boolean checknamnhuan(int n){
        if(n % 4 == 0){
            if(n % 100 == 0){
                if ( n % 400 == 0){
                    return true;
                }
                else{
                   return false;
                }
            }else{
               return true;
            }
        }else {
            return false;
        }
    }
     
     
}
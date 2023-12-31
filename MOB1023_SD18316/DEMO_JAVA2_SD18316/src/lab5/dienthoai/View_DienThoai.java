/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package lab5.dienthoai;

import java.util.List;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author NGUYEN THI THU NGHIA
 */
public class View_DienThoai extends javax.swing.JFrame implements Runnable {

    /**
     * Creates new form View_DienThoai
     */
    private DienThoai_Service service = new DienThoai_Service();
    private DefaultTableModel mol = new DefaultTableModel();
    private int index = -1;

    public View_DienThoai() {
        initComponents();
        this.setLocationRelativeTo(null);
        cboHang.removeAllItems();
        cboHang.addItem("Samsung");
        cboHang.addItem("Apple");
        cboHang.addItem("Xiaomi");
        cboHang.addItem("Nokia");
        this.fillToTable(service.getAll());
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lblQLDT = new javax.swing.JLabel();
        lbl_TenSP = new javax.swing.JLabel();
        txtTenSP = new javax.swing.JTextField();
        lbl_Hang = new javax.swing.JLabel();
        lbl_GiaSP = new javax.swing.JLabel();
        cboHang = new javax.swing.JComboBox<>();
        txtGiaSP = new javax.swing.JTextField();
        btn_Insert = new javax.swing.JButton();
        btn_SxGia = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbl_DienThoai = new javax.swing.JTable();
        btnReset = new javax.swing.JButton();
        btnThoat = new javax.swing.JButton();
        btn_Write = new javax.swing.JButton();
        btn_Read = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("QUẢN LÍ ĐIỆN THOẠI");

        lblQLDT.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        lblQLDT.setForeground(new java.awt.Color(0, 0, 255));
        lblQLDT.setText("QUẢN LÍ ĐIỆN THOẠI   ");

        lbl_TenSP.setText("Tên sản phẩm");

        lbl_Hang.setText("Hãng");

        lbl_GiaSP.setText("Giá");

        cboHang.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));

        btn_Insert.setText("INSERT");
        btn_Insert.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_InsertActionPerformed(evt);
            }
        });

        btn_SxGia.setText("Sắp xếp theo giá");
        btn_SxGia.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_SxGiaActionPerformed(evt);
            }
        });

        tbl_DienThoai.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Tên sản phẩm", "Hãng", "Giá", "Phân loại"
            }
        ));
        tbl_DienThoai.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tbl_DienThoaiMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tbl_DienThoai);

        btnReset.setText("RESET");
        btnReset.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnResetActionPerformed(evt);
            }
        });

        btnThoat.setText("THOÁT");
        btnThoat.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnThoatActionPerformed(evt);
            }
        });

        btn_Write.setText("WRITE");
        btn_Write.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_WriteActionPerformed(evt);
            }
        });

        btn_Read.setText("READ");
        btn_Read.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_ReadActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                .addGroup(layout.createSequentialGroup()
                                    .addComponent(lbl_GiaSP, javax.swing.GroupLayout.PREFERRED_SIZE, 85, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(txtGiaSP))
                                .addGroup(layout.createSequentialGroup()
                                    .addComponent(lbl_TenSP, javax.swing.GroupLayout.PREFERRED_SIZE, 85, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(txtTenSP, javax.swing.GroupLayout.PREFERRED_SIZE, 135, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(lbl_Hang, javax.swing.GroupLayout.PREFERRED_SIZE, 85, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(cboHang, javax.swing.GroupLayout.PREFERRED_SIZE, 105, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(btn_SxGia)
                                    .addComponent(btn_Insert))
                                .addGap(33, 33, 33))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(18, 18, 18)
                                .addComponent(btn_Write)
                                .addGap(18, 18, 18)
                                .addComponent(btn_Read)
                                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addComponent(lblQLDT, javax.swing.GroupLayout.PREFERRED_SIZE, 260, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap())
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 340, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(btnThoat)
                            .addComponent(btnReset))
                        .addGap(16, 16, 16))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(16, 16, 16)
                .addComponent(lblQLDT)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbl_TenSP)
                    .addComponent(txtTenSP, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btn_Insert))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbl_Hang)
                    .addComponent(cboHang, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btn_SxGia))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbl_GiaSP)
                    .addComponent(txtGiaSP, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btn_Write)
                    .addComponent(btn_Read))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 122, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(btnReset)
                        .addGap(18, 18, 18)
                        .addComponent(btnThoat)))
                .addContainerGap(25, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void tbl_DienThoaiMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tbl_DienThoaiMouseClicked
        // TODO add your handling code here:
        index = tbl_DienThoai.getSelectedRow();
        this.showDetails();
    }//GEN-LAST:event_tbl_DienThoaiMouseClicked

    private void btnThoatActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnThoatActionPerformed
        // TODO add your handling code here:
        System.exit(0);
    }//GEN-LAST:event_btnThoatActionPerformed

    private void btnResetActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnResetActionPerformed
        // TODO add your handling code here:
        txtTenSP.setText("");
        cboHang.setSelectedItem(0);
        txtGiaSP.setText("");
    }//GEN-LAST:event_btnResetActionPerformed

    private void btn_InsertActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_InsertActionPerformed
        // TODO add your handling code here:
        JOptionPane.showMessageDialog(this, service.insert(this.readForm()));
        this.fillToTable(service.getAll());
    }//GEN-LAST:event_btn_InsertActionPerformed

    private void btn_SxGiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_SxGiaActionPerformed
        // TODO add your handling code here:
        service.sxGia(service.getAll());
        this.fillToTable(service.getAll());
    }//GEN-LAST:event_btn_SxGiaActionPerformed

    private void btn_WriteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_WriteActionPerformed
        // TODO add your handling code here:
        JFileChooser jc = new JFileChooser();
        int choose = jc.showSaveDialog(null);
        if (choose == 0) {
            String path = jc.getSelectedFile().getPath();
            JOptionPane.showMessageDialog(this, service.writeFile(path));
            mol.setRowCount(0);
        } else {
            JOptionPane.showMessageDialog(this, "Bạn không chọn save");
        }
    }//GEN-LAST:event_btn_WriteActionPerformed

    private void btn_ReadActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_ReadActionPerformed
        // TODO add your handling code here:
        JFileChooser jc = new JFileChooser();
        int chon = jc.showOpenDialog(null);
        if (chon == 0) {
            String path = jc.getSelectedFile().getPath();
            JOptionPane.showMessageDialog(this, service.readFile(path));
            if (service.readFile(path).contains("thành công")) {
                this.fillToTable(service.getAll());
            }
        } else {
            JOptionPane.showMessageDialog(this, "Bạn chưa chọn file");
        }
    }//GEN-LAST:event_btn_ReadActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(View_DienThoai.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(View_DienThoai.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(View_DienThoai.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(View_DienThoai.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
//        java.awt.EventQueue.invokeLater(new Runnable() {
//            public void run() {
//                new View_DienThoai().setVisible(true);
//            }
//        });
        View_DienThoai m = new View_DienThoai();
        m.setVisible(true);
        Thread th = new Thread(m);
        th.start();
    }

    void fillToTable(List<DienThoai> list) {
        mol = (DefaultTableModel) tbl_DienThoai.getModel();
        mol.setRowCount(0);
        for (DienThoai dt : list) {
            mol.addRow(dt.toDataRow());
        }
    }

    void showDetails() {
        DienThoai dt = service.getAll().get(index);
        txtTenSP.setText(dt.getTen());
        cboHang.setSelectedItem(dt.getHang());
        txtGiaSP.setText(String.valueOf(dt.getGia()));
    }

    DienThoai readForm() {
        String ten, hang;
        double gia;
        ten = txtTenSP.getText();
        if (ten.isEmpty()) {
            JOptionPane.showMessageDialog(this, "Tên không được để trống");
            return null;
        } else {
            if (!ten.matches("[a-zA-z0-9 ]+")) {
                JOptionPane.showMessageDialog(this, "Tên sai cú pháp");
                return null;
            }
        }
        hang = (String) cboHang.getSelectedItem();
        if (txtGiaSP.getText().isEmpty()) {
            JOptionPane.showMessageDialog(this, "Giá không được để trống");
            return null;
        } else {
            try {
                gia = Double.parseDouble(txtGiaSP.getText());
                if (gia < 0) {
                    JOptionPane.showMessageDialog(this, "Giá không được âm");
                    return null;
                }
            } catch (Exception e) {
                JOptionPane.showMessageDialog(this, "Giá sai cú pháp");
                return null;
            }
        }
        return new DienThoai(ten, hang, gia);
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnReset;
    private javax.swing.JButton btnThoat;
    private javax.swing.JButton btn_Insert;
    private javax.swing.JButton btn_Read;
    private javax.swing.JButton btn_SxGia;
    private javax.swing.JButton btn_Write;
    private javax.swing.JComboBox<String> cboHang;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lblQLDT;
    private javax.swing.JLabel lbl_GiaSP;
    private javax.swing.JLabel lbl_Hang;
    private javax.swing.JLabel lbl_TenSP;
    private javax.swing.JTable tbl_DienThoai;
    private javax.swing.JTextField txtGiaSP;
    private javax.swing.JTextField txtTenSP;
    // End of variables declaration//GEN-END:variables

    @Override
    public void run() {
        while (true) {
            String chu = lblQLDT.getText();
            String c = chu.substring(0, 1);
            chu = chu.substring(1, chu.length());
            chu = chu + c;
            lblQLDT.setText(chu);
            try {
                Thread.sleep(900);
            } catch (Exception e) {
                break;
            }
        }

//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JInternalFrame.java to edit this template
 */
package Formularios.empleado;

/**
 *
 * @author david
 */
public class editarUsuario_empleado extends javax.swing.JInternalFrame {

    int id;
    public editarUsuario_empleado() {
        initComponents();
    }
    public editarUsuario_empleado(int id){
        initComponents();
        this.id=id;
        jTextField1.setText(String.valueOf(id));
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        main = new javax.swing.JPanel();
        sidebar = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        btnEditar_perfil = new javax.swing.JButton();
        btnEditar_perfil1 = new javax.swing.JButton();
        btnEditar_perfil2 = new javax.swing.JButton();
        btnGuardarYsalir = new javax.swing.JButton();
        btnEditar_perfil6 = new javax.swing.JButton();
        header = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jSeparator2 = new javax.swing.JSeparator();
        jLabel8 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jTextField3 = new javax.swing.JTextField();
        jTextField4 = new javax.swing.JTextField();
        jTextField5 = new javax.swing.JTextField();
        jTextField6 = new javax.swing.JTextField();
        jTextField7 = new javax.swing.JTextField();

        setBorder(null);
        setResizable(true);

        main.setBackground(new java.awt.Color(255, 255, 255));
        main.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        sidebar.setBackground(new java.awt.Color(0, 51, 102));

        jLabel1.setFont(new java.awt.Font("Arial Rounded MT Bold", 1, 14)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("MENÚ PRINCIPAL");

        btnEditar_perfil.setBackground(new java.awt.Color(0, 102, 153));
        btnEditar_perfil.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        btnEditar_perfil.setForeground(new java.awt.Color(255, 255, 255));
        btnEditar_perfil.setText("HORARIOS");
        btnEditar_perfil.setBorder(null);
        btnEditar_perfil.setBorderPainted(false);

        btnEditar_perfil1.setBackground(new java.awt.Color(0, 102, 153));
        btnEditar_perfil1.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        btnEditar_perfil1.setForeground(new java.awt.Color(255, 255, 255));
        btnEditar_perfil1.setText("EDITAR PERFIL");
        btnEditar_perfil1.setBorder(null);
        btnEditar_perfil1.setBorderPainted(false);

        btnEditar_perfil2.setBackground(new java.awt.Color(0, 102, 153));
        btnEditar_perfil2.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        btnEditar_perfil2.setForeground(new java.awt.Color(255, 255, 255));
        btnEditar_perfil2.setText("PAGOS");
        btnEditar_perfil2.setBorder(null);
        btnEditar_perfil2.setBorderPainted(false);

        btnGuardarYsalir.setBackground(new java.awt.Color(0, 102, 153));
        btnGuardarYsalir.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        btnGuardarYsalir.setForeground(new java.awt.Color(255, 255, 255));
        btnGuardarYsalir.setText("GUARDAR Y SALIR");
        btnGuardarYsalir.setBorder(null);
        btnGuardarYsalir.setBorderPainted(false);

        btnEditar_perfil6.setBackground(new java.awt.Color(0, 102, 153));
        btnEditar_perfil6.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        btnEditar_perfil6.setForeground(new java.awt.Color(255, 255, 255));
        btnEditar_perfil6.setText("SOLICITUDES");
        btnEditar_perfil6.setBorder(null);
        btnEditar_perfil6.setBorderPainted(false);

        javax.swing.GroupLayout sidebarLayout = new javax.swing.GroupLayout(sidebar);
        sidebar.setLayout(sidebarLayout);
        sidebarLayout.setHorizontalGroup(
            sidebarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(sidebarLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(sidebarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(sidebarLayout.createSequentialGroup()
                        .addGroup(sidebarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(sidebarLayout.createSequentialGroup()
                                .addGap(6, 6, 6)
                                .addComponent(jSeparator1))
                            .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 219, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(0, 10, Short.MAX_VALUE))
                    .addComponent(btnEditar_perfil, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btnEditar_perfil2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btnGuardarYsalir, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
            .addGroup(sidebarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(sidebarLayout.createSequentialGroup()
                    .addContainerGap()
                    .addComponent(btnEditar_perfil1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addContainerGap()))
            .addGroup(sidebarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(sidebarLayout.createSequentialGroup()
                    .addContainerGap()
                    .addComponent(btnEditar_perfil6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addContainerGap()))
        );
        sidebarLayout.setVerticalGroup(
            sidebarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(sidebarLayout.createSequentialGroup()
                .addGap(53, 53, 53)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(75, 75, 75)
                .addComponent(btnEditar_perfil, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnEditar_perfil2, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 162, Short.MAX_VALUE)
                .addComponent(btnGuardarYsalir, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(28, 28, 28))
            .addGroup(sidebarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(sidebarLayout.createSequentialGroup()
                    .addGap(137, 137, 137)
                    .addComponent(btnEditar_perfil1, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addContainerGap(323, Short.MAX_VALUE)))
            .addGroup(sidebarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, sidebarLayout.createSequentialGroup()
                    .addContainerGap(286, Short.MAX_VALUE)
                    .addComponent(btnEditar_perfil6, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGap(174, 174, 174)))
        );

        main.add(sidebar, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, -1, -1));

        header.setBackground(new java.awt.Color(102, 153, 255));

        javax.swing.GroupLayout headerLayout = new javax.swing.GroupLayout(header);
        header.setLayout(headerLayout);
        headerLayout.setHorizontalGroup(
            headerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 560, Short.MAX_VALUE)
        );
        headerLayout.setVerticalGroup(
            headerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );

        main.add(header, new org.netbeans.lib.awtextra.AbsoluteConstraints(240, 0, 560, -1));

        jLabel2.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 24)); // NOI18N
        jLabel2.setText("PERFIL DEL USUARIO");
        main.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(370, 110, -1, -1));

        jLabel3.setText("ID:");
        main.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 150, 20, 20));

        jTextField1.setEnabled(false);
        main.add(jTextField1, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 150, 80, -1));

        jLabel5.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        jLabel5.setText("NOMBRE");
        main.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(270, 210, -1, -1));

        jLabel6.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        jLabel6.setText("USUARIO");
        main.add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(270, 250, -1, -1));

        jLabel7.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        jLabel7.setText("APELLIDO");
        main.add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(270, 290, -1, -1));
        main.add(jSeparator2, new org.netbeans.lib.awtextra.AbsoluteConstraints(240, 320, 560, 10));

        jLabel8.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        jLabel8.setText("ROL");
        main.add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 350, -1, -1));

        jLabel10.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        jLabel10.setText("INICIÓ");
        main.add(jLabel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 410, -1, -1));

        jTextField3.setEnabled(false);
        main.add(jTextField3, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 400, 160, 30));
        main.add(jTextField4, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 200, 160, 30));
        main.add(jTextField5, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 240, 160, 30));

        jTextField6.setEnabled(false);
        main.add(jTextField6, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 280, 160, 30));

        jTextField7.setEnabled(false);
        main.add(jTextField7, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 340, 160, 30));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(main, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(main, javax.swing.GroupLayout.DEFAULT_SIZE, 499, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnEditar_perfil;
    private javax.swing.JButton btnEditar_perfil1;
    private javax.swing.JButton btnEditar_perfil2;
    private javax.swing.JButton btnEditar_perfil6;
    private javax.swing.JButton btnGuardarYsalir;
    private javax.swing.JPanel header;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField5;
    private javax.swing.JTextField jTextField6;
    private javax.swing.JTextField jTextField7;
    private javax.swing.JPanel main;
    private javax.swing.JPanel sidebar;
    // End of variables declaration//GEN-END:variables
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JInternalFrame.java to edit this template
 */
package Formularios.admin;

/**
 *
 * @author david
 */
public class agregarIngredientes_admin extends javax.swing.JInternalFrame {

    /**
     * Creates new form agregarIngredientes_admin
     */
    public agregarIngredientes_admin() {
        initComponents();
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
        header = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jTextField2 = new javax.swing.JTextField();
        jComboBox1 = new javax.swing.JComboBox<>();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTextArea1 = new javax.swing.JTextArea();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTextArea2 = new javax.swing.JTextArea();
        btnAggIngrediente = new javax.swing.JButton();
        btnEditarIngrediente = new javax.swing.JButton();

        setBorder(null);

        main.setBackground(new java.awt.Color(255, 255, 255));
        main.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        header.setBackground(new java.awt.Color(102, 153, 255));

        jLabel2.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 24)); // NOI18N
        jLabel2.setText("AGREGAR INGREDIENTES");

        javax.swing.GroupLayout headerLayout = new javax.swing.GroupLayout(header);
        header.setLayout(headerLayout);
        headerLayout.setHorizontalGroup(
            headerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(headerLayout.createSequentialGroup()
                .addGap(123, 123, 123)
                .addComponent(jLabel2)
                .addContainerGap(124, Short.MAX_VALUE))
        );
        headerLayout.setVerticalGroup(
            headerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(headerLayout.createSequentialGroup()
                .addGap(34, 34, 34)
                .addComponent(jLabel2)
                .addContainerGap(37, Short.MAX_VALUE))
        );

        main.add(header, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 560, -1));

        jLabel1.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        jLabel1.setText("Ingrediente");
        main.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 140, -1, -1));

        jLabel3.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        jLabel3.setText("Cantidad");
        main.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 220, -1, -1));

        jLabel4.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        jLabel4.setText("Estado");
        main.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 300, -1, -1));

        jLabel5.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        jLabel5.setText("Fecha Ingreso");
        main.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 140, -1, -1));

        jLabel6.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        jLabel6.setText("Fecha Vencimiento");
        main.add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 270, -1, -1));
        main.add(jTextField1, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 250, 80, 30));
        main.add(jTextField2, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 170, 280, 30));

        main.add(jComboBox1, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 330, 160, 30));

        jTextArea1.setColumns(20);
        jTextArea1.setRows(5);
        jTextArea1.setText("calendario");
        jScrollPane1.setViewportView(jTextArea1);

        main.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 300, 190, -1));

        jTextArea2.setColumns(20);
        jTextArea2.setRows(5);
        jTextArea2.setText("calendario");
        jScrollPane2.setViewportView(jTextArea2);

        main.add(jScrollPane2, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 170, 190, -1));

        btnAggIngrediente.setBackground(new java.awt.Color(0, 102, 153));
        btnAggIngrediente.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        btnAggIngrediente.setForeground(new java.awt.Color(255, 255, 255));
        btnAggIngrediente.setText("Agregar ");
        main.add(btnAggIngrediente, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 410, -1, 30));

        btnEditarIngrediente.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        btnEditarIngrediente.setText("Salir");
        btnEditarIngrediente.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 102, 153)));
        main.add(btnEditarIngrediente, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 410, 90, 30));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(main, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(main, javax.swing.GroupLayout.DEFAULT_SIZE, 460, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnAggIngrediente;
    private javax.swing.JButton btnEditarIngrediente;
    private javax.swing.JPanel header;
    private javax.swing.JComboBox<String> jComboBox1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTextArea jTextArea1;
    private javax.swing.JTextArea jTextArea2;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JPanel main;
    // End of variables declaration//GEN-END:variables
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JInternalFrame.java to edit this template
 */
package Formularios.admin;

import Clases.empleados;
import javax.swing.RowFilter;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import javax.swing.table.DefaultTableModel;
import Clases.horario;
import clasesDAO.horarios_DAO;
import java.util.ArrayList;
import java.util.Date;
import java.util.Set;
import javax.swing.JOptionPane;

import javax.swing.table.TableRowSorter;
public class asignarHorarios_admin extends javax.swing.JInternalFrame {

    DefaultTableModel model1;
    horarios_DAO horarioDAO;
    ArrayList<horario> listahorarios;
    
    public asignarHorarios_admin() {
        initComponents();
        listahorarios=new ArrayList<>();
        horarioDAO= new horarios_DAO();
        model1= (DefaultTableModel) jTable1.getModel();
        jTextField1.getDocument().addDocumentListener(new DocumentListener() {
        private void filterTable() {
            String searchText = jTextField1.getText().trim().toLowerCase();
            TableRowSorter<DefaultTableModel> sorter = new TableRowSorter<>(model1);
            jTable1.setRowSorter(sorter);

            if (searchText.isEmpty()) {
                sorter.setRowFilter(null);
            } else {
                sorter.setRowFilter(RowFilter.regexFilter("(?i)" + searchText));
            }
        }

        @Override
        public void insertUpdate(DocumentEvent e) {
            filterTable();
        }

        @Override
        public void removeUpdate(DocumentEvent e) {
            filterTable();
        }

        @Override
        public void changedUpdate(DocumentEvent e) {
            filterTable();
        }
        });
        this.cargar();
    }
    public void cargar(){
        model1.setRowCount(0);
        listahorarios= horarioDAO.obtenerHorarios();
        for (horario emp : listahorarios) {
            model1.addRow(new Object[] {
                emp.getIdEmpleado(),
                emp.getNombre(),
                emp.getPuesto()
            });
        }
    }
    public  void mostrarDiasLaboralesDesdeTabla() {
        int filaSeleccionada = jTable1.getSelectedRow();
        if (filaSeleccionada == -1) {
            JOptionPane.showMessageDialog(null, 
                "Por favor, seleccione un empleado de la tabla", 
                "Advertencia", 
                JOptionPane.WARNING_MESSAGE);
            return;
        }
        int idEmpleado = (int) jTable1.getValueAt(filaSeleccionada, 0);
        String nombreEmpleado = (String) jTable1.getValueAt(filaSeleccionada, 1);
        String diasLaborales = horarioDAO.ObtenerDiasLaborales(idEmpleado);
        String diasLibres= horarioDAO.ObtenerDiasLibres(idEmpleado);
        JOptionPane.showMessageDialog(null,
            "Empleado: " + nombreEmpleado + "\nDías Laborales: " + diasLaborales + "\nDías Libres: " + diasLibres, 
            "Información de Días Laborales",
            JOptionPane.INFORMATION_MESSAGE);
        JOptionPane.showMessageDialog(null, "Empleado: " + nombreEmpleado + "\nDías Laborales: "+ diasLibres, 
                "Información de Días Libres", JOptionPane.INFORMATION_MESSAGE);
    }
    public void insertarDiaLaboralDesdeInterfaz() {
        horarios_DAO horarios = new horarios_DAO();
        int filaSeleccionada = jTable1.getSelectedRow();
        if (filaSeleccionada == -1) {
            JOptionPane.showMessageDialog(null, 
                "Por favor, seleccione un empleado de la tabla", 
                "Advertencia", 
                JOptionPane.WARNING_MESSAGE);
            return;
        }

        int idEmpleado = (int) model1.getValueAt(filaSeleccionada, 0);
        Date fechaLaboral = jCalendar1.getDate();
        if (fechaLaboral == null) {
            JOptionPane.showMessageDialog(null, 
                "Por favor, seleccione una fecha laboral", 
                "Advertencia", 
                JOptionPane.WARNING_MESSAGE);
            return;
        }

        String resultado = horarios.insertarHorario(idEmpleado, fechaLaboral, null);
        if (resultado.equals("EXITO")) {
            JOptionPane.showMessageDialog(null, 
                "Día laboral insertado correctamente.", 
                "Éxito", 
                JOptionPane.INFORMATION_MESSAGE);
        } else {
            JOptionPane.showMessageDialog(null, 
                resultado, 
                "Error", 
                JOptionPane.ERROR_MESSAGE);
        }
    }
    public void insertarDiaDescansoDesdeInterfaz() {
        horarios_DAO horarios = new horarios_DAO();
        int filaSeleccionada = jTable1.getSelectedRow();
        if (filaSeleccionada == -1) {
            JOptionPane.showMessageDialog(null, 
                "Por favor, seleccione un empleado de la tabla", 
                "Advertencia", 
                JOptionPane.WARNING_MESSAGE);
            return;
        }

        int idEmpleado = (int) model1.getValueAt(filaSeleccionada, 0);
        Date fechaDescanso = jCalendar1.getDate();
        if (fechaDescanso == null) {
            JOptionPane.showMessageDialog(null, 
                "Por favor, seleccione una fecha de descanso", 
                "Advertencia", 
                JOptionPane.WARNING_MESSAGE);
            return;
        }

        String resultado = horarios.insertarHorario(idEmpleado, null, fechaDescanso);
        if (resultado.equals("EXITO")) {
            JOptionPane.showMessageDialog(null, 
                "Día de descanso insertado correctamente.", 
                "Éxito", 
                JOptionPane.INFORMATION_MESSAGE);
        } else {
            JOptionPane.showMessageDialog(null, 
                resultado, 
                "Error", 
                JOptionPane.ERROR_MESSAGE);
        }
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
        jButton1 = new javax.swing.JButton();
        jCalendar1 = new com.toedter.calendar.JCalendar();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jTextField1 = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jButton5 = new javax.swing.JButton();

        setBorder(null);

        main.setBackground(new java.awt.Color(255, 255, 255));
        main.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        header.setBackground(new java.awt.Color(102, 153, 255));

        jLabel2.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 24)); // NOI18N
        jLabel2.setText("HORARIOS");

        javax.swing.GroupLayout headerLayout = new javax.swing.GroupLayout(header);
        header.setLayout(headerLayout);
        headerLayout.setHorizontalGroup(
            headerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(headerLayout.createSequentialGroup()
                .addGap(312, 312, 312)
                .addComponent(jLabel2)
                .addContainerGap(366, Short.MAX_VALUE))
        );
        headerLayout.setVerticalGroup(
            headerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(headerLayout.createSequentialGroup()
                .addGap(35, 35, 35)
                .addComponent(jLabel2)
                .addContainerGap(26, Short.MAX_VALUE))
        );

        main.add(header, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 810, 90));

        jButton1.setFont(new java.awt.Font("Arial Rounded MT Bold", 0, 14)); // NOI18N
        jButton1.setText("REGRESAR");
        jButton1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 153, 255)));
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        main.add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(710, 510, 130, 40));
        main.add(jCalendar1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 90, 790, 220));

        jButton2.setText("Asignar Día Libre");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        main.add(jButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 530, -1, -1));

        jButton3.setText("Editar");
        main.add(jButton3, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 530, -1, -1));

        jButton4.setText("Eliminar");
        main.add(jButton4, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 530, -1, -1));
        main.add(jTextField1, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 330, 550, 30));

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null}
            },
            new String [] {
                "Id empleado", "Nombre", "Puesto"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jTable1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable1MouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(jTable1);

        main.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 370, 710, 130));

        jButton5.setText("Asignar Día Laboral");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });
        main.add(jButton5, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 530, -1, -1));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(main, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(main, javax.swing.GroupLayout.DEFAULT_SIZE, 562, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        this.dispose();
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jTable1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable1MouseClicked
        this.mostrarDiasLaboralesDesdeTabla();
    }//GEN-LAST:event_jTable1MouseClicked

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        this.insertarDiaLaboralDesdeInterfaz();
    }//GEN-LAST:event_jButton5ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        this.insertarDiaDescansoDesdeInterfaz();
    }//GEN-LAST:event_jButton2ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel header;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private com.toedter.calendar.JCalendar jCalendar1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JPanel main;
    // End of variables declaration//GEN-END:variables
}

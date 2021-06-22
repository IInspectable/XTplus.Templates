NAMESPACE $rootnamespace$.GUI
    USER CONTROL $safeitemname$

        LAYOUT Grid
            ColumnCount = 1
            RowCount    = 1
        END LAYOUT
        CONTROLS
            PANEL Content Template = UserControlContent
                LAYOUT Grid
                    ColumnCount = 1
                    RowCount    = 1

                    RowInfos[1].Mode  = Variable
                    RowInfos[1].Value = 100
                    
                    ColumnInfos[1].Mode  = Variable
                    ColumnInfos[1].Value = 100

                END LAYOUT

                CONTROLS

                    CONTROL Label ToDoLabel
                        LAYOUTINFO
                            Row=1
                            Col=1
                        END LAYOUTINFO
                        PROPERTIES
                            Text = "TODO insert content"
                            Style = Standard_Mitte 
                        END PROPERTIES
                    END CONTROL ToDoLabel

                END CONTROLS

            END PANEL Content
        END CONTROLS
    END USER CONTROL

END NAMESPACE
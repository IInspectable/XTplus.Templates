NAMESPACE $rootnamespace$.GUI
    DIALOG $safeitemname$
        
        PROPERTIES
            Title  = "$safeitemname$"
            Width  = 500
            Height = 450
        END PROPERTIES

        CONTROLS

            PANEL DialogContent Template = Content
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
            END PANEL DialogContent
            
            BARMANAGER Footer
                CONTROLS
                
                  CONTROL FunctionButton Ok
                        PROPERTIES
                            Text          = "OK\n"
                            Style         = StandardButton
                            HotKeyText    = "F12"
                            Align         = Right 
                            DefaultButton = Accept
                        END PROPERTIES
                        EVENTS
                            Click += OnOk
                        END EVENTS
                        HOTKEYS
                            HOTKEY F12 += OnOk
                        END HOTKEYS
                    END CONTROL Ok

                    CONTROL FunctionButton Abbrechen
                        PROPERTIES
                            Text          = "Abbrechen\n"
                            Style         = StandardButton
                            HotKeyText    = "Escape"
                            Align         = Right
                            DefaultButton = Cancel
                        END PROPERTIES
                        EVENTS
                            Click += OnAbbrechen
                        END EVENTS
                        HOTKEYS
                            HOTKEY Escape += OnAbbrechen
                        END HOTKEYS
                    END CONTROL Abbrechen

                END CONTROLS
            END BARMANAGER Footer
        END CONTROLS
    END DIALOG $safeitemname$
END NAMESPACE
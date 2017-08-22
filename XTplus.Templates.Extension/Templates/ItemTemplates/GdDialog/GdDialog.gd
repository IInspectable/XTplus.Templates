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

                    RowInfos[1].Mode  = Variable // Fixed
                    RowInfos[1].Value = 100
                    
                    ColumnInfos[1].Mode  = Variable // Fixed
                    ColumnInfos[1].Value = 100

                END LAYOUT

                CONTROLS

                    // TODO Insert Content Controls

                END CONTROLS

            END PANEL DialogContent
            
            BARMANAGER Footer
                CONTROLS
                
                  CONTROL FunctionButton OK
                        PROPERTIES
                            Text = "OK\n"
                            Style = StandardButton
                            HotKeyText = "F12"
                            Align = Right 
                            DefaultButton = Accept
                        END PROPERTIES
                        EVENTS
                            Click += OnOK
                        END EVENTS
                        HOTKEYS
                            HOTKEY F12 += OnOK
                        END HOTKEYS
                    END CONTROL OK

                    CONTROL FunctionButton Abbrechen
                        PROPERTIES
                            Text = "Abbrechen\n"
                            Style = StandardButton
                            HotKeyText = "Escape"
                            Align = Right
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
NAMESPACE $rootnamespace$.GUI
    FORM $safeitemname$

        PROPERTIES
            Title = "$safeitemname$"
        END PROPERTIES
        HOTKEYS
            HOTKEY Escape += OnEscapeAbbrechen 
        END HOTKEYS
        CONTROLS

            PANEL FormContent Template = Content
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

            END PANEL FormContent

            BARMANAGER Footer
                CONTROLS

                    CONTROL FunctionButton F12Button
                        PROPERTIES
                            Text       = "Übernehmen"
                            Style      = StandardButton
                            HotKeyText = "F12"
                            Position   = 12
                        END PROPERTIES
                        EVENTS
                            Click     += OnF12Übernehmen
                        END EVENTS
                        HOTKEYS
                            HOTKEY F12 += OnF12Übernehmen
                        END HOTKEYS
                    END CONTROL F12Button

                END CONTROLS
            END BARMANAGER Footer
        END CONTROLS

    END FORM $safeitemname$

END NAMESPACE
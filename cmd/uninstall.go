package cmd

import (
	"fmt"

	"github.com/spf13/cobra"
)

var uninstallCmd = &cobra.Command{
	Use:   "uninstall",
	Short: "Uninstall Reviactyl",
	Run: func(cmd *cobra.Command, args []string) {
		fmt.Println("Uninstalling Reviactyl...")
		// TODO: add uninstall logic
	},
}

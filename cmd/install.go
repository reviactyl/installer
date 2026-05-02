package cmd

import (
	"fmt"

	"github.com/spf13/cobra"
)

var installCmd = &cobra.Command{
	Use:   "install",
	Short: "Install Reviactyl",
	Run: func(cmd *cobra.Command, args []string) {
		fmt.Println("Installing Reviactyl...")
		// TODO: add install logic
	},
}

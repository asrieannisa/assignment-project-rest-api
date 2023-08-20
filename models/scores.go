package models

import "time"

type Scores struct {
	ID               uint   `gorm:"primaryKey"`
	Assignment_title string `gorm:"not null;type:varchar(191)"`
	Description      string `gorm:"not null;type:varchar(191)"`
	Score            int    `gorm:"not null"`
	Student_ID       uint
	CreatedAt        time.Time
	UpdatedAt        time.Time
}

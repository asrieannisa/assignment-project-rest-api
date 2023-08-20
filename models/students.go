package models

import "time"

type Students struct {
	ID         uint     `gorm:"primaryKey"`
	Name       string   `gorm:"not null;type:varchar(191)"`
	Age        int      `gorm:"not null"`
	Scores     []Scores `gorm:"foreignkey:Student_ID"`
	Created_at time.Time
	Updated_at time.Time
}

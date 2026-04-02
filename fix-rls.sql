-- Fix RLS policies for Supabase
-- Run this in Supabase SQL Editor to fix connection issues

-- Drop existing policies on responses
DROP POLICY IF EXISTS "Allow public insert" ON responses;
DROP POLICY IF EXISTS "Allow public read" ON responses;

-- Create permissive policies for responses
CREATE POLICY "responses_insert" ON responses FOR INSERT TO anon WITH CHECK (true);
CREATE POLICY "responses_select" ON responses FOR SELECT TO anon USING (true);

-- Drop existing policies on admins
DROP POLICY IF EXISTS "Allow admin read" ON admins;

-- Create permissive policy for admins
CREATE POLICY "admins_select" ON admins FOR SELECT TO anon USING (true);
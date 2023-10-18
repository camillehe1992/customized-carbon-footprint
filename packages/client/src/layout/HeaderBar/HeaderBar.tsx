/*
 * © 2021 Thoughtworks, Inc.
 */

import { AppBar, Toolbar, Typography } from '@material-ui/core'
import React, { ReactElement } from 'react'
import { NavLink } from 'react-router-dom'
import clsx from 'clsx'
import useStyles from './headerBarStyles'
import { ClientConfig } from '../../Config'
import loadConfig from '../../ConfigLoader'
import logo from './ccf_logo.png'

interface HeaderBarProps {
  config?: ClientConfig
}

const HeaderBar = ({ config = loadConfig() }: HeaderBarProps): ReactElement => {
  const classes = useStyles()

  return (
    <AppBar
      position="sticky"
      square={true}
      className={classes.appBar}
      id="app-bar-header"
    >
      <Toolbar className={classes.navContainer}>
        <NavLink to={`${config.PUBLIC_URL}/`} className={classes.title}>
          <img
            src={logo}
            alt={'Cloud Carbon Footprint Logo'}
            className={classes.logo}
          />
          <Typography component="h1" variant="h5">
            Cloud Carbon Footprint
          </Typography>
        </NavLink>
        <NavLink
          to={`${config.PUBLIC_URL}/recommendations`}
          className={clsx(classes.navLink, { isActive: classes.activeNavLink })}
        >
          <Typography component="h2">RECOMMENDATIONS</Typography>
        </NavLink>
      </Toolbar>
    </AppBar>
  )
}

export default HeaderBar

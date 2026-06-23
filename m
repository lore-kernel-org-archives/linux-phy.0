Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73111CDB471
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 16:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tYtrbQ7NPsL+8oPKEoUigRyBtnSsLKgdrOTihWF4pvU=; b=2JMMFcT8hhrtVz
	+MnHZPN+ozDJjTCC+rHwj96kqNiRZw+pN+IpOMaaOtWnSAI47FrYOXhmrECm4oP214yGWZTUvz081
	6VexTGUGUayYqJDyepR5hwksiCrwxI7x0TGxHJGk2MA9NpWbvIMnlAW7YnXMSINI7oDzijXPlMHEi
	zvTH+L2GfzBH01yloMIELbut5ThBuwXtuSKOiP4DXRiyuyjFg4/E4eE5HMtHSXIzOLhuEcMWxygtb
	eZNXauR9gmWPNqnU3rODhwgCitE6Bq+lH0cCzBj4mBTpQZPxMrO2/zLt7NXGK8W3PU/qXuQTeyBgQ
	jmKDlVG9z1oTf0YMkYDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc3zL-00000006cnG-0qUd;
	Tue, 23 Jun 2026 16:28:39 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc3zI-00000006cms-2Fq1
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 16:28:38 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 6CC66C6B393;
	Tue, 23 Jun 2026 16:28:41 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id C00D8601C2;
	Tue, 23 Jun 2026 16:28:33 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id BFBF4106C8382;
	Tue, 23 Jun 2026 18:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1782232112; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=IchOvVpTDS/Xyh/l6otbYjeAJuO/oG+X0cJodck+dQI=;
	b=uqZoB4WI32tFj4icHZ/IixSLhTiwXInH5IYr2+lG5Tm1Z6YsFIZ2JJMOyyBbKIJjf6Satm
	0B1yo9iKHjozGgiy69arYJUg5GRrJ0NlbJq+5zPrwKuqgx7HSGdUbAe16+JJ5Sp10FP9w8
	uktPnudkhr2Jsvzz6adfI5/eU+FkF4f/pV9n5NfoA/9oIApT1ah8iDhO+6Iul0GJF9eFCu
	vhyEkjbIn2MkiNXk8YB6wCrBYFLdIByyCmXp6okzE+zMn1HP82Iy79M/HcpF1QQ3q8nEfy
	CntVKTErfEnuvixDAE6fzhv0GiVlVh69li2Qi5mEvEJ17LEr5gzysuJ0mrJt1g==
Message-ID: <b43cbdf9-3be4-45dc-ab5a-de85888ab347@bootlin.com>
Date: Tue, 23 Jun 2026 18:28:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3 2/2] net: phy: mdio-i2c: defer RollBall bridge
 probe to PHY discovery
To: Petr Wozniak <petr.wozniak@gmail.com>, linux@armlinux.org.uk,
 andrew@lunn.ch, hkallweit1@gmail.com
Cc: kuba@kernel.org, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, bjorn@mork.no, olek2@wp.pl, kabel@kernel.org
References: <20260623080538.7646-1-petr.wozniak@gmail.com>
 <20260623080538.7646-3-petr.wozniak@gmail.com>
Content-Language: en-US
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
In-Reply-To: <20260623080538.7646-3-petr.wozniak@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_092836_923216_B1918FBE 
X-CRM114-Status: GOOD (  28.31  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Petr,

On 6/23/26 10:05, Petr Wozniak wrote:
> commit 8fe125892f40 ("net: phy: sfp: probe for RollBall I2C-to-MDIO
> bridge in mdio-i2c") introduced a regression: the RollBall I2C-to-MDIO
> bridge is not yet ready to respond to CMD_READ/CMD_DONE cycles when
> sfp_sm_add_mdio_bus() runs in SFP_S_INIT.  The 200 ms probe times out,
> i2c_mii_probe_rollball() returns -ENODEV, and sfp_sm_add_mdio_bus()
> sets mdio_protocol = MDIO_I2C_NONE.  By the time sfp_sm_probe_for_phy()
> runs (up to ~17 s later on affected hardware), the bridge is fully
> initialized but PHY probing is skipped because the protocol has already
> been changed to NONE.
> 
> This affects both modules inserted before boot and hotplugged modules on
> hardware where bridge initialization exceeds the 200 ms probe window
> (confirmed: FLYPRO SFP-10GT-CS-30M with Aquantia AQR113C, hotplugged).
> 
> Move the probe from i2c_mii_init_rollball(), called at bus-creation time,
> to sfp_sm_probe_for_phy() in sfp.c, where it runs after the SFP state
> machine module initialization delays.  Export the probe function as
> mdio_i2c_probe_rollball() so sfp.c can call it.
> 
> For RTL8261BE-based modules the probe correctly returns -ENODEV at PHY
> discovery time, causing sfp_sm_probe_for_phy() to destroy the MDIO bus
> and set MDIO_I2C_NONE, eliminating the 5+ minute PHY probe retry loop.
> 
> For genuine RollBall modules (e.g. FLYPRO SFP-10GT-CS-30M with Aquantia
> AQR113C) the probe now runs after initialization is complete and
> correctly returns 0, so PHY detection proceeds normally.
> 
> Reported-by: Aleksander Bajkowski <olek2@wp.pl>
> Fixes: 8fe125892f40 ("net: phy: sfp: probe for RollBall I2C-to-MDIO bridge in mdio-i2c")
> Signed-off-by: Petr Wozniak <petr.wozniak@gmail.com>

I'm not currently at home so I can't test that on my side, but as you'll
have to resend to the net tree, can you CC me for the next round so that
I can test with the few odd-ball modules I have ?

I expect to be able to test this on friday :(

Maxime

> ---
> v3: regenerated against net-next (v2 failed to apply due to transit
>     corruption); fixed block comment style (checkpatch); no functional
>     change.
> v2: commit message only - generalized scope (Aleksander Bajkowski);
>     corrected SM description (Jan Hoffmann); no code change from v1.
> v1: initial.
>  drivers/net/mdio/mdio-i2c.c   | 15 +++++++++------
>  drivers/net/phy/sfp.c         | 22 +++++++++++++---------
>  include/linux/mdio/mdio-i2c.h |  1 +
>  3 files changed, 23 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/net/mdio/mdio-i2c.c b/drivers/net/mdio/mdio-i2c.c
> index b88f63234b4e..2a3a418c1369 100644
> --- a/drivers/net/mdio/mdio-i2c.c
> +++ b/drivers/net/mdio/mdio-i2c.c
> @@ -419,7 +419,7 @@ static int i2c_mii_write_rollball(struct mii_bus *bus, int phy_id, int devad,
>  	return 0;
>  }
>  
> -static int i2c_mii_probe_rollball(struct i2c_adapter *i2c)
> +int mdio_i2c_probe_rollball(struct i2c_adapter *i2c)
>  {
>  	u8 data_buf[] = { ROLLBALL_DATA_ADDR, 0x01, 0x00, 0x00 };
>  	u8 cmd_buf[]  = { ROLLBALL_CMD_ADDR, ROLLBALL_CMD_READ };
> @@ -462,9 +462,13 @@ static int i2c_mii_probe_rollball(struct i2c_adapter *i2c)
>  
>  	return -ENODEV;
>  }
> +EXPORT_SYMBOL_GPL(mdio_i2c_probe_rollball);
>  
>  static int i2c_mii_init_rollball(struct i2c_adapter *i2c)
>  {
> +	/* Send the RollBall unlock password; bridge presence is verified
> +	 * later, in sfp_sm_probe_for_phy(), after module initialization.
> +	 */
>  	struct i2c_msg msg;
>  	u8 pw[5];
>  	int ret;
> @@ -486,7 +490,7 @@ static int i2c_mii_init_rollball(struct i2c_adapter *i2c)
>  	if (ret != 1)
>  		return -EIO;
>  
> -	return i2c_mii_probe_rollball(i2c);
> +	return 0;
>  }
>  
>  static bool mdio_i2c_check_functionality(struct i2c_adapter *i2c,
> @@ -531,10 +535,9 @@ struct mii_bus *mdio_i2c_alloc(struct device *parent, struct i2c_adapter *i2c,
>  	case MDIO_I2C_ROLLBALL:
>  		ret = i2c_mii_init_rollball(i2c);
>  		if (ret < 0) {
> -			if (ret != -ENODEV)
> -				dev_err(parent,
> -					"Cannot initialize RollBall MDIO I2C protocol: %d\n",
> -					ret);
> +			dev_err(parent,
> +				"Cannot initialize RollBall MDIO I2C protocol: %d\n",
> +				ret);
>  			mdiobus_free(mii);
>  			return ERR_PTR(ret);
>  		}
> diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
> index c4d274ab651e..bbfaa0450798 100644
> --- a/drivers/net/phy/sfp.c
> +++ b/drivers/net/phy/sfp.c
> @@ -2174,17 +2174,10 @@ static void sfp_sm_fault(struct sfp *sfp, unsigned int next_state, bool warn)
>  
>  static int sfp_sm_add_mdio_bus(struct sfp *sfp)
>  {
> -	int ret;
> -
>  	if (sfp->mdio_protocol == MDIO_I2C_NONE)
>  		return 0;
>  
> -	ret = sfp_i2c_mdiobus_create(sfp);
> -	if (ret == -ENODEV) {
> -		sfp->mdio_protocol = MDIO_I2C_NONE;
> -		return 0;
> -	}
> -	return ret;
> +	return sfp_i2c_mdiobus_create(sfp);
>  }
>  
>  /* Probe a SFP for a PHY device if the module supports copper - the PHY
> @@ -2215,7 +2208,18 @@ static int sfp_sm_probe_for_phy(struct sfp *sfp)
>  		break;
>  
>  	case MDIO_I2C_ROLLBALL:
> -		err = sfp_sm_probe_phy(sfp, SFP_PHY_ADDR_ROLLBALL, true);
> +		/* Probe here, after module initialization delays, so that
> +		 * genuine RollBall bridges have had time to start up.
> +		 * Modules without a bridge (e.g. RTL8261BE) return -ENODEV.
> +		 */
> +		err = mdio_i2c_probe_rollball(sfp->i2c);
> +		if (err == -ENODEV) {
> +			sfp_i2c_mdiobus_destroy(sfp);
> +			sfp->mdio_protocol = MDIO_I2C_NONE;
> +			break;
> +		}
> +		if (!err)
> +			err = sfp_sm_probe_phy(sfp, SFP_PHY_ADDR_ROLLBALL, true);
>  		break;
>  	}
>  
> diff --git a/include/linux/mdio/mdio-i2c.h b/include/linux/mdio/mdio-i2c.h
> index 65b550a6fc32..5cf14f45c94b 100644
> --- a/include/linux/mdio/mdio-i2c.h
> +++ b/include/linux/mdio/mdio-i2c.h
> @@ -20,5 +20,6 @@ enum mdio_i2c_proto {
>  
>  struct mii_bus *mdio_i2c_alloc(struct device *parent, struct i2c_adapter *i2c,
>  			       enum mdio_i2c_proto protocol);
> +int mdio_i2c_probe_rollball(struct i2c_adapter *i2c);
>  
>  #endif


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

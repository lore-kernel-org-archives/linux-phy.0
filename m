Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA864D2ED0F
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jan 2026 08:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Be6PMF6AwjxRRHM86bofFp1bNF31jj/cB55ZlQvG6tY=; b=UhVWmMkdgHgfaw
	rnOnFVAkSaoGGgWT6LYiIZIXdPXVS1mTwioCHXN2Q/iq8u3/LkPWiB0AZG/Ucr3rr3/tOlTgQotFl
	M5WvCg1LLmYm2kVIf7CY4xzxE5s+AGT0gYCTSFAj6vNZiBRPUv0t81wrARknio9EhQEPV57Hq/Qas
	DwUmehUA810fQ9FRxK4QMCq1JBVPMN1p2nCmOb/wCS6jn/pt8fgvpDBjkMa07Wce1b5xh0SlpS6fV
	tCbHuoSbTA/nAK5/R48ihEd0/CiY01CKzlE9EC6w0Zub6vVL7UqthBGgigKGI2bM+fnWqu3wFqNIw
	axvAMRbHPxF+rUZLnUrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi6wv-00000003S5g-1HWq;
	Tue, 20 Jan 2026 08:18:53 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi6wt-00000003S4v-0h47
	for linux-phy@lists.infradead.org;
	Tue, 20 Jan 2026 08:18:52 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-b8712506a3eso33920666b.3
        for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 00:18:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768897128; x=1769501928; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TJbdw+xcDYuOTpLf6yNuSRnoYdJpj1gSQsdBtW0Vq6o=;
        b=XTynsIko3n0EOyj4jPDDElmS3FuRLY9sJsGwULxbzadikPi84TUB4dx4Q8427YLBTS
         9gvRCA5oTt7C+eUoSzL+OADY/jvLZPLlBoG3QucJUvptLGO5XVM2oqLyyOSulxbEOjk1
         M2XgXeJ0DQI82DbuA39GCyNy8y5BMFeqpi90tTFLeTJKbtZZxECUt1jkaRHgfOuGC0zN
         hQ8vPTfUPgI/EJhXmGDStXLkelkdheLGZGwmflc5mCEoFL1HLQFJ0A/P9FQ82LwwkmwD
         MpYEj5JcBLOh7q51iEdrusEnZblfuO9jMcrTdRoaMY0hHMtwM4h+WS9dHCm3lPnzgSIQ
         u9vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768897128; x=1769501928;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TJbdw+xcDYuOTpLf6yNuSRnoYdJpj1gSQsdBtW0Vq6o=;
        b=uI+eE36q85IyWTcXIp9LDNZfY22wxfRnuiDiBG8YBgg3XEpjmQHZgyaIjuAULUEyrv
         2/rfCx7xlwcLD+sAYI7iOPVhOhj7Ukj1ky/L918DBcLdPDGDvmdaiRRshGujeD75glO3
         vdis3aN7MHQNK7YQTH0HYFN/rE/nTSoMC8fj64IkP1s0Y0/vf/1g/6zLvrw7wwuj9wpt
         cDBaKsnM6q2VfM5yv6SWT9RunzVqNzcCIf6d1N2WbKZuqLOpRDnUxczojKOFbyx8x8QS
         Y5rPmgbBe1SDYajMTE7StI2z1+lJH//pqja7x0NHwoTZRZ/rPKmNnKAtOElmXYhK/g9a
         Te+A==
X-Forwarded-Encrypted: i=1; AJvYcCUEiuVkcZhKZ8M0xHsMFPmKMask3hd6O8GIicI0S5cJEyYqwnaSqaCzZo9XqX4XXWQ2KrIvXsNokCQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzu1st2KXGN1/poLSvIkdsxxCd4IALvMUhQK3IuoQpjT5jrkCo7
	veaPU6sDiJPFGHLR5G2uea97Wxbj7g64opsifBuOlKII8WqcI6eGEnTL
X-Gm-Gg: AY/fxX4DhcEaXfOkRZTjiEWB91rnR0nF9M3zgErgQ59AfYwYfyCsa/gH7XLraWT28in
	X6ZphRP6jUrNuskevk6q+bdIU3+uXSW/AEHUibWBu951tS4xfPZyjXvYYpHPXwDu4psVcQEanOw
	FjiSSWCMt8KGBWmqyz1fJyEAHsCEqyNB9B6ZC67QKZ9+9kq73qShjIEb5SYZZMMVbPKj+7dFge4
	vU9AXiNwuKOA3D5vo225Q9hvOy3VPXz5sw65rwE97eL6bArfHU9JTOIVtvATY9zWHOHkNH/IINK
	yx7X6LwoTloMl8OGuiF1BIVse2HaF68Fx6pDKtK09b/gTp2UHUBi7y9Uwam5dKQgXGFPLIf6t5+
	E02mG9IvVwqT+6fTxMzvdJ6l+8bo+YlwSRhtEEXQMZTafOw4i6CwYnUEHxxVSexly2UCyz0XslB
	auFGE=
X-Received: by 2002:a17:907:3c8a:b0:b87:6f58:a844 with SMTP id a640c23a62f3a-b8792b3a359mr743051066b.0.1768897127986;
        Tue, 20 Jan 2026 00:18:47 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:619a:24df:1726:f869])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795c38208sm1344223966b.71.2026.01.20.00.18.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 00:18:47 -0800 (PST)
Date: Tue, 20 Jan 2026 10:18:44 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Jakub Kicinski <kuba@kernel.org>, linux-phy@lists.infradead.org,
	davem@davemloft.net, maxime.chevallier@bootlin.com,
	alexandre.torgue@foss.st.com, mohd.anwar@oss.qualcomm.com,
	neil.armstrong@linaro.org, hkallweit1@gmail.com,
	mcoquelin.stm32@gmail.com, netdev@vger.kernel.org,
	edumazet@google.com, linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, vkoul@kernel.org,
	andrew@lunn.ch, pabeni@redhat.com, andrew+netdev@lunn.ch,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [net-next,05/14] net: stmmac: add stmmac core serdes support
Message-ID: <20260120081844.7e6aq2urhxrylywi@skbuf>
References: <E1vhoSH-00000005H1f-2cq9@rmk-PC.armlinux.org.uk>
 <20260119192125.1245102-1-kuba@kernel.org>
 <aW8M9ZiiftGBQIRM@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aW8M9ZiiftGBQIRM@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_001851_275668_F73FEF5B 
X-CRM114-Status: GOOD (  47.05  )
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

On Tue, Jan 20, 2026 at 05:04:53AM +0000, Russell King (Oracle) wrote:
> On Mon, Jan 19, 2026 at 11:21:25AM -0800, Jakub Kicinski wrote:
> > This is an AI-generated review of your patch. The human sending this
> > email has considered the AI review valid, or at least plausible.
> > 
> > For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
> > ---
> > net: stmmac: add stmmac core serdes support
> > 
> > This commit adds SerDes PHY support to the stmmac core driver, moving it
> > from platform glue into the integrated PCS driver. The SerDes is managed
> > through phy_init/phy_exit for lifecycle and phy_power_on/phy_power_off
> > for the power state.
> > 
> > > diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.c
> > > index 2f826fe7229b..4d1902f3a58f 100644
> > > --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.c
> > > +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.c
> > 
> > [ ... ]
> > 
> > > static int dwmac_integrated_pcs_enable(struct phylink_pcs *pcs)
> > > {
> > > 	struct stmmac_pcs *spcs = phylink_pcs_to_stmmac_pcs(pcs);
> > > +	struct stmmac_priv *priv = spcs->priv;
> > > +	int ret;
> > >
> > > -	stmmac_mac_irq_modify(spcs->priv, 0, spcs->int_mask);
> > > +	ret = dwmac_serdes_power_on(priv);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	if (spcs->interface != PHY_INTERFACE_MODE_NA) {
> > > +		ret = dwmac_serdes_set_mode(priv, spcs->interface);
> > > +		if (ret)
> > > +			return ret;
> >                         ^^^^^^^^^^
> > 
> > If dwmac_serdes_set_mode() fails here, doesn't this leave the SerDes in
> > a powered-on state? dwmac_serdes_power_on() succeeded at this point but
> > there's no corresponding dwmac_serdes_power_off() call before returning
> > the error.
> > 
> > Looking at phylink_major_config(), it appears to discard the return
> > value from phylink_pcs_enable(), so the caller won't know to call
> > pcs_disable() to clean up the power state.
> 
> This AI analysis is incorrect.
> 
> By the time phylink_pcs_enable() has been called, the PCS is already
> plumbed in to phylink. It _will_ have phylink_pcs_disable() called on
> it at some point in the future, either by having the PCS displaced
> by another in a subsequent phylink_major_config(), or by a driver
> calling phylink_stop().
> 
> If we clean up here, then we will call dwmac_serdes_power_off() twice.
> 
> Yes, it's not "nice" but that's the way phylink is right now, and
> without reworking phylink to record that pcs_enable() has failed
> to avoid a subsequent pcs_disable(), and to stop the major config
> (which then potentially causes a whole bunch of other issues). I
> don't even want to think about that horrid scenario at the moment.

Isn't it sufficient to set pl->pcs to NULL when pcs_enable() fails and
after calling pcs_disable(), though?

I had to deal with the same issue when preparing patches that integrate
SerDes support into the Lynx PCS.

I had these patches (please pardon the unadapted commit messages for the
present situation):

-- >8 --
Subject: [PATCH] net: phylink: handle return code from phylink_pcs_enable()

I am trying to make phylink_pcs_ops :: pcs_enable() something that is
handled sufficiently carefully by phylink, such that we can expect that
when we return an error code here, no other phylink_pcs_ops call is
being made. This way, the API can be considered sufficiently reliable to
allocate memory in pcs_enable() which is freed in pcs_disable().

Currently this does not take place. The pcs_enable() method has an int
return code, which is ignored. If the PCS returns an error, the
initialization of the phylink instance is not stopped, but continues on
like a train, most likely triggering faults somewhere else.

Like this:

$ ip link set endpmac2 up
fsl_dpaa2_eth dpni.1 endpmac2: configuring for c73/10gbase-kr link mode
fsl_dpaa2_eth dpni.1 endpmac2: pcs_enable() failed: -ENOMEM // added by me
Unable to handle kernel paging request at virtual address fffffffffffffff4
Call trace:
 mtip_backplane_get_state+0x34/0x2b4
 lynx_pcs_get_state+0x30/0x180
 phylink_resolve+0x2c0/0x764
 process_scheduled_works+0x228/0x330
 worker_thread+0x28c/0x450

Do a minimal handling of the error by clearing pl->pcs, so that we lose
access to its ops, and thus are unable to call anything else (which
would be invalid anyway).

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/net/phy/phylink.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
index 32ffa4f9e5b2..a8459116b701 100644
--- a/drivers/net/phy/phylink.c
+++ b/drivers/net/phy/phylink.c
@@ -1315,8 +1315,15 @@ static void phylink_major_config(struct phylink *pl, bool restart,
 		}
 	}
 
-	if (pl->pcs_state == PCS_STATE_STARTING || pcs_changed)
-		phylink_pcs_enable(pl->pcs);
+	if (pl->pcs_state == PCS_STATE_STARTING || pcs_changed) {
+		err = phylink_pcs_enable(pl->pcs);
+		if (err < 0) {
+			phylink_err(pl, "pcs_enable() failed: %pe\n",
+				    ERR_PTR(err));
+			pl->pcs = NULL;
+			return;
+		}
+	}
 
 	err = phylink_pcs_config(pl->pcs, pl->pcs_neg_mode, state,
 				 !!(pl->link_config.pause & MLO_PAUSE_AN));
-- >8 --

-- >8 --
Subject: [PATCH] net: phylink: suppress pcs->ops->pcs_get_state() calls after
 phylink_stop()

I am attempting to make phylink_pcs_ops :: pcs_disable() treated
sufficiently carefully by phylink so as to be able to free memory
allocations from this PCS callback, and do not suffer from faults
attempting to access that memory later from other phylink_pcs callbacks.

Currently, nothing prevents this situation from happening:

$ ip link set endpmac2 up
$ ip link set endpmac2 down
$ ethtool endpmac2
Unable to handle kernel paging request at virtual address 0000100000000034
Call trace:
 __mutex_lock+0xb8/0x574
 __mutex_lock_slowpath+0x14/0x20
 mutex_lock+0x24/0x58
 mtip_backplane_get_state+0x44/0x24c
 lynx_pcs_get_state+0x30/0x180
 phylink_ethtool_ksettings_get+0x178/0x218
 dpaa2_eth_get_link_ksettings+0x54/0xa4
 __ethtool_get_link_ksettings+0x68/0xa8
 linkmodes_prepare_data+0x44/0xc4
 ethnl_default_doit+0x118/0x39c
 genl_rcv_msg+0x29c/0x314
 netlink_rcv_skb+0x11c/0x134
 genl_rcv+0x34/0x4c

However, the case where "ethtool endpmac2" is executed as the first
thing (before the interface is brought up) does not crash. What's
different is that second situation is that phylink_major_config() did
not run yet, so pl->pcs is still NULL inside phylink_mac_pcs_get_state().
In plain English, "as long as the PCS is disabled, the link is naturally
down, no need to ask".

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/net/phy/phylink.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
index a8459116b701..f78d0e0f7cfb 100644
--- a/drivers/net/phy/phylink.c
+++ b/drivers/net/phy/phylink.c
@@ -2527,6 +2527,7 @@ void phylink_stop(struct phylink *pl)
 	pl->pcs_state = PCS_STATE_DOWN;

 	phylink_pcs_disable(pl->pcs);
+	pl->pcs = NULL;
 }
 EXPORT_SYMBOL_GPL(phylink_stop);

-- >8 --

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

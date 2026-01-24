Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C000ED77898
	for <linux-phy@archiver.kernel.org>; Sat, 24 Jan 2026 01:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vAgEBm/RITb+t8LOGYGV4jXjHxKpLGkaxFM12EVwQ3k=; b=wG2X1XgEjGWmag
	fULZFrF7iMIwG+Rni5/P8iLANyTdduHXtZRW//Ph1slwr1BGA2G2UVJNXyvv3+aT9oqIoMibVnDdN
	wXHFnTXowLAurEL2EFYMzl3GvkoJRupZ25RTWOeAXwi+rbrkf6vUMRYQFjPToilOBrg5oMy0oAIB/
	UEJJzWWCxe6M5uEhJPXpEbJqN4wyNoLOITtpQZTqwzdUPnIynrp7CmiPcajuet9kSZiWk2Vx9QDmb
	G/3/bd8DR7sIyghYjTcvtdYOKBV7KuG8tRBWpsjcaLq9EiS+89Q83gbHCnUkKtUktwbbXM2QLG47p
	/p1mrlRFtZ2CuNFBNQVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjS0Q-00000009fl9-3gVb;
	Sat, 24 Jan 2026 01:00:02 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjS0L-00000009fji-3ZPU
	for linux-phy@lists.infradead.org;
	Sat, 24 Jan 2026 01:00:01 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-4358e24d3c2so272472f8f.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 16:59:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769216396; x=1769821196; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PxQBocjBKjEC4mv4CNajitmiXw7FC5x1mC5Q0V2nZ7g=;
        b=WRQhXksicJfqY6sxiJq+/quXCYM0jN3/OkaoWZKMSYQh0GlMEnGr9FzMUcrwGBpUaN
         6HrDNCYWyIfmckoxU0Qy4WAee2NyiMED5VblDJPSfNg7DSdVTsCt5Z1nseK4rU1pqFdA
         k92IrnPxy45LNd6bijidmqI+R1e2D2EdZ9kFbOz+F9gRnaHeGGU6LivCAdtnyHSS05dN
         3YyT46/zOLak+DtvLSA8ISTOuEBSP/cw4Yfv13rnZ0fZsGt82U5iOgw+RsWA+u8z/208
         7o+a0jqeaXDQb6MFvBhmVOKNeBofvYa52kFqMI2IpdO94Ua1P9ktmEQbwGqu9usy3gl6
         fuGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769216396; x=1769821196;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PxQBocjBKjEC4mv4CNajitmiXw7FC5x1mC5Q0V2nZ7g=;
        b=ChmoGK3PdTbMJyAKLGHzf0Hgm0dqRoeocEbNT6J9wxYHkc90WGECSiGIIJr9cdT6DP
         RvIl82AByj4vDLwXfy55r0Lk0xUl7nOU+e5HEqCLuaVZR+gUOiZUzWuch2gWDzIp9W2e
         hS4nEvCjlNqssfO2+jxfBsD5w3LswAkZUzbNdEc42AnfvYAfa5BmWYLjvmRSyxhIJSN0
         80qZamdPfCZt2xrBiXjCegY6N2opLhznHRYpzEPEEhlYfbsf3nI9wysbc2OlYS3fC0l4
         lQadu1MDji+MkB7XGcqrBQMajcW45azM4IHctQjTvoHFPWM0AiEi0Rn/d7TiIwh/9M0y
         njRA==
X-Forwarded-Encrypted: i=1; AJvYcCW0IEr12Ddlz+ty7U0G2pmwAw7j6NIu3bBWb1ObdDzbeUYWxJlB0ZR0hfg2DKMqOWM1YRWKQrPCaEM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzIUhMDMTxQDpqk4NZoNTdsw75SWM7MP5e1ykmeGZop1MOLzPGh
	9gC0oxLVlsS41PLG9qfcRD9oY8KUiHXHsu3aF2n7JSwoYXYLb0seTBEZ
X-Gm-Gg: AZuq6aJkfEezNAMwb0E5X7lgB0D9WJ3Ci9XtkitvSngEFVHHkeWWxirC6q38bXviBfv
	IWPMNMDPP1yWIqT9+fBt6d7VIim1oaL//52vm+rhsmHBY9EitbL8nVQ0qNeUih+R3ItQpd3tEMN
	eKmy+dhf8GwJsOZxEqclO+tjYTAYe5vhfIRUKIBbwYRnd88rodbNq7HuIk4/WHzgRucizx4Wwy6
	rLc2fRiqqbfU8BPic1YAhpCxigecBvAUBAv2p+GYQnIAAFbtff35t2Zx9cdxiDOkpFn1nwqeWrS
	qphHYZs0fyqHBJFrBp1vo5ZZ1LNdBPYEOvMnouG0Tj0Dpr58qDop+ybhY0ric2wSioN92Zz/VPX
	GhWJmbR2hDqzWTDQQDX76dV+1BvzyXAN6Ya9bO6j04CAG4PJFgpeTbO6MUWrCkdredY1bWnInS0
	HVOA==
X-Received: by 2002:a05:6000:420c:b0:435:b068:d3d9 with SMTP id ffacd0b85a97d-435bdff681emr1187921f8f.5.1769216395508;
        Fri, 23 Jan 2026 16:59:55 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:1430:8b48:2d45:6c1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1e716b6sm10616033f8f.27.2026.01.23.16.59.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 16:59:54 -0800 (PST)
Date: Sat, 24 Jan 2026 02:59:51 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH net-next v2 05/14] net: stmmac: add stmmac core serdes
 support
Message-ID: <20260124005951.fbkvd2girdqtfxe7@skbuf>
References: <aXNEwBW3OA1xLEUj@shell.armlinux.org.uk>
 <E1vjDrM-00000005fQR-0rmB@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1vjDrM-00000005fQR-0rmB@rmk-PC.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_165959_525915_7BCBB9F3 
X-CRM114-Status: GOOD (  25.51  )
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

On Fri, Jan 23, 2026 at 09:53:44AM +0000, Russell King (Oracle) wrote:
> Rather than having platform glue implement SerDes PHY support, add it
> to the core driver, specifically to the stmmac integrated PCS driver
> as the SerDes is connected to the integrated PCS.
> 
> Platforms using external PCS can also populate plat->serdes, and the
> core driver will call phy_init() and phy_exit() when the administrative
> state of the interface changes, but the other phy methods will not be
> called.
> 
> Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> --
> rfc->v1: avoid calling phy_get_mode() with NULL serdes PHY
> v2: add cleanup when dwmac_serdes_set_mode() fails, because AI allegedly
>   knows better than the author and phylink maintainer, even though this
>   will result in dwmac_serdes_power_off() being called multiple times
>   and producing a kernel warning. But if it makes AI happy, then it must
>   be a good thing. It'll also make Vladimir happy.

These gratuitous passive-aggressive comments about what makes me happy,
based on twisted interpretations of conversations, are best kept to yourself.

I remember Jakub's request was only to add a note in the commit message
about the reason behind the lack of cleanup, not to add cleanup which
will be executed twice:
https://lore.kernel.org/netdev/20260120153248.0636f1e9@kernel.org/

I only expressed dissatisfaction with the phylink_pcs calling convention
as it is today, and searched for ways to make the calls balanced. I also
didn't make any suggestion to make the code worse by performing the
SerDes power down twice, just subscribed to Jakub's request to leave a
comment why your v1 is the way that it is:
https://lore.kernel.org/netdev/20260122112913.svzaie4eywk5nc32@skbuf/

Getting over that dissatisfaction and working within the framework of
the existing calling convention, but also inserting the comment that I
was looking to see, I believe that functionally correct code would look
like this (applies on top of your entire v2 patch set):

-- >8 --
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_serdes.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_serdes.c
index d46a071bc383..c4465dca6b93 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_serdes.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_serdes.c
@@ -59,12 +59,27 @@ int dwmac_serdes_power_on(struct stmmac_priv *priv)
 {
 	int ret;
 
+	/* Because the dwmac_integrated_pcs_disable() call path is eventually
+	 * invoked irrespective of the dwmac_integrated_pcs_enable() return
+	 * code, we risk either underflowing the SerDes phy->power_count or
+	 * leaving the lane powered on, depending on the cleanup choice and the
+	 * point of failure. Keeping separate track of the lane power on state
+	 * is a band aid until phylink offers balanced pcs_enable() and
+	 * pcs_disable() calls.
+	 */
+	if (priv->plat->serdes_powered_on)
+		return 0;
+
 	ret = phy_power_on(priv->plat->serdes);
-	if (ret)
+	if (ret) {
 		dev_err(priv->device, "failed to power on SerDes: %pe\n",
 			ERR_PTR(ret));
+		return ret;
+	}
 
-	return ret;
+	priv->plat->serdes_powered_on = true;
+
+	return 0;
 }
 
 int dwmac_serdes_init_mode(struct stmmac_priv *priv, phy_interface_t interface)
@@ -95,10 +110,17 @@ void dwmac_serdes_power_off(struct stmmac_priv *priv)
 {
 	int ret;
 
+	if (!priv->plat->serdes_powered_on)
+		return;
+
 	ret = phy_power_off(priv->plat->serdes);
-	if (ret)
+	if (ret) {
 		dev_err(priv->device, "failed to power off SerDes: %pe\n",
 			ERR_PTR(ret));
+		return;
+	}
+
+	priv->plat->serdes_powered_on = false;
 }
 
 void dwmac_serdes_exit(struct stmmac_priv *priv)
diff --git a/include/linux/stmmac.h b/include/linux/stmmac.h
index 6097f4b6dd12..e62bba38ab60 100644
--- a/include/linux/stmmac.h
+++ b/include/linux/stmmac.h
@@ -225,6 +225,7 @@ struct plat_stmmacenet_data {
 	 */
 	phy_interface_t phy_interface;
 	struct phy *serdes;
+	bool serdes_powered_on;
 	struct stmmac_mdio_bus_data *mdio_bus_data;
 	struct device_node *phy_node;
 	struct fwnode_handle *port_node;
-- >8 --

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

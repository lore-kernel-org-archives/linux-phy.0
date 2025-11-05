Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0544FCCFA0D
	for <linux-phy@archiver.kernel.org>; Wed,  5 Nov 2025 15:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IY5dZeOr4GqsZ/ii9vvHnXz8dXrr9Xj/sAyP4qBDg4=; b=fijFkjP6SjRr7L
	vYUxsW0ewtNoNFDIBAtCh4BYSfiObVONs5ztIX+96rhVAI04fxi3EjvOrMB4iWBtYZ8tW4v0DOash
	VIf5BZyl9WsQNh5bYCIszGedLM6fXUf+dBlrdQHy/QurTvrcAwVTsm4xFBHlYIQPILl2IA7OhrNft
	DDD6ASLac+E5ZGaMUdBfkJtNVfsfGjc1raFjo13WhY2qDnNS8ICB8Nzp8giFfjOFTAvwN0A0FWDg5
	y8Mn8xQ+B6acHA8Dqcrls8mZnPPZ45cc6okPVobCcRU8U/F/rTHdiJgr6IDC1Jg0AmUwxstzIueLs
	yIVSLOtaJaLe+84e5H8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGfvM-0000000E0TN-2Sew;
	Wed, 05 Nov 2025 15:59:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGfvK-0000000E0Sx-1p8L
	for linux-phy@lists.infradead.org;
	Wed, 05 Nov 2025 15:59:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vGfuv-0000Rf-LD; Wed, 05 Nov 2025 16:59:25 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vGfuu-007Djq-1i;
	Wed, 05 Nov 2025 16:59:24 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vGfuu-00000000CbV-1n3z;
	Wed, 05 Nov 2025 16:59:24 +0100
Message-ID: <180fcd1307af02eadc6136512ef78226bc7c00dd.camel@pengutronix.de>
Subject: Re: [PATCH v2 03/21] reset: rzv2h-usb2phy: Keep PHY clock enabled
 for entire device lifetime
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, 
	tomm.merciai@gmail.com
Cc: linux-renesas-soc@vger.kernel.org, biju.das.jz@bp.renesas.com, Vinod
 Koul	 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob
 Herring	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley	 <conor+dt@kernel.org>, Fabrizio Castro
 <fabrizio.castro.jz@renesas.com>, Lad Prabhakar
 <prabhakar.mahadev-lad.rj@bp.renesas.com>, Peter Rosin <peda@axentia.se>,
 Yoshihiro Shimoda	 <yoshihiro.shimoda.uh@renesas.com>, Geert Uytterhoeven
 <geert+renesas@glider.be>,  Magnus Damm <magnus.damm@gmail.com>, Arnd
 Bergmann <arnd@arndb.de>, Greg Kroah-Hartman	 <gregkh@linuxfoundation.org>,
 linux-phy@lists.infradead.org, 	devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Wed, 05 Nov 2025 16:59:24 +0100
In-Reply-To: <4b760e6e39679edd7f3d3a9a5b4babc7805ffe29.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
	 <4b760e6e39679edd7f3d3a9a5b4babc7805ffe29.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
User-Agent: Evolution 3.56.1-1+deb13u1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_075950_479038_B47E3E95 
X-CRM114-Status: GOOD (  18.87  )
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

On Mi, 2025-11-05 at 16:38 +0100, Tommaso Merciai wrote:
> The driver was disabling the USB2 PHY clock immediately after register
> initialization in probe() and after each reset operation. This left the
> PHY unclocked even though it must remain active for USB functionality.
> 
> The behavior appeared to work only when another driver
> (e.g., USB controller) had already enabled the clock, making operation
> unreliable and hardware-dependent. In configurations where this driver
> is the sole clock user, USB functionality would fail.
> 
> Fix this by:
> - Enabling the clock once in probe() via pm_runtime_resume_and_get()
> - Removing all pm_runtime_put() calls from assert/deassert/status
> - Registering a devm cleanup action to release the clock at removal
> - Dropping the unnecessary rzv2h_usbphy_assert_helper() function
> 
> This ensures the PHY clock remains enabled for the entire device lifetime,
> preventing instability and aligning with hardware requirements.
> 
> Fixes: e3911d7f865b ("reset: Add USB2PHY port reset driver for Renesas RZ/V2H(P)")
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> ---
> v1->v2:
>  - Improve commit body and commit msg
>  - Added Fixes tag
>  - Dropped unnecessary rzv2h_usbphy_assert_helper() function
> 
>  drivers/reset/reset-rzv2h-usb2phy.c | 64 ++++++++---------------------
>  1 file changed, 18 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/reset/reset-rzv2h-usb2phy.c b/drivers/reset/reset-rzv2h-usb2phy.c
> index ae643575b067..5bdd39274612 100644
> --- a/drivers/reset/reset-rzv2h-usb2phy.c
> +++ b/drivers/reset/reset-rzv2h-usb2phy.c
[...]
> @@ -175,14 +143,14 @@ static int rzv2h_usb2phy_reset_probe(struct platform_device *pdev)
>  	if (error)
>  		return dev_err_probe(dev, error, "pm_runtime_resume_and_get failed\n");
>  
> +	error = devm_add_action_or_reset(dev, rzv2h_usb2phy_reset_pm_runtime_put,
> +					 dev);
> +	if (error)
> +		return dev_err_probe(dev, error, "unable to register cleanup action\n");
> +
>  	for (unsigned int i = 0; i < data->init_val_count; i++)
>  		writel(data->init_vals[i].val, priv->base + data->init_vals[i].reg);
>  
> -	/* keep usb2phy in asserted state */
> -	rzv2h_usbphy_assert_helper(priv);

This change is not mentioned in the patch description.

Is initially asserting the reset not required after all?

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

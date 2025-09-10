Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7D7CCA101F
	for <linux-phy@archiver.kernel.org>; Wed, 10 Sep 2025 09:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8B8Sanspw+RWuN6vVRbOUafPti0nSh33M1/H+V8MN0=; b=BJAJu5oz17XePk
	NajakJ/+ZGRW3uQfcZNBQHXNwwHrcfeUlBDhrAUd6g7mRCdmU0XNQ9eNTRyykX/xysesQMPLlR4Pb
	dIK8m27breRAdgWys1Z3bcLOoK7Pn47ju2I00ol6bK757p1R7xb/NUULPi3h5eDjWmfKufEYn1qXj
	5+4C1lVWYJ3Ku3MQdHBxzdejbe7BROOVHxzTMT8NJ5C8MGbzp/jqsCGAN0ug2iraoFqgTRHfnADst
	Q3UvAiLK4zAkH5gqP0SULW69QA5qR0LhXwVbvz9eKmvfr+IYZvoeDIqXy5WREzQNJoyAocn5Om2pJ
	rDzpfo1Fwwb4v/5s9fNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwGxo-0000000DAja-1Ag8;
	Wed, 10 Sep 2025 09:18:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwGxl-0000000DAga-2MJW
	for linux-phy@lists.infradead.org;
	Wed, 10 Sep 2025 09:18:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uwGxc-000560-GV; Wed, 10 Sep 2025 11:17:52 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uwGxb-000ZEw-2M;
	Wed, 10 Sep 2025 11:17:51 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uwGxb-0007LM-27;
	Wed, 10 Sep 2025 11:17:51 +0200
Message-ID: <94ce63da0edee178a49781b2c6ac9a863f13333f.camel@pengutronix.de>
Subject: Re: [PATCH v2 04/11] phy: renesas: Add Renesas RZ/G3E USB3.0 PHY
 driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Biju <biju.das.au@gmail.com>, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@kernel.org>, Geert Uytterhoeven
 <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org, Prabhakar
	Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Date: Wed, 10 Sep 2025 11:17:51 +0200
In-Reply-To: <20250909180803.140939-5-biju.das.jz@bp.renesas.com>
References: <20250909180803.140939-1-biju.das.jz@bp.renesas.com>
	 <20250909180803.140939-5-biju.das.jz@bp.renesas.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_021801_604004_035F2BAD 
X-CRM114-Status: GOOD (  17.69  )
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

On Di, 2025-09-09 at 19:07 +0100, Biju wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
> 
> Add Renesas RZ/G3E USB3.0 PHY driver. This module is connected
> between USB3 Host and PHY module. The main functions of this
> module are:
>  1) Reset control
>  2) Control of PHY input pins
>  3) Monitoring of PHY output pins
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> v1->v2:
>  * Replaced magic numbers with macros.
> ---
>  drivers/phy/renesas/Kconfig          |   7 +
>  drivers/phy/renesas/Makefile         |   1 +
>  drivers/phy/renesas/phy-rzg3e-usb3.c | 271 +++++++++++++++++++++++++++
>  3 files changed, 279 insertions(+)
>  create mode 100644 drivers/phy/renesas/phy-rzg3e-usb3.c
> 
[...]
> diff --git a/drivers/phy/renesas/phy-rzg3e-usb3.c b/drivers/phy/renesas/phy-rzg3e-usb3.c
> new file mode 100644
> index 000000000000..6463519b2c22
> --- /dev/null
> +++ b/drivers/phy/renesas/phy-rzg3e-usb3.c
> @@ -0,0 +1,271 @@
[...]
> +static int rzg3e_phy_usb3_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct phy_provider *provider;
> +	struct rz_usb3 *r;
> +	struct phy *phy;
> +	int ret;
> +
> +	r = devm_kzalloc(dev, sizeof(*r), GFP_KERNEL);
> +	if (!r)
> +		return -ENOMEM;
> +
> +	r->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(r->base))
> +		return PTR_ERR(r->base);
> +
> +	r->rstc = devm_reset_control_get_shared(dev, NULL);
> +	if (IS_ERR(r->rstc))
> +		return dev_err_probe(dev, PTR_ERR(r->rstc), "failed to get reset\n");
> +
> +	ret = reset_control_deassert(r->rstc);
> +	if (ret)
> +		return ret;

It looks like you should be able to use
devm_reset_control_get_shared_deasserted() and let devres handle reset
control assertion on error and driver removal.

As is, the driver is missing a reset_control_assert() in the probe
error paths.


regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

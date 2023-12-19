Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9000EC41535
	for <linux-phy@archiver.kernel.org>; Tue, 19 Dec 2023 09:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EWMNW+zYw4bmafWgM1kOAdv/LhDFRdq75IXYtgTUweI=; b=VE712RENe5plai
	9yytRHRrSCy0tX36bl/WhpSzE4FmB+ltbEZEP/ByOq/LrsoViM0oVyTGxb/iq1UYRcsm/S9exX2Hh
	77NAEAtp050q/OLsiOWzATsQJHW5bjXVPnD/ecMr69T/GgGzara0UNWBed57pAEWd3Aps/dG3ew+V
	e04PFbu6Ssyan5j3jbhjm15PbREMY/xOOszYeClr2+JjSfqAAUEZCiuOd8oFa5qOQSCFC7nZheJ9I
	HsLFyycjTFQly3J76qEmOjAUV1WUeNyKvnv1U91L3lYIQscPDQlXn2fpz3Py07UL3vwJfeJ7LA81M
	VK3w78/x1TqkNvE2BSzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFW6Z-00DPQW-0p;
	Tue, 19 Dec 2023 09:09:35 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFW6V-00DPPP-0v;
	Tue, 19 Dec 2023 09:09:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=M2ZcM96KBp+XaqbV9zt0eJNwcUz16E+khnbj+5UKBT8=; b=DdlNNx9HykkehxdT7Z16YapiXP
	8fpL0+5oExfFvTCG9jOUTPJxLDRp40FKYNkptuyGbIovPwSFPkUAbjVpZnVarhhNE9HEdqGJnV6op
	YGwZcKggajv0PUwrHrf6bvGbHJQSDqBCZy5sTUZKmgwDI130Xn2lEgzJvWpkm74lb/HE=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rFW6O-003JpL-Kc; Tue, 19 Dec 2023 10:09:24 +0100
Date: Tue, 19 Dec 2023 10:09:24 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] phy: freescale: phy-fsl-imx8-mipi-dphy: Fix alias
 name to use dashes
Message-ID: <b01e05ac-8b28-49ad-8a1e-9cd667e5f1ec@lunn.ch>
References: <20231219090248.3317500-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231219090248.3317500-1-alexander.stein@ew.tq-group.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_010931_328268_96603D23 
X-CRM114-Status: GOOD (  14.66  )
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

On Tue, Dec 19, 2023 at 10:02:48AM +0100, Alexander Stein wrote:
> Devicetree spec lists only dashes as valid characters for alias names.
> Table 3.2: Valid characters for alias names, Devicee Specification,
> Release v0.4
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c b/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
> index e625b32889bf..0928a526e2ab 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
> @@ -706,7 +706,7 @@ static int mixel_dphy_probe(struct platform_device *pdev)
>  			return ret;
>  		}
>  
> -		priv->id = of_alias_get_id(np, "mipi_dphy");
> +		priv->id = of_alias_get_id(np, "mipi-dphy");

Are there any in tree DT blobs using mipi_dphy which are going to
break because of this change?

	Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

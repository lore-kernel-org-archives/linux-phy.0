Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E2CCC4828D
	for <linux-phy@archiver.kernel.org>; Tue,  6 Feb 2024 08:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahqCF8BSIv9UhCGvSUecpyY5c2hw8hDZR/vUR+a7/q0=; b=1YpiZ/j1CmlWu4
	6ArdLX6MJefna8b1C3pS4NQAnnDvdRFjBP5zUxuV7HReqs+hPQJ31gxBPjT/VWEaadlMsT5iyzKl+
	dK/ib3O0vvmipPyDVwW+PYCIJnCK9aZ4xROCejlyiV/oxOJzh9MeocetjXRxtR/2c4Go75lYs7Sns
	5EjgiEBHXhzbeIwcP8CSXh5UN4fWq6475I9SOX3TYUZkEiH/0grjl9pCyVavXelqt27dFOmoGYMev
	7eUVmZiN5zZZ6d20SpAxQGeqNmwdKbtrJrl3ri5xFzobmuRfYoy1ZmxSPWOYchFj1xwmWkS5eXHuU
	GznIIr5BYViCDYBQRfCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXGPD-00000006MkV-0jl6;
	Tue, 06 Feb 2024 08:02:11 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXGP9-00000006Mjr-3FvU;
	Tue, 06 Feb 2024 08:02:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1707206527; x=1738742527;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=a4Q/oXyzNfWEuv+brirftv8SwKehUyzvxN8ZXPJFLkU=;
  b=VAeB6Ym3EqchxO33qcRplO6aX4Nia25LDIFntONncbMImGHkaD2ydNJe
   cIC40o+C42gUwRsMkP875skANA2dwstndbrkqKl/CdaglQSzqpQIeJAFz
   RiAG8+AxF+n4tKS98xZpaREQJlGaifwnc6QqvtE/OI9PYb96/mmsD7+GT
   9BTElkLjh1CVAB3VgrFlmnTpw7rx/2dqXW2ozF/yL7Sdv4w42NdCCqRMJ
   faNinjetmLVfvyN5lQ03xwuG/qGkyrL/dSYXWSyn3KtGibiNTk0Y6gNqC
   NRrmOcSibG0+RHnBj3CcIgZ+dWBkQtYYGwBILB87DDTPTP+Avb6N3RsKY
   g==;
X-IronPort-AV: E=Sophos;i="6.05,246,1701126000"; 
   d="scan'208";a="35261939"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Feb 2024 09:02:05 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 6335C280075;
	Tue,  6 Feb 2024 09:02:05 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Ying Liu <victor.liu@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/1] phy: freescale: phy-fsl-imx8-mipi-dphy: Fix alias name to use dashes
Date: Tue, 06 Feb 2024 09:02:05 +0100
Message-ID: <10415929.nUPlyArG6x@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20240110093343.468810-1-alexander.stein@ew.tq-group.com>
References: <20240110093343.468810-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_000208_211780_8AB25A3E 
X-CRM114-Status: GOOD (  14.32  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi everyone,

Am Mittwoch, 10. Januar 2024, 10:33:43 CET schrieb Alexander Stein:
> Devicetree spec lists only dashes as valid characters for alias names.
> Table 3.2: Valid characters for alias names, Devicee Specification,
> Release v0.4
> =

> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Fixes: 3fbae284887de ("phy: freescale: phy-fsl-imx8-mipi-dphy: Add i.MX8q=
xp
> LVDS PHY mode support")
> ---
> Changes in v2:
> * Added Fixes tag as suggested by Liu Ying

Any feedback on this?

Thanks and best regards,
Alexander

>  drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
> b/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c index
> e625b32889bfc..0928a526e2ab3 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
> @@ -706,7 +706,7 @@ static int mixel_dphy_probe(struct platform_device
> *pdev) return ret;
>  		}
> =

> -		priv->id =3D of_alias_get_id(np, "mipi_dphy");
> +		priv->id =3D of_alias_get_id(np, "mipi-dphy");
>  		if (priv->id < 0) {
>  			dev_err(dev, "Failed to get phy node alias id: =

%d\n",
>  				priv->id);


-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

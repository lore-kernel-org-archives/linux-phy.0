Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C673C3DA4A
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 08:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJ0p2q7i08/jpm8Zvr17zONRw9x2cEw9AcHM7Lzu2pk=; b=rUsRHeA4kXqcn1
	DcKa6xxvG2Y5hiUTXXMY9EQ+PJK95kvcnrWWJG6BiDCzIU3Eay+ttrIsPxV8orTRlRN8UuWyg7+iL
	QeV5ovafQ5KZ/iK7W/sjpFeMur/opI9Cpm8l8u6jDMyhF6PkrnN5MVDLcmRddjUoz+3mm607K5HDY
	5Aru3IwIVnhUDovGdHmHZqahGMjitGxNzkO3sPE3/PIxPAVn0iEJIXgJ6ETz+h+MGA0gocbjUVujE
	DAI2BdxfF2SNOHhuaQH7jUbdQ89YUdOSiGNXmSPYrE2Magkf9oy22QcM3iRlU05ZyCGi4MBjpmcj8
	BqODsZpC3gIWgffI6nYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZRHw-00000004Nja-3P0P;
	Thu, 01 Aug 2024 08:35:56 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZRHR-00000004NbF-2DDq;
	Thu, 01 Aug 2024 08:35:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1722501325; x=1754037325;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=e2z2XK6Q2ktr4OcaidIWXvGR/XpR94af8Q5pcDbFQ28=;
  b=NqgI1kgUoBonbV5DdTlbnz2hngipWeGBoylbQLjj+hcgQb47p0N2ELeG
   tchkPmMbVe4gE9szeSrFHQpQiJQmHEUhpeJMbP9jsmZXneWqodG5JCbXP
   19X712T7Nd1j7AT5Ydvj63p7muIPPajBJ9Ppu7I44HBVblA1xZ/z0QGlZ
   wajwDwPJHWMuJQrvVIZxUh+YBACLc3RA+B1vsgUOe6hn9r0E17ew7jXnT
   UfIvqvky1+oXG2K/Dj72JgVyuEs4nzdBbIjXv/5Ja5m28pjweRLl+hFZF
   vBtQ4iAFOgxYbqW6NlCu03ShCnZg1j6P/BKO9k+5WCIhbnGOtNWFjr9vM
   A==;
X-CSE-ConnectionGUID: tCTULouRR8iw2dDlX5uW3w==
X-CSE-MsgGUID: wOK98NYFTW2+gIrxHtOQQQ==
X-IronPort-AV: E=Sophos;i="6.09,254,1716242400"; 
   d="scan'208";a="38191023"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 01 Aug 2024 10:35:20 +0200
X-CheckPoint: {66AB48C8-24-2D4D5AC2-F2EAEA09}
X-MAIL-CPID: 25B8214773C672C9B011DFACE12BA7A9_3
X-Control-Analysis: str=0001.0A782F1B.66AB48C9.002D,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E0CA01656CA;
	Thu,  1 Aug 2024 10:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1722501316;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=e2z2XK6Q2ktr4OcaidIWXvGR/XpR94af8Q5pcDbFQ28=;
	b=SS5wm3pIEqH5lkOGgxtNTaa1Mlt7GIP/o5fFB9NN0abWohsWtg4JDhJWJPkzDNiuOHphRL
	KGAXBoa7LcEHTRxyXhEEP0zBjwQoPBOrJG9jp3+CHiGpzWZmb3ufr8zdH6xRY27L2ov4ZA
	2zTllFbMTz3fqv+86CppDfk/Qlvk75FC1Dm0CE+5SjbkXhGDNk6UAM0lWyzF12N9NW9F8a
	ya4DbAWjdV1tUCRqP2utQPc3o/mtQhZosEwGxgWUFV9kR6F12le+LZdvj9WsLWZKfSQXxc
	T3wH2lNUHmDdWJGlAo7/sRzf7w1K1W9iFz5O69LvJ0XaW4SJ9reKLerpkCE0Pg==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: vkoul@kernel.org, kishon@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, Xu Yang <xu.yang_2@nxp.com>
Cc: jun.li@nxp.com, xu.yang_2@nxp.com, linux-phy@lists.infradead.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: fsl-imx8mq-usb: fix tuning parameter name
Date: Thu, 01 Aug 2024 10:35:15 +0200
Message-ID: <5802707.GXAFRqVoOG@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20240801065716.3819399-1-xu.yang_2@nxp.com>
References: <20240801065716.3819399-1-xu.yang_2@nxp.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_013525_891503_9816D608 
X-CRM114-Status: GOOD (  12.03  )
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

Am Donnerstag, 1. August 2024, 08:57:16 CEST schrieb Xu Yang:
> According to fsl,imx8mq-usb-phy.yaml, this tuning parameter should be
> fsl,phy-pcs-tx-deemph-3p5db-attenuation-db.

Should this include a Fixes tag?

Best regards,
Alexander

> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> ---
>  drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/fre=
escale/phy-fsl-imx8mq-usb.c
> index 0b9a59d5b8f0..adc6394626ce 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> @@ -176,7 +176,7 @@ static void imx8m_get_phy_tuning_data(struct imx8mq_u=
sb_phy *imx_phy)
>  		imx_phy->comp_dis_tune =3D
>  			phy_comp_dis_tune_from_property(imx_phy->comp_dis_tune);
>  =

> -	if (device_property_read_u32(dev, "fsl,pcs-tx-deemph-3p5db-attenuation-=
db",
> +	if (device_property_read_u32(dev, "fsl,phy-pcs-tx-deemph-3p5db-attenuat=
ion-db",
>  				     &imx_phy->pcs_tx_deemph_3p5db))
>  		imx_phy->pcs_tx_deemph_3p5db =3D PHY_TUNE_DEFAULT;
>  	else
> =



-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

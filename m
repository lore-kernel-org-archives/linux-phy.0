Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33889C3DA4A
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 12:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hamepl5OWdbC933ZAJ3tYzTkytA+ph6sjjGjY+u0Vls=; b=YqP+a5vIHI96Wh
	tIPjJYL/5Ys751Dt2XwoX0udbYAErsug/xHLl2gigsJ9u35TueVY9HED8nGL20BouTEecD1KxoKeB
	ZTJE6t65yJJkodNZivr/9ypBx/iIWKMpjSgjRAiJfoaRbsxAiGnrVt9iwQt+i6t+38M+H7bXkSGFI
	hRe3z+ttZaUSHHxkCVM6fRbn1KrERsJ0wCDcV6q+uiuSQhh9zjrEg2GW5pU0CW0Eq1Ntq1Xh+8Eds
	iR09TO8Ca2a9x9mUfwk2hk/n7JoCIpCEv4xVwqLWogpNNP9sdreSyO01Y4jFm2UnQAkGmGCK05iHO
	0bkyyR+3MNNkMObw7H+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZVJv-00000005H8s-3prD;
	Thu, 01 Aug 2024 12:54:15 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZVJQ-00000005H2y-2fTF;
	Thu, 01 Aug 2024 12:53:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1722516824; x=1754052824;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=JO4+VX3RecD7tvJ/44espFD0o4ZVH+vHrUDyMVyNI2c=;
  b=JD+n8Gz/RH4jda/+WGk+unHKqPuhaGPKovwMqdA3pVhyY8ut9LgiU3Ux
   UtBzqebTbdx1sUMrrDMa55uiqMzZhqDz2pRcUb2Nn9d27A3vWdB9Q39Cc
   4SBCPUj5shwAgztIoblCUagVqHI3j+UcEw2mpDxWvVcFX4ITgdj9J6qlT
   g6SH76NvRM/EfBgB5OVou9K0HxV58+eMc6So7L4gMWOKrBJVFNrDdbjL7
   NS4nsr3NLS8uhS8Jr4D2eq10el6A6piFo5yrvAI9TOu+sNxqpfjlxMTW2
   c6uD6XEouBLaVDqINf0zivZRKds1NZ5uWaNQ/immMVYnggk2YWPABimih
   g==;
X-CSE-ConnectionGUID: R4jLy6u6Q72g/1BWXl0zkA==
X-CSE-MsgGUID: 4vwozDPUTTi1Xt55UQjKYg==
X-IronPort-AV: E=Sophos;i="6.09,254,1716242400"; 
   d="scan'208";a="38198538"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 01 Aug 2024 14:53:41 +0200
X-CheckPoint: {66AB8555-F-E8EE7C4B-C1098986}
X-MAIL-CPID: 42072174400B03E93173B808A0A42CB1_5
X-Control-Analysis: str=0001.0A782F24.66AB8556.0014,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 27B99165FF9;
	Thu,  1 Aug 2024 14:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1722516817;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=JO4+VX3RecD7tvJ/44espFD0o4ZVH+vHrUDyMVyNI2c=;
	b=ReeR2HcBCaIrVbwR1ZsZwOoFsn52E5tJ7o/atRp4D6AxRBJQUGAAvQVUCZkFlv85oWJdY7
	oAJSx4X1Hb2GgFb8q7DxP2+yCp67Z2GIxyjmVSW9Un++zJtIAzPFLk8BxljZ76ZYNogMhJ
	U2VOBEQfHTjws4TNwzS8Pyn18jonFiY76sKRfM2rc78sJ+cBUPFWCt+e6iUhsVRglOfMZg
	QmF2DgKwCA7/bmOjx+zD0OAScg8oYCv8YavAcumMFJISDnlN20Q0tUMKQ9HgDiwcyEhqXj
	FKaAIM0UauoUydPIho1rfnI+aNO0BIEqxLlAO0KBLDwStkCW8sTfvPAEmfYaUQ==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: vkoul@kernel.org, kishon@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, Xu Yang <xu.yang_2@nxp.com>
Cc: jun.li@nxp.com, xu.yang_2@nxp.com, linux-phy@lists.infradead.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] phy: fsl-imx8mq-usb: fix tuning parameter name
Date: Thu, 01 Aug 2024 14:53:36 +0200
Message-ID: <4195136.aeNJFYEL58@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20240801124642.1152838-1-xu.yang_2@nxp.com>
References: <20240801124642.1152838-1-xu.yang_2@nxp.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_055345_188564_7AAFD4C0 
X-CRM114-Status: GOOD (  13.27  )
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

Hi,

Am Donnerstag, 1. August 2024, 14:46:42 CEST schrieb Xu Yang:
> According to fsl,imx8mq-usb-phy.yaml, this tuning parameter should be
> fsl,phy-pcs-tx-deemph-3p5db-attenuation-db.
> =

> Fixes: 63c85ad0cd81 ("phy: fsl-imx8mp-usb: add support for phy tuning")
> Cc: stable@vger.kernel.org
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

Look good to me:
Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> ---
> Changes in v2:
>  - add fixes
> Changes in v3:
>  - correct fixes commit
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

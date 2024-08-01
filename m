Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 405C6C3DA64
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 12:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jdxDOrMl7lV5IRX3cYHPzkKhoM2Me60VeLbVS7MapJs=; b=SFOClaOCQqcQHc
	YyN4Tapvpn0tuvjP0aYwMqljtEVis1XV5QpVv3atPkJvZoTXVx+LRpywBCBP2b/7aqt+eTZsnyeCY
	1eYI2skuemJaAi2lgXoDMLwc8fcpHYd+LPsdkZYTXzbX9ahTRXGiN9Bqk/42WRRVLzaqlprWaUnN+
	a5MG9r9w9u6k1JzaPscPUA523Yb4MKww3P9ho52H3QpANqIeAq5g+7JqB1aUk5elRnxg/1K/JnIBt
	XDgjRDCyKNRhkBdcdzlqhq5C1TPz6e8Srm5mSENBzSUxQVASH2pkMkThb0jBad6b41ZdlNkJV8Lje
	GOVcX3ShQRL4SZzGYfeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZUzQ-00000005D95-431K;
	Thu, 01 Aug 2024 12:33:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZUr4-000000058xN-3dDy;
	Thu, 01 Aug 2024 12:24:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=4Edi3d3y1GCSfDDNLxe+86RqW3hGIUB+NFjNqh7Asms=; b=b+FQnY+qn3PtjWOiwW4Bu+OqEL
	s8wXw455rHs7BBcVZaEuYP/DY1i1MvHD1syHZuEsMe9v1lhEJgH9GwqqbQSmyza90jUyp7xupjVPw
	XzOoJmbB0H+uZhzUnV17hovlZ6bD/z4SI9M2+xKr2T+0Y9r8XlaE+cLo0+hKvrRwTLzLQ5ZkjnRvM
	Zwxc1w4nYcNECsagprJjCz0+qbh+wwA+XlbkaUbCyUJkOtnCj/JAcWcYuWnVG4zjKKNF2UQlDx2jT
	Me6gcIjHOm187l3DA7TQN8/z52nx09Qd3wbjsiPk2nfvZqEaOFa0QYO1lGFHMqL+owiMYYMQEYg8j
	dDbPX1BQ==;
Received: from mx1.tq-group.com ([93.104.207.81])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZUr1-00000005SmM-1Q2g;
	Thu, 01 Aug 2024 12:24:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1722515063; x=1754051063;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=4Edi3d3y1GCSfDDNLxe+86RqW3hGIUB+NFjNqh7Asms=;
  b=euvIoPQRumDrKesH8WcRz3c5jeWjKkQtpG9jMX88m+t6Y+CWYkaLID3b
   2FmW7I7WT5CBedxqjqyxqNFRF87yUyVwslNWBl99726MGZrutxiqiKCWe
   n0B4vO0+J7Vv77UqK3l8SaJMznFSr4VemuPFbbwxNnCMKONErFpT/Ku2i
   HkLjo5oJqFWBxRCCcFZ+W4BxCwQ4MdCKWpuphUdiutLYbC++Ao335/9Lv
   0ZFA3c0roO2IHv/wDhjYZ3bgg8Hrbk4cQFucdJdBaU6M0/L4VPJEYX3iY
   M65tDLTilGNz/aDpFfjLA/QC4NRrZMOH/pDZZsiWNCmv4WNCOnw7Tv3hA
   Q==;
X-CSE-ConnectionGUID: VHGJl9vtQ7WP8mqBMssTHA==
X-CSE-MsgGUID: vfkU7GO3TsSXEj8/S8z9mw==
X-IronPort-AV: E=Sophos;i="6.09,254,1716242400"; 
   d="scan'208";a="38197656"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 01 Aug 2024 14:24:19 +0200
X-CheckPoint: {66AB7E73-1A-E8EE7C4B-C1098986}
X-MAIL-CPID: DEBEDEDA394C2436DE9E9A30FB8DAE5B_5
X-Control-Analysis: str=0001.0A782F26.66AB7E74.002C,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7C911161531;
	Thu,  1 Aug 2024 14:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1722515055;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=4Edi3d3y1GCSfDDNLxe+86RqW3hGIUB+NFjNqh7Asms=;
	b=R/X/Ba3lJPIp7nSK+bTtsYaxkeVQ5fnMt+7KYUBUFrwcDIX77009Chc3r6kxlc009uIRiU
	FN7m7j+kl4CFxrhBUZT37uiQcMZxIJbt6ocyIyfhpnaqO+WZTI1wQtihdSe6l+UUDxUH8f
	GYrZmlmAnOfr+0bOntE5v/GuN7e0q/txoSghOefNl3hm6MaicZVSFhQ68jLk6++L/TE6MS
	WyFVll9qmr8klYM6UnekCIlrqbtfzxPhQC3/Yel/rUFhdD32Xt6baxYQZcbEovARvx0aFm
	XwBP5NCdfwmynzRDPmgk4JPrVY3NDfiw/WLtddlZzryQG7U5qb3RogF1IHqJBg==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: vkoul@kernel.org, kishon@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, Xu Yang <xu.yang_2@nxp.com>
Cc: jun.li@nxp.com, xu.yang_2@nxp.com, linux-phy@lists.infradead.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: fsl-imx8mq-usb: fix tuning parameter name
Date: Thu, 01 Aug 2024 14:24:15 +0200
Message-ID: <14458406.uLZWGnKmhe@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20240801110136.1031689-1-xu.yang_2@nxp.com>
References: <20240801110136.1031689-1-xu.yang_2@nxp.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_132423_716639_8A3D490E 
X-CRM114-Status: GOOD (  13.97  )
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

Am Donnerstag, 1. August 2024, 13:01:36 CEST schrieb Xu Yang:
> According to fsl,imx8mq-usb-phy.yaml, this tuning parameter should be
> fsl,phy-pcs-tx-deemph-3p5db-attenuation-db.
> =

> Fixes: c971874a89e1 ("phy: fsl-imx8mq-usb: fix tuning parameter name")

Maybe you accidently selected the wrong commit here. I think this should be
Fixes: 63c85ad0cd811 ("phy: fsl-imx8mp-usb: add support for phy tuning")

Best regards,
Alexander

> Cc: stable@vger.kernel.org
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> =

> ---
> Changes in v2:
>  - add fixes
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

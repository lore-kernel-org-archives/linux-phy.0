Return-Path: <SRS0=pdUw=JL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 776AAC433B4
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 15:41:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DFE81611F2
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 15:41:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DFE81611F2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iIgk/X00oukI//eyw0qcU4CSq7u0FhTWCyyDl/cWJtI=; b=aO0IWe7HJhjrtNwFe4ZYW5X4Q
	D/U6MW0IbJl7Jn0TBLpXcSIPRDiSq4cyhfXYyjOVvSSXpb2ZCR88VkK0LBcQRtSFsoxxZ4M3hibjw
	3XrvlMPw8Km05dkIrIVuTWZLTYkW89HRT7ViLLxKsQndJrBZYR2Kc+jE86SKtfIFgY8wytwWq53DE
	6aK9czG+VInrS6akRwOnGNBMlZWD1Ehq9a4kcdOHLK/e+myL9lSl2guUkfuiyIOuRE/QTuERoeyk0
	dfAmjxJp27z68nSmi8pggTWwi37o9mlcQO6p/o/lsxHj0M9qT6bUroCdH/tl2lEgYydl0GwjBgQXF
	FlEHzC6hA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWhdg-00D2lj-Cx; Wed, 14 Apr 2021 15:41:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWhde-00D2lA-2S
 for linux-phy@desiato.infradead.org; Wed, 14 Apr 2021 15:41:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=bCkZw4kWVq9bmlb5qX4nV1VjoVqj2o4ltKO3CBlHo20=; b=xzsL/2J/JNtSvoZLQgGmZQysIi
 pLvNhoejkFyggsSnEMqG2qJv55PgdFJeLke8Dll1ohcMPUY/QsOTLbwJMo5bOJcy0EY9Af47M5Gvv
 S21ETG/fk6SEFsoVBAIM+u7gYzZWfmNPlOTUV2Xb5wk8Kp0W1RBHnqiZs/y/n2A7ZHf6F3JoFhUS8
 t6jkUKE+v4KxN/rFwJMZPiGiCh2ImF4IVUWMQiLH0SgDHtn3mOXS377gi5YefLPjO3Z7JzmAWGObz
 rjo0gordLUYss8xqtHJLrChcn64fEzmzUuZUbe3wW9sk+fCarmGmGYxVn03iCLe6FrLFudwCp9lSz
 9Zf0JwxA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWhdb-007uZ8-DY
 for linux-phy@lists.infradead.org; Wed, 14 Apr 2021 15:41:08 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1lWhdW-00056s-1I; Wed, 14 Apr 2021 17:41:02 +0200
Received: from pengutronix.de (unknown
 [IPv6:2a03:f580:87bc:d400:69d2:43d8:822b:d361])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id 6AB1160EA59;
 Wed, 14 Apr 2021 15:41:00 +0000 (UTC)
Date: Wed, 14 Apr 2021 17:40:59 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org,
 Chandrasekar Ramakrishnan <rcsekar@samsung.com>,
 Wolfgang Grandegger <wg@grandegger.com>,
 "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-can@vger.kernel.org,
 netdev@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH v2 4/6] phy: phy-can-transceiver: Add support for generic
 CAN transceiver driver
Message-ID: <20210414154059.3uq2blnee5knfkha@pengutronix.de>
References: <20210414140521.11463-1-a-govindraju@ti.com>
 <20210414140521.11463-5-a-govindraju@ti.com>
MIME-Version: 1.0
In-Reply-To: <20210414140521.11463-5-a-govindraju@ti.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_084107_479639_D3ABAC63 
X-CRM114-Status: GOOD (  16.92  )
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
Content-Type: multipart/mixed; boundary="===============6054368214729559752=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6054368214729559752==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tkjb36vvgctovqee"
Content-Disposition: inline


--tkjb36vvgctovqee
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 14.04.2021 19:35:19, Aswath Govindraju wrote:
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -61,6 +61,15 @@ config USB_LGM_PHY
>  	  interface to interact with USB GEN-II and USB 3.x PHY that is part
>  	  of the Intel network SOC.
> =20
> +config PHY_CAN_TRANSCEIVER
> +	tristate "CAN transceiver PHY"
> +	select GENERIC_PHY
> +	help
> +	  This option enables support for CAN transceivers as a PHY. This
> +	  driver provides function for putting the transceivers in various
> +	  functional modes using gpios and sets the attribute max link
> +	  rate, for mcan drivers.
> +
>  source "drivers/phy/allwinner/Kconfig"
>  source "drivers/phy/amlogic/Kconfig"
>  source "drivers/phy/broadcom/Kconfig"
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index adac1b1a39d1..9c66101c9605 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -9,6 +9,7 @@ obj-$(CONFIG_PHY_LPC18XX_USB_OTG)	+=3D phy-lpc18xx-usb-ot=
g.o
>  obj-$(CONFIG_PHY_XGENE)			+=3D phy-xgene.o
>  obj-$(CONFIG_PHY_PISTACHIO_USB)		+=3D phy-pistachio-usb.o
>  obj-$(CONFIG_USB_LGM_PHY)		+=3D phy-lgm-usb.o
> +obj-$(CONFIG_PHY_CAN_TRANSCEIVER)	+=3D phy-can-transceiver.o
>  obj-y					+=3D allwinner/	\
>  					   amlogic/	\
>  					   broadcom/	\

I'm not sure how the phy framework handles this, but I assume it's
alphabetically sorted, too.

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--tkjb36vvgctovqee
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmB3DQgACgkQqclaivrt
76mmBgf/UVJvC3LyyxxsHlIki0bqM9azxpljxBEijh6bYMp3McfGtrceY+uekf1Z
BbgUckVw3gwtEV54ZksGr7jy1uWOqimOPTsr7NHm+AoqrhbfwwZP5vWdcfYUC04J
OcdyAtxJk0T0T+7bLk9sRuPF9T9viN7CTBWVGrNwT9zTdKo0eQDClVGXoVK+RoGO
VpNh/cYAXoJdKh5Sg6faoK8TJwyy+GVZRYqolPSB8mxDVVCFNBZBMjh8GIQjUdmK
GAx+G13i/NiM01X/gZcznY9j1TzGmAp/sdUjBF0t53eVVbZ7tLUwhy8urUGmPm8n
PSPYUomuv+5Zq6t47oA2Hwk/CkYvyA==
=OYMs
-----END PGP SIGNATURE-----

--tkjb36vvgctovqee--


--===============6054368214729559752==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6054368214729559752==--


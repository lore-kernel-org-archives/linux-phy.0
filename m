Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80EFBC48BC4
	for <linux-phy@archiver.kernel.org>; Wed, 14 Feb 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmhGnUWszvIqK7889qhggMSWWdGg//FlLGUtCr1+qsE=; b=0koANinLw6kAq1
	18gRZ2F1lHp/FOkrHK3jQMzbfDE7Vv4riPGMUJ3c8dqpR9TGXc8snfnm9qXVunIInlLYCCfDJUFSB
	ej6D4LAReA52/gEKGEBHfGa7Q/83Feoi7F0y8Kkb7mXaEvjEb8ERaJ1I2yGJ2I0VfqEq11Eb1++vt
	Lj5/vqd2yzYyGj8hVv0c9Q+vMpPjm6bA3kJ4jtfkh1AY6MZNiSqTqNUFhzri5gOb3UOWX9fsKLGlc
	Kyf0PgljmaQv73xCSwXQyzop9SHyQs9QHL1cN0Q591wvAB65ex8ejPSJXZ/SA8zvameswoTzdyh9B
	PTVfcbQtNGpel8eJ94GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raDF3-0000000CdJN-0JAG;
	Wed, 14 Feb 2024 11:15:53 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raDEk-0000000Cd4v-45Cq;
	Wed, 14 Feb 2024 11:15:41 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id BB448FF809;
	Wed, 14 Feb 2024 11:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1707909330;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cVBBoExIDPIGxFfOdUtokpvWpmMZogOfSCWA93Y4vsg=;
	b=jvUkSjEApoYJjkVAqiGQPhn57zZNnoG5YsyMDQELN0D0DpNC41Vyc4onb9KoMHI5iAo/j6
	4mzuDkfNKETQq5kcMT1aRS4G5psFXEYrp1F4V4IsPSwSFRTAJUMGhZ1gk+nH+a80b/cMI5
	gKjrXwc0X+gKB1HxvWkeFodMPs+UEqr5JRwaxwt8NUhgO9fT03mE5rjkLxubpwmMnomR3h
	uB2IaB5iO45GxAowHFoUyMZUKweYJMKcCWclJT/azzJEhlU9NQBXgtA49Sw6CVQb+Mvt2I
	7qV/dvd8cFeqk9aXiAOp+x3hbF22NQEa8LQSYSlMI5qReSAN3MKnTERPGDfkvg==
Date: Wed, 14 Feb 2024 12:15:26 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de,
 aford@beaconembedded.com, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V4 6/6] arm64: defconfig: Enable
 DRM_IMX8MP_DW_HDMI_BRIDGE as module
Message-ID: <20240214121526.384440d1@booty>
In-Reply-To: <20240210204606.11944-7-aford173@gmail.com>
References: <20240210204606.11944-1-aford173@gmail.com>
	<20240210204606.11944-7-aford173@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_031535_589497_FAC92A05 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
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

On Sat, 10 Feb 2024 14:46:02 -0600
Adam Ford <aford173@gmail.com> wrote:

> The i.MX8M Plus has support for an HDMI transmitter.  The
> video is genereated by lcdif3, routed to the hdmi parallel
> video interface, then fed to a DW HDMI bridge to support
> up to 4K video output.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

[Tested using Avnet MSC SM2S-IMX8PLUS SoM on Avnet MSC SM2-MB-EP1]
Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

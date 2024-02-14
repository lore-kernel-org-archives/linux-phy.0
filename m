Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B11D4C48BC1
	for <linux-phy@archiver.kernel.org>; Wed, 14 Feb 2024 11:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMzOyEqrjEDp4daKSFLn93Zioxr8qEEGX2zwv2zrie0=; b=cFmcuAbLGxva7U
	00CzNtMYOhYnhILN8LH6+uJIM5h9JXteus/jpcWiAbEmnGBL98h7Zpi8Ms7XGRKgkN/9OKiTU4+Vq
	fLut4Pwm3h84KbirwgLh/5ndO6o3a6c27RCWyWVoB40nUKVWwEUhue8hiKZgkifl/x8yTYQH77H4W
	dLwI6nwLDVpv4YS9maUxvzlkgBZiKPtzRgjq8HYyzmEzUCxKDgIuWWrs2t2PNvCiiUQ8uQ+bNrSuq
	8MXQG9jGizdN/HLp+AOooaA25ewo9Imv9WJCB7kA0E1UCT7jLStbGL1AQeAfjxctf6vG3lJPQp9Fp
	xY2Cgjd83iSugDNI7DBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raDET-0000000CcvI-0Kur;
	Wed, 14 Feb 2024 11:15:17 +0000
Received: from relay1-d.mail.gandi.net ([2001:4b98:dc4:8::221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raDEO-0000000Ccqw-0GYv;
	Wed, 14 Feb 2024 11:15:14 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 93315240007;
	Wed, 14 Feb 2024 11:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1707909309;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6xLvZkEWdxA115Gj30wuQmg0zDKAjh3vEwmVlRYZntc=;
	b=H/ThDlXdRx+Bs+Q05JdjQrCCQJwWIgpixQZ+LJCHiWhxKtTt58cCgE6DIUToJkX8+rkYyo
	vZfMkMf3CVZheuUOqT3lsDQUeetFlhOX1X84J1HWkYP3FfLEJ+HwC8xZdI91qPDe2mWRnJ
	OFr2Q+/TVGAh0vSLjboi8wqUpSdYS72LKSJoQGxOl44rSdgC4Uj+VXntfoW1upeJ5XzoLy
	6RsFdQUZDkKBD+/hry2hHrX0/OirjATe3UUAYaaGLS7ToLVYwtNNoIywsFXL8/XsC7J7S1
	vC66GOpTXn4gbfN+D0bgp8lDG5JrzPTokfg87R5Uiwtg8L7Qo7/UDYzzpEBqKw==
Date: Wed, 14 Feb 2024 12:15:05 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de,
 aford@beaconembedded.com, Lucas Stach <l.stach@pengutronix.de>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha
 Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team
 <linux-imx@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V4 3/6] arm64: dts: imx8mp: add HDMI power-domains
Message-ID: <20240214121505.2aff7e69@booty>
In-Reply-To: <20240210204606.11944-4-aford173@gmail.com>
References: <20240210204606.11944-1-aford173@gmail.com>
	<20240210204606.11944-4-aford173@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_031512_402484_5FD662B3 
X-CRM114-Status: UNSURE (   7.71  )
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

On Sat, 10 Feb 2024 14:45:59 -0600
Adam Ford <aford173@gmail.com> wrote:

> From: Lucas Stach <l.stach@pengutronix.de>
> 
> This adds the PGC and HDMI blk-ctrl nodes providing power control for
> HDMI subsystem peripherals.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

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

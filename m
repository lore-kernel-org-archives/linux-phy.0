Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 648EAEEAA77
	for <linux-phy@archiver.kernel.org>; Thu, 14 Sep 2023 21:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hFGZPwFP5b3Go+tVt2q887WMeKRSbfbRHjk1xzddZM=; b=AQLw12aTSM+Z5U
	e2qDsgySekrpF9OFXNYNgd7XNSxijvIsT5n1UfLJUQ6jyAYB5BZGoLbByTogOrs25QyJucw9rpu3W
	5nHXVIvEegQnZTzUJLjD2dSCjY1cjtPApGcGBS3fcx3wEBZ0hGC6GDpGgyabChJ4+QBNfyxyifqIF
	zDOLpxROTxRU8YTLYkBy+mM86U5lenlBHTQ8QdZuFD6/wMAKlywTwKcylfDMTjRAw5/2jl6BDC6bI
	M1oLoKDUyDQnIhIcyMam6ClPQYrD9SS2CkPzyhygIkeqHXIWGn4hL2yr0c2sBofQbzqGaARtxlVgt
	JwqmTc2Pq1mkVBMm0oXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgthD-009IdB-0P;
	Thu, 14 Sep 2023 21:16:19 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgth9-009IcJ-2i;
	Thu, 14 Sep 2023 21:16:17 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id B4981FF803;
	Thu, 14 Sep 2023 21:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1694726169;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QfHE7Gy8icrSvGsTMlEV38zZ/z1OUPzjNqGfkRIIxr8=;
	b=jhodw+HFc8WoRUsJCam8bcN36VprOZAAK3tj8P1awGAj7ay5iRO5VsGz6YGrR/pGkYWJfF
	p8YTlMZ1UycuI17niKtxYPlH9Zyh/hsZ8F8TzUFeNrVOkKW6k91S83GOPWxinoB24NkEv2
	Gvhhpz5c6JxTdmADlzJBX0MQ/B7z2JY2/tXeiOMam2urXKhZwMpPNgtaFnoGP5kYksv1TZ
	n4YfSI83N/xDyyXc9+Okkf5Fgi2e9DKm7xmqaijHyKhsj6zX5Z56AV6fy66vAb/y+aZhS3
	bFZEzE2wkHSDiRdEK3ATnL0Zyr/qS3JPJkagnoC53MiGzCVOhwiYxbnnY9JL+Q==
Date: Thu, 14 Sep 2023 23:16:06 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio
 Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de, Richard
 Leitner <richard.leitner@skidata.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: add binding for the i.MX8MP
 HDMI PHY
Message-ID: <20230914231606.714982be@booty>
In-Reply-To: <20230906184211.1857585-1-l.stach@pengutronix.de>
References: <20230906184211.1857585-1-l.stach@pengutronix.de>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_141616_200651_7FE4CD7F 
X-CRM114-Status: UNSURE (   7.92  )
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

Hi Lucas,

On Wed,  6 Sep 2023 20:42:10 +0200
Lucas Stach <l.stach@pengutronix.de> wrote:

> Add a DT binding for the HDMI PHY found on the i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Thanks for resending this series!

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

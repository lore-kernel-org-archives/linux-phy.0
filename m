Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B65EDCA5FE3
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVzWBJDhZMV3zToKx8qdBexcAPLfJzqcXs/MC1WB0UA=; b=UVlPAUzoTpR2Ln
	ICsPLMLva8QmdPs4nq1ZQLw4WncgP5GfvJdCIzELPCCe/klxcPfO8UX/LJJPavsx+l6oDunKC4wXR
	d2Q9t5QcW6b7vDRyctZSrXRMbGNYlua2HOL5D44RhinCyrr/pUswTzkoVN4k5tSKh79cnlioqCuHw
	7jV4oec5Ksjwct1Eg5fY7eHEALMhgPqq4N4kVkbsBUOi6DggwOLkke9oh6BQS0VE6JNI294gqjCeT
	LZgUAVWhm/GjcANFo6jlwKaJ0RfI5g8tGk2ovFxcuxenUoR3gaGAdx5qDvQqd9kEapgOtokfGEQiA
	Wu9E6lWNDrSsclOIEAvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwAs-0000000DI06-1bHe;
	Sat, 03 Oct 2026 09:36:58 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwAr-0000000DHz8-1LXr;
	Sat, 03 Oct 2026 09:36:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 06AB043ABB;
	Sat,  3 Oct 2026 09:36:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3F5D1F0089D;
	Sat,  3 Oct 2026 09:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791020216;
	bh=57cvkcIoJzzm7zcSu2Zd4zEuzNCdr1C6KzAfCkfcuXw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=HUZj4lw2Ddt9xyc1006mO1rFn8o6OEoIBPQXj2wx07MkK4xtLDJQcLy02RkRAjME9
	 TTht8/TrGtK532GbkDqwXM3HlAuBBM1obmNWGR4ELJJx3CtWcj/peYIJQG+6iDMkES
	 XbKiLlV+Xw1gtxYRbmYCikNooCMye5W3ztclMNxD28Jd3UHMnLR+T5RkkxyfGKEc/u
	 3oTq4nNrgDZPuFq/zZWSCOSMaw7S2eK6kKr9Zwg7Orm4pnm4/K1YgJyWuXdkCEx2zX
	 UuAgArCjOQfxOQvRPdgH9g5jD7C45TdIcXdWsGGFedhJ03+Tb5aNk0WRFopNmV1zBB
	 pCdA6jxBveHmg==
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Frank Li <Frank.Li@nxp.com>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Aswath Govindraju <a-govindraju@ti.com>, 
 Stefan Wahren <wahrenst@gmx.net>
Cc: Christoph Stoidner <c.stoidner@phytec.de>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-can@vger.kernel.org, 
 linux-phy@lists.infradead.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20260907150420.18787-1-wahrenst@gmx.net>
References: <20260907150420.18787-1-wahrenst@gmx.net>
Subject: Re: (subset) [PATCH V5 0/4] arm64: dts: freescale: Add chargebyte
 Charge Control Y
Message-Id: <179102021250.199361.12700555463820856458.b4-ty@kernel.org>
Date: Sat, 03 Oct 2026 11:36:52 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Mon, 07 Sep 2026 17:04:16 +0200, Stefan Wahren wrote:
> This series adds support for the chargebyte Charge Control Y, which is
> an Electrical Vehicle Supply Equipment (EVSE) for MCS (Megawatt
> Charging System) charging stations.
> 
> sashiko reported in the first version of the series [1] that X_nRST_LAN
> is available via GPIO line names, but there is no reset mechanismn in the
> device tree. This finding is valid. Since the reset line feature isn't
> implemented for LAN8651 driver yet, I like to proceed with the current
> version. The LAN8651 handles reset via SPI commands and in rare cases
> we still have the possibility to control the reset from userspace.
> Btw the pin has a pull resistor in hardware, so it's not floating.
> 
> [...]

Applied, thanks!

[3/4] dt-bindings: phy: ti,tcan104x-can: Document Microchip MCP2542
      commit: a1aebc3846c37ca54977a79ef3af2f667a224891

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51545C197A0
	for <linux-phy@archiver.kernel.org>; Mon, 20 Nov 2023 14:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ibhW8amegYBxxqab/+K4CJUo1eeIqJCyULLQn0WUPcg=; b=uwQ9r7aYEnohyF
	eBCj74xtJPHxtTIdVP03XK48brd6aVeLY4kC9mXjnmnCmIDyEPyJ6OgLV4PREAsfRW3+X6ICVRh5o
	DYk+SxaffHrNDES9Z2VWGZ/PrOQeUa2AcnoPW8BSKXFRX/Fd74Tailv65Rvzo614P6O4nmUzqx2+C
	DW9tHqaINS01Unf9t+9HNJhhClgeJAknR0avFNL0JZFT3Vu3jPP0Gc4J/+guy3xgZuDMPWIasak0i
	8OdfQoZjSWghThAokt+oXPWjlqY8ifLQ3mGy1RHKQzwOjhh+4RhNTUZcGnc+8fTC1FflsyENGHQ3d
	x39Z6T0UmHeV/j3rqNrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r55d6-00COXh-2w;
	Mon, 20 Nov 2023 14:52:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r55cf-00COFb-0J;
	Mon, 20 Nov 2023 14:51:39 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r55cZ-0008C4-8l; Mon, 20 Nov 2023 15:51:31 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alex Bee <knaerzche@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Alex Bee <knaerzche@gmail.com>
Subject: Re: [PATCH v3 2/5] phy: phy-rockchip-inno-usb2: Add RK3128 support
Date: Mon, 20 Nov 2023 15:51:30 +0100
Message-ID: <1776143.VLH7GnMWUR@phil>
In-Reply-To: <20231119121340.109025-3-knaerzche@gmail.com>
References: <20231119121340.109025-1-knaerzche@gmail.com>
 <20231119121340.109025-3-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_065137_153547_96687123 
X-CRM114-Status: GOOD (  11.23  )
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

Am Sonntag, 19. November 2023, 13:13:37 CET schrieb Alex Bee:
> Add registers to support the 2-port usb2 phy found in RK312x SoC familiy.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
> Changes in v3:
>  - added phy_tuning-callback for RK3128
>  
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Vinod, can you pick up patches 1+2 if they seem ok to you?
Patches 3-5 are more or less independent from the phy changes
(the rk3128-usbphy was already documented in the binding,
 so I'll pick 3-5 now)

Thanks
Heiko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

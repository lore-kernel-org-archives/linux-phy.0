Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A676EC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 16:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DfGOSmXD+zqyGBbZFW0aDuLFzf8/pCXk7oL36ylyv+Q=; b=NCN2QouqrD6VTQ
	AAYSUKkBT9jf0HwRCeevuKWsWjPd9X6TQzDKuxvHL2wxCMjdWqLBUT/uk0qSyNlqWtj304J6K7YfR
	+hBIkOl95JJ+vSERHF+NVXr+4+6lcPLEbHmdh8rdOimWnS6z8b1ljA6xz3MYaKLvK2gHcsxlsZKrJ
	xZIxjtsmSIYuIiGThNjJXkWW7mx+PUQ4ujzpzF/RHB4BeKFPxDfy8HxmYtt242pM1XG2RYcSjhqB2
	9sp5q/dAP3Y7r0q450NmpUHxnWzqp19gNGaGqzOkWHUQjAUng5CZ99pEHqjJFdMl/GyW8ht0GsN8j
	WVoPuzJlhMUMAo7vBpAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNd6G-005noY-VQ; Fri, 25 Feb 2022 16:05:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNd6D-005nlQ-8q; Fri, 25 Feb 2022 16:05:43 +0000
Received: from [185.156.123.69] (helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nNd63-0001VJ-HI; Fri, 25 Feb 2022 17:05:31 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, p.zabel@pengutronix.de,
 cl@rock-chips.com, kishon@ti.com, lee.jones@linaro.org,
 kever.yang@rock-chips.com, jbx6244@gmail.com, vkoul@kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 wulf@rock-chips.com, devicetree@vger.kernel.org,
 michael.riesch@wolfvision.net, linux-rockchip@lists.infradead.org,
 david.wu@rock-chips.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v8 0/4] Add Naneng combo PHY support for RK3568
Date: Fri, 25 Feb 2022 17:05:25 +0100
Message-Id: <164580511526.1386065.12014105022399448660.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
References: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_080541_353144_8390DE88 
X-CRM114-Status: UNSURE (   9.89  )
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

On Tue, 8 Feb 2022 17:13:22 +0800, Yifeng Zhao wrote:
> This phy can be used as pcie-phy, usb3-phy, sata-phy or sgmii-phy.
> 
> Changes in v8:
> - rename 'mode' to 'type'
> - using devm_reset_control_array_get_exclusive
> - move rockchip_combphy_set_mode into rockchip_combphy_init
> 
> [...]

Applied, thanks!

[4/4] arm64: dts: rockchip: add naneng combo phy nodes for rk3568
      commit: 3cc8cd2d25954ed5794df2d190b81c7325c584e3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

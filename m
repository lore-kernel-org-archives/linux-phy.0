Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF7A9C2BA15
	for <linux-phy@archiver.kernel.org>; Tue, 18 Jun 2024 07:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GFeYDataVjjYH+H5I/Ns634puH5FhIgMD+ae9uRzZoQ=; b=nV0TJxcRBUYkRj
	vI6dd38oJLTUy4K+A7IvP+G3f82TCoB1L+JhcoNodHd5i5hfuWccOeEcwGD2oJUBpn2uqNLR9vX7a
	yIHR8s+0z5KV682xOtugd/JyR/l/mAuj2IzkvmaunBpGMulThaTkTY36iC8m6TmQ1Au9+4X5NKiLC
	isTNHyiJXAZuJRLo3jt3+gFzV61kzfbtBEb0yXMmQy0JhantVPx/KifxynyVveMWmavUWYzdd+CWY
	zhhkU6OnQ7kozFQukVl2xGtrXnQjjKuYMX0mlOMgWEOzomcVU3OBIkE0qj3G8Y87v0d+oXMEYL6b1
	AG0HsBsQKPbZg09FHfGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJTcy-0000000E16m-2ZSa;
	Tue, 18 Jun 2024 07:51:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJTcw-0000000E15g-2sup;
	Tue, 18 Jun 2024 07:51:39 +0000
Received: from i5e8616c2.versanet.de ([94.134.22.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sJTco-0006Ly-DP; Tue, 18 Jun 2024 09:51:30 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Algea Cao <algea.cao@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/4] phy: phy-rockchip-samsung-hdptx: Enable runtime PM at PHY
 core level
Date: Tue, 18 Jun 2024 09:51:28 +0200
Message-ID: <19099161.fAMKPKieAE@diego>
In-Reply-To: <20240618-rk3588-hdmiphy-clkprov-v1-2-80e4aa12177e@collabora.com>
References: <20240618-rk3588-hdmiphy-clkprov-v1-0-80e4aa12177e@collabora.com>
 <20240618-rk3588-hdmiphy-clkprov-v1-2-80e4aa12177e@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_005138_762166_29A556BB 
X-CRM114-Status: GOOD (  12.05  )
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

Am Montag, 17. Juni 2024, 23:48:10 CEST schrieb Cristian Ciocaltea:
> When a new PHY is created via [devm_]phy_create(), the runtime PM for it
> is not enabled unless the parent device (which creates the PHY) has its
> own runtime PM already enabled.
> 
> Move the call to devm_pm_runtime_enable() before devm_phy_create() to
> enable runtime PM at PHY core level.
> 
> With this change the ->power_on() and ->power_off() callbacks do not
> require explicit runtime PM management anymore, since the PHY core
> handles that via phy_pm_runtime_{get,put}_sync() when phy_power_on() and
> phy_power_off() are invoked.
> 
> Hence drop the now unnecessary calls to pm_runtime_resume_and_get() and
> pm_runtime_put() helpers.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

checked against phy_create()

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F9A3C2BBCA
	for <linux-phy@archiver.kernel.org>; Thu, 20 Jun 2024 00:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AUcP0gukMHGNLWBAgAJN5B6JdPsl493skI7DGAsArXY=; b=c4d5Hb1jmozgNn
	zhZznQvn2hHPidCCvtWC2y/Xr6+F8VlvWAo3oWn7xDiWNpzF3wN5JoCxOyggWzSOHerPCehgOLima
	Y4jOe87bSBCpoRkB4Jw1CSkrQrQ7P18GLoHoJPGP1qiTlLoyER2JOZWRMBdrtadrSIg+SdN9X4GQt
	I2VInBsgU0Gvd7GlKfJmR/u4Ngt9A4knwWwL8/HBzOg+ETJuBLLfNplZ0cSGA3c77oh0+DdI02KYM
	7Wse/QgoXcao+ardXFdMcmRct6NCfOmyW3qoJiSH7AMk6dVGnAaZJb3r0HtqUWeItt4/D1RcM2zLn
	iXX356Kof+ORKrQjwDig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK5p8-000000039jI-2XAQ;
	Thu, 20 Jun 2024 00:38:46 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK5ou-000000039Zp-17Gl;
	Thu, 20 Jun 2024 00:38:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718843907;
	bh=QI8oLnBKRdVBxplRPUjRHnwbLIWBkQTRxexqV3uq0kg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=KVwhvj1wOtH/PH+upURaF2rw1Za+iMke+XA0xYsUIKkReIH73u0XYhGWuyHeoZIaB
	 dUggqrF4a2sbMHaiDs/cwTV7N/hqZ/jC9G9NmWBBwxVy/bcx30AvJxtG3sANwgL7l0
	 jIo1oSlkGi4YjQXVNcQeY8Z84x0EippYH3Upqp1Ii25ege213NGaOC89TEYVJdkFNr
	 cD4mZeMJx6WD9qC7guWfvcN7HyZgb1F3A51tEBgZ893hw1s39vlHPJSgj3lgbEYhh8
	 0URMGifTsc6to9nYqa4TsKzJb+se/gxt98Juh+ZATPQPPdGSApyarkWpqaHl3rcpzV
	 iggdK1tLVIDmA==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 79AE337821AA;
	Thu, 20 Jun 2024 00:38:27 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 20 Jun 2024 03:36:23 +0300
Subject: [PATCH v2 2/4] phy: phy-rockchip-samsung-hdptx: Enable runtime PM
 at PHY core level
MIME-Version: 1.0
Message-Id: <20240620-rk3588-hdmiphy-clkprov-v2-2-6a2d2164e508@collabora.com>
References: <20240620-rk3588-hdmiphy-clkprov-v2-0-6a2d2164e508@collabora.com>
In-Reply-To: <20240620-rk3588-hdmiphy-clkprov-v2-0-6a2d2164e508@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_173832_600215_ACC5609C 
X-CRM114-Status: GOOD (  12.56  )
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

When a new PHY is created via [devm_]phy_create(), the runtime PM for it
is not enabled unless the parent device (which creates the PHY) has its
own runtime PM already enabled.

Move the call to devm_pm_runtime_enable() before devm_phy_create() to
enable runtime PM at PHY core level.

With this change the ->power_on() and ->power_off() callbacks do not
require explicit runtime PM management anymore, since the PHY core
handles that via phy_pm_runtime_{get,put}_sync() when phy_power_on() and
phy_power_off() are invoked.

Hence drop the now unnecessary calls to pm_runtime_resume_and_get() and
pm_runtime_put() helpers.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 24 ++++++-----------------
 1 file changed, 6 insertions(+), 18 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 3bd9b62b23dc..72de287282eb 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -860,7 +860,7 @@ static int rk_hdptx_ropll_tmds_mode_config(struct rk_hdptx_phy *hdptx,
 static int rk_hdptx_phy_power_on(struct phy *phy)
 {
 	struct rk_hdptx_phy *hdptx = phy_get_drvdata(phy);
-	int ret, bus_width = phy_get_bus_width(hdptx->phy);
+	int bus_width = phy_get_bus_width(hdptx->phy);
 	/*
 	 * FIXME: Temporary workaround to pass pixel_clk_rate
 	 * from the HDMI bridge driver until phy_configure_opts_hdmi
@@ -871,17 +871,7 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
 	dev_dbg(hdptx->dev, "%s bus_width=%x rate=%u\n",
 		__func__, bus_width, rate);
 
-	ret = pm_runtime_resume_and_get(hdptx->dev);
-	if (ret) {
-		dev_err(hdptx->dev, "Failed to resume phy: %d\n", ret);
-		return ret;
-	}
-
-	ret = rk_hdptx_ropll_tmds_mode_config(hdptx, rate);
-	if (ret)
-		pm_runtime_put(hdptx->dev);
-
-	return ret;
+	return rk_hdptx_ropll_tmds_mode_config(hdptx, rate);
 }
 
 static int rk_hdptx_phy_power_off(struct phy *phy)
@@ -894,8 +884,6 @@ static int rk_hdptx_phy_power_off(struct phy *phy)
 	if (ret == 0 && (val & HDPTX_O_PLL_LOCK_DONE))
 		rk_hdptx_phy_disable(hdptx);
 
-	pm_runtime_put(hdptx->dev);
-
 	return ret;
 }
 
@@ -977,6 +965,10 @@ static int rk_hdptx_phy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(hdptx->grf),
 				     "Could not get GRF syscon\n");
 
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to enable runtime PM\n");
+
 	hdptx->phy = devm_phy_create(dev, NULL, &rk_hdptx_phy_ops);
 	if (IS_ERR(hdptx->phy))
 		return dev_err_probe(dev, PTR_ERR(hdptx->phy),
@@ -986,10 +978,6 @@ static int rk_hdptx_phy_probe(struct platform_device *pdev)
 	phy_set_drvdata(hdptx->phy, hdptx);
 	phy_set_bus_width(hdptx->phy, 8);
 
-	ret = devm_pm_runtime_enable(dev);
-	if (ret)
-		return dev_err_probe(dev, ret, "Failed to enable runtime PM\n");
-
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 	if (IS_ERR(phy_provider))
 		return dev_err_probe(dev, PTR_ERR(phy_provider),

-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

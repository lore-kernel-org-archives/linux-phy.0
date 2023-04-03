Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EFBFC77B6E
	for <linux-phy@archiver.kernel.org>; Mon,  3 Apr 2023 20:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1wqplGiCMrZR47bi5w56tI/6Nk8Fs1Q9QIzGEimX8o=; b=4NEv5PjgQdiAOa
	3aqqfcGbIeWR3NlOS5BEL2rxOuBPst7Sov9Uca8SEcNOtOkw3urV/hbFiWKjpvzwfvEK8eC1EmYBe
	BgrzYpFjtyR2p7T126qcQ6ZH77PNTT+N4+J4g8qRtgW50JB63Os/HfNkUukVjiWW5Q9cXmRobFaUK
	WGC10egNe/QlrEtT59IPR++2bD21Onu47DJC9R/EtjnIB7tdXGHUHOBJ4K4MJst1Phy654KnGu4J9
	Pax8uONELch3GHMWCTuWW11H2vdsH3VG02TgiCquZ71AcHO0P2ULZcWO2JRBsuyaQ/B02ZaM6slRn
	VD/AUbl/puIUVi2ANoEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjQhy-00Gaor-36;
	Mon, 03 Apr 2023 20:23:18 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjQht-00GalR-2d;
	Mon, 03 Apr 2023 20:23:15 +0000
Received: from jupiter.universe (dyndsl-091-248-212-192.ewe-ip-backbone.de [91.248.212.192])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D92E1660314D;
	Mon,  3 Apr 2023 21:23:11 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680553392;
	bh=OnRUPZdtocjVgABsLzNAIMkVVDG7jrbPY3q8D3exfpA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RpTyaw5dZCTLA6bUtfsMW4QMK2RfkvraqaxmGhkTiBGHD0Hkqv1uaJOwjbekDVfL9
	 VOQ2pyOGg2N8b1sMpYuCAfE+6V7b8/k3wZ6bfb2Z6c1W9CLwwmPJn+3Ug7s9nvmuhN
	 x35/LwjtiD1aWxTrDu/5568fQO8/ALhTfWrgm9OA56783IMKD/MCdLqku3g/B+5KDi
	 eE50tQayUb6okIIIS34ovl+1fI6ZUu4x2/gX1494LfIsOVPwWKcA6oO+nIAEKzol2b
	 7p6Kcdl4PX8J11ABw99EX7ANEbmg/4dlIK30KZ8JOxYqBSYEuSbOO+kJjkNZirhSBK
	 30rCR6IykY75Q==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 112CE4807F0; Mon,  3 Apr 2023 22:23:09 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv2 4/7] phy: phy-rockchip-inno-usb2: add reset support
Date: Mon,  3 Apr 2023 22:23:04 +0200
Message-Id: <20230403202307.120562-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230403202307.120562-1-sebastian.reichel@collabora.com>
References: <20230403202307.120562-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_132313_985212_91E3D295 
X-CRM114-Status: GOOD (  15.45  )
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

Add reset handling support, which is needed for proper
operation with RK3588.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index b75712bd20c9..3a78c5bf11d4 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -24,6 +24,7 @@
 #include <linux/platform_device.h>
 #include <linux/power_supply.h>
 #include <linux/regmap.h>
+#include <linux/reset.h>
 #include <linux/mfd/syscon.h>
 #include <linux/usb/of.h>
 #include <linux/usb/otg.h>
@@ -223,6 +224,7 @@ struct rockchip_usb2phy_port {
  * @clk: clock struct of phy input clk.
  * @clk480m: clock struct of phy output clk.
  * @clk480m_hw: clock struct of phy output clk management.
+ * @phy_reset: phy reset control.
  * @chg_state: states involved in USB charger detection.
  * @chg_type: USB charger types.
  * @dcd_retries: The retry count used to track Data contact
@@ -239,6 +241,7 @@ struct rockchip_usb2phy {
 	struct clk	*clk;
 	struct clk	*clk480m;
 	struct clk_hw	clk480m_hw;
+	struct reset_control	*phy_reset;
 	enum usb_chg_state	chg_state;
 	enum power_supply_type	chg_type;
 	u8			dcd_retries;
@@ -280,6 +283,25 @@ static inline bool property_enabled(struct regmap *base,
 	return tmp != reg->disable;
 }
 
+static int rockchip_usb2phy_reset(struct rockchip_usb2phy *rphy)
+{
+	int ret;
+
+	ret = reset_control_assert(rphy->phy_reset);
+	if (ret)
+		return ret;
+
+	udelay(10);
+
+	ret = reset_control_deassert(rphy->phy_reset);
+	if (ret)
+		return ret;
+
+	usleep_range(100, 200);
+
+	return 0;
+}
+
 static int rockchip_usb2phy_clk480m_prepare(struct clk_hw *hw)
 {
 	struct rockchip_usb2phy *rphy =
@@ -534,6 +556,18 @@ static int rockchip_usb2phy_power_on(struct phy *phy)
 		return ret;
 	}
 
+	/*
+	 * For rk3588, it needs to reset phy when exit from
+	 * suspend mode with common_on_n 1'b1(aka REFCLK_LOGIC,
+	 * Bias, and PLL blocks are powered down) for lower
+	 * power consumption. If you don't want to reset phy,
+	 * please keep the common_on_n 1'b0 to set these blocks
+	 * remain powered.
+	 */
+	ret = rockchip_usb2phy_reset(rphy);
+	if (ret)
+		return ret;
+
 	/* waiting for the utmi_clk to become stable */
 	usleep_range(1500, 2000);
 
@@ -1348,6 +1382,10 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
+	rphy->phy_reset = devm_reset_control_get_optional(dev, "phy");
+	if (IS_ERR(rphy->phy_reset))
+		return PTR_ERR(rphy->phy_reset);
+
 	rphy->clk = of_clk_get_by_name(np, "phyclk");
 	if (!IS_ERR(rphy->clk)) {
 		clk_prepare_enable(rphy->clk);
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82036CD343F
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 03:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aemp9plRM7pZaM7Y/D6V7y4nU7IaSCp3giat/YxtLZ0=; b=ip0PfambfowOWW
	uK0LLR4yR8y2vfmKsA7z7QuAH2lIUYUZ1P1eCtNuHBnurzT6BHmuKU2s3bsvfQSTAlfxTBym5CJWo
	xW9UI3y0/Q6ngMdvhIg7YLT74zRjbRsER+Jy64B5G/sy/Pdcs3HmWrwB7xlXYmY40opx2CYXogvik
	f1mhWXMSehOkvJ5c9LItjvcw5ef1tjO4xBJRe0uBrvmQIIDRjA88ZVi3hdixXICob0Z59WOT/pXso
	v9c24V0+cJeZlM+DZPJ9t6AYFNn78sbcMckNpcCqOqqOQ47QTatsl/Slkrpp+jcxxUyJ9JccHOCPI
	JT4w/LQ+Ti+9W3YeTJaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPu7D-00000006YM5-0uzp;
	Thu, 21 May 2026 03:30:31 +0000
Received: from smtpbgjp3.qq.com ([54.92.39.34])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPu74-00000006Y7y-3HAo;
	Thu, 21 May 2026 03:30:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1779334180;
	bh=sPcwxXMSU/erMkNaNCyJUycUJ9YzZFBvUoXZx1f7aPU=;
	h=From:To:Subject:Date:Message-Id;
	b=iEw3l5N6D5eI3V3v9I8prOUrLxEurKPcj9Fe9WZJwFYuBnK4eYn8waPJZwUmALlGf
	 YrnJgyu9gxHH3e0zgJ869fNL7NWP/PnrAjt4Atw0DJXLERCyqW7pTg4jzfd+tfO8AL
	 nu1+m4hy2VoenMMeZSmNDrhmdNJxuYECmGvmHgg0=
X-QQ-mid: zesmtpsz7t1779334170t6c882390
X-QQ-Originating-IP: GfJMTq5avx9zXlwCEn2XSvRswGjVTkoW/bW3+O1LL9k=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 21 May 2026 11:29:26 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 11043512005840582340
From: Chaoyi Chen <kernel@airkyi.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: [PATCH 3/5] phy: rockchip: phy-rockchip-typec: Add DRM AUX bridge
Date: Thu, 21 May 2026 11:28:52 +0800
Message-Id: <20260521032854.103-4-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260521032854.103-1-kernel@airkyi.com>
References: <20260521032854.103-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: OE3tIrIEWSq4UMWM3UaNBhFvJ3GToPoj7pUmKjuFuPfM2HT2LO02qSS8
	IWDySKg0WebR1UrMJ6ZOGgkl16tFqIANII8v/9PiPvkSCATcwHBWMs4p8hhjmzP3qBNm7cO
	bzaTnMWZqPh74xcqg5fgIJIKRuB/Lnrimebxj8J0oAJc+fa3o21y5vdSjcEspzlXHKH5tlP
	UzW1PKcZndw58dZ4H3qRLlKc+e6732dYa9YtkGXFDQ4w+rWS6nLf+3yILGR9BOJMJMU9BMi
	yYO4W3E1//PMy0VcFl+YvetpXQ/XqyHsHYqiOzywV65XTYRm3L6FO9G8rO0my1/iD+4S6kT
	11FPxbGn8UXBJloroKAIa2yrA9DVn8DoiVThu8RFPG422vnGUGGNvO7lhpu6DvzHYGO8iaP
	Mv53TnmRWP6QsD9V5uOR4mdGjA9w4uP+B1KE9hQCmLQ5WCPeWIlEDmyiNcJWv2onwM7BKUS
	V/OgNhQ7IIdmBm3KF6mOaqrF9hxO0dPrjn07+fETdZa3nR3qdO1YPcD3P+NpOX3dkTYA4pn
	e3UOT6IMZQYiy/k2n1lA5bU7GGwDkFoG56+cr+kiK+8HaG3so4uClUABg9LwyXNFQad/EWh
	UWN6wsPd+mt9BsM2HHOh3jWnwYSJvi2FSMjF/wa1qeIqPoLvyjdoKdM7CPMkpkcJMDGH6HW
	AlHwTom0LgCmFJ0DBmUcVbVZGeykT/AL5O/lWcr5YJS30h5kNKZRRd3QvGK0k0lQ3TuDRUb
	hPXOeIBkKo02lgiFXBzY1hPkTuB7DdhNfIn/itO8F1xcAwIQ0oFdVowURO2neoOhBG+zRmg
	Rje6HXii/Y5PAC32HnyWwxUexBMzmSdPVFm3o4FfRvHpCkK9R6DDHHfHGaHVVniBaeCgslM
	tB3D7L4TVWzwHSy5oOHfm7nbJEsjvIJ5MdA0mrJ2DyVr6emH1PLj50nce9Btk2B/BpVtzQA
	I/iTriV88+nUcsFm/lFrMI8N7ZTbe2ipshziEiOat4ibC667URgAbYiG7vpOJJIgLKILnH1
	hzELUESxxxxKur7Ge/wSGlqqSN41Y=
X-QQ-XMRINFO: Nq+8W0+stu50tPAe92KXseR0ZZmBTk3gLg==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_203023_119361_13505A00 
X-CRM114-Status: GOOD (  12.04  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Using the DRM_AUX_BRIDGE helper to create the transparent DRM bridge
device.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/rockchip/Kconfig              |  2 ++
 drivers/phy/rockchip/phy-rockchip-typec.c | 13 +++++++++++--
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
index 14698571b607..9173d3b4fef4 100644
--- a/drivers/phy/rockchip/Kconfig
+++ b/drivers/phy/rockchip/Kconfig
@@ -119,6 +119,8 @@ config PHY_ROCKCHIP_SNPS_PCIE3
 config PHY_ROCKCHIP_TYPEC
 	tristate "Rockchip TYPEC PHY Driver"
 	depends on OF && (ARCH_ROCKCHIP || COMPILE_TEST)
+	depends on DRM || DRM=n
+	select DRM_AUX_BRIDGE if DRM_BRIDGE
 	select EXTCON
 	select GENERIC_PHY
 	select RESET_CONTROLLER
diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
index d9701b6106d5..48070b50416e 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -54,6 +54,7 @@
 
 #include <linux/mfd/syscon.h>
 #include <linux/phy/phy.h>
+#include <drm/bridge/aux-bridge.h>
 
 #define CMN_SSM_BANDGAP			(0x21 << 2)
 #define CMN_SSM_BIAS			(0x22 << 2)
@@ -1162,16 +1163,24 @@ static int rockchip_typec_phy_probe(struct platform_device *pdev)
 
 	for_each_available_child_of_node(np, child_np) {
 		struct phy *phy;
+		ret = 0;
 
-		if (of_node_name_eq(child_np, "dp-port"))
+		if (of_node_name_eq(child_np, "dp-port")) {
 			phy = devm_phy_create(dev, child_np,
 					      &rockchip_dp_phy_ops);
-		else if (of_node_name_eq(child_np, "usb3-port"))
+			ret = drm_aux_bridge_register_from_node(dev, child_np);
+		} else if (of_node_name_eq(child_np, "usb3-port"))
 			phy = devm_phy_create(dev, child_np,
 					      &rockchip_usb3_phy_ops);
 		else
 			continue;
 
+		if (ret) {
+			pm_runtime_disable(dev);
+			of_node_put(child_np);
+			return ret;
+		}
+
 		if (IS_ERR(phy)) {
 			dev_err(dev, "failed to create phy: %pOFn\n",
 				child_np);
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

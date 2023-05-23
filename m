Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBAC1C77B75
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 13:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DOXmsZEN3RVgZ+d8ESFWaHlSOLw2NrbEt/Ua1vuabdQ=; b=Q8m+tncaOFyyto
	RXG2MfJjYmYWbUntRBZbRuHzXZe9qE6Li231GKhHdhIEEywWpgXiF3V7S3QShbdrowD5bVWn/YEjr
	w22m3+CKbq63Yuh0pAmPxpng6GhwEhmCaeoNR141zkS74OmH1TsmBA7ZWG8ffDuBIkljaFDF68lex
	bdz9Y/EMTydsAStk+PHE7vL0u6NDGV1lmJVfYwDa8IvqLxJDsQFHuoc+gFMe1zV3XjVnXngB8o5DU
	Xu380rmXlaCtQ+1YgTx/8nyBolMejnT//5YRQCF77AEYovxp/vIz1JzVt7UIfQyT6LEGJuhyz2gDZ
	W+5OnubpuEWNTm27bujA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1SHp-00AOjF-1q;
	Tue, 23 May 2023 13:42:49 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1SHo-00AOit-1e
	for linux-phy@bombadil.infradead.org;
	Tue, 23 May 2023 13:42:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ViKI4t0SKXO4iiwXWVymsba+N4lBXVYHQrPxEsEaJls=; b=jTelHnG1LSuG6wOuhwgJpzK06j
	sp8UneIACYfF7QaH2q+C8VmAt6NbjEMyLh2XYDlB9Kn08M5B20nTWm8uBcpYs4DnJOHRtinb+aXp2
	PWiqejYHhQWJvXbV/FBucsmsH4BowaVsXSj69vrYOzgWBs1rKN+vS2GwYYU89aIKx2z1Rk3gJXMUP
	xIIC/MNiUV7LwpTgtZAyTMU7mO8iWbFHa5B2EDTBUAZ2/zrt7yAVx1BtYu8ybZLZZe42wPVL6v4d1
	ea/0b1Wi6N8ZxPC63oteZDTV2piJwiV3zl4EmUFOeO59iZoJZ6FHox3huSKYJiZXIv4ionz+OCnjj
	Y626OFfw==;
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Qvz-003Vyn-2E
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 12:16:19 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4f3a9ad31dbso6015658e87.0
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 05:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684844109; x=1687436109;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ViKI4t0SKXO4iiwXWVymsba+N4lBXVYHQrPxEsEaJls=;
        b=Hsl2Dv5K8URQJgGAlVolkrPOvDuRpqL62TFPVlDB53+F9WE9D/drEKfl2r+9GqNnGN
         ee1EtSbURM8gEiE/RN+3ewBCdGRj9ZA3Y1O1ksHKphi8etJTG7h25CFhqajrItm2oGsS
         XkMmgPfgEWB1tbPjUUdPQCHY42xnpuYymN1y3YgFLRCfsL55qiqoPmSw686bz+hSPsz1
         pWM4PB+EPqBtp4/bS5yEy+musakvDq3LFX7cItLOOVKYOzTBocKTu1meCTFUuArSsnXA
         +dF3Zs5Ug623PxyQ/w2ReDUSIFAHJE+QYV3gUjzrv6nYYBObTOVNspa09eUIz2Nqx/xV
         Ibog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684844109; x=1687436109;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ViKI4t0SKXO4iiwXWVymsba+N4lBXVYHQrPxEsEaJls=;
        b=LdP/pqEZWbuqKq11LnPql6nElVuh2orv2iTnpKy4hSFpunbgX5juy/zc39HJuz5i2q
         ag0cnXf6QSbbd6UzJyw/AP7LwyimoFJ9ehesvMRcplbH0ZKZ/BvawQb5ZbjxVGesDOw1
         C9T3+Qrxp+wWlK1JjDxaQ92VkoetLbfA9Wq56jhdie0pUqQc1eMYPBTtUb6G3EzXlGS0
         Dwk5DbbmuF4ajmnyRt8BQDKAMTT0nnSOOiLkPRQNDtRc5Cx4EvVzjjNAh+VV1uMpuIRL
         JVnTht3b4bc8Pu3QZp50jEhlnlmD9aYItwLE1MyaHnC23LHYmjL1oTgYXiKx8Gwrd3tI
         mosg==
X-Gm-Message-State: AC+VfDwyLzyg60sus4rKn3FKEj9syJpjKINkQz2Aa/Ak4Q5oBnDoSlYh
	hxh+rT1cTYClr/FURPBLIijJpFQUIEX8dmXplvA=
X-Google-Smtp-Source: ACHHUZ72bYMSRyQRFv584+HjvWOMYcMAfV250O04MsDehMJj5/+bBjE0hTMbWWYeWlTn2BUzHRDjDA==
X-Received: by 2002:ac2:4299:0:b0:4d8:75f8:6963 with SMTP id m25-20020ac24299000000b004d875f86963mr3607315lfh.38.1684844109428;
        Tue, 23 May 2023 05:15:09 -0700 (PDT)
Received: from eriador.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c26-20020ac2531a000000b004f160559d4asm1319616lfh.183.2023.05.23.05.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 05:15:08 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 14/15] drm/msm/hdmi: switch to generic PHY subsystem
Date: Tue, 23 May 2023 15:14:53 +0300
Message-Id: <20230523121454.3460634-15-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
References: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_131617_478249_175F044A 
X-CRM114-Status: GOOD (  21.13  )
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

Change the MSM HDMI driver to use generic PHY subsystem. Moving PHY
drivers allows better code sharing with the rest of the PHY system.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/Makefile           |  6 ---
 drivers/gpu/drm/msm/hdmi/hdmi.c        | 58 +++------------------
 drivers/gpu/drm/msm/hdmi/hdmi.h        | 72 +-------------------------
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c | 58 +++++++++++++--------
 4 files changed, 45 insertions(+), 149 deletions(-)

diff --git a/drivers/gpu/drm/msm/Makefile b/drivers/gpu/drm/msm/Makefile
index 7274c41228ed..7be487002816 100644
--- a/drivers/gpu/drm/msm/Makefile
+++ b/drivers/gpu/drm/msm/Makefile
@@ -23,12 +23,6 @@ msm-$(CONFIG_DRM_MSM_HDMI) += \
 	hdmi/hdmi_bridge.o \
 	hdmi/hdmi_hpd.o \
 	hdmi/hdmi_i2c.o \
-	hdmi/hdmi_phy.o \
-	hdmi/hdmi_phy_8960.o \
-	hdmi/hdmi_phy_8996.o \
-	hdmi/hdmi_phy_8x60.o \
-	hdmi/hdmi_phy_8x74.o \
-	hdmi/hdmi_pll_8960.o \
 
 msm-$(CONFIG_DRM_MSM_MDP4) += \
 	disp/mdp4/mdp4_crtc.o \
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
index a2780aba6d3c..5c50ae57f107 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
@@ -7,6 +7,7 @@
 
 #include <linux/of_irq.h>
 #include <linux/of_gpio.h>
+#include <linux/phy/phy.h>
 
 #include <drm/drm_bridge_connector.h>
 #include <drm/drm_of.h>
@@ -72,44 +73,6 @@ static void msm_hdmi_destroy(struct hdmi *hdmi)
 		msm_hdmi_i2c_destroy(hdmi->i2c);
 }
 
-static void msm_hdmi_put_phy(struct hdmi *hdmi)
-{
-	if (hdmi->phy_dev) {
-		put_device(hdmi->phy_dev);
-		hdmi->phy = NULL;
-		hdmi->phy_dev = NULL;
-	}
-}
-
-static int msm_hdmi_get_phy(struct hdmi *hdmi)
-{
-	struct platform_device *pdev = hdmi->pdev;
-	struct platform_device *phy_pdev;
-	struct device_node *phy_node;
-
-	phy_node = of_parse_phandle(pdev->dev.of_node, "phys", 0);
-	if (!phy_node) {
-		DRM_DEV_ERROR(&pdev->dev, "cannot find phy device\n");
-		return -ENXIO;
-	}
-
-	phy_pdev = of_find_device_by_node(phy_node);
-	of_node_put(phy_node);
-
-	if (!phy_pdev)
-		return dev_err_probe(&pdev->dev, -EPROBE_DEFER, "phy driver is not ready\n");
-
-	hdmi->phy = platform_get_drvdata(phy_pdev);
-	if (!hdmi->phy) {
-		put_device(&phy_pdev->dev);
-		return dev_err_probe(&pdev->dev, -EPROBE_DEFER, "phy driver is not ready\n");
-	}
-
-	hdmi->phy_dev = &phy_pdev->dev;
-
-	return 0;
-}
-
 /* construct hdmi at bind/probe time, grab all the resources.  If
  * we are to EPROBE_DEFER we want to do it here, rather than later
  * at modeset_init() time
@@ -510,37 +473,32 @@ static int msm_hdmi_dev_probe(struct platform_device *pdev)
 	if (hdmi->hpd_gpiod)
 		gpiod_set_consumer_name(hdmi->hpd_gpiod, "HDMI_HPD");
 
-	ret = msm_hdmi_get_phy(hdmi);
-	if (ret) {
+	hdmi->phy = devm_phy_get(&pdev->dev, NULL);
+	if (IS_ERR(hdmi->phy)) {
 		DRM_DEV_ERROR(&pdev->dev, "failed to get phy\n");
-		return ret;
+		return PTR_ERR(hdmi->phy);
 	}
 
 	ret = devm_pm_runtime_enable(&pdev->dev);
 	if (ret)
-		goto err_put_phy;
+		goto err;
 
 	platform_set_drvdata(pdev, hdmi);
 
 	ret = component_add(&pdev->dev, &msm_hdmi_ops);
 	if (ret)
-		goto err_put_phy;
+		goto err;
 
 	return 0;
 
-err_put_phy:
-	msm_hdmi_put_phy(hdmi);
+err:
 	return ret;
 }
 
 static int msm_hdmi_dev_remove(struct platform_device *pdev)
 {
-	struct hdmi *hdmi = dev_get_drvdata(&pdev->dev);
-
 	component_del(&pdev->dev, &msm_hdmi_ops);
 
-	msm_hdmi_put_phy(hdmi);
-
 	return 0;
 }
 
@@ -565,12 +523,10 @@ static struct platform_driver msm_hdmi_driver = {
 
 void __init msm_hdmi_register(void)
 {
-	msm_hdmi_phy_driver_register();
 	platform_driver_register(&msm_hdmi_driver);
 }
 
 void __exit msm_hdmi_unregister(void)
 {
 	platform_driver_unregister(&msm_hdmi_driver);
-	msm_hdmi_phy_driver_unregister();
 }
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.h b/drivers/gpu/drm/msm/hdmi/hdmi.h
index 46ae7ef9bc98..d68ac7aaf1f2 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.h
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.h
@@ -19,7 +19,6 @@
 #include "msm_drv.h"
 #include "hdmi.xml.h"
 
-struct hdmi_phy;
 struct hdmi_platform_config;
 
 struct hdmi_audio {
@@ -56,8 +55,7 @@ struct hdmi {
 
 	struct gpio_desc *hpd_gpiod;
 
-	struct hdmi_phy *phy;
-	struct device *phy_dev;
+	struct phy *phy;
 
 	struct i2c_adapter *i2c;
 	struct drm_connector *connector;
@@ -125,74 +123,6 @@ static inline u32 hdmi_qfprom_read(struct hdmi *hdmi, u32 reg)
 	return msm_readl(hdmi->qfprom_mmio + reg);
 }
 
-/*
- * hdmi phy:
- */
-
-enum hdmi_phy_type {
-	MSM_HDMI_PHY_8x60,
-	MSM_HDMI_PHY_8960,
-	MSM_HDMI_PHY_8x74,
-	MSM_HDMI_PHY_8996,
-	MSM_HDMI_PHY_MAX,
-};
-
-struct hdmi_phy_cfg {
-	enum hdmi_phy_type type;
-	void (*powerup)(struct hdmi_phy *phy, unsigned long int pixclock);
-	void (*powerdown)(struct hdmi_phy *phy);
-	const char * const *reg_names;
-	int num_regs;
-	const char * const *clk_names;
-	int num_clks;
-};
-
-extern const struct hdmi_phy_cfg msm_hdmi_phy_8x60_cfg;
-extern const struct hdmi_phy_cfg msm_hdmi_phy_8960_cfg;
-extern const struct hdmi_phy_cfg msm_hdmi_phy_8x74_cfg;
-extern const struct hdmi_phy_cfg msm_hdmi_phy_8996_cfg;
-
-struct hdmi_phy {
-	struct platform_device *pdev;
-	void __iomem *mmio;
-	struct hdmi_phy_cfg *cfg;
-	const struct hdmi_phy_funcs *funcs;
-	struct regulator_bulk_data *regs;
-	struct clk **clks;
-};
-
-static inline void hdmi_phy_write(struct hdmi_phy *phy, u32 reg, u32 data)
-{
-	msm_writel(data, phy->mmio + reg);
-}
-
-static inline u32 hdmi_phy_read(struct hdmi_phy *phy, u32 reg)
-{
-	return msm_readl(phy->mmio + reg);
-}
-
-int msm_hdmi_phy_resource_enable(struct hdmi_phy *phy);
-void msm_hdmi_phy_resource_disable(struct hdmi_phy *phy);
-void msm_hdmi_phy_powerup(struct hdmi_phy *phy, unsigned long int pixclock);
-void msm_hdmi_phy_powerdown(struct hdmi_phy *phy);
-void __init msm_hdmi_phy_driver_register(void);
-void __exit msm_hdmi_phy_driver_unregister(void);
-
-#ifdef CONFIG_COMMON_CLK
-int msm_hdmi_pll_8960_init(struct platform_device *pdev);
-int msm_hdmi_pll_8996_init(struct platform_device *pdev);
-#else
-static inline int msm_hdmi_pll_8960_init(struct platform_device *pdev)
-{
-	return -ENODEV;
-}
-
-static inline int msm_hdmi_pll_8996_init(struct platform_device *pdev)
-{
-	return -ENODEV;
-}
-#endif
-
 /*
  * audio:
  */
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
index 1bbd76e595af..42aaaebbce00 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/delay.h>
+#include <linux/phy/phy.h>
 #include <drm/drm_bridge_connector.h>
 #include <drm/drm_edid.h>
 
@@ -32,17 +33,6 @@ static void msm_hdmi_power_on(struct drm_bridge *bridge)
 	ret = regulator_bulk_enable(config->pwr_reg_cnt, hdmi->pwr_regs);
 	if (ret)
 		DRM_DEV_ERROR(dev->dev, "failed to enable pwr regulator: %d\n", ret);
-
-	if (hdmi->extp_clk) {
-		DBG("pixclock: %lu", hdmi->pixclock);
-		ret = clk_set_rate(hdmi->extp_clk, hdmi->pixclock);
-		if (ret)
-			DRM_DEV_ERROR(dev->dev, "failed to set extp clk rate: %d\n", ret);
-
-		ret = clk_prepare_enable(hdmi->extp_clk);
-		if (ret)
-			DRM_DEV_ERROR(dev->dev, "failed to enable extp clk: %d\n", ret);
-	}
 }
 
 static void power_off(struct drm_bridge *bridge)
@@ -58,9 +48,6 @@ static void power_off(struct drm_bridge *bridge)
 	 */
 	mdelay(16 + 4);
 
-	if (hdmi->extp_clk)
-		clk_disable_unprepare(hdmi->extp_clk);
-
 	ret = regulator_bulk_disable(config->pwr_reg_cnt, hdmi->pwr_regs);
 	if (ret)
 		DRM_DEV_ERROR(dev->dev, "failed to disable pwr regulator: %d\n", ret);
@@ -131,14 +118,21 @@ static void msm_hdmi_config_avi_infoframe(struct hdmi *hdmi)
 static void msm_hdmi_bridge_atomic_pre_enable(struct drm_bridge *bridge,
 					      struct drm_bridge_state *old_bridge_state)
 {
+	struct drm_atomic_state *state = old_bridge_state->base.state;
 	struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
 	struct hdmi *hdmi = hdmi_bridge->hdmi;
-	struct hdmi_phy *phy = hdmi->phy;
+	struct drm_connector *connector;
+	union phy_configure_opts phy_opts;
+	int ret;
 
 	DBG("power up");
 
+	connector = drm_atomic_get_new_connector_for_encoder(state, bridge->encoder);
+	if (WARN_ON(!connector))
+		return;
+
 	if (!hdmi->power_on) {
-		msm_hdmi_phy_resource_enable(phy);
+		phy_init(hdmi->phy);
 		msm_hdmi_power_on(bridge);
 		hdmi->power_on = true;
 	}
@@ -149,9 +143,27 @@ static void msm_hdmi_bridge_atomic_pre_enable(struct drm_bridge *bridge,
 	}
 
 	if (hdmi->phy_power_on)
-		msm_hdmi_phy_powerdown(phy);
+		phy_power_off(hdmi->phy);
+
+	phy_opts.hdmi.pixel_clk_rate = hdmi->pixclock / 1000;
+	phy_opts.hdmi.bpc = connector->display_info.bpc;
+	phy_opts.hdmi.color_space = HDMI_PHY_COLORSPACE_RGB;
+	phy_configure(hdmi->phy, &phy_opts);
+
+	ret = phy_power_on(hdmi->phy);
+	if (WARN_ON(ret))
+		return;
+
+	if (hdmi->extp_clk) {
+		ret = clk_set_rate(hdmi->extp_clk, hdmi->pixclock);
+		if (ret)
+			DRM_DEV_ERROR(bridge->dev->dev, "failed to set extp clk rate: %d\n", ret);
+
+		ret = clk_prepare_enable(hdmi->extp_clk);
+		if (ret)
+			DRM_DEV_ERROR(bridge->dev->dev, "failed to enable extp clk: %d\n", ret);
+	}
 
-	msm_hdmi_phy_powerup(phy, hdmi->pixclock);
 	hdmi->phy_power_on = true;
 
 	msm_hdmi_set_mode(hdmi, true);
@@ -165,7 +177,6 @@ static void msm_hdmi_bridge_atomic_post_disable(struct drm_bridge *bridge,
 {
 	struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
 	struct hdmi *hdmi = hdmi_bridge->hdmi;
-	struct hdmi_phy *phy = hdmi->phy;
 
 	if (hdmi->hdcp_ctrl)
 		msm_hdmi_hdcp_off(hdmi->hdcp_ctrl);
@@ -173,7 +184,12 @@ static void msm_hdmi_bridge_atomic_post_disable(struct drm_bridge *bridge,
 	DBG("power down");
 	msm_hdmi_set_mode(hdmi, false);
 
-	msm_hdmi_phy_powerdown(phy);
+	if (hdmi->phy_power_on) {
+		if (hdmi->extp_clk)
+			clk_disable_unprepare(hdmi->extp_clk);
+
+		phy_power_off(hdmi->phy);
+	}
 	hdmi->phy_power_on = false;
 
 	if (hdmi->power_on) {
@@ -181,7 +197,7 @@ static void msm_hdmi_bridge_atomic_post_disable(struct drm_bridge *bridge,
 		hdmi->power_on = false;
 		if (hdmi->hdmi_mode)
 			msm_hdmi_audio_update(hdmi);
-		msm_hdmi_phy_resource_disable(phy);
+		phy_exit(hdmi->phy);
 	}
 }
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

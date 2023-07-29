Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E2ADC05051
	for <linux-phy@archiver.kernel.org>; Sat, 29 Jul 2023 20:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LXnKPsCVqox4BU7UV3z97edvy2c81kHrXYFIo8dI+eY=; b=G+HdoM7j28D1KT
	Y+6rwJxFb+m2V9T6xebvnkvKeVSvuvqbfnUA2Z9nQ9+2HjtqYA66HcChNTTy/44JciiKTBE3Qyyx3
	E8wmfQEB9Be6sBej/y0zbK3MJYCLXhCnzlWxLfsT0srP9yqRoKFi6MusCK2efrtrY1lAIeQ5NZG2I
	VkF9pXSrbHqveXrVxjDxVgu/tk/xf+hBwhJ4hhc7c3clAhs+wHn9wVSsjBdX4ps7KmKDvAuUvAlTf
	txOYfK3xCsSpUmFzejvLB1DK1xMaJj4scckFOHjsWP9/aE6EDyJaVL4Vsuo841tzbAOz3aLKsafo6
	qSdZR8JVqVdQsDpddB7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPqmT-008oB8-2b;
	Sat, 29 Jul 2023 20:43:17 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPqmP-008o8F-1M
	for linux-phy@lists.infradead.org;
	Sat, 29 Jul 2023 20:43:15 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2b9b5ee9c5aso48047381fa.1
        for <linux-phy@lists.infradead.org>; Sat, 29 Jul 2023 13:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690663391; x=1691268191;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Aj47ZiYvBGN5XcZT50FycBFq7zs/xAKKRf97ufklpk0=;
        b=CVHhN/hbSCNshxIlUmuk7Tj9is5vqfTfK7pbOlne4/bDKujWSxQt7llXImsIM2Xmff
         B2jiHdmZhlr3ZR+VcRD+OIKGrAA1QkgvkqrduRPfX7rjwEcuDE3ek6K/eggCmYc48oXA
         n0AMX6JOT7ic17wUFn33HcFIX9F0CEHrtRip/DSCc1UL/zYIoMFygmwY+/5gV9hYxN6g
         pbQThB/jyDqsc6NK/rewEXQMZkD8mGt/H7xwCQVbvgW4VFGFiFF5h8zz950IxiEy2CZc
         HS3EKkG1GVEqb4/jS9ZHVDlxWhpqnzSRQwA968wWnV7IzmNQYJcCYV1CpNMzLFyWvgAT
         R3EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690663391; x=1691268191;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Aj47ZiYvBGN5XcZT50FycBFq7zs/xAKKRf97ufklpk0=;
        b=Wae+0zb9vcSSq+CUClvQz8Fa5UDEKpnTpkXc5H0cPxmcMBuz9a0gwpLsuvqk4UH9Nu
         jKg04lsHPkBM6/CLcCAsMKX+OeCBVXLOIw/V8Oo9L4xE1c/rNd7UMloAdNXHme6XawJv
         2meIph6DbbAFC6p80doG0CJHAPXPRpfd3X0uZaajT7AoypMOLwGMPO/JogmJFkoJL9zW
         IXqypYu2O3cWf+xUim9SORj0SzmjWH/mvOKzXQgQAhysB3jrf7jzbbRzLqoDhqStaipk
         128GJogF2pqoU4sOSNJWWmgrH3DYoGMlQIlAiF686TzvPKloj5VOicLj4MwOe35zm3/F
         MhZg==
X-Gm-Message-State: ABy/qLaNBaBPGoutj4vLb675Ly12XjENY2Rgfj6QaaS+JJFuXG2b+vw+
	jILWOr4eT1Aab+ENIx1QCD0MuA==
X-Google-Smtp-Source: APBJJlHHoBhdMRA8IY5gSfwdOb5H9TLvlz7tC7IbeHhsuY9ujLUKS7ThsNIc0ePVMw8kqBj+rg5+GQ==
X-Received: by 2002:a2e:2e17:0:b0:2b0:297c:cbdf with SMTP id u23-20020a2e2e17000000b002b0297ccbdfmr4252690lju.1.1690663391585;
        Sat, 29 Jul 2023 13:43:11 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v20-20020a2e9614000000b002b9af8422a8sm1705177ljh.130.2023.07.29.13.43.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jul 2023 13:43:10 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: [PATCH 2/3] phy: qcom: qmp-combo: switch to DRM_SIMPLE_BRIDGE
Date: Sat, 29 Jul 2023 23:43:06 +0300
Message-Id: <20230729204307.268587-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230729204307.268587-1-dmitry.baryshkov@linaro.org>
References: <20230729204307.268587-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230729_134313_465188_D2B9099E 
X-CRM114-Status: GOOD (  15.13  )
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

Switch to using the new DRM_SIMPLE_BRIDGE helper to create the
transparent DRM bridge device instead of handcoding corresponding
functionality.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/Kconfig              |  3 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 44 ++---------------------
 2 files changed, 3 insertions(+), 44 deletions(-)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index ced603806375..fd8584d5dec8 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -60,10 +60,9 @@ config PHY_QCOM_QMP_COMBO
 	tristate "Qualcomm QMP Combo PHY Driver"
 	default PHY_QCOM_QMP
 	depends on TYPEC || TYPEC=n
-	depends on DRM || DRM=n
 	select GENERIC_PHY
 	select MFD_SYSCON
-	select DRM_PANEL_BRIDGE if DRM
+	select DRM_SIMPLE_BRIDGE if DRM
 	help
 	  Enable this to support the QMP Combo PHY transceiver that is used
 	  with USB3 and DisplayPort controllers on Qualcomm chips.
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 1793d49bf45c..4bf64899cc71 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -21,7 +21,7 @@
 #include <linux/usb/typec.h>
 #include <linux/usb/typec_mux.h>
 
-#include <drm/drm_bridge.h>
+#include <drm/display/drm_simple_bridge.h>
 
 #include <dt-bindings/phy/phy-qcom-qmp.h>
 
@@ -1419,8 +1419,6 @@ struct qmp_combo {
 	struct clk_hw dp_link_hw;
 	struct clk_hw dp_pixel_hw;
 
-	struct drm_bridge bridge;
-
 	struct typec_switch_dev *sw;
 	enum typec_orientation orientation;
 };
@@ -3193,44 +3191,6 @@ static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
 }
 #endif
 
-#if IS_ENABLED(CONFIG_DRM)
-static int qmp_combo_bridge_attach(struct drm_bridge *bridge,
-				   enum drm_bridge_attach_flags flags)
-{
-	struct qmp_combo *qmp = container_of(bridge, struct qmp_combo, bridge);
-	struct drm_bridge *next_bridge;
-
-	if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR))
-		return -EINVAL;
-
-	next_bridge = devm_drm_of_get_bridge(qmp->dev, qmp->dev->of_node, 0, 0);
-	if (IS_ERR(next_bridge)) {
-		dev_err(qmp->dev, "failed to acquire drm_bridge: %pe\n", next_bridge);
-		return PTR_ERR(next_bridge);
-	}
-
-	return drm_bridge_attach(bridge->encoder, next_bridge, bridge,
-				 DRM_BRIDGE_ATTACH_NO_CONNECTOR);
-}
-
-static const struct drm_bridge_funcs qmp_combo_bridge_funcs = {
-	.attach	= qmp_combo_bridge_attach,
-};
-
-static int qmp_combo_dp_register_bridge(struct qmp_combo *qmp)
-{
-	qmp->bridge.funcs = &qmp_combo_bridge_funcs;
-	qmp->bridge.of_node = qmp->dev->of_node;
-
-	return devm_drm_bridge_add(qmp->dev, &qmp->bridge);
-}
-#else
-static int qmp_combo_dp_register_bridge(struct qmp_combo *qmp)
-{
-	return 0;
-}
-#endif
-
 static int qmp_combo_parse_dt_lecacy_dp(struct qmp_combo *qmp, struct device_node *np)
 {
 	struct device *dev = qmp->dev;
@@ -3436,7 +3396,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = qmp_combo_dp_register_bridge(qmp);
+	ret = drm_simple_bridge_register(dev);
 	if (ret)
 		return ret;
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

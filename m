Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81082C04FDF
	for <linux-phy@archiver.kernel.org>; Wed,  2 Aug 2023 01:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E5vCGuF7B78BEMYL4VnIsDv0Dmy98Rv8sLOyavx7K4M=; b=V+5O2xAvhezwBq
	oCit3lOzv7m/prb+aBq941bnHs0FZOd6vKJUf/ZVYPz1+CgBiovpmSHsZFGHjr81eHmAt5ZrjWpIo
	gs+ev3hF5MZU8KUZCgiOMIq54zvHx+tlPofxLQm3TpTGN5mBplkPQDOHkg62WZ7cQMyD3jXZKc9/W
	UEPHOJ35VnJwt6p28wrJMSMDvrd0uPfeJb9kBGg1Koc7USNtnApm9nFJ9AI5cXVkGKwOIs27HdvgX
	y2BehvWyy1LRgrnqnvYvhTKzVNHJ53Pkla6P7k4KN5ONQ+KYHObBUhisAQ/RIWEdx7TshplnOM7As
	rddXVnZcee6K8HqbFNRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qR0Vq-003fkL-0j;
	Wed, 02 Aug 2023 01:18:54 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qR0Vn-003fiZ-1T
	for linux-phy@lists.infradead.org;
	Wed, 02 Aug 2023 01:18:53 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4fe0d5f719dso10433948e87.2
        for <linux-phy@lists.infradead.org>; Tue, 01 Aug 2023 18:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690939128; x=1691543928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tPDyf9F6oxuLJnO7P0WewXMQuxcYf+gVC6ZTzYByK+E=;
        b=IU6NP0WgZSXz1sRbVhG5dBG1YNHoBoNwWr70pPMsJsXg17Jp1Am/wWay+h5nzZkYL+
         1mwfaJ4DUSyEujrJTaxRu9t/5OChj1H3ILUja8T2dFUGUvYB6Dz5+iGG9XgvCajMNblC
         Pz3TKv3NKth7BW6vEG8jIpTMp5T4xcQ67fHavgCrmnJPxg3XVI5j2ZpeKeGlgXWG26AI
         LagT2gTft8Ap0mKXzfFIdjduL8rZjsBkaj2siP2vS0AeMqptxTXi8T21BBuwcJyO+FlY
         5r4uuEGta3p42oUgY+pRzPWXqXlvbSNklie9ZuStHcKfPKLKJaevdeO3I4z3Ox0LJvZU
         f7iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690939128; x=1691543928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tPDyf9F6oxuLJnO7P0WewXMQuxcYf+gVC6ZTzYByK+E=;
        b=X3uYI1m3QgyIl38ZNqaWahLwRIyZ5WQ1lMMds3nYPnujIm2MkT78PH6QLWWiWPcVne
         /Hf7k+qi7TrEPjU8JCCixXI9ABF/IV2FPJLvhOTrCFodw/0rru9LSx0s/bGS69nmMKpj
         vzjR7RLZ6L/PqHbbGh85GAbmanronCExQAOtyDMgBsf4OGMg/RDxne9FElGrmRB7u2x4
         beeqRNdkyYU1e2Q1AST7ShE839Thjnsw4dEmXIz3+kr9ed074UkhLLKxs6YIH3/a4fbT
         2w8/CvEe5qbF+eCgAgyAeu3hZ3TST5LXXTZNs+wES5h+qJ5zqmB1JUv8yfy9W4cRp3pQ
         VOaA==
X-Gm-Message-State: ABy/qLacoi5dMTt0wWwiQ96Wl8h78Sj7DhgwaqzgFvj1PW/LfNZQeeiM
	mMqw3n+LjjEVWasK6ln+QJoRjA==
X-Google-Smtp-Source: APBJJlEUQJ/AnZzyL3KdBQ7o7SJXRQXwvk7qtSvFOG23+VtHx8zobSUfRfaVwMlnWzrAGh0GG+bIKw==
X-Received: by 2002:a19:6910:0:b0:4fb:8a90:396c with SMTP id e16-20020a196910000000b004fb8a90396cmr3202416lfc.38.1690939128584;
        Tue, 01 Aug 2023 18:18:48 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n14-20020a056512388e00b004faeedbb29dsm2775842lft.64.2023.08.01.18.18.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Aug 2023 18:18:48 -0700 (PDT)
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
	linux-usb@vger.kernel.org,
	freedreno@lists.freedesktop.org
Subject: [PATCH v3 2/3] phy: qcom: qmp-combo: switch to DRM_SIMPLE_BRIDGE
Date: Wed,  2 Aug 2023 04:18:44 +0300
Message-Id: <20230802011845.4176631-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230802011845.4176631-1-dmitry.baryshkov@linaro.org>
References: <20230802011845.4176631-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230801_181851_495373_62325487 
X-CRM114-Status: GOOD (  16.04  )
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
 drivers/phy/qualcomm/Kconfig              |  2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 44 ++---------------------
 2 files changed, 3 insertions(+), 43 deletions(-)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index ced603806375..fb03e3b3f637 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -63,7 +63,7 @@ config PHY_QCOM_QMP_COMBO
 	depends on DRM || DRM=n
 	select GENERIC_PHY
 	select MFD_SYSCON
-	select DRM_PANEL_BRIDGE if DRM
+	select DRM_SIMPLE_BRIDGE if DRM
 	help
 	  Enable this to support the QMP Combo PHY transceiver that is used
 	  with USB3 and DisplayPort controllers on Qualcomm chips.
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 9c3de41ecedb..5c7615edb161 100644
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

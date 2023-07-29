Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBF77C0729B
	for <linux-phy@archiver.kernel.org>; Sat, 29 Jul 2023 20:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ZgJh23UFt/m6fIVp95KKepb1Q6TvA0CKZdRUN5xxlE=; b=TRGl3JdJgWGv9F
	iaEyeXeoAsPr6ljFzbaVlQufVkEjPwdAU0zdREUZ+ePg3hrYxY3aYwDBlEAIzKbN3is3EfUgOnlE+
	mIb8n+TpQ8Eer4UBkgOcyKY4rWT3VPJS5/LT3wgK7rFDm3sChuOGUqf2xGIG4Maa6oCL/rGy+m/Ja
	GALHk+XaaUqUcjC5XEX8eWtBwcnKFqkxx1Ax3m5a5r828E9xlPPt05j/81ImK9c/3j1OQpkmyTAF4
	HxYBVsx+hzPRpXHjaACT8BWeERRwbPCBankUIzOn8WJu6aV8pmivb06uPo8lSfLcUxEzuAr/6imES
	Skt1OS5T2fhq9u11Pcdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPqmU-008oBo-20;
	Sat, 29 Jul 2023 20:43:18 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPqmQ-008o8P-0y
	for linux-phy@lists.infradead.org;
	Sat, 29 Jul 2023 20:43:16 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4fbf09a9139so5323461e87.2
        for <linux-phy@lists.infradead.org>; Sat, 29 Jul 2023 13:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690663392; x=1691268192;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZDdlyoDkgkxtwzfMoyhbzaQtZr6bZkx7DjquDteKG4Y=;
        b=BIu+KpRPzFNkYcfgybC0YHiIQGTWwBO0pNI/GIYsPoDbYsZkQrF1eZsmL9ZFpiYv5Y
         LQbcm2vTl5/moxGq5qJZLD4rd3ovibieHNx9Mp3CTC7yoqVxhBRBeUjFOYMslmc85+Zp
         8dQHMgMJV2DSVWCqgzO1bDVmZ9Krl6qKW6b59/93nF1rrzwhUyo3vaSSoO0xDIaVhKXY
         9XpoB/QntJjqwrcGYLnuehNL8c/pr/jUQju5fgqGuR4O7pCkoEI14+0WvCRwfRyvuQRR
         0l1qcPhHOjT7gfhAeStTXJN/WipiiJvR6JWl6sXEvv5DOeKT6CtmYeGwmJlAyCjWEfq0
         lSFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690663392; x=1691268192;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZDdlyoDkgkxtwzfMoyhbzaQtZr6bZkx7DjquDteKG4Y=;
        b=cZ2fLD5ht2/WLngPwhI9/jyEnWC7PEUPDetyRMPKLiRb+E6QZdIlN5veo+jID5a7f0
         weMbBLDFyBqUfUileiq/FxY9tQ756lHT4phwK7ksU8Do5Q4S7r+O6Y/AnNMU0U2maeau
         N0H9quacyDKrIRoF99D19I47glSlFbp/hq+L24H6MMV0EjSD+hcBEamtAXePp8jMN+QG
         jWrBFufot3HOzlxqLaA6VUfbvU7/TdmFpsnovBWSt1HO0ORmDnmilDIfb7VEQQZxIDZs
         78SE/RYFWmNPI+S63bMawaCjwWeaI92NA/ocAFC/Ukmb7pSIW7ewC6u/txd8Uout0Yk9
         /Gmw==
X-Gm-Message-State: ABy/qLZYZcbS11o9nFTtbYZdDr4U29ZKTnS7KmS1iWLGXVZEcxSFELTw
	x5JzH22JCjXAC7m9DHTEdMI9yA==
X-Google-Smtp-Source: APBJJlEvAlqKmmWBgEIXeKINR4BQqntArkVEEi73dX6Ln0eCbPFQGPwl6pLqTWSEi/MebzYnvUctTQ==
X-Received: by 2002:a2e:8197:0:b0:2b9:44c6:d13b with SMTP id e23-20020a2e8197000000b002b944c6d13bmr5066418ljg.9.1690663392396;
        Sat, 29 Jul 2023 13:43:12 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v20-20020a2e9614000000b002b9af8422a8sm1705177ljh.130.2023.07.29.13.43.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jul 2023 13:43:11 -0700 (PDT)
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
Subject: [PATCH 3/3] usb: typec: nb7vpq904m: switch to DRM_SIMPLE_BRIDGE
Date: Sat, 29 Jul 2023 23:43:07 +0300
Message-Id: <20230729204307.268587-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230729204307.268587-1-dmitry.baryshkov@linaro.org>
References: <20230729204307.268587-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230729_134314_336906_C0DFE2CE 
X-CRM114-Status: GOOD (  14.31  )
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
 drivers/usb/typec/mux/Kconfig      |  3 +-
 drivers/usb/typec/mux/nb7vpq904m.c | 44 ++----------------------------
 2 files changed, 3 insertions(+), 44 deletions(-)

diff --git a/drivers/usb/typec/mux/Kconfig b/drivers/usb/typec/mux/Kconfig
index 784b9d8107e9..1640048f3256 100644
--- a/drivers/usb/typec/mux/Kconfig
+++ b/drivers/usb/typec/mux/Kconfig
@@ -38,8 +38,7 @@ config TYPEC_MUX_INTEL_PMC
 config TYPEC_MUX_NB7VPQ904M
 	tristate "On Semiconductor NB7VPQ904M Type-C redriver driver"
 	depends on I2C
-	depends on DRM || DRM=n
-	select DRM_PANEL_BRIDGE if DRM
+	select DRM_SIMPLE_BRIDGE if DRM
 	select REGMAP_I2C
 	help
 	  Say Y or M if your system has a On Semiconductor NB7VPQ904M Type-C
diff --git a/drivers/usb/typec/mux/nb7vpq904m.c b/drivers/usb/typec/mux/nb7vpq904m.c
index 9360b65e8b06..c89a956412ea 100644
--- a/drivers/usb/typec/mux/nb7vpq904m.c
+++ b/drivers/usb/typec/mux/nb7vpq904m.c
@@ -11,7 +11,7 @@
 #include <linux/regmap.h>
 #include <linux/bitfield.h>
 #include <linux/of_graph.h>
-#include <drm/drm_bridge.h>
+#include <drm/display/drm_simple_bridge.h>
 #include <linux/usb/typec_dp.h>
 #include <linux/usb/typec_mux.h>
 #include <linux/usb/typec_retimer.h>
@@ -70,8 +70,6 @@ struct nb7vpq904m {
 	bool swap_data_lanes;
 	struct typec_switch *typec_switch;
 
-	struct drm_bridge bridge;
-
 	struct mutex lock; /* protect non-concurrent retimer & switch */
 
 	enum typec_orientation orientation;
@@ -297,44 +295,6 @@ static int nb7vpq904m_retimer_set(struct typec_retimer *retimer, struct typec_re
 	return ret;
 }
 
-#if IS_ENABLED(CONFIG_OF) && IS_ENABLED(CONFIG_DRM_PANEL_BRIDGE)
-static int nb7vpq904m_bridge_attach(struct drm_bridge *bridge,
-				    enum drm_bridge_attach_flags flags)
-{
-	struct nb7vpq904m *nb7 = container_of(bridge, struct nb7vpq904m, bridge);
-	struct drm_bridge *next_bridge;
-
-	if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR))
-		return -EINVAL;
-
-	next_bridge = devm_drm_of_get_bridge(&nb7->client->dev, nb7->client->dev.of_node, 0, 0);
-	if (IS_ERR(next_bridge)) {
-		dev_err(&nb7->client->dev, "failed to acquire drm_bridge: %pe\n", next_bridge);
-		return PTR_ERR(next_bridge);
-	}
-
-	return drm_bridge_attach(bridge->encoder, next_bridge, bridge,
-				 DRM_BRIDGE_ATTACH_NO_CONNECTOR);
-}
-
-static const struct drm_bridge_funcs nb7vpq904m_bridge_funcs = {
-	.attach	= nb7vpq904m_bridge_attach,
-};
-
-static int nb7vpq904m_register_bridge(struct nb7vpq904m *nb7)
-{
-	nb7->bridge.funcs = &nb7vpq904m_bridge_funcs;
-	nb7->bridge.of_node = nb7->client->dev.of_node;
-
-	return devm_drm_bridge_add(&nb7->client->dev, &nb7->bridge);
-}
-#else
-static int nb7vpq904m_register_bridge(struct nb7vpq904m *nb7)
-{
-	return 0;
-}
-#endif
-
 static const struct regmap_config nb7_regmap = {
 	.max_register = 0x1f,
 	.reg_bits = 8,
@@ -461,7 +421,7 @@ static int nb7vpq904m_probe(struct i2c_client *client)
 
 	gpiod_set_value(nb7->enable_gpio, 1);
 
-	ret = nb7vpq904m_register_bridge(nb7);
+	ret = drm_simple_bridge_register(dev);
 	if (ret)
 		return ret;
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

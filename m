Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1C74C25B6F
	for <linux-phy@archiver.kernel.org>; Wed, 25 Oct 2023 22:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7jBEGG8+XOIgcTqGsZKtR//JLrEnj/5JPWbfrLKSAY=; b=eyV6ogao8IyH3l
	RiGOHO7i25J8MNE4L4JxQXQ4TMJQiPgheHvpU7tGGQOKtE4WHoCIbHMMVk6RCelQI6qsMBpsfJ69P
	2XQixluf1LOm2QzwQdkXSDYR+pGWPekopXgm4TPOOicTQQ0G3xfYEeNshVhBf0WDZTUCIW/5pC/id
	eK/0SYrnpS90WeSEkqQMzZnOXuc+ZQI4Ax8bU//P2ljWgjLdMOPC2NluhArjMOVrs/SqKH/ZuBd2Q
	oKhT+9vCTKkKuASAXce3ujAoeWZhaZaFKAbhiTzfrKOcYB1mgC/p/HJDuQJmucjsbv/DN/ocetN90
	V1deP2EsqdiqHwrJu/AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvmOa-00DFog-1O;
	Wed, 25 Oct 2023 22:30:36 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvmOX-00DFnu-3C
	for linux-phy@lists.infradead.org;
	Wed, 25 Oct 2023 22:30:35 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2c5039d4e88so3629071fa.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Oct 2023 15:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698273032; x=1698877832; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WpVPinR5JJuEeMOpQArxArU49/SliqoIXWUtACV29KQ=;
        b=feUUEAGGgSiSxKgmLZyBmvtnQJX25lJ0BX4Bwe0QQJoJVlWDIKMb5R4YeVKpno9XBv
         QoEO+dEktnB8841aEBuaTh/B7iAqqLrGzcWbW73gTNAdID6tFESW7rolUTIhAfknB/3O
         JAgQKED5TQk1uQ0/HVO0iAAFhrLxu3yRhKvuXMFmyfemXkQhMAmO4qk7/Spk0il2qFwa
         D9/RlB0g4MC/RNFl1pgwt8Y4P0eJ0i0xS0YRFcIyTbISAqJ7eZmmg07RGNhauQQdVbM/
         fVm2pUsTMUkAWZWgaKtZ6h/+C3D6nDMS3VfruHycPdUZ6/kYNaXuwYtxztCYT8+z7LT8
         WbUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698273032; x=1698877832;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WpVPinR5JJuEeMOpQArxArU49/SliqoIXWUtACV29KQ=;
        b=iR31U7U/XcNmaPEjIXHWJHUMnx+vMfy+bK06LXnzpjA1/T3yOvBik1BXCcbJYf/Mna
         tjAiidLcbjMh3HqDYEdlkL7cI6ccCGfFl6/cZAmooXFLFe/TFvZfysU7LAH+w2Cjb9eP
         knwBNmPAPGorK0PZ84fpbf0vg7upGplcPF2RmoUbov1TZ+KIUm3yxTWAAOwbsd6pDc6a
         v0TfZj3yI4BhDUTGwXCKV1DNdZHYhX9Rr6DGSFCzh7ulluJyTmaUNM9g+lh7mWFBayRh
         YefBTcm1B1+Egce1S9yBJpdNPddzCEVXrPuQdWOdeI3dHGHQMvp2mygdHQRhWStVs8pu
         20Eg==
X-Gm-Message-State: AOJu0Yx1cQ/61xu/deCJttdN3vatldpqHmcex9phEcblDRO/RRjRtYK2
	I6PDsGiYoFHJkMNH3wavVm2TFw==
X-Google-Smtp-Source: AGHT+IEi3pvjclSCPZ8mQEH0qoHva/wUGzaOz7/FqCsCJF4laerB0QshFYVvADco2dAkL/RhSpIHSQ==
X-Received: by 2002:a2e:a7c7:0:b0:2c5:1867:b0bd with SMTP id x7-20020a2ea7c7000000b002c51867b0bdmr12045011ljp.23.1698273032501;
        Wed, 25 Oct 2023 15:30:32 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a36-20020a05651c212400b002bcbae4c21fsm2612543ljq.50.2023.10.25.15.30.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 15:30:31 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	freedreno@lists.freedesktop.org
Subject: [PATCH v5 2/6] phy: qcom: qmp-combo: switch to DRM_AUX_BRIDGE
Date: Thu, 26 Oct 2023 01:28:03 +0300
Message-ID: <20231025223027.943563-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231025223027.943563-1-dmitry.baryshkov@linaro.org>
References: <20231025223027.943563-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_153034_029209_55A908CB 
X-CRM114-Status: GOOD (  14.92  )
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

Switch to using the new DRM_AUX_BRIDGE helper to create the
transparent DRM bridge device instead of handcoding corresponding
functionality.

Acked-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/Kconfig              |  2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 44 ++---------------------
 2 files changed, 3 insertions(+), 43 deletions(-)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index d891058b7c39..846f8c99547f 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -63,7 +63,7 @@ config PHY_QCOM_QMP_COMBO
 	depends on DRM || DRM=n
 	select GENERIC_PHY
 	select MFD_SYSCON
-	select DRM_PANEL_BRIDGE if DRM
+	select DRM_AUX_BRIDGE if DRM_BRIDGE
 	help
 	  Enable this to support the QMP Combo PHY transceiver that is used
 	  with USB3 and DisplayPort controllers on Qualcomm chips.
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 9c87845c78ec..f6c727249104 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -21,7 +21,7 @@
 #include <linux/usb/typec.h>
 #include <linux/usb/typec_mux.h>
 
-#include <drm/drm_bridge.h>
+#include <drm/bridge/aux-bridge.h>
 
 #include <dt-bindings/phy/phy-qcom-qmp.h>
 
@@ -1419,8 +1419,6 @@ struct qmp_combo {
 	struct clk_hw dp_link_hw;
 	struct clk_hw dp_pixel_hw;
 
-	struct drm_bridge bridge;
-
 	struct typec_switch_dev *sw;
 	enum typec_orientation orientation;
 };
@@ -3191,44 +3189,6 @@ static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
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
@@ -3440,7 +3400,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = qmp_combo_dp_register_bridge(qmp);
+	ret = drm_aux_bridge_register(dev);
 	if (ret)
 		return ret;
 
-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

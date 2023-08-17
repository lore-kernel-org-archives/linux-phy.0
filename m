Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9867C3062E
	for <linux-phy@archiver.kernel.org>; Thu, 17 Aug 2023 14:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4IiTAivx2SmitfVcoiKNhfp+ojPU7tPb8+1zGGXn/g=; b=aIx7Zcr2suVvlV
	QFlMQfxI1XT7UEEwSxKDnK56q8SHCS3TF+11po/fBFOsjnMujj8UjaRrzusZy5qhO1nh5ii9laphu
	PaUGeJJ/2bsMWFKpa646IVrNqnQ3yKwxpyjajaBkc2VGXoZ/bIIRBixmImgftHK8Z+Q96hMA0WnQX
	VsLeoR7R0Vu7GX7f9zJvRJZVLUsWuRW4ZcPJRuEn3IcXdCegdd0U6ycHLY6lfp7XtOlYAqH2kzyyb
	xJ720xaDcK0QJI4cq8JCOKzZdZYo+uMDBG03L6E95zWTMoaUvhyE1XO7fQe0drJ7T8QVtmpcnQ41A
	VJdeaEVv4BCZqYJWarPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWePG-006bo3-1R;
	Thu, 17 Aug 2023 14:55:26 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWePC-006bl5-31
	for linux-phy@lists.infradead.org;
	Thu, 17 Aug 2023 14:55:25 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2b9d07a8d84so124554851fa.3
        for <linux-phy@lists.infradead.org>; Thu, 17 Aug 2023 07:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692284119; x=1692888919;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2vhTfY3zK1nVXfsOliBavlrx/Dt9Fzo1Rikffhx9+p0=;
        b=AmgUV4Z9qwiBpLYMHbQtoMUbk/VRKBrLCzBeqsCTpNFaOySDPctPDbEipM+jBzXuOE
         wYEU2rO2sFW70QtO3OlrnVBYykgFq8/U5BA8qDqFo90BbJYQKiNkscfT+B52DipPvBAU
         14EtUEtbUUPnJeDSuUwEqfM/ygpU93BifgFtUNEHm4FsZeJpGLoyZsjT6m+I88u71EtW
         DtRbP5punFYmSqy1dhwseQOmHoY1c2U8LeDkiQXghbsUSQs+kxytQd6M7Ua1nd5xEDPt
         PM48x4525S1MqeIKgq7Go/Mow0v7ptZRRXlWhN3t6uSFD0tuY+JFc/T5gLhbfCGtghb9
         ITcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692284119; x=1692888919;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2vhTfY3zK1nVXfsOliBavlrx/Dt9Fzo1Rikffhx9+p0=;
        b=ZDF/oMjSB+0vNXfvVh5KAFTQeJ/LMoqKLetReu1eRd+tu9l5Olg8LBWOX5bWtKeTkp
         FrMK02if8vfxQh3ESdt102X2x0b9mK+whnVpXZ6mReL11OLMFrQynONiZGokWe7eTv3M
         9qLGbJ0C1lv+XAYjtmpObk1Aeht40N4qrswqsn1Y6s3jEgcBUqSL3fxqcBTJTXvw3KdF
         QeCdjGp9aLg4sFep42OWLKBiv5Xkp+3sc78+ktBkfOaoGZ4XLABLxKu3LtbH0AtJ7sOJ
         /UI8rpYbc9IADAlOkSn/e7GukhsaBUk3R2XXtOtRKADgFhpPOuhRjKtBeosKOeKcchyn
         Z2kA==
X-Gm-Message-State: AOJu0YyvkMVwE8a7Zo2prW5+C1I/Ak0+94oyj+ncoeFbp1TAO4gPMavZ
	0TfKk8PgZE/ilRxQivUqFvuXig==
X-Google-Smtp-Source: AGHT+IHkRzzSXWRQP0qaL0WJk3ZsyEZedw9qJr5xyOynBevDyNI6fYm9ZYWFW789J3N+rmZtzKahyw==
X-Received: by 2002:a2e:7c0f:0:b0:2b6:fa71:5bae with SMTP id x15-20020a2e7c0f000000b002b6fa715baemr4485793ljc.12.1692284118896;
        Thu, 17 Aug 2023 07:55:18 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z13-20020a2e350d000000b002b9e5fe86dasm4082728ljz.81.2023.08.17.07.55.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Aug 2023 07:55:18 -0700 (PDT)
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
Subject: [PATCH v4 1/3] drm/bridge: add transparent bridge helper
Date: Thu, 17 Aug 2023 17:55:14 +0300
Message-Id: <20230817145516.5924-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230817145516.5924-1-dmitry.baryshkov@linaro.org>
References: <20230817145516.5924-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_075522_975522_A4C0523D 
X-CRM114-Status: GOOD (  19.14  )
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

Define a helper for creating simple transparent bridges which serve the
only purpose of linking devices into the bridge chain up to the last
bridge representing the connector. This is especially useful for
DP/USB-C bridge chains, which can span across several devices, but do
not require any additional functionality from the intermediate bridges.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/bridge/Kconfig      |   9 ++
 drivers/gpu/drm/bridge/Makefile     |   1 +
 drivers/gpu/drm/bridge/aux-bridge.c | 132 ++++++++++++++++++++++++++++
 include/drm/bridge/aux-bridge.h     |  19 ++++
 4 files changed, 161 insertions(+)
 create mode 100644 drivers/gpu/drm/bridge/aux-bridge.c
 create mode 100644 include/drm/bridge/aux-bridge.h

diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
index 44a660a4bdbf..80e5d9f722e4 100644
--- a/drivers/gpu/drm/bridge/Kconfig
+++ b/drivers/gpu/drm/bridge/Kconfig
@@ -12,6 +12,15 @@ config DRM_PANEL_BRIDGE
 	help
 	  DRM bridge wrapper of DRM panels
 
+config DRM_AUX_BRIDGE
+	tristate
+	depends on DRM_BRIDGE && OF
+	select AUXILIARY_BUS
+	select DRM_PANEL_BRIDGE
+	help
+	  Simple transparent bridge that is used by several non-DRM drivers to
+	  build bridges chain.
+
 menu "Display Interface Bridges"
 	depends on DRM && DRM_BRIDGE
 
diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
index 2b892b7ed59e..918e3bfff079 100644
--- a/drivers/gpu/drm/bridge/Makefile
+++ b/drivers/gpu/drm/bridge/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_DRM_AUX_BRIDGE) += aux-bridge.o
 obj-$(CONFIG_DRM_CHIPONE_ICN6211) += chipone-icn6211.o
 obj-$(CONFIG_DRM_CHRONTEL_CH7033) += chrontel-ch7033.o
 obj-$(CONFIG_DRM_CROS_EC_ANX7688) += cros-ec-anx7688.o
diff --git a/drivers/gpu/drm/bridge/aux-bridge.c b/drivers/gpu/drm/bridge/aux-bridge.c
new file mode 100644
index 000000000000..13fe794592f2
--- /dev/null
+++ b/drivers/gpu/drm/bridge/aux-bridge.c
@@ -0,0 +1,132 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2023 Linaro Ltd.
+ *
+ * Author: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
+ */
+#include <linux/auxiliary_bus.h>
+#include <linux/module.h>
+
+#include <drm/drm_bridge.h>
+#include <drm/bridge/aux-bridge.h>
+
+static DEFINE_IDA(aux_bridge_ida);
+
+static void drm_aux_bridge_release(struct device *dev)
+{
+	struct auxiliary_device *adev = to_auxiliary_dev(dev);
+
+	ida_free(&aux_bridge_ida, adev->id);
+
+	kfree(adev);
+}
+
+static void drm_aux_bridge_unregister_adev(void *_adev)
+{
+	struct auxiliary_device *adev = _adev;
+
+	auxiliary_device_delete(adev);
+	auxiliary_device_uninit(adev);
+}
+
+int drm_aux_bridge_register(struct device *parent)
+{
+	struct auxiliary_device *adev;
+	int ret;
+
+	adev = kzalloc(sizeof(*adev), GFP_KERNEL);
+	if (!adev)
+		return -ENOMEM;
+
+	ret = ida_alloc(&aux_bridge_ida, GFP_KERNEL);
+	if (ret < 0) {
+		kfree(adev);
+		return ret;
+	}
+
+	adev->id = ret;
+	adev->name = "aux_bridge";
+	adev->dev.parent = parent;
+#ifdef CONFIG_OF
+	adev->dev.of_node = parent->of_node;
+#endif
+	adev->dev.release = drm_aux_bridge_release;
+
+	ret = auxiliary_device_init(adev);
+	if (ret) {
+		ida_free(&aux_bridge_ida, adev->id);
+		kfree(adev);
+		return ret;
+	}
+
+	ret = auxiliary_device_add(adev);
+	if (ret) {
+		auxiliary_device_uninit(adev);
+		return ret;
+	}
+
+	return devm_add_action_or_reset(parent, drm_aux_bridge_unregister_adev, adev);
+}
+EXPORT_SYMBOL_GPL(drm_aux_bridge_register);
+
+struct drm_aux_bridge_data {
+	struct drm_bridge bridge;
+	struct drm_bridge *next_bridge;
+	struct device *dev;
+};
+
+static int drm_aux_bridge_attach(struct drm_bridge *bridge,
+				    enum drm_bridge_attach_flags flags)
+{
+	struct drm_aux_bridge_data *data;
+
+	if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR))
+		return -EINVAL;
+
+	data = container_of(bridge, struct drm_aux_bridge_data, bridge);
+
+	return drm_bridge_attach(bridge->encoder, data->next_bridge, bridge,
+				 DRM_BRIDGE_ATTACH_NO_CONNECTOR);
+}
+
+static const struct drm_bridge_funcs drm_aux_bridge_funcs = {
+	.attach	= drm_aux_bridge_attach,
+};
+
+static int drm_aux_bridge_probe(struct auxiliary_device *auxdev,
+				   const struct auxiliary_device_id *id)
+{
+	struct drm_aux_bridge_data *data;
+
+	data = devm_kzalloc(&auxdev->dev, sizeof(*data), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	data->dev = &auxdev->dev;
+	data->next_bridge = devm_drm_of_get_bridge(&auxdev->dev, auxdev->dev.of_node, 0, 0);
+	if (IS_ERR(data->next_bridge))
+		return dev_err_probe(&auxdev->dev, PTR_ERR(data->next_bridge),
+				     "failed to acquire drm_bridge\n");
+
+	data->bridge.funcs = &drm_aux_bridge_funcs;
+	data->bridge.of_node = data->dev->of_node;
+
+	return devm_drm_bridge_add(data->dev, &data->bridge);
+}
+
+static const struct auxiliary_device_id drm_aux_bridge_table[] = {
+	{ .name = KBUILD_MODNAME ".aux_bridge" },
+	{},
+};
+MODULE_DEVICE_TABLE(auxiliary, drm_aux_bridge_table);
+
+static struct auxiliary_driver drm_aux_bridge_drv = {
+	.name = "aux_bridge",
+	.id_table = drm_aux_bridge_table,
+	.probe = drm_aux_bridge_probe,
+};
+module_auxiliary_driver(drm_aux_bridge_drv);
+
+MODULE_AUTHOR("Dmitry Baryshkov <dmitry.baryshkov@linaro.org>");
+MODULE_DESCRIPTION("DRM transparent bridge");
+MODULE_LICENSE("GPL");
diff --git a/include/drm/bridge/aux-bridge.h b/include/drm/bridge/aux-bridge.h
new file mode 100644
index 000000000000..441ab3f0e920
--- /dev/null
+++ b/include/drm/bridge/aux-bridge.h
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2023 Linaro Ltd.
+ *
+ * Author: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
+ */
+#ifndef DRM_AUX_BRIDGE_H
+#define DRM_AUX_BRIDGE_H
+
+#if IS_ENABLED(CONFIG_DRM_AUX_BRIDGE)
+int drm_aux_bridge_register(struct device *parent);
+#else
+static inline int drm_aux_bridge_register(struct device *parent)
+{
+	return 0;
+}
+#endif
+
+#endif
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

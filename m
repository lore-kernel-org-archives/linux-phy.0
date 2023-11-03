Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DDAAC4167B
	for <linux-phy@archiver.kernel.org>; Fri,  3 Nov 2023 23:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7VH7Vf4i+DZHtvyZWBzKOddPkjCa+lMH9MbvB4MgUfg=; b=hZpHEgCqz31HfO
	mBUIwWIRAtpyDlleKTWzwMI0Hq+SYo8wFPKNC+qbYiN6xxTJP/a29RzYvLh7ctEdxt3o4rfcJhFo2
	Sacrtyx5In/m0EbmsrbVQATDiFohE4VbHB1GDTBw46YmWYf/RtRJDQ3umBHLzxkxAH9UeXYPdjO8M
	Z9CkWA0cQ2OhbkZVQKF665/xse7q26T+hF2F8yfZkgdjen/YUHmGsIoc+w6uAX/XOOJGjcQzZMpXa
	x0rSnbn5jqQKy86iNAsJa0mvHUHvsoOc5xq/5ir4HXlqes31rrTUaosKxAh0UOerkNinBULeF0iQZ
	sN1Uy2+5FJ16MQbceO0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qz3DC-00CIKO-2a;
	Fri, 03 Nov 2023 23:04:22 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qz3D9-00CII5-33
	for linux-phy@lists.infradead.org;
	Fri, 03 Nov 2023 23:04:21 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-507a29c7eefso3219290e87.1
        for <linux-phy@lists.infradead.org>; Fri, 03 Nov 2023 16:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699052656; x=1699657456; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sArdhuc4iKCJ+mSoLILv4KY0dReGLNYPv+iFk9YYQww=;
        b=McJL3d+ZrPm5X9hSzYsMJFk0QBPk899QaGGoO5Q1b783HR6VucooGCYRZzWmeYmVEK
         nCR2ecIOVKv1bHr8hlqg8azga4pXHIT+kj/2Ss96Sa76heqL/2O+MSRYsClobgqeUvYD
         ehhKjmkIoy3nvSOnYlLm3eguPnBSD12JU/JeN2p2z4HSM4wKgTlAvd0pLxbBZmBeF6lk
         z0Gi6LGUYVu71dGiJsouf5lZXjmx4keWHGumnuM6eGYyQUjMwIJRaoQsUV2yUota51a2
         JNx3kym2SDpvgnSxydnYUWqHwqjmV+NYaLC81sDT4Y41KoAWK1+Ag5DkhlSKE6CfigVL
         VfMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699052656; x=1699657456;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sArdhuc4iKCJ+mSoLILv4KY0dReGLNYPv+iFk9YYQww=;
        b=V2b+wILdmMLfhLiB0tjlFfPzEMCmo0KS/9y4ki5UL9EcLdrA3Ge+uab/Y1tFZKg3RU
         a6KModzzg5r/vpwWl/IZwslBcTEumOLK8XHFH8+TosK8LLlIKzzrtohYocTsQHDrEfOu
         olyg4wLuG4eIuDKIJPRaHZt65kq/BxP49Eq2oMERNHjoplQGpgRYekbG9bzKL5QtfbUq
         JdA6mk+q0UPMPCCF2X19BedLScZ1X7flq7Tj1+PCf9jZQjqyOnjlERLbHQlhQwwVurLH
         vCT6qHjhny0yXqeAOj7hUl4sGeRPrcAtnKRAusNKjss1Pb4cXskhV+Fo5HETclRm3OmV
         YNIA==
X-Gm-Message-State: AOJu0Yx5K7ADIOY+ZhVagdjX7ldJIpVXo0CryUzgRJlY/Gfx3W2JSJUm
	jV7NVgRDWauQ3sK35Uy7t0elYA==
X-Google-Smtp-Source: AGHT+IE9dnjxZxbeV8kKqyR5qa4QpyGPBUa0tjpEKAQyAG5+VEh3n3NzA5xd3h4myvqQJzJxne+4cA==
X-Received: by 2002:a05:6512:3d17:b0:509:4b04:6345 with SMTP id d23-20020a0565123d1700b005094b046345mr5207600lfv.0.1699052655785;
        Fri, 03 Nov 2023 16:04:15 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id s16-20020ac24650000000b00504211d2a7bsm329919lfo.297.2023.11.03.16.04.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 16:04:15 -0700 (PDT)
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
Subject: [PATCH v6 1/6] drm/bridge: add transparent bridge helper
Date: Sat,  4 Nov 2023 01:03:04 +0200
Message-ID: <20231103230414.1483428-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231103230414.1483428-1-dmitry.baryshkov@linaro.org>
References: <20231103230414.1483428-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231103_160420_040385_0115F603 
X-CRM114-Status: GOOD (  20.14  )
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
 drivers/gpu/drm/bridge/aux-bridge.c | 140 ++++++++++++++++++++++++++++
 include/drm/bridge/aux-bridge.h     |  19 ++++
 4 files changed, 169 insertions(+)
 create mode 100644 drivers/gpu/drm/bridge/aux-bridge.c
 create mode 100644 include/drm/bridge/aux-bridge.h

diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
index ba82a1142adf..f12eab62799f 100644
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
index 000000000000..6245976b8fef
--- /dev/null
+++ b/drivers/gpu/drm/bridge/aux-bridge.c
@@ -0,0 +1,140 @@
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
+static DEFINE_IDA(drm_aux_bridge_ida);
+
+static void drm_aux_bridge_release(struct device *dev)
+{
+	struct auxiliary_device *adev = to_auxiliary_dev(dev);
+
+	ida_free(&drm_aux_bridge_ida, adev->id);
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
+/**
+ * drm_aux_bridge_register - Create a simple bridge device to link the chain
+ * @parent: device instance providing this bridge
+ *
+ * Creates a simple DRM bridge that doesn't implement any drm_bridge
+ * operations. Such bridges merely fill a place in the bridge chain linking
+ * surrounding DRM bridges.
+ *
+ * Return: zero on success, negative error code on failure
+ */
+int drm_aux_bridge_register(struct device *parent)
+{
+	struct auxiliary_device *adev;
+	int ret;
+
+	adev = kzalloc(sizeof(*adev), GFP_KERNEL);
+	if (!adev)
+		return -ENOMEM;
+
+	ret = ida_alloc(&drm_aux_bridge_ida, GFP_KERNEL);
+	if (ret < 0) {
+		kfree(adev);
+		return ret;
+	}
+
+	adev->id = ret;
+	adev->name = "aux_bridge";
+	adev->dev.parent = parent;
+	adev->dev.of_node = parent->of_node;
+	adev->dev.release = drm_aux_bridge_release;
+
+	ret = auxiliary_device_init(adev);
+	if (ret) {
+		ida_free(&drm_aux_bridge_ida, adev->id);
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
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14955C001DB
	for <linux-phy@archiver.kernel.org>; Fri,  3 Nov 2023 23:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XNW6pyjfmi4zTPmSxXOnilkQgTLK5qVziEAIPtWcKHA=; b=MIsNcxW0J00kle
	YaMD01bW31g8p1oduLEC/Kg4qTor9SNDC9Jtd1zJtXBNbvaVudSob+gvHy6TWvIkNx/xWJp/41smK
	l/cwF9NejyZ+i2IuYM+CgAGMLm7oSUSAHFzurpP3RnAUjS47ELOGYPt5CyIKrK3mVa3IqJ7LmNfiT
	eZ1ABMt2ukOKB+8af5m2HtZmKcjYWdNHbe1nYZqaIVDHrWk0gB2SW5e6eVa+pK6FAyiFHlvCwwuKA
	c8Br0gwyevUe5d1rBnFvhonCmIXnAf34vvlZ1WJCzN/2IMOtWzuPX5OXep5K5vM4+HJVziTokQHhb
	s+g08gtaNhfBG4eMMx+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qz3DF-00CIO7-2L;
	Fri, 03 Nov 2023 23:04:25 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qz3DB-00CIIf-2E
	for linux-phy@lists.infradead.org;
	Fri, 03 Nov 2023 23:04:23 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-507e85ebf50so3204090e87.1
        for <linux-phy@lists.infradead.org>; Fri, 03 Nov 2023 16:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699052659; x=1699657459; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t20kdXXv84EK8irW7PHnDkzRUl4Wv7sjdKwURqJ7HrM=;
        b=DBg7VrJrf26rgvvf2eZwhmFD6Dkz9MkJQi3exuTaw9EkTgqwN0rNZpPHGglORvqsBi
         lTScL3u6WohXSdaZ7qMPSgpGyxk3E/r/+cTd3paWUqfW3WDt20rqXjKGRSp0MtanlHJH
         4117ru3jUYVElvKawxw+VvnKTaDtI9RCFMLklxl++otguTtCsY4Gxu6E72Rh+eKnau8g
         XvxMX+Eg9OoPS1AEp7zVGTW86P7CHV7KSnaGgJpybyOWuzNe6IUTVbz/M7i37X3Esl8P
         iv1g8T7OQT1g0Ke2siwj1d/S+C5WfbmhaAimr4OwMUun2WIxD7W4gGUQNaTAy0mOmatC
         Yd8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699052659; x=1699657459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t20kdXXv84EK8irW7PHnDkzRUl4Wv7sjdKwURqJ7HrM=;
        b=BSd4JscV4GW33cn13g5LOp8KRN2iQPZA7PkemoBrB3uCOgDYudkuIlN+W99nlnNU4a
         5L/fKDhkJCWhDJQNDEa9Lx+5DxUO/QpdLG218H0YZsYLLsW4b2fuUIUXiZFWi3c1SpLA
         CYaQsfsEZ5kjQT0sbyDJABPKqwLi+GZvRaR3lHr+f774mVMDPy3VCxJjqcY8UPVjRBj3
         t9LRAhnmyJ4MAwIfjNEZQcjyxyd7ucCRKNGKzXD6W8AmPfUyggSPBE3InVfmnmMkgVq6
         FKzqh/JD7haANFRDEvqWO7QXDMC8uhhfpsqGvlh5e42g5ZvdZOr3bsLv9APXS7yxhp4L
         ZhNQ==
X-Gm-Message-State: AOJu0Ywf1uI31EK7JwajAm7jcMC/dAITUMSZRXRZplu2awbK3ca17+ai
	h7cSVlK3jhVrpsHwWs3FqGPzrg==
X-Google-Smtp-Source: AGHT+IF0NEtoumWg6KgXjtKUt6sYnXp2MuvJDU1ivJBmtVDvLmuldT6Rb4cov9w2rp5X6xYpWOXEhg==
X-Received: by 2002:a05:6512:308e:b0:509:4b8a:b65f with SMTP id z14-20020a056512308e00b005094b8ab65fmr5566312lfd.60.1699052658785;
        Fri, 03 Nov 2023 16:04:18 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id s16-20020ac24650000000b00504211d2a7bsm329919lfo.297.2023.11.03.16.04.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 16:04:18 -0700 (PDT)
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
Subject: [PATCH v6 4/6] drm/bridge: implement generic DP HPD bridge
Date: Sat,  4 Nov 2023 01:03:07 +0200
Message-ID: <20231103230414.1483428-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231103230414.1483428-1-dmitry.baryshkov@linaro.org>
References: <20231103230414.1483428-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231103_160421_748710_D77803B5 
X-CRM114-Status: GOOD (  19.74  )
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

Several USB-C controllers implement a pretty simple DRM bridge which
implements just the HPD notification operations. Add special helper
for creating such simple bridges.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/bridge/Kconfig          |   8 ++
 drivers/gpu/drm/bridge/Makefile         |   1 +
 drivers/gpu/drm/bridge/aux-hpd-bridge.c | 164 ++++++++++++++++++++++++
 include/drm/bridge/aux-bridge.h         |  18 +++
 4 files changed, 191 insertions(+)
 create mode 100644 drivers/gpu/drm/bridge/aux-hpd-bridge.c

diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
index f12eab62799f..19d2dc05c397 100644
--- a/drivers/gpu/drm/bridge/Kconfig
+++ b/drivers/gpu/drm/bridge/Kconfig
@@ -21,6 +21,14 @@ config DRM_AUX_BRIDGE
 	  Simple transparent bridge that is used by several non-DRM drivers to
 	  build bridges chain.
 
+config DRM_AUX_HPD_BRIDGE
+	tristate
+	depends on DRM_BRIDGE && OF
+	select AUXILIARY_BUS
+	help
+	  Simple bridge that terminates the bridge chain and provides HPD
+	  support.
+
 menu "Display Interface Bridges"
 	depends on DRM && DRM_BRIDGE
 
diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
index 918e3bfff079..017b5832733b 100644
--- a/drivers/gpu/drm/bridge/Makefile
+++ b/drivers/gpu/drm/bridge/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_DRM_AUX_BRIDGE) += aux-bridge.o
+obj-$(CONFIG_DRM_AUX_HPD_BRIDGE) += aux-hpd-bridge.o
 obj-$(CONFIG_DRM_CHIPONE_ICN6211) += chipone-icn6211.o
 obj-$(CONFIG_DRM_CHRONTEL_CH7033) += chrontel-ch7033.o
 obj-$(CONFIG_DRM_CROS_EC_ANX7688) += cros-ec-anx7688.o
diff --git a/drivers/gpu/drm/bridge/aux-hpd-bridge.c b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
new file mode 100644
index 000000000000..4defac8ec63f
--- /dev/null
+++ b/drivers/gpu/drm/bridge/aux-hpd-bridge.c
@@ -0,0 +1,164 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2023 Linaro Ltd.
+ *
+ * Author: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
+ */
+#include <linux/auxiliary_bus.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+
+#include <drm/drm_bridge.h>
+#include <drm/bridge/aux-bridge.h>
+
+static DEFINE_IDA(drm_aux_hpd_bridge_ida);
+
+struct drm_aux_hpd_bridge_data {
+	struct drm_bridge bridge;
+	struct device *dev;
+};
+
+static void drm_aux_hpd_bridge_release(struct device *dev)
+{
+	struct auxiliary_device *adev = to_auxiliary_dev(dev);
+
+	ida_free(&drm_aux_hpd_bridge_ida, adev->id);
+
+	of_node_put(adev->dev.platform_data);
+
+	kfree(adev);
+}
+
+static void drm_aux_hpd_bridge_unregister_adev(void *_adev)
+{
+	struct auxiliary_device *adev = _adev;
+
+	auxiliary_device_delete(adev);
+	auxiliary_device_uninit(adev);
+}
+
+/**
+ * drm_dp_hpd_bridge_register - Create a simple HPD DisplayPort bridge
+ * @parent: device instance providing this bridge
+ * @np: device node pointer corresponding to this bridge instance
+ *
+ * Creates a simple DRM bridge with the type set to
+ * DRM_MODE_CONNECTOR_DisplayPort, which terminates the bridge chain and is
+ * able to send the HPD events.
+ *
+ * Return: device instance that will handle created bridge or an error code
+ * encoded into the pointer.
+ */
+struct device *drm_dp_hpd_bridge_register(struct device *parent,
+					  struct device_node *np)
+{
+	struct auxiliary_device *adev;
+	int ret;
+
+	adev = kzalloc(sizeof(*adev), GFP_KERNEL);
+	if (!adev)
+		return ERR_PTR(-ENOMEM);
+
+	ret = ida_alloc(&drm_aux_hpd_bridge_ida, GFP_KERNEL);
+	if (ret < 0) {
+		kfree(adev);
+		return ERR_PTR(ret);
+	}
+
+	adev->id = ret;
+	adev->name = "dp_hpd_bridge";
+	adev->dev.parent = parent;
+	adev->dev.of_node = parent->of_node;
+	adev->dev.release = drm_aux_hpd_bridge_release;
+	adev->dev.platform_data = np;
+
+	ret = auxiliary_device_init(adev);
+	if (ret) {
+		ida_free(&drm_aux_hpd_bridge_ida, adev->id);
+		kfree(adev);
+		return ERR_PTR(ret);
+	}
+
+	ret = auxiliary_device_add(adev);
+	if (ret) {
+		auxiliary_device_uninit(adev);
+		return ERR_PTR(ret);
+	}
+
+	ret = devm_add_action_or_reset(parent, drm_aux_hpd_bridge_unregister_adev, adev);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return &adev->dev;
+
+}
+EXPORT_SYMBOL_GPL(drm_dp_hpd_bridge_register);
+
+/**
+ * drm_aux_hpd_bridge_notify - notify hot plug detection events
+ * @dev: device created for the HPD bridge
+ * @status: output connection status
+ *
+ * A wrapper around drm_bridge_hpd_notify() that is used to report hot plug
+ * detection events for bridges created via drm_dp_hpd_bridge_register().
+ *
+ * This function shall be called in a context that can sleep.
+ */
+void drm_aux_hpd_bridge_notify(struct device *dev, enum drm_connector_status status)
+{
+	struct auxiliary_device *adev = to_auxiliary_dev(dev);
+	struct drm_aux_hpd_bridge_data *data = auxiliary_get_drvdata(adev);
+
+	if (!data)
+		return;
+
+	drm_bridge_hpd_notify(&data->bridge, status);
+}
+EXPORT_SYMBOL_GPL(drm_aux_hpd_bridge_notify);
+
+static int drm_aux_hpd_bridge_attach(struct drm_bridge *bridge,
+				    enum drm_bridge_attach_flags flags)
+{
+	return flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR ? 0 : -EINVAL;
+}
+
+static const struct drm_bridge_funcs drm_aux_hpd_bridge_funcs = {
+	.attach	= drm_aux_hpd_bridge_attach,
+};
+
+static int drm_aux_hpd_bridge_probe(struct auxiliary_device *auxdev,
+				   const struct auxiliary_device_id *id)
+{
+	struct drm_aux_hpd_bridge_data *data;
+
+	data = devm_kzalloc(&auxdev->dev, sizeof(*data), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	data->dev = &auxdev->dev;
+	data->bridge.funcs = &drm_aux_hpd_bridge_funcs;
+	data->bridge.of_node = dev_get_platdata(data->dev);
+	data->bridge.ops = DRM_BRIDGE_OP_HPD;
+	data->bridge.type = id->driver_data;
+
+	auxiliary_set_drvdata(auxdev, data);
+
+	return devm_drm_bridge_add(data->dev, &data->bridge);
+}
+
+static const struct auxiliary_device_id drm_aux_hpd_bridge_table[] = {
+	{ .name = KBUILD_MODNAME ".dp_hpd_bridge", .driver_data = DRM_MODE_CONNECTOR_DisplayPort, },
+	{},
+};
+MODULE_DEVICE_TABLE(auxiliary, drm_aux_hpd_bridge_table);
+
+static struct auxiliary_driver drm_aux_hpd_bridge_drv = {
+	.name = "aux_hpd_bridge",
+	.id_table = drm_aux_hpd_bridge_table,
+	.probe = drm_aux_hpd_bridge_probe,
+};
+module_auxiliary_driver(drm_aux_hpd_bridge_drv);
+
+MODULE_AUTHOR("Dmitry Baryshkov <dmitry.baryshkov@linaro.org>");
+MODULE_DESCRIPTION("DRM HPD bridge");
+MODULE_LICENSE("GPL");
diff --git a/include/drm/bridge/aux-bridge.h b/include/drm/bridge/aux-bridge.h
index 441ab3f0e920..33adaf4e4daa 100644
--- a/include/drm/bridge/aux-bridge.h
+++ b/include/drm/bridge/aux-bridge.h
@@ -7,6 +7,8 @@
 #ifndef DRM_AUX_BRIDGE_H
 #define DRM_AUX_BRIDGE_H
 
+#include <drm/drm_connector.h>
+
 #if IS_ENABLED(CONFIG_DRM_AUX_BRIDGE)
 int drm_aux_bridge_register(struct device *parent);
 #else
@@ -16,4 +18,20 @@ static inline int drm_aux_bridge_register(struct device *parent)
 }
 #endif
 
+#if IS_ENABLED(CONFIG_DRM_AUX_HPD_BRIDGE)
+struct device *drm_dp_hpd_bridge_register(struct device *parent,
+					  struct device_node *np);
+void drm_aux_hpd_bridge_notify(struct device *dev, enum drm_connector_status status);
+#else
+static inline struct device *drm_dp_hpd_bridge_register(struct device *parent,
+							struct device_node *np)
+{
+	return 0;
+}
+
+static inline void drm_aux_hpd_bridge_notify(struct device *dev, enum drm_connector_status status)
+{
+}
+#endif
+
 #endif
-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

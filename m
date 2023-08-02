Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AC7FC0015E
	for <linux-phy@archiver.kernel.org>; Wed,  2 Aug 2023 01:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U1sPejmb8woUje6ZC40s3pi9LN1tqur2af4esX6JIIc=; b=gab3HAZV2VLtly
	vYOCCxHmjP9IsXqf04nXyE4YVuJZ7LRPyqfdGQLFMSeT+ygPniZ6RAhq0QL6wFX4mdRsMCk7bJG9v
	GU0ZnKoSQehdgXc3Pw2szVyATSS4iImM3d1Mn36tQHMiftxYW6jZbE51uVQw83fT5ZTgUYejY5EwQ
	o7VRlxcFim3wtobdOU3UC03xvkRND5akzqyVKie3abnZqfUi36gquSOFrWwQK8nXw+MPbJr73+c1i
	tEBEr5R/9LsNB2UJ/54ihfQt4bf8vJwsiXG9PviyuQPQzcNJzTeLxmfRMvLPTR/ZYz1p20VIfP7Qo
	V3boITKn43CyKAjmq7Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qR0Vp-003fkB-35;
	Wed, 02 Aug 2023 01:18:53 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qR0Vm-003fiV-1t
	for linux-phy@lists.infradead.org;
	Wed, 02 Aug 2023 01:18:52 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b9cbaee7a9so81231901fa.0
        for <linux-phy@lists.infradead.org>; Tue, 01 Aug 2023 18:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690939128; x=1691543928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=prG8zaTCxCmOYhLMj8L/mJstXroO5EIKvx4tl+wA6H4=;
        b=QTL8kacDrJN2dKkgS9qL0ela9TkebQqioHm00mmaY8X1HJxQQZDhTQVWVNK0PdZ/Tr
         i3/fYbxeSfqhekTGaRaexWBRL224W50eh9FTPoO71tBa7cDaLbTXfFKFHFigfISFZ3t9
         cQkLzAsTK70GZOLhb9UdiE95Ik9jJ0iMxEmue/UaK0sCrGZMHCv/0G+VWcSYzBH3Gh/O
         VBIAZ1D2uZ6SILR5i0Ao2CDINk9BLhU7gXMK1T6t4tjub4VB/6ykGAGUG8Hi0kMlSz/K
         jan5lC46ETDmA73PkpMekHOkm7NAR0QkXO56kLzkOBzCSk7IYuUKx1M6tEwbsQLMm9Ei
         0L1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690939128; x=1691543928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=prG8zaTCxCmOYhLMj8L/mJstXroO5EIKvx4tl+wA6H4=;
        b=M2CW2mpQU/L3o/tooVlKQfIvit1x/VwXzPJF/JwVsTTQD9b6m454mY8i0H3uKvVMpb
         hJk0K6P7gWqnxcY8kqUV9UtfHzFruw/Z5bDXc+1p14SW7NMn/5IavRNH9YBpBwd+lwQL
         qKFZgggyJac4N/FELo5h4TJ6lb3UtYpDN7lvoZ4dnFD+jcP2NjjPBAyWhUA6mnDoIFcK
         Izvy/P9NuLB1g9fbAP6FnnZXF9vwBSufe2REwlDX79lSB2EKYfeQ0jhwsyJMGIQxiYH3
         3lR6YBJcQ8/IpWpP2YOomt4aOj+YjGnXDPElwCF0tU+fUtGD07R8RtzofOS5ImP7yRNz
         Sqaw==
X-Gm-Message-State: ABy/qLYXV/bfqOQT/omOSAZgvPXPLTbvwz/mzoPYDmDJsr2OUmE3Q++Q
	4rbYoG04wumFsBcXtL9ALLHayw==
X-Google-Smtp-Source: APBJJlG7bj9ZR1MQqNhlwB2//hMQIp56VcR1vZUL0RLpRmo9O3tRdpQJ2BDpr/B+acT2X7asSFIeCw==
X-Received: by 2002:a19:9111:0:b0:4fb:8a92:4fba with SMTP id t17-20020a199111000000b004fb8a924fbamr3175637lfd.25.1690939127790;
        Tue, 01 Aug 2023 18:18:47 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n14-20020a056512388e00b004faeedbb29dsm2775842lft.64.2023.08.01.18.18.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Aug 2023 18:18:47 -0700 (PDT)
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
Subject: [PATCH v3 1/3] drm/display: add transparent bridge helper
Date: Wed,  2 Aug 2023 04:18:43 +0300
Message-Id: <20230802011845.4176631-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230802011845.4176631-1-dmitry.baryshkov@linaro.org>
References: <20230802011845.4176631-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230801_181850_621624_95D6C234 
X-CRM114-Status: GOOD (  19.73  )
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
 drivers/gpu/drm/display/Kconfig             |   9 ++
 drivers/gpu/drm/display/Makefile            |   2 +
 drivers/gpu/drm/display/drm_simple_bridge.c | 127 ++++++++++++++++++++
 include/drm/display/drm_simple_bridge.h     |  19 +++
 4 files changed, 157 insertions(+)
 create mode 100644 drivers/gpu/drm/display/drm_simple_bridge.c
 create mode 100644 include/drm/display/drm_simple_bridge.h

diff --git a/drivers/gpu/drm/display/Kconfig b/drivers/gpu/drm/display/Kconfig
index 09712b88a5b8..a6132984b9e3 100644
--- a/drivers/gpu/drm/display/Kconfig
+++ b/drivers/gpu/drm/display/Kconfig
@@ -49,3 +49,12 @@ config DRM_DP_CEC
 
 	  Note: not all adapters support this feature, and even for those
 	  that do support this they often do not hook up the CEC pin.
+
+config DRM_SIMPLE_BRIDGE
+	tristate
+	depends on DRM
+	select AUXILIARY_BUS
+	select DRM_PANEL_BRIDGE
+	help
+	  Simple transparent bridge that is used by several drivers to build
+	  bridges chain.
diff --git a/drivers/gpu/drm/display/Makefile b/drivers/gpu/drm/display/Makefile
index 17ac4a1006a8..6e2b0d7f24b3 100644
--- a/drivers/gpu/drm/display/Makefile
+++ b/drivers/gpu/drm/display/Makefile
@@ -16,3 +16,5 @@ drm_display_helper-$(CONFIG_DRM_DP_AUX_CHARDEV) += drm_dp_aux_dev.o
 drm_display_helper-$(CONFIG_DRM_DP_CEC) += drm_dp_cec.o
 
 obj-$(CONFIG_DRM_DISPLAY_HELPER) += drm_display_helper.o
+
+obj-$(CONFIG_DRM_SIMPLE_BRIDGE) += drm_simple_bridge.o
diff --git a/drivers/gpu/drm/display/drm_simple_bridge.c b/drivers/gpu/drm/display/drm_simple_bridge.c
new file mode 100644
index 000000000000..9e80efe67b93
--- /dev/null
+++ b/drivers/gpu/drm/display/drm_simple_bridge.c
@@ -0,0 +1,127 @@
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
+#include <drm/display/drm_simple_bridge.h>
+
+static DEFINE_IDA(simple_bridge_ida);
+
+static void drm_simple_bridge_release(struct device *dev)
+{
+	struct auxiliary_device *adev = to_auxiliary_dev(dev);
+
+	kfree(adev);
+}
+
+static void drm_simple_bridge_unregister_adev(void *_adev)
+{
+	struct auxiliary_device *adev = _adev;
+
+	auxiliary_device_delete(adev);
+	auxiliary_device_uninit(adev);
+}
+
+int drm_simple_bridge_register(struct device *parent)
+{
+	struct auxiliary_device *adev;
+	int ret;
+
+	adev = kzalloc(sizeof(*adev), GFP_KERNEL);
+	if (!adev)
+		return -ENOMEM;
+
+	ret = ida_alloc(&simple_bridge_ida, GFP_KERNEL);
+	if (ret < 0)
+		return ret;
+
+	adev->id = ret;
+	adev->name = "simple_bridge";
+	adev->dev.parent = parent;
+	adev->dev.of_node = parent->of_node;
+	adev->dev.release = drm_simple_bridge_release;
+
+	ret = auxiliary_device_init(adev);
+	if (ret) {
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
+	return devm_add_action_or_reset(parent, drm_simple_bridge_unregister_adev, adev);
+}
+EXPORT_SYMBOL_GPL(drm_simple_bridge_register);
+
+struct drm_simple_bridge_data {
+	struct drm_bridge bridge;
+	struct drm_bridge *next_bridge;
+	struct device *dev;
+};
+
+static int drm_simple_bridge_attach(struct drm_bridge *bridge,
+				    enum drm_bridge_attach_flags flags)
+{
+	struct drm_simple_bridge_data *data;
+
+	if (!(flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR))
+		return -EINVAL;
+
+	data = container_of(bridge, struct drm_simple_bridge_data, bridge);
+
+	return drm_bridge_attach(bridge->encoder, data->next_bridge, bridge,
+				 DRM_BRIDGE_ATTACH_NO_CONNECTOR);
+}
+
+static const struct drm_bridge_funcs drm_simple_bridge_funcs = {
+	.attach	= drm_simple_bridge_attach,
+};
+
+static int drm_simple_bridge_probe(struct auxiliary_device *auxdev,
+				   const struct auxiliary_device_id *id)
+{
+	struct drm_simple_bridge_data *data;
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
+	data->bridge.funcs = &drm_simple_bridge_funcs;
+#ifdef CONFIG_OF
+	data->bridge.of_node = data->dev->of_node;
+#endif
+
+	return devm_drm_bridge_add(data->dev, &data->bridge);
+}
+
+static const struct auxiliary_device_id drm_simple_bridge_table[] = {
+	{ .name = KBUILD_MODNAME ".simple_bridge" },
+	{},
+};
+MODULE_DEVICE_TABLE(auxiliary, drm_simple_bridge_table);
+
+struct auxiliary_driver drm_simple_bridge_drv = {
+	.name = "simple_bridge",
+	.id_table = drm_simple_bridge_table,
+	.probe = drm_simple_bridge_probe,
+};
+module_auxiliary_driver(drm_simple_bridge_drv);
+
+MODULE_AUTHOR("Dmitry Baryshkov <dmitry.baryshkov@linaro.org>");
+MODULE_DESCRIPTION("DRM simple bridge helper");
+MODULE_LICENSE("GPL");
diff --git a/include/drm/display/drm_simple_bridge.h b/include/drm/display/drm_simple_bridge.h
new file mode 100644
index 000000000000..3da8e1fb1137
--- /dev/null
+++ b/include/drm/display/drm_simple_bridge.h
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2023 Linaro Ltd.
+ *
+ * Author: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
+ */
+#ifndef DRM_SIMPLE_BRIDGE_H
+#define DRM_SIMPLE_BRIDGE_H
+
+#if IS_ENABLED(CONFIG_DRM_SIMPLE_BRIDGE)
+int drm_simple_bridge_register(struct device *parent);
+#else
+static inline int drm_simple_bridge_register(struct device *parent)
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

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F9A3C04FE0
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 07:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+WYDID/gXtrAZ3V3JhMPYvp2i+GfCGTT7TYRrPUmmU=; b=YSBINbRG14IAq0
	v8n7jJUCPZYPKE9t77W0fi477sWv4/JNj5sPjSeuFQPFxxrXeVpYancdRv13ZUv4HNFDqQMBu6Pan
	YJdLOKjMAgQiGYg6tCT61Wr/s2XHFGB3DfSZls1UpBpmQ6G1783lJqlktXO+6Ybb4kSI2hGoVDB5Y
	BS1uvZHm2kJsJMTUTcuO3/Q9jGoiFzJwrFREzDhDQsXBamXyYWWVbmvs1uENJ9sT+oj+GhUdZ0f73
	vFuonMfDxlxS3d4/vJ2ceqZMRkpRP/NRr8FAhyISrymT+yoeUsoaUNmN+LS82d5r2U2HGYs+jdeKm
	W3YfxfQsMc2fhiCdABPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQNBo-00EIUd-2w;
	Mon, 31 Jul 2023 07:19:36 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQNBm-00EISX-1E
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 07:19:35 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2b9c907bc68so51062171fa.2
        for <linux-phy@lists.infradead.org>; Mon, 31 Jul 2023 00:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690787972; x=1691392772;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dfgKbMW+x9AHpw9eC2456EAcCy2iAxOuN5PlUY6oNWk=;
        b=l4iaQ+twptsMVbXBB38l6uGQG4OAeOoEol/kaHlgvR9ISYbExTvG9xuf7WkD9PhdKj
         ydF/CHYhKRWz9SNimrKKrBCgpjIV0qqb7q75VqoJwFVDpRuFweGNXrx9uHVZnbfIOSYj
         yFhJa9g1G2PvzQkbqASIVfOoato7vw1w9beted/1SACASKJbO28ppgXeX4cBGPJMZvz7
         HVkt3Yu77FDrNe75ee/A/Rd5oM5/O/Xa+PJehUoYWUekZJknOTJWqLyMtNDuK3LPvHYl
         IInVkOLqS5D3ZP3H+ZZkRilyNyIJC5CPJ4NHPLwXtG7T1jMQaCSUHuw6YqKzu8DysN4s
         XJMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690787972; x=1691392772;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dfgKbMW+x9AHpw9eC2456EAcCy2iAxOuN5PlUY6oNWk=;
        b=hFd3j15K+QF4ksK3c/Ii+AnQFOSs7wRpCH0xrKGGP/H6VtdayB//BYObr/eUlWRCZ4
         AY3lsxkSTE1p1M6eg4VEP/uFoZFocP+nJuaUlUrZFZjeUlT03GUV7slMj7pqjmjylAQA
         gzEs8mDTo8ghWXMYncfYOEHhogdnSzMeqOZvBFnH1Z4IeaLXUCQFxQpDIwi4P/UA8wLM
         QKbAqgDdASUug4a5+fRaDTGy/vGGI1ZzFWMEi3IjJ85NUDpX+Co3RctBTgOWHV0PStYV
         7yA+LWbsNkG6eFZWK+KpXuNDdGJ0owMP0weP2ZHK+pcC+CbRm7wyOvnyF1r/SEYdciTf
         XvdQ==
X-Gm-Message-State: ABy/qLbdrfbZila3Q/GBi3sfJH7y6k2ASi0SEIEr2oddSCan/HOliW0i
	o4RujtRUB9IraD4nZWl2w5nyJA==
X-Google-Smtp-Source: APBJJlFzn/rp0yy3rmh5fwmH36YiG++PHR2gx1scqdoM0MuImlsD8U/jIFyXPs5pwcR2FwTFFC2PAg==
X-Received: by 2002:a2e:9444:0:b0:2b9:bbf5:7c6 with SMTP id o4-20020a2e9444000000b002b9bbf507c6mr5625171ljh.43.1690787972599;
        Mon, 31 Jul 2023 00:19:32 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c4-20020a2ea1c4000000b002b71c128ea0sm2413267ljm.117.2023.07.31.00.19.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 00:19:32 -0700 (PDT)
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
Subject: [PATCH v2 1/3] drm/display: add transparent bridge helper
Date: Mon, 31 Jul 2023 10:19:28 +0300
Message-Id: <20230731071930.3928150-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731071930.3928150-1-dmitry.baryshkov@linaro.org>
References: <20230731071930.3928150-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_001934_421243_6574EE4B 
X-CRM114-Status: GOOD (  19.27  )
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
 drivers/gpu/drm/display/drm_simple_bridge.c | 125 ++++++++++++++++++++
 include/drm/display/drm_simple_bridge.h     |  19 +++
 4 files changed, 155 insertions(+)
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
index 000000000000..94cdd927b708
--- /dev/null
+++ b/drivers/gpu/drm/display/drm_simple_bridge.c
@@ -0,0 +1,125 @@
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
+	data->bridge.of_node = data->dev->of_node;
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

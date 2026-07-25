Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED599C531C9
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jul 2026 03:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CL8yvM+jE4y4xlNR4MZWW7iioIfWeHd+azUQfE2MmQ=; b=uLytpWlelhqnT6
	OQoemyNT+g+C9ZVOwrlqrz6y7V74iMx99Ty3a/2pCLkYlb/NjFfLagcAIM6nlG/dH3f6ZXWSfC2Ox
	n4+BMFKSbUZRT2uVWTQAjrrPIZPFU1Iw4BrgmAAcEi1RN7YF34fhwvfRJ3zLErifpCtpLh9zH3KxU
	lYLm7bSVkjIUWnWDGn4qtpXOpVnqFMhVRFEASfMLm1UltMAcfJ9aC2AZQBbWi4nlEfDtyZEEVrcfG
	3G5S6UGaWUD4bGpCtPsY3GVVLdS1p8rfKwC/+qphZiHWQz273YqJ0PtDKmq/PfVKGWPFOMKspNPG+
	LFdc1EghVnXWAS3clBow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnSuc-0000000HXjc-0dk3;
	Sat, 25 Jul 2026 03:18:54 +0000
Received: from mail-pz2-x01.google.com ([2607:f8b0:4864:3b::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnSuY-0000000HXi7-38NH
	for linux-phy@lists.infradead.org;
	Sat, 25 Jul 2026 03:18:52 +0000
Received: by mail-pz2-x01.google.com with SMTP id 41be03b00d2f7-ca7d1dc4554so538606a12.1
        for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 20:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784949530; x=1785554330; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=62YcKoWbwf7Xh2pmJjiLRuJIzfIQtFYxUsfYj2T/BQY=;
        b=PoBzqnxjIQMSaU0rVfoJIwAi2E7zqtgD5MfQR4vOVkEkuS3zPwJF29B4ox+D3lMCNe
         eS10ovznHOFTwhiuLgjo+sEcpfnOvofmjlnmbVKtEBY+9i4S0GKeVU5f5P/hep7sr67O
         qpg8pHlkSqSQbEB+A7iJmk9hyHsv9NW8jOB3R9HMFhzhpPLWHRi8Rj2xg18pJ0MAvLtS
         Ehp5N2fqGe2+vcu7/lgsMZwCHmvETlUPG+Qo+IpjTiMY+WQ8/IgwQeGM8kbVFWB3pDl1
         cgnBK1BqMFlY5zHtEvUefRijS6rK2Q0RYAKP2VlOEe87aQVhRYUOxXn0sv43lK4M3oSo
         psGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784949530; x=1785554330;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=62YcKoWbwf7Xh2pmJjiLRuJIzfIQtFYxUsfYj2T/BQY=;
        b=R6KCgikxlwNIiptTUdbpAgSc+U4leoqBAxXQMk/cV+vPEfLUPfH+8AtlnHWIsjEmQ9
         lHABCRxnaVRBa6PomBsxL/wSrHzf8bp0GFbiTLO7DJutIyET4ki7dJUOr+hvD/FJJEHL
         LhZwLc02XxBEcZDBidVN94jL2LGzs2cK83ru1/GJFgqDehxozVSUqgVQDhGWwL2saNsK
         RT6uCr5rduF2DxMgPRtsTslGbNMph9IXyeBMz1jJlbs6ypvJzzpF7fYpo0GY/2y7241l
         l4fkyhG6qb1bKY7bMZddeln1EmPEdX6z1B0OHSBIqgKJVtGNH2L2+syZg9JAVhd7ZXZP
         w5uw==
X-Forwarded-Encrypted: i=1; AHgh+RrbMPVJxdKm1+Zy+AduVLD7kM0WQjUsmj/1yBh043xSOWShwONkfNTYg6uahtdYQIXzTlni5QMrf4o=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9eWsASygMWp8JnwYz7EwiWD+ftON8zmK+zGU1325VDcwIGMCT
	QAL0Rf2qb32X2iX7SWZGmU6HQgt9bjM+vK9DOCWx8XkjsYjyP6aS3+oY
X-Gm-Gg: AR+sD11ke6ibMiHdrz4aLJyuECmSk58fNtiwQfMa5xlm5B15y+jdFq03Stuqkv4N2Jz
	JKxH+rHhxFk20VRtviAif2ZckZzFsn5BA/0bguQ1ovdBBB3nghjtp1RBCdCudX7Dl0aUMcNjQ6z
	No4F73qa8keVh1pFOsMQ2xRYVNAn2CvlWLNq2Y/DQ3DZCjHAY4QvkaX7XpYn47hJJDZKXRv7itf
	NpWrYcBAU8ZI13TNk5yGREmT6mkZ7OU/Tr/9LuoqH00W+PZyIXxHs4spZTNymGeCXE0EP9vOSzL
	OZ9tBHVM/kYQa8mZmiFYacUFHzPXxs4bhlzmoM7Ghk1YR3GzIStfXubEGXlnnOx/3UffMP+/0S5
	LtKcIZaoWHIQcNRtPZgpzlyhfkU0DNnD20PxindWgtSu3ZbN6mllRAzE=
X-Received: by 2002:a05:6a00:4291:b0:84e:1a34:2470 with SMTP id d2e1a72fcca58-84e5949a18bmr638140b3a.30.1784949529988;
        Fri, 24 Jul 2026 20:18:49 -0700 (PDT)
Received: from [127.0.1.1] ([2a12:a305:4::403c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e53432834sm640542b3a.50.2026.07.24.20.18.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 20:18:48 -0700 (PDT)
From: Cody Kang <codykang.hk@gmail.com>
Date: Fri, 24 Jul 2026 23:16:43 -0400
Subject: [PATCH 11/17] drm/spacemit: add Saturn DPU DRM device driver
MIME-Version: 1.0
Message-Id: <20260724-k3-display-v1-11-f22a10a52867@gmail.com>
References: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
In-Reply-To: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: dri-devel@lists.freedesktop.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-clk@vger.kernel.org, Cody Kang <codykang.hk@gmail.com>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_201850_803015_BA8606B2 
X-CRM114-Status: GOOD (  19.55  )
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

Add the DRM device for the SpacemiT K3 Saturn display processing unit
and hook the driver up to the build. The SoC has two DPU instances;
each drives one CRTC that scans out a single primary plane in linear
RGB at up to 3840x2160@60 and feeds a downstream DP/eDP controller
over an OF-graph endpoint. Buffers use drm_gem_shmem_helper. The
AFBC/compressed decode path is not exposed and writeback is not
implemented.

Signed-off-by: Cody Kang <codykang.hk@gmail.com>
---
 drivers/gpu/drm/Kconfig                 |   1 +
 drivers/gpu/drm/Makefile                |   1 +
 drivers/gpu/drm/spacemit/Kconfig        |  18 +++++
 drivers/gpu/drm/spacemit/Makefile       |  12 +++
 drivers/gpu/drm/spacemit/spacemit_drm.c | 132 ++++++++++++++++++++++++++++++++
 5 files changed, 164 insertions(+)

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index 323422861e8f..81081562a6da 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -341,6 +341,7 @@ source "drivers/gpu/drm/renesas/Kconfig"
 source "drivers/gpu/drm/rockchip/Kconfig"
 source "drivers/gpu/drm/sitronix/Kconfig"
 source "drivers/gpu/drm/solomon/Kconfig"
+source "drivers/gpu/drm/spacemit/Kconfig"
 source "drivers/gpu/drm/sprd/Kconfig"
 source "drivers/gpu/drm/sti/Kconfig"
 source "drivers/gpu/drm/stm/Kconfig"
diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index e97faabcd783..4a105520ee91 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -204,6 +204,7 @@ obj-$(CONFIG_DRM_MSM) += msm/
 obj-$(CONFIG_DRM_TEGRA) += tegra/
 obj-$(CONFIG_DRM_STM) += stm/
 obj-$(CONFIG_DRM_STI) += sti/
+obj-$(CONFIG_DRM_SPACEMIT) += spacemit/
 obj-y 			+= imx/
 obj-$(CONFIG_DRM_INGENIC) += ingenic/
 obj-$(CONFIG_DRM_LOGICVC) += logicvc/
diff --git a/drivers/gpu/drm/spacemit/Kconfig b/drivers/gpu/drm/spacemit/Kconfig
new file mode 100644
index 000000000000..51e38dabfdba
--- /dev/null
+++ b/drivers/gpu/drm/spacemit/Kconfig
@@ -0,0 +1,18 @@
+# SPDX-License-Identifier: GPL-2.0
+
+config DRM_SPACEMIT
+	tristate "DRM support for SpacemiT display controllers"
+	depends on DRM && OF && MMU
+	depends on ARCH_SPACEMIT || COMPILE_TEST
+	select DRM_CLIENT_SELECTION
+	select DRM_KMS_HELPER
+	select DRM_GEM_SHMEM_HELPER
+	select REGMAP_MMIO
+	select VIDEOMODE_HELPERS
+	help
+	  Choose this option if you have a SpacemiT SoC with the Saturn
+	  display processing unit, such as the K3. The DPU scans out
+	  framebuffers through its private display MMU and feeds a
+	  DisplayPort or embedded DisplayPort controller.
+
+	  If M is selected the module will be called spacemit-drm.
diff --git a/drivers/gpu/drm/spacemit/Makefile b/drivers/gpu/drm/spacemit/Makefile
new file mode 100644
index 000000000000..b3b148000cf7
--- /dev/null
+++ b/drivers/gpu/drm/spacemit/Makefile
@@ -0,0 +1,12 @@
+# SPDX-License-Identifier: GPL-2.0
+
+spacemit-drm-y := spacemit_drm.o \
+		  spacemit_crtc.o \
+		  spacemit_cmdlist.o \
+		  spacemit_planes.o \
+		  spacemit_dmmu.o \
+		  dpu/dpu_saturn.o \
+		  dpu/dpu_saturn_hee.o \
+		  dpu/saturn_fbcmem.o
+
+obj-$(CONFIG_DRM_SPACEMIT) += spacemit-drm.o
diff --git a/drivers/gpu/drm/spacemit/spacemit_drm.c b/drivers/gpu/drm/spacemit/spacemit_drm.c
new file mode 100644
index 000000000000..9fb6a7661b48
--- /dev/null
+++ b/drivers/gpu/drm/spacemit/spacemit_drm.c
@@ -0,0 +1,132 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2025-2026 SpacemiT Co., Ltd.
+ *
+ */
+
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_framebuffer.h>
+#include <drm/drm_gem_framebuffer_helper.h>
+#include <drm/drm_gem_shmem_helper.h>
+#include <drm/drm_of.h>
+#include <drm/drm_fbdev_shmem.h>
+#include <linux/component.h>
+#include <linux/of_graph.h>
+
+#include "spacemit_drm.h"
+#include "spacemit_crtc.h"
+
+#define DRIVER_NAME	"spacemit"
+#define DRIVER_DESC	"SpacemiT SoC DRM driver"
+#define DRIVER_MAJOR	1
+#define DRIVER_MINOR	0
+
+static void spacemit_drm_atomic_commit_tail(struct drm_atomic_commit *old_state)
+{
+	struct drm_device *dev = old_state->dev;
+
+	drm_atomic_helper_commit_modeset_disables(dev, old_state);
+
+	drm_atomic_helper_commit_modeset_enables(dev, old_state);
+
+	drm_atomic_helper_commit_planes(dev, old_state,
+					DRM_PLANE_COMMIT_ACTIVE_ONLY);
+
+	drm_atomic_helper_wait_for_flip_done(dev, old_state);
+
+	drm_atomic_helper_commit_hw_done(old_state);
+
+	drm_atomic_helper_cleanup_planes(dev, old_state);
+}
+
+static const struct drm_mode_config_helper_funcs spacemit_drm_mode_config_helper = {
+	.atomic_commit_tail = spacemit_drm_atomic_commit_tail,
+};
+
+static const struct drm_mode_config_funcs spacemit_drm_mode_config_funcs = {
+	.fb_create = drm_gem_fb_create,
+	.atomic_check = drm_atomic_helper_check,
+	.atomic_commit = drm_atomic_helper_commit,
+};
+
+int spacemit_drm_mode_config_init(struct drm_device *drm)
+{
+	int ret;
+
+	ret = drmm_mode_config_init(drm);
+	if (ret)
+		return ret;
+
+	drm->mode_config.min_width = 1;
+	drm->mode_config.min_height = 1;
+	/* K3 user manual: each DPU scans out at most 3840x2160@60 */
+	drm->mode_config.max_width = 3840;
+	drm->mode_config.max_height = 2160;
+
+	drm->mode_config.funcs = &spacemit_drm_mode_config_funcs;
+	drm->mode_config.helper_private = &spacemit_drm_mode_config_helper;
+
+	return 0;
+}
+
+DEFINE_DRM_GEM_FOPS(spacemit_drm_fops);
+
+struct drm_driver spacemit_drm_drv = {
+	.driver_features = DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
+	.fops = &spacemit_drm_fops,
+
+	DRM_GEM_SHMEM_DRIVER_OPS,
+	DRM_FBDEV_SHMEM_DRIVER_OPS,
+
+	.name		= DRIVER_NAME,
+	.desc		= DRIVER_DESC,
+	.major		= DRIVER_MAJOR,
+	.minor		= DRIVER_MINOR,
+};
+
+static int compare_of(struct device *dev, void *data)
+{
+	return dev->of_node == data;
+}
+
+int spacemit_drm_of_component_probe(struct device *dev)
+{
+	struct device_node *ports, *port, *ep;
+	struct device_node *remote;
+	struct component_match *match = NULL;
+
+	if (!dev->of_node)
+		return -EINVAL;
+
+	/* The DPU is the drm root: its OF graph names the DP/eDP components. */
+	ports = of_get_child_by_name(dev->of_node, "ports");
+	if (!ports) {
+		dev_err(dev, "missing 'ports' child node\n");
+		return -EINVAL;
+	}
+
+	for_each_child_of_node(ports, port) {
+		if (!of_node_name_eq(port, "port"))
+			continue;
+		for_each_child_of_node(port, ep) {
+			if (!of_node_name_eq(ep, "endpoint"))
+				continue;
+			remote = of_graph_get_remote_port_parent(ep);
+			if (!remote)
+				continue;
+			if (of_device_is_available(remote))
+				drm_of_component_match_add(dev, &match,
+							   compare_of, remote);
+			of_node_put(remote);
+		}
+	}
+	of_node_put(ports);
+
+	if (!match) {
+		dev_err(dev, "no downstream component available\n");
+		return -ENODEV;
+	}
+
+	return component_master_add_with_match(dev, &spacemit_drm_master_ops,
+					       match);
+}

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

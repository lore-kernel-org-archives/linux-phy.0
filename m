Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D4A8C54E41
	for <linux-phy@archiver.kernel.org>; Wed,  6 Mar 2024 10:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v4bXCQ/ZxIWINku7+PtCEL+q79MMgYedNeA1WedmHek=; b=WXrbdSpEl0idqS
	ytT6h4+3+C1ky5nEXVCFwUupkanZCUNxDNmXBnSmpGlLAv1wL/fVk03dBkrZWPBxOvHR16S1yTmEN
	bpaUgElQdhh7O+yCIxm+GY6pEa/hyr6AV1Qz7ERn/L2Q6eE4aXu+Tsn51j0FOK+g2Z7sSA4Ipbznm
	kEmkZPYe7rCHgtA384A/Kjj5qxJK1Jc+dW/VUpCKDQlZNNKU7CUnqYsoF3P5difZlYQgd60yitzdA
	z3hzXG0jfcMAPq9V2XjOGQUJJTWlxkOcJE44/7QdLpi8P+rccfkTogwd/QKkIULG6uqycBdnNCWGu
	+hbVG+L27TQPAHbecVCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhoKY-0000000HLwZ-1EZ1;
	Wed, 06 Mar 2024 10:16:58 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhoKQ-0000000HLl5-1Xs7;
	Wed, 06 Mar 2024 10:16:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1709720210; x=1741256210;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=zaypW1xOUoJZkdMzg+koCFQiDKuaLfMq6IjZrmFfdLk=;
  b=aznpfpLjkI6GHD7EIduF73XgW7kCdJetYSxqHU1tWR+eGvlO1ZQ9JTh7
   3c2nTaVLGwhft+ipA0d1V8KBJBzuI/qXP9tc2ItTMNTOYehrxkg3mJIKn
   iojDYw4nExts9LLq5NRcI29AKe+2fveSoyi5hm61cxX+D4V9cP7WSqglS
   8F6wK94BEKvy0brPDDZ86qAo8HwmIeBEPGgJaHbCDlSGo8qPeK29PyWXi
   +vdXa+dwCzbQyfxHukktymEAhIojxHkm+RqQHPcTKig0cXNHcMTApW/b5
   lTLTS+uMUoR0iakk8IHTvtivaD48t/6mVXtX0WfI7hQerrls8Wof4l2bi
   w==;
X-IronPort-AV: E=Sophos;i="6.06,208,1705359600"; 
   d="scan'208";a="35760892"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 06 Mar 2024 11:16:49 +0100
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C5FF717026E;
	Wed,  6 Mar 2024 11:16:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1709720205; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=zaypW1xOUoJZkdMzg+koCFQiDKuaLfMq6IjZrmFfdLk=;
	b=rkf5+KmDT8xxAtyK4R65K8+PBH6AOYqeFQqDjvsFI//G+im0NuC1jHiq6q5jWiH+UgkWmQ
	SSIWMKJ6JPjw6+KA9zuJ3C0Z14chkmTigI8iidEgzvV1RTJAo81owa1c+Du6QJHBH1qepL
	qqhU0SZuVxA3cCQOW4/BYudo6vV9DR95y7qcAD+Zfr4lNr8wy/QBNJ+2OgBxahBAh1f1xN
	DLJqnTutB4j4/PRnlS13DU5B632+0YAyvn20RLv+zPbX0DB5ZsdFMa/E/RTgYQ6yzb9Bdl
	qN901yOb1M89m0J+WT7MFs2wxSVNlmOw1WA+/EgdZA3dtoW993753qq8USTQow==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Sandor Yu <Sandor.yu@nxp.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v15 2/8] phy: Add HDMI configuration options
Date: Wed,  6 Mar 2024 11:16:19 +0100
Message-Id: <20240306101625.795732-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240306101625.795732-1-alexander.stein@ew.tq-group.com>
References: <20240306101625.795732-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240306_021650_951333_C9CCBB7A 
X-CRM114-Status: GOOD (  16.45  )
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

From: Sandor Yu <Sandor.yu@nxp.com>

Allow HDMI PHYs to be configured through the generic
functions through a custom structure added to the generic union.

The parameters added here are based on HDMI PHY
implementation practices.  The current set of parameters
should cover the potential users.

Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
 include/linux/phy/phy-hdmi.h | 24 ++++++++++++++++++++++++
 include/linux/phy/phy.h      |  7 ++++++-
 2 files changed, 30 insertions(+), 1 deletion(-)
 create mode 100644 include/linux/phy/phy-hdmi.h

diff --git a/include/linux/phy/phy-hdmi.h b/include/linux/phy/phy-hdmi.h
new file mode 100644
index 0000000000000..b7de88e9090f0
--- /dev/null
+++ b/include/linux/phy/phy-hdmi.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright 2022 NXP
+ */
+
+#ifndef __PHY_HDMI_H_
+#define __PHY_HDMI_H_
+
+#include <linux/hdmi.h>
+/**
+ * struct phy_configure_opts_hdmi - HDMI configuration set
+ * @pixel_clk_rate: Pixel clock of video modes in KHz.
+ * @bpc: Maximum bits per color channel.
+ * @color_space: Colorspace in enum hdmi_colorspace.
+ *
+ * This structure is used to represent the configuration state of a HDMI phy.
+ */
+struct phy_configure_opts_hdmi {
+	unsigned int pixel_clk_rate;
+	unsigned int bpc;
+	enum hdmi_colorspace color_space;
+};
+
+#endif /* __PHY_HDMI_H_ */
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 03cd5bae92d3f..4ac486b101fe4 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -17,6 +17,7 @@
 #include <linux/regulator/consumer.h>
 
 #include <linux/phy/phy-dp.h>
+#include <linux/phy/phy-hdmi.h>
 #include <linux/phy/phy-lvds.h>
 #include <linux/phy/phy-mipi-dphy.h>
 
@@ -42,7 +43,8 @@ enum phy_mode {
 	PHY_MODE_MIPI_DPHY,
 	PHY_MODE_SATA,
 	PHY_MODE_LVDS,
-	PHY_MODE_DP
+	PHY_MODE_DP,
+	PHY_MODE_HDMI,
 };
 
 enum phy_media {
@@ -60,11 +62,14 @@ enum phy_media {
  *		the DisplayPort protocol.
  * @lvds:	Configuration set applicable for phys supporting
  *		the LVDS phy mode.
+ * @hdmi:	Configuration set applicable for phys supporting
+ *		the HDMI phy mode.
  */
 union phy_configure_opts {
 	struct phy_configure_opts_mipi_dphy	mipi_dphy;
 	struct phy_configure_opts_dp		dp;
 	struct phy_configure_opts_lvds		lvds;
+	struct phy_configure_opts_hdmi		hdmi;
 };
 
 /**
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C62EC3DA40
	for <linux-phy@archiver.kernel.org>; Sun, 25 Jun 2023 11:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hmqiZ4PQN6oqp5vX/AdWJs34z0PWyR1F0EgHyel/q7Q=; b=BiUFLv3M9FcP+O
	wTf/BioAYh31FVG+4dmKtqQroTO2ubMZnjI0myR0VkblJOX1h6S7YlMgE7SHdwAylnwdcJX1gvuxO
	cy8KtVLNA0/PCIIswzqswp2uZZRwVunypNESZtrYu+UVzJJzYqOlLtFcyQbHU3zzgwt2k7tzdwYw2
	24ngAL3MMKXn8/UmZtjqwuQeEaDCFc4m5FvJB9Ti0vJW52nkmoKLplgPg33SbHp3anbOq++3sxg43
	aAV5ouk8+8UDb2CspatJeX3UAbx6gzWV3K7wxIOeZbt8Z2Wpbl5+y2Kb0FQ7fzF2eCZHZnoDiZrjK
	qyhtVmEtAVFwvblkchpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDO8Y-007w2F-2g;
	Sun, 25 Jun 2023 11:42:34 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDO8T-007vzr-0o
	for linux-phy@lists.infradead.org;
	Sun, 25 Jun 2023 11:42:33 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2b45e347266so31989631fa.0
        for <linux-phy@lists.infradead.org>; Sun, 25 Jun 2023 04:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687693344; x=1690285344;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ee9qxsINn9dwQQTKQ6s0E4UzFdKioSthINPfeQJg8Jw=;
        b=EX3L88htawlQqvILyXJ3NkaBf8+4RX3uLTbwY6ggROilZVg3QNsi83qC7aea/4FwJx
         1kduiYtVxYe6DDoAfb8ah6w4NKjtQ3lphfqvPdSaAAl+X0LHsHtlx4v3I/N0uMtOfXYv
         Jd69X7vrB5w4zgGMB6bxjz077t/mrBO8Ep0xoU3pe5AZryR2oyszzWBO+pDQm0pWl8eM
         QItULxfTJ88ud2/Ib1AK+fOlkUuYtv7QlG53C4FY+vtE+h7D1sBbYQPs4fRGIyFThr4a
         LR4H36/JFXDkiSlgSGyMZK+1B+xsfBqy4yS1Mvjc0QwjOnNV0G6wcoIL9iYDhZpV6CbJ
         H5CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687693344; x=1690285344;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ee9qxsINn9dwQQTKQ6s0E4UzFdKioSthINPfeQJg8Jw=;
        b=d2Hbel9zy3nVILhNPaowkKYLpvnC6CeFChZWiEMoLqabh/V9ych3aKLYmTno1QhwLk
         2CE+f/pa7bsBAiop4w0U3nQwUs3kyHDZYgb8fhrPrvaKV1fHB5LIunbQye2zLWkm5R0t
         nbihnnQ4jGnjs1BmSpTbWJ0gpFaFKMb4737atWEjJoE6rG/tljckPNZAUp9UH/8lARvp
         DD74xzlZERhcN/9pyxCamKwn1XuyD64bYsIJpE2JhdF3Ubpsx57lF/4sojwrJO9lYO0o
         HeBtncpbl6kZXNHgG5uG2hx8hDzG+pi3sBtJM25eee6S/CC4A0denbkljTo3P17x6TXF
         hCPQ==
X-Gm-Message-State: AC+VfDym/bBXkHeE3prQ0t6lmLz29IgMvdLpGxKkHsWljI3LEfAF+psX
	O1KlKY0kAH5/acZU0K0sKb5jtg==
X-Google-Smtp-Source: ACHHUZ555Vzkh7bREew39vbOyVZgxBDGUFOF+66ODdO4RvcbdyQSw98yjlLT7ZpaHEjp121HCoTPWQ==
X-Received: by 2002:a19:5e48:0:b0:4f8:49a8:a0e2 with SMTP id z8-20020a195e48000000b004f849a8a0e2mr12908480lfi.16.1687693344498;
        Sun, 25 Jun 2023 04:42:24 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id b23-20020ac25637000000b004f87893ce21sm637323lff.3.2023.06.25.04.42.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jun 2023 04:42:24 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	linux-phy@lists.infradead.org,
	Sandor Yu <Sandor.yu@nxp.com>
Subject: [PATCH v2 01/15] phy: Add HDMI configuration options
Date: Sun, 25 Jun 2023 14:42:08 +0300
Message-Id: <20230625114222.96689-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230625114222.96689-1-dmitry.baryshkov@linaro.org>
References: <20230625114222.96689-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230625_044229_294065_DABFC1FF 
X-CRM114-Status: GOOD (  16.88  )
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
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 include/linux/phy/phy-hdmi.h | 33 +++++++++++++++++++++++++++++++++
 include/linux/phy/phy.h      |  7 ++++++-
 2 files changed, 39 insertions(+), 1 deletion(-)
 create mode 100644 include/linux/phy/phy-hdmi.h

diff --git a/include/linux/phy/phy-hdmi.h b/include/linux/phy/phy-hdmi.h
new file mode 100644
index 000000000000..73a32eb535b0
--- /dev/null
+++ b/include/linux/phy/phy-hdmi.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright 2022 NXP
+ */
+
+#ifndef __PHY_HDMI_H_
+#define __PHY_HDMI_H_
+
+enum hdmi_phy_colorspace {
+	HDMI_PHY_COLORSPACE_RGB,
+	HDMI_PHY_COLORSPACE_YUV422,
+	HDMI_PHY_COLORSPACE_YUV444,
+	HDMI_PHY_COLORSPACE_YUV420,
+	HDMI_PHY_COLORSPACE_RESERVED4,
+	HDMI_PHY_COLORSPACE_RESERVED5,
+	HDMI_PHY_COLORSPACE_RESERVED6,
+};
+
+/**
+ * struct phy_configure_opts_hdmi - HDMI configuration set
+ * @pixel_clk_rate:	Pixel clock of video modes in KHz.
+ * @bpc: Maximum bits per color channel.
+ * @color_space: Colorspace in enum hdmi_phy_colorspace.
+ *
+ * This structure is used to represent the configuration state of a HDMI phy.
+ */
+struct phy_configure_opts_hdmi {
+	unsigned int pixel_clk_rate;
+	unsigned int bpc;
+	enum hdmi_phy_colorspace color_space;
+};
+
+#endif /* __PHY_HDMI_H_ */
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index f6d607ef0e80..94d489a8a163 100644
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
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

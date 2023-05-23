Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3F6AC7EE26
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 12:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSBN21y6MwpjrWAmTKJJ+eUeEqrsJn+hwUNu8RGqzSU=; b=1hkhET393+zEFn
	MlFwSWuTxUwDfQQ9a9cyUd9XrCqEP2Yi7H94rpGjWSPXeZ000RMQ9WTnBMvKI87Lqn2X31a1DrZ4w
	D3gDVktY327xO8y2k746zzAc3Vb4HttnuB06wGFx1LBlTkI0Orcm7Ayx6AANBP2BtsVLRnUKdUifm
	wZOsO/k+JkHZhpsxLgh22HV8Mg8eN/XxiAL/SnZqbE6pvsWj2VpXHnWv/Erpd3AtUZWi3QMF3Z6uj
	xTlIcQEUrSMBT2ztNiz6qV4xiLW9VrtxF8tMejMHMMI4viyt+E1QKqQqnN1v8K1a9m+pyOvQg4Pmt
	D2mIICZkhiQQWbWKYhiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Qvr-00ACcE-0w;
	Tue, 23 May 2023 12:16:03 +0000
Received: from mail-lf1-f49.google.com ([209.85.167.49])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Qvn-00ACYC-0m
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 12:16:00 +0000
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-4f122ff663eso7898230e87.2
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 05:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684844097; x=1687436097;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=enXMayXRzHH3oByKOYNfSsDWlN3ph9R0cvur3PtJ7ms=;
        b=GgOuR/mBHkSar7s0Nq/XxGnf14MrxbwcDNTCNamb0kCxl6mw7on0TwmCUUcd5yvDEZ
         xkdovIonZ6mLa8iqAurAuOdW3v6I00EoT0PP0HuqTGCJ1oEMsEwzZxnhUv5gX0gsoZoq
         nN5cUlV5NpjXrVg3HaTQthzV9XPF/h+gGjspwMbRcW03qPEajJg1BygcKK+Q9VdYVgPI
         k7k4wRunYgMWFD+h0OjzE1pRerv3SSAGrHur2dbQzGlD2k5+MGI/RUuRDiEKse1YEn0g
         pRoMum/gT2lrfjOuAs3i+ZRguXVD2TzbLbLv6bVvuKi/sOvsE3zqQI6xXGr5msLsuSbF
         cXvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684844097; x=1687436097;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=enXMayXRzHH3oByKOYNfSsDWlN3ph9R0cvur3PtJ7ms=;
        b=Pn3hGZo3aP4Xtc00gKjxhTwVIOYH44Sf7RZGA0L+khyFHgj1FxWnNPgQmPaGb1ao8U
         s6Wc1jY4jbU+ob9bgZnh2JIgbLKUaY6D6Z1GS06e9beQTVcNCHMeM6JLhn6iPLwBxJui
         PdCkO68xXblRlrfllN/Il5pyM5jQJQdhcDEAPpcf6JKxSEH9qMww5q0FvJrgJSbp4kAV
         X3gCHwYdNYJVh2zzAiQeqv+5mxi2UjTRPUhyOcCdz1aLRT7fKyNX/Xs6GJE0gjj6hv/I
         fxFrO+LQh+vP/9hC7WYt479nrsJAXIDJ1KinuN1a70L3+xLewgMz2T86Flxv+FWM023X
         A2rA==
X-Gm-Message-State: AC+VfDw7SgJFFEZy9Xcfb7oNhTQBhw2G61BwSlO6AW5xUEMIEJBwrjL5
	l99wGb81gVGs7HoT+9ITR+g3jC9fF14oxh9MTp8=
X-Google-Smtp-Source: ACHHUZ4vMMeapHmDZhf0XR9q/6ZhAQ2GX3q8enToq80E9pn+2TNU+/BW9JtkjjWBEAiAkysxIU6lHQ==
X-Received: by 2002:ac2:5925:0:b0:4f3:7a01:f0d6 with SMTP id v5-20020ac25925000000b004f37a01f0d6mr3942481lfi.67.1684844097087;
        Tue, 23 May 2023 05:14:57 -0700 (PDT)
Received: from eriador.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c26-20020ac2531a000000b004f160559d4asm1319616lfh.183.2023.05.23.05.14.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 05:14:56 -0700 (PDT)
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
Subject: [PATCH 01/15] phy: Add HDMI configuration options
Date: Tue, 23 May 2023 15:14:40 +0300
Message-Id: <20230523121454.3460634-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
References: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_051559_275589_AC19E3A1 
X-CRM114-Status: GOOD (  17.30  )
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
index 3a570bc59fc7..93d77d45b1d4 100644
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

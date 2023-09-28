Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 539BFE732C6
	for <linux-phy@archiver.kernel.org>; Thu, 28 Sep 2023 11:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXVGdu97RafReqfGNvxGpIohA6IsIJ+DlPvpIkObLP4=; b=KXifx3unk03B1C
	+b/MzEsWG7Myi/su/mokBmkn0YjzImicFXBGHV+lq2n8a5l7yVUXZ/pbBChJ+uMO4TUhoY8wUqBK1
	232fqGnh/pQ/XrnWoNZjm5J6u0GUyAaOyb3/+Gxq5VclSzOrJaunqrmc1Kg7LbAHdLv/AACF4w4l6
	T+Bh/I4irmnSBu+1ha3YND58dukAtx8CLwClJ189N9pGGt+kD95keuPJrz5JDA871FJQ7bKKMFQro
	glzQi85d05GinjP9mO7b+FiJv5YfYGZF9/gWSQQ/7iP7ROB11lqjjYibZNPtoy4L/4/aa3TNbGT5F
	db1Ep4lMsPIrF/pjmKhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlp0Y-0038SE-2j;
	Thu, 28 Sep 2023 11:16:38 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlp0V-0038Ot-1A
	for linux-phy@lists.infradead.org;
	Thu, 28 Sep 2023 11:16:37 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50482ba2b20so3134554e87.1
        for <linux-phy@lists.infradead.org>; Thu, 28 Sep 2023 04:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899792; x=1696504592; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+rAzb42lEaywWSTeyGfFqSgOOBaQCtyh9GaKNsjXvNc=;
        b=fSgIiQOqDqWXMD0KW1X4QDqK6TqAtJBK30QSypUo9ZBuBXLnEnZRYpPM0+y6SHP3By
         OFSREDQJwer0/nADVzn9F93L3bOU1pSFIvk4jsj0hIWhk3tByhRW3/B5wj+rwtrW38cw
         +fEhF7p+iHSYCEdrHSFr65yL0MUCA6kLxtXGt7ynwm1gsRaPAUlACet9lIH4n2IIwMqu
         C6NaT6GayyCn58Sl9hAXyp42s0QK3ABCHSHyyNUX9oBz0FWPa+jAJpFVvoVQnEPK7vpT
         u5XLuFcWnwC2MGH7jMaQ0OrKcceR/SWF9NEd/F2ErPm0qYzullLTjH2PIrhint8LA7mk
         Pyqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899792; x=1696504592;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+rAzb42lEaywWSTeyGfFqSgOOBaQCtyh9GaKNsjXvNc=;
        b=qVSqs8hvBp+mZ8Ny2EVKM9jP6Gf6bbzlmi2SpYhQwtfu+hav6Ppjern9hLorynNVct
         NSDvr5PhDzv153v8AIL21oloJwQSKIeQeLRcJE9FBPcZ682FlxNcT/v6FfX0rbw8W72G
         Eoh0sHoxg65SWmPDVOH8IOqknA8YyTIJKjPSxhtrbpGi/MGeOweTdOgp0cWViyaytj5r
         p2wSxPcVitnlxA34pqeMzCNp65UBi/rCfuPb1dyvna187sjjX0THxCH3Rfp4ibP82h+R
         HPxd0qH86KKGbWdqq9rTgkiukBivOf55yP4fbIJs0MtXBA/+RmZtISXgzYKvtVXTH7U2
         F7zg==
X-Gm-Message-State: AOJu0Yy7N0PW4oOPaY/WvCt+Cn9e1NdWf021LygwJoIdTQwGt/oBygt2
	ZYSkHWdKgItu4PkSfLjV0Bjh1Q==
X-Google-Smtp-Source: AGHT+IGcjUHlLCx60PubBWC2qag96N6Bg3aeeKUItjtSZFizOGfELXbcnLll0+B3oNQkBsV8BKWQ3w==
X-Received: by 2002:a05:6512:1192:b0:501:bf37:262a with SMTP id g18-20020a056512119200b00501bf37262amr736122lfr.32.1695899792013;
        Thu, 28 Sep 2023 04:16:32 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j18-20020ac253b2000000b004fb738796casm3086623lfh.40.2023.09.28.04.16.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:16:31 -0700 (PDT)
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
Subject: [PATCH v3 01/15] phy: Add HDMI configuration options
Date: Thu, 28 Sep 2023 14:16:15 +0300
Message-Id: <20230928111630.1217419-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
References: <20230928111630.1217419-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_041635_401386_BBBD7904 
X-CRM114-Status: GOOD (  16.41  )
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
---
 include/linux/phy/phy-hdmi.h | 24 ++++++++++++++++++++++++
 include/linux/phy/phy.h      |  7 ++++++-
 2 files changed, 30 insertions(+), 1 deletion(-)
 create mode 100644 include/linux/phy/phy-hdmi.h

diff --git a/include/linux/phy/phy-hdmi.h b/include/linux/phy/phy-hdmi.h
new file mode 100644
index 000000000000..b7de88e9090f
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

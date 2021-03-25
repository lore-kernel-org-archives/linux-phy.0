Return-Path: <SRS0=4oE9=IX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE729C433E0
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 16:40:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7A48A61A25
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 16:40:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7A48A61A25
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LHYxpKK/pt60TCYugofTlSPvd8fr7+qumFWFQd8r6f8=; b=KlGR6d0t8MEy6Wp/vBzbVGyXO
	/7LR2ufgRRRopD/x0vz+SsWH9Zk0VRXT/PvOclndVIHGrMS+WGaA4nLtDZuZpAKcElSKeU3FF5flp
	ReQzYvMFM1zoh6DrdLrioK/12f8GljxCorOkQGlFqYYFuWwVAZUEyG4WLHsmeYBL4FSyNyws4wk37
	6NjHaDv/6IO0UTlWrA4KXs4NpccT6WlUsfBEfVBGOAbACZTxZYBNKQSN47frVTtWChhXUdLHfhy7t
	xl9v1arj+KSULlSeIo19x4vUAUSz08gGq5k38GZJy/Gc4ZZ13k1BtENkrW/qfrN9ckqWB5Szy3WPk
	5120sE8yA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPT2R-001qJf-Pa; Thu, 25 Mar 2021 16:40:51 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPT2O-001qIz-8B
 for linux-phy@lists.infradead.org; Thu, 25 Mar 2021 16:40:50 +0000
Received: by mail-wr1-x432.google.com with SMTP id j7so2982053wrd.1
 for <linux-phy@lists.infradead.org>; Thu, 25 Mar 2021 09:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BIOzYjpuWV2ikVARWL5rnMXlYplC4fVIyiluPMIE1oE=;
 b=T+5lmaYU0760xN0cgcjj5c8+SDzlH7A/atUQUf4fLVOx2WE54T7z8ZItEJZl86LVVR
 o0FPEerykYnJ0HBljGhYcwKI4YJepfTiet/oep+mOhuOJOvgJyonZP+cHnoTSfmLfYWV
 lRPTLweJBT7lz99SB3JACg4kCo0ZbWBiI2jLX8C6u9fzHoCJy4GGRANnNF+O3SvYEXDB
 UYAzmpR8wcGZc4F+05TL3vSTLf+98outM3Z9NS+G69NKHOAEx158eCryef57QwYZiKpz
 5/PU5edUocmXm1scX0khV7VMSg2OVn7VZPp69hyzYYEEZAF5mdyx36Lx04en2FUyCY5r
 U6YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BIOzYjpuWV2ikVARWL5rnMXlYplC4fVIyiluPMIE1oE=;
 b=cIMl+RD0ar3r2+E1J6I8GxrYrB7cLRhihJNDg8ob70MNu54lbzruNZXZO48ET8vkjq
 Qbp1nV/0ypG8vC5vcP+4U/d5Sk+yGpHXeckiZqwmkAlUWpFo7tSVGFQq470buXN9q/Xu
 VBi2AYDh39Ylr63TDULZrroIq2+Qay/9KFSo/woUfYDlC1wYMnFE5jTTZ+yHs0HaP/7t
 fyFVr1+M9XclA2RJbfMiUSnGMOo/DsateSXoYn595d92XuDiSs3gNRCEQzhSj3vgnwKi
 t5nkjOuVan66li1eep2O8L6OtMTOgx1tQ4cYUuZ7xYSd+23Icul5f2YTfQSpyhIFxv5T
 j45Q==
X-Gm-Message-State: AOAM531Yn+Zpmm/PKsFLTuMqediwvHvaEW5KJCnXauq2SkkrbacqcJSR
 qCg8OYQG9z5wfF3zqnHhSHU=
X-Google-Smtp-Source: ABdhPJyZAKo+sD+iopvWd3BFRQ8xlnIOc5+qTBvaeiQHoQwgOF2llYd0lTLSDaZWT58a8VW8MaFZOw==
X-Received: by 2002:adf:9261:: with SMTP id 88mr9676623wrj.270.1616690447651; 
 Thu, 25 Mar 2021 09:40:47 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id j16sm11847179wmi.2.2021.03.25.09.40.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Mar 2021 09:40:45 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v8 01/13] clk: tegra: Add PLLE HW power sequencer control
Date: Thu, 25 Mar 2021 17:40:45 +0100
Message-Id: <20210325164057.793954-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210325164057.793954-1-thierry.reding@gmail.com>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_164048_416688_697EB27D 
X-CRM114-Status: GOOD (  15.45  )
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

From: JC Kuo <jckuo@nvidia.com>

PLLE has a hardware power sequencer logic which is a state machine
that can power on/off PLLE without any software intervention. The
sequencer has two inputs, one from XUSB UPHY PLL and the other from
SATA UPHY PLL. PLLE provides reference clock to XUSB and SATA UPHY
PLLs. When both of the downstream PLLs are powered-off, PLLE hardware
power sequencer will automatically power off PLLE for power saving.

XUSB and SATA UPHY PLLs also have their own hardware power sequencer
logic. XUSB UPHY PLL is shared between XUSB SuperSpeed ports and PCIE
controllers. The XUSB UPHY PLL hardware power sequencer has inputs
from XUSB and PCIE. When all of the XUSB SuperSpeed ports and PCIE
controllers are in low power state, XUSB UPHY PLL hardware power
sequencer automatically power off PLL and flags idle to PLLE hardware
power sequencer. Similar applies to SATA UPHY PLL.

PLLE hardware power sequencer has to be enabled after both downstream
sequencers are enabled.

This commit adds two helper functions:
1. tegra210_plle_hw_sequence_start() for XUSB PADCTL driver to enable
   PLLE hardware sequencer at proper time.

2. tegra210_plle_hw_sequence_is_enabled() for XUSB PADCTL driver to
   check whether PLLE hardware sequencer has been enabled or not.

Signed-off-by: JC Kuo <jckuo@nvidia.com>
Acked-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/clk/tegra/clk-tegra210.c | 53 +++++++++++++++++++++++++++++++-
 include/linux/clk/tegra.h        |  4 ++-
 2 files changed, 55 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/tegra/clk-tegra210.c b/drivers/clk/tegra/clk-tegra210.c
index 68cbb98af567..b9099012dc7b 100644
--- a/drivers/clk/tegra/clk-tegra210.c
+++ b/drivers/clk/tegra/clk-tegra210.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Copyright (c) 2012-2014 NVIDIA CORPORATION.  All rights reserved.
+ * Copyright (c) 2012-2020 NVIDIA CORPORATION.  All rights reserved.
  */
 
 #include <linux/io.h>
@@ -403,6 +403,14 @@ static unsigned long tegra210_input_freq[] = {
 #define PLLRE_BASE_DEFAULT_MASK		0x1c000000
 #define PLLRE_MISC0_WRITE_MASK		0x67ffffff
 
+/* PLLE */
+#define PLLE_MISC_IDDQ_SW_CTRL		(1 << 14)
+#define PLLE_AUX_USE_LOCKDET		(1 << 3)
+#define PLLE_AUX_SS_SEQ_INCLUDE		(1 << 31)
+#define PLLE_AUX_ENABLE_SWCTL		(1 << 4)
+#define PLLE_AUX_SS_SWCTL		(1 << 6)
+#define PLLE_AUX_SEQ_ENABLE		(1 << 24)
+
 /* PLLX */
 #define PLLX_USE_DYN_RAMP		1
 #define PLLX_BASE_LOCK			(1 << 27)
@@ -489,6 +497,49 @@ static unsigned long tegra210_input_freq[] = {
 #define PLLU_MISC0_WRITE_MASK		0xbfffffff
 #define PLLU_MISC1_WRITE_MASK		0x00000007
 
+bool tegra210_plle_hw_sequence_is_enabled(void)
+{
+	u32 value;
+
+	value = readl_relaxed(clk_base + PLLE_AUX);
+	if (value & PLLE_AUX_SEQ_ENABLE)
+		return true;
+
+	return false;
+}
+EXPORT_SYMBOL_GPL(tegra210_plle_hw_sequence_is_enabled);
+
+int tegra210_plle_hw_sequence_start(void)
+{
+	u32 value;
+
+	if (tegra210_plle_hw_sequence_is_enabled())
+		return 0;
+
+	/* skip if PLLE is not enabled yet */
+	value = readl_relaxed(clk_base + PLLE_MISC0);
+	if (!(value & PLLE_MISC_LOCK))
+		return -EIO;
+
+	value &= ~PLLE_MISC_IDDQ_SW_CTRL;
+	writel_relaxed(value, clk_base + PLLE_MISC0);
+
+	value = readl_relaxed(clk_base + PLLE_AUX);
+	value |= (PLLE_AUX_USE_LOCKDET | PLLE_AUX_SS_SEQ_INCLUDE);
+	value &= ~(PLLE_AUX_ENABLE_SWCTL | PLLE_AUX_SS_SWCTL);
+	writel_relaxed(value, clk_base + PLLE_AUX);
+
+	fence_udelay(1, clk_base);
+
+	value |= PLLE_AUX_SEQ_ENABLE;
+	writel_relaxed(value, clk_base + PLLE_AUX);
+
+	fence_udelay(1, clk_base);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(tegra210_plle_hw_sequence_start);
+
 void tegra210_xusb_pll_hw_control_enable(void)
 {
 	u32 val;
diff --git a/include/linux/clk/tegra.h b/include/linux/clk/tegra.h
index eb016fc9cc0b..f7ff722a03dd 100644
--- a/include/linux/clk/tegra.h
+++ b/include/linux/clk/tegra.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
- * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ * Copyright (c) 2012-2020, NVIDIA CORPORATION.  All rights reserved.
  */
 
 #ifndef __LINUX_CLK_TEGRA_H_
@@ -123,6 +123,8 @@ static inline void tegra_cpu_clock_resume(void)
 }
 #endif
 
+extern int tegra210_plle_hw_sequence_start(void);
+extern bool tegra210_plle_hw_sequence_is_enabled(void);
 extern void tegra210_xusb_pll_hw_control_enable(void);
 extern void tegra210_xusb_pll_hw_sequence_start(void);
 extern void tegra210_sata_pll_hw_control_enable(void);
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38306CCA46C
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 14:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJzVgO/SzgjsjvS0ubWbH9UhP4yBi0PWaOUWl0+Z13o=; b=jxk7pGljk5gdTp
	i78uz6bgzytVqko3e9x6akK60efT0/STZ4Oz3mDr5ruODZ3l3dXLo4RYt3QTJ0mRHzvc25FgZuP3v
	maiLr/7zDm49D/UspBgYriX8hBNuMp+Dt5a9eyfmmcoD76A9RhKzhXmWvP1Dtjv1S1Cb81+Sh6i6K
	fDmU3UCFkbwnOF1Cg9IyF0LST+y2QlfhRT8KU5OLb92uFCv3mQfIXAZr+3xD+pf+YP0ROtOku/zfH
	cunIxArrEmHSv14AG/zmBgzJTCMjvgYHu5yW0Aa5v0PPGE0OuEO+g4hcVnUeWiuJdZ5rg5fq8I7KL
	YGMc/Ah4uZ+pKf2O2U/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHjLy-00000003DIU-3i3N;
	Fri, 16 Oct 2026 14:56:14 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHjLw-00000003DHR-3uMj
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 14:56:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7C480439D1;
	Fri, 16 Oct 2026 14:56:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5BB07C2BCFC;
	Fri, 16 Oct 2026 14:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792162572;
	bh=ctStdelPIUVc7VW6eWcZJlQ+36ihtcbruWdKm/IRbJ0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=hItC4af0oSg/HMj79OqJkifEghupwcEX4yyPuxe92oeLpStZnLBz0XtnHZ47XsHoH
	 Ujr622b5JOUWv5SYSCJ5emp8MgmvsHgomXQ6tKOjAnKclzm4elfKbjqRuyNvEAFZjY
	 eTokADNfACz/8ccWAuwnT9+ezRcFfYlnTQCLnWzcEwyllA+Na+fZwekcQpWxohnEHY
	 M8v9ymvKNgVB+pf/oLMoOmDi8G69+Dwxh+UFOJY4iGTZ6HpzQEnaVU1rmMACOCasHN
	 fvp8a5RRVXRFbJyJu+ORWcMJzauK/Ap23EH8QIxXWMHE+onOccJw8BoxpmAJuUNLdD
	 mSpaFTEkOHR2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38F0BCC6B38;
	Fri, 16 Oct 2026 14:56:12 +0000 (UTC)
From: George Neacsu via B4 Relay <devnull+geocausa.gmail.com@kernel.org>
Date: Fri, 16 Oct 2026 15:56:11 +0100
Subject: [PATCH v3 1/6] phy: Add MIPI C-PHY mode and configuration options
MIME-Version: 1.0
Message-Id: <20261016-x1e-cphy-rfc-v3-1-40a346a72153@gmail.com>
References: <20261016-x1e-cphy-rfc-v3-0-40a346a72153@gmail.com>
In-Reply-To: <20261016-x1e-cphy-rfc-v3-0-40a346a72153@gmail.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>, 
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>, 
 Suresh Vankadara <svankada@qti.qualcomm.com>, tjose@qti.qualcomm.com, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 George Neacsu <geocausa@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792162570; l=2907;
 i=geocausa@gmail.com; s=20261015; h=from:subject:message-id;
 bh=36uZ+JScSYFLwexM/kC6X4AHkDlZ/9zLHIZ2E9kp+04=;
 b=R3n9/fFP8SEKy/tEs43CfcYQIzGpRgt3AwVdDMRQLH8c8JT8ATg3b6NnKTNhQffP8hftvk43w
 Dr68UEtadiCAG10tfOVlY/eM2WDrkmt3CoSXXxcZZ8sSLIs9EIG39a+
X-Developer-Key: i=geocausa@gmail.com; a=ed25519;
 pk=KyQk/iWbxsikewDBh0SwlHI51RvAqahD3loqmRp9DVI=
X-Endpoint-Received: by B4 Relay for geocausa@gmail.com/20261015 with
 auth_id=1199
X-Original-From: George Neacsu <geocausa@gmail.com>
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
Reply-To: geocausa@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: George Neacsu <geocausa@gmail.com>

The generic PHY framework has a mode and configuration options for MIPI
D-PHY but none for C-PHY, so a CSI-2 receiver has no way to ask a PHY
that does both for C-PHY. Add PHY_MODE_MIPI_CPHY and struct
phy_configure_opts_mipi_cphy. The options are the two values a receiver
knows: the symbol rate on each trio and the number of trios.

The first user is the Qualcomm CSI2 PHY, whose X1E80100 instances carry
the C-PHY front camera of the Surface Pro 11.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: George Neacsu <geocausa@gmail.com>
---
 include/linux/phy/phy-mipi-cphy.h | 29 +++++++++++++++++++++++++++++
 include/linux/phy/phy.h           |  5 +++++
 2 files changed, 34 insertions(+)

diff --git a/include/linux/phy/phy-mipi-cphy.h b/include/linux/phy/phy-mipi-cphy.h
new file mode 100644
index 0000000000..9b748d577b
--- /dev/null
+++ b/include/linux/phy/phy-mipi-cphy.h
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __PHY_MIPI_CPHY_H_
+#define __PHY_MIPI_CPHY_H_
+
+#include <linux/types.h>
+
+/**
+ * struct phy_configure_opts_mipi_cphy - MIPI C-PHY configuration set
+ *
+ * This structure is used to represent the configuration state of a
+ * MIPI C-PHY phy.
+ */
+struct phy_configure_opts_mipi_cphy {
+	/**
+	 * @symbol_rate:
+	 *
+	 * Symbol rate on each trio, in symbols per second.
+	 */
+	u64			symbol_rate;
+
+	/**
+	 * @trios:
+	 *
+	 * Number of active trios.
+	 */
+	u8			trios;
+};
+
+#endif /* __PHY_MIPI_CPHY_H_ */
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index c480d6cb42..f123378340 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -19,6 +19,7 @@
 #include <linux/phy/phy-dp.h>
 #include <linux/phy/phy-hdmi.h>
 #include <linux/phy/phy-lvds.h>
+#include <linux/phy/phy-mipi-cphy.h>
 #include <linux/phy/phy-mipi-dphy.h>
 #include <linux/phy/phy-thunderbolt.h>
 
@@ -42,6 +43,7 @@ enum phy_mode {
 	PHY_MODE_PCIE,
 	PHY_MODE_ETHERNET,
 	PHY_MODE_MIPI_DPHY,
+	PHY_MODE_MIPI_CPHY,
 	PHY_MODE_SATA,
 	PHY_MODE_LVDS,
 	PHY_MODE_DP,
@@ -69,6 +71,8 @@ union phy_notify {
  *
  * @mipi_dphy:	Configuration set applicable for phys supporting
  *		the MIPI_DPHY phy mode.
+ * @mipi_cphy:	Configuration set applicable for phys supporting
+ *		the MIPI_CPHY phy mode.
  * @dp:		Configuration set applicable for phys supporting
  *		the DisplayPort protocol.
  * @lvds:	Configuration set applicable for phys supporting
@@ -78,6 +82,7 @@ union phy_notify {
  */
 union phy_configure_opts {
 	struct phy_configure_opts_mipi_dphy	mipi_dphy;
+	struct phy_configure_opts_mipi_cphy	mipi_cphy;
 	struct phy_configure_opts_dp		dp;
 	struct phy_configure_opts_lvds		lvds;
 	struct phy_configure_opts_hdmi		hdmi;

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

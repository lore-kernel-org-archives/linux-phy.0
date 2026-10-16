Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E803CC6B38
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 10:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZxoRd7dx9brZbQL3j5UvUhVpr0P5giEyQK38i0Ujw68=; b=abHYZJ+ITWEGp1
	h7HqvQxk0joBuKHoeAeV4wLtMin0UtoEUfuZ7v8dsm4Z58lHcBowd8TVB0olHN3URq1uhQ4Hn/KMk
	5XaJBOkKpRU8M54bLNVGzksUfem6uzBYcn6MMQTpYYASToknCzsVewcwmbAH9e9Mk+94U8bDlr41k
	q2zZF7iJiB2g0NQDJ1+tAMw7nCRBJ9BQCKg0eZB7eOwnGVteAKrDBGn6J8tEZEa+rfcEGmAh/VVnc
	446exwLCkIS8rfnc66TLaJh44VJSm7yYmwgz0/AZl5hlwSlerqq01cXzil3CmEG4j6XqrGXFsJsR1
	3qLW7Kin6idDm/e3RrdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfdI-00000002jNS-0sTE;
	Fri, 16 Oct 2026 10:57:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfdG-00000002jMr-2axA
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 10:57:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2A36944500;
	Fri, 16 Oct 2026 10:57:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BCBFC2BCFD;
	Fri, 16 Oct 2026 10:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792148270;
	bh=JfyxnFFnZK2KCioAETLy7tquK+kDyxo4GNHnHr57raE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Tj9SP/7BRWFR4vQIG4l3Yi1zd4K3Vt8Mx0ZeQqgbWfCAG496ppNN1EYAVhZ9thuhV
	 9ACCf+qXDzD2HFEo0anuzCgFj+NPpwPoSbBYymkyQKM6ZOPxV6GYgXHGl+mEkd39zz
	 kHXSmJXblM/GBS2Gh+uwb78/ltLmetmmaIS2XauDMwA4QFRQ2ztn5u7kDGRwG8FwpU
	 Q1p4i3Ayxa7yeKCp+JZdqPxq6Uoc5EyAlOAlrtoMRN5rVf9mzTv0dek5dHErpuuN3O
	 CA1XqGtv0wNH6i3YENPyr2E1G+/E84RXQUGIw0UPwCNP/MeeUd/jssVdjbJ9jcdYwV
	 ZIRGcdZJNx8CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE1EDCCA462;
	Fri, 16 Oct 2026 10:57:49 +0000 (UTC)
From: George Neacsu via B4 Relay <devnull+geocausa.gmail.com@kernel.org>
Date: Fri, 16 Oct 2026 11:57:49 +0100
Subject: [PATCH RFC v2 2/4] phy: Add MIPI C-PHY configuration helpers
MIME-Version: 1.0
Message-Id: <20261016-x1e-cphy-rfc-v2-2-377654253193@gmail.com>
References: <20261016-x1e-cphy-rfc-v2-0-377654253193@gmail.com>
In-Reply-To: <20261016-x1e-cphy-rfc-v2-0-377654253193@gmail.com>
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
 linux-kernel@vger.kernel.org, George Neacsu <geocausa@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792148268; l=3198;
 i=geocausa@gmail.com; s=20261015; h=from:subject:message-id;
 bh=QB1gglGzNsXQ0TNRqQoooopMt6sn84f8HGcviHXPMFs=;
 b=CL2zpBWpaF6wUPW0yIED/iA5oKv6Q7iuc1b6VZ/Ct1PvMnez1omuTfHbKiPNoIp9Aua7potDF
 B/KnswxPKTZDyQRuwYjkwx2/lcS2gsKWXYfiGrNpDEFG9g1ABR39L3P
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

A CSI-2 receiver knows the link frequency of its transmitter, and by the
V4L2 convention a C-PHY link frequency is half the symbol rate on each
trio. Add helpers so that the receiver and the PHY do not each open-code
that conversion, as phy_mipi_dphy_get_default_config_for_hsclk() does
for D-PHY:

- phy_mipi_cphy_get_default_config_for_link_freq() fills a
  configuration from a link frequency and a trio count;
- phy_mipi_cphy_config_validate() checks for a symbol rate and one to
  three trios;
- phy_mipi_cphy_link_freq() gives the link frequency of a configuration.

They are small enough to be inline, so no new Kconfig symbol is needed.

Suggested-by: Bryan O'Donoghue <bod@kernel.org>
Suggested-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: George Neacsu <geocausa@gmail.com>
---
 include/linux/phy/phy-mipi-cphy.h | 61 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/include/linux/phy/phy-mipi-cphy.h b/include/linux/phy/phy-mipi-cphy.h
index ef6af61de..f6746dcb0 100644
--- a/include/linux/phy/phy-mipi-cphy.h
+++ b/include/linux/phy/phy-mipi-cphy.h
@@ -2,6 +2,10 @@
 #ifndef __PHY_MIPI_CPHY_H_
 #define __PHY_MIPI_CPHY_H_
 
+#include <linux/errno.h>
+
+#define PHY_MIPI_CPHY_MAX_TRIOS		3
+
 /**
  * struct phy_configure_opts_mipi_cphy - MIPI C-PHY configuration set
  *
@@ -24,4 +28,61 @@ struct phy_configure_opts_mipi_cphy {
 	unsigned char		trios;
 };
 
+/**
+ * phy_mipi_cphy_config_validate() - Validate a MIPI C-PHY configuration
+ * @cfg: configuration to check
+ *
+ * Return: 0 if @cfg has a symbol rate and one to three trios, -EINVAL
+ * otherwise.
+ */
+static inline int
+phy_mipi_cphy_config_validate(const struct phy_configure_opts_mipi_cphy *cfg)
+{
+	if (!cfg->symbol_rate)
+		return -EINVAL;
+
+	if (cfg->trios < 1 || cfg->trios > PHY_MIPI_CPHY_MAX_TRIOS)
+		return -EINVAL;
+
+	return 0;
+}
+
+/**
+ * phy_mipi_cphy_get_default_config_for_link_freq() - C-PHY configuration
+ * from a link frequency
+ * @link_freq: link frequency in Hz
+ * @trios: number of active trios
+ * @cfg: configuration to fill
+ *
+ * A C-PHY link frequency is half the symbol rate on each trio, the
+ * convention V4L2 uses for the link frequency of a C-PHY transmitter.
+ *
+ * Return: 0 on success, -EINVAL if the resulting configuration is invalid.
+ */
+static inline int
+phy_mipi_cphy_get_default_config_for_link_freq(unsigned long long link_freq,
+					       unsigned int trios,
+					       struct phy_configure_opts_mipi_cphy *cfg)
+{
+	if (trios > PHY_MIPI_CPHY_MAX_TRIOS)
+		return -EINVAL;
+
+	cfg->symbol_rate = link_freq * 2;
+	cfg->trios = trios;
+
+	return phy_mipi_cphy_config_validate(cfg);
+}
+
+/**
+ * phy_mipi_cphy_link_freq() - Link frequency of a MIPI C-PHY configuration
+ * @cfg: configuration
+ *
+ * Return: the link frequency in Hz, half the symbol rate on each trio.
+ */
+static inline unsigned long long
+phy_mipi_cphy_link_freq(const struct phy_configure_opts_mipi_cphy *cfg)
+{
+	return cfg->symbol_rate / 2;
+}
+
 #endif /* __PHY_MIPI_CPHY_H_ */

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

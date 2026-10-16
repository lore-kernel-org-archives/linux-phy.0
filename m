Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B69A7CCF2C0
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 10:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=du0xNCzAlCS+flYR9jfAV1KGbshXGKKiIe8FYP6vlhM=; b=x9o2qiA/toKNmL
	/VTN/4Ydn2yQhvbD0jM53ponNW0A7EY4UCZTAPvijBXGVj6gQt9lFt8cLFM+4WsXx6B72NSF6lpvc
	fdP3LbC8q7c/6NqRtG33SZUMgY7B4Lt5e6hcaywD6VxcjtK/+pClibzdwYTcPe3YDfoh3Wgp4vy4A
	TbzG8+Bfzz1F4Ss536d6LIyEsKHMgd9+sYJbahoeQ9FgnKTLJKGErJkynbKGVWoC5Yp9rYKoTTQc6
	uEf6A3B3Bj2WV1LenKfvI0bBvVevrfmP19RZPBUCJLykbLVbq2kYbxAKKUzy6psiBI65tr8gTxvB6
	mD1Y5pzz+HEBgP4TZsyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfdI-00000002jNa-11oA;
	Fri, 16 Oct 2026 10:57:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfdG-00000002jMo-2asW
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 10:57:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 14FA543B06;
	Fri, 16 Oct 2026 10:57:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA74C2BCFB;
	Fri, 16 Oct 2026 10:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792148270;
	bh=eectjYrIhTFeSa6cmyJxGwjidsaxuV0RwoviEysySwc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=kiAQiMCtt25Kj0fGr+iH8SVNmUYyQVKmV5J/kCrgbus5z+3HKl9EpRApK0vjpRxnK
	 4+rwkjd/iHe7dGAUcSCyGMFRYTY/1w5x2QZh0DWQa40QnWhtXPsYPYJyrQt1tjHSeW
	 LmXjzfq5zfUhI1Aei3qLszVVB4DWxvITgxCJ899nRusahCNkrD90VPjZ5h8tQjJICe
	 PYV5ZCUKDRITzxu964YWjCZfJVG0dJRmdSHCWQHJolgLaA3J5ZCASvwODtmSnaHhoc
	 zOEd9qOxs8eZtku1AHJtQjnUofrS1PbFjZQ2b9gxBr4Ya+O5fklFxXO7PWJETETIP9
	 nRklGKAIgCO9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3AFCC6B38;
	Fri, 16 Oct 2026 10:57:49 +0000 (UTC)
From: George Neacsu via B4 Relay <devnull+geocausa.gmail.com@kernel.org>
Date: Fri, 16 Oct 2026 11:57:48 +0100
Subject: [PATCH RFC v2 1/4] phy: Add MIPI C-PHY mode and configuration
 options
MIME-Version: 1.0
Message-Id: <20261016-x1e-cphy-rfc-v2-1-377654253193@gmail.com>
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
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 George Neacsu <geocausa@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792148268; l=2835;
 i=geocausa@gmail.com; s=20261015; h=from:subject:message-id;
 bh=QHFBcJBpxdO8b73RCl5n/HzgmWhLoMZI00dLXopfdHo=;
 b=wzpKJT0trhBnts5TniNxrXAprJYbXQP8/TrfwHSkfA39zj/74K4SYjYLoFmuIow+xK8VQPSGo
 0vSUe2fMjeOD6DgVoDlwdni+i/fj3FrfBobWmztRxNV7/pI2lLDgzUI
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
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: George Neacsu <geocausa@gmail.com>
---
 include/linux/phy/phy-mipi-cphy.h | 27 +++++++++++++++++++++++++++
 include/linux/phy/phy.h           |  5 +++++
 2 files changed, 32 insertions(+)

diff --git a/include/linux/phy/phy-mipi-cphy.h b/include/linux/phy/phy-mipi-cphy.h
new file mode 100644
index 000000000..ef6af61de
--- /dev/null
+++ b/include/linux/phy/phy-mipi-cphy.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __PHY_MIPI_CPHY_H_
+#define __PHY_MIPI_CPHY_H_
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
+	unsigned long long	symbol_rate;
+
+	/**
+	 * @trios:
+	 *
+	 * Number of active trios.
+	 */
+	unsigned char		trios;
+};
+
+#endif /* __PHY_MIPI_CPHY_H_ */
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index c480d6cb4..f12337834 100644
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

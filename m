Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB65DCCA46B
	for <linux-phy@archiver.kernel.org>; Thu, 15 Oct 2026 22:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6BaRc0baqrMe92bzLIDdmFdKP3eQNwP534+gAGta1i4=; b=xSJipL7hNwmBQl
	9GW14nvKkOdA6geA3ZEOUuvBvNVklwIVFourwD9fuzLAvBnZDc0qRQalJQbcVQsEKmPeD7qRBH5/U
	RGszDEvH41qIobEoLkariI6vYMNlXUJmvegg8Gs0zCVV7+5xvCfE0dNCTdZ+1WqzlAQyj0vbvIaht
	jkjjWB4FdKGrj3Ja6PK78rceuyZ/4KPz2Nf+0Ro/LpcqEV5CHF3OukyuCKtIH4+2NPB6he5Hv52Wl
	J/KPIW+m3ajvuc7PV8XXbra+tx639l0jG7oZxC4J16QlB98reYnRqbCXyI301OroYoqDsFdhIpKBk
	iNs3R5PllyJJDWABNB+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHToW-00000001UFy-2Nbz;
	Thu, 15 Oct 2026 22:20:40 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHToU-00000001UET-1qEm
	for linux-phy@lists.infradead.org;
	Thu, 15 Oct 2026 22:20:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9902760A79;
	Thu, 15 Oct 2026 22:20:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 43F60C2BCC7;
	Thu, 15 Oct 2026 22:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792102837;
	bh=hxqa7zpmQCaIYsVNwv59oP2me/nCi+1EB33FKN9XvDQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=aXT/2xRB1pfDopxWYA840r0ON4t3JXYQSRaA0NDpQFQdUC8GCYdHZeZ153318VKaQ
	 YneGJGD/+RTpYgEkx31VcSKEAbaqs2ZGVfUClBawx+HJdBoDPjn7fSsKvn3+zUx74F
	 pCil4hZ7oBETxqME9zonWo6TnrkG4c6bNHXOFPy5wwFt/i937MnVuVa6OVQiuiT0uX
	 AQvMKK+4HW/eH4tmbOdf1e9uDss0Va1i8NxrBKhc/8OO+PFmn4G25X1oobAsqygIZV
	 Mr2VIA9rkZ3ggv3Zwu3PG6U/jj/yvWZW16kAKu2qDOCs2svrKOGX16fNiFFPm+KDC6
	 UtvCqSQ0no2kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2333DCC6B38;
	Thu, 15 Oct 2026 22:20:37 +0000 (UTC)
From: George Neacsu via B4 Relay <devnull+geocausa.gmail.com@kernel.org>
Date: Thu, 15 Oct 2026 23:20:36 +0100
Subject: [PATCH RFC 1/4] phy: Add MIPI C-PHY mode and configuration options
MIME-Version: 1.0
Message-Id: <20261015-x1e-cphy-rfc-v1-1-1f3fa9af940a@gmail.com>
References: <20261015-x1e-cphy-rfc-v1-0-1f3fa9af940a@gmail.com>
In-Reply-To: <20261015-x1e-cphy-rfc-v1-0-1f3fa9af940a@gmail.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, George Neacsu <geocausa@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792102835; l=2771;
 i=geocausa@gmail.com; s=20261015; h=from:subject:message-id;
 bh=PqWyhBeoW0s90os2bdiW4A/U8uEEiB9mJlAbmut/HGk=;
 b=ydTmXfBsXbIYrV2Dt2SO9AwKEcGudILmDUw7lCKdCa6bkdezpzDBaK8t3CZc0VeKgwRZZgGs0
 T56/tfjcIAoDVu3LNDdRUwwfJMOLYO2hmShglTqzag00/0lHWWvMTHO
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

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: George Neacsu <geocausa@gmail.com>
---
 include/linux/phy/phy-mipi-cphy.h | 27 +++++++++++++++++++++++++++
 include/linux/phy/phy.h           |  5 +++++
 2 files changed, 32 insertions(+)

diff --git a/include/linux/phy/phy-mipi-cphy.h b/include/linux/phy/phy-mipi-cphy.h
new file mode 100644
index 000000000..e3f0a8257
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
+	unsigned long		symbol_rate;
+
+	/**
+	 * @lanes:
+	 *
+	 * Number of active trios.
+	 */
+	unsigned char		lanes;
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

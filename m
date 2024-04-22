Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4564C4345F
	for <linux-phy@archiver.kernel.org>; Mon, 22 Apr 2024 18:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6B9NlzkeBpahn/cxVbq1Ir+8DHvbkhD6MvXzLwFICM=; b=IgFKTDIMbnYJww
	UOzyp2uMA9C/OW1XWUbQlHtYo52NQYrRaHohfhqH5kKUh7Xyxpm+GD2mwOZBuCybQNawWgiL9m+4o
	7SpZbu+nCZG5W8py3OfzSUh3SpJLFPU5fxWmcK6QcTYsDi+6D7uVv5VN9j4aEEnH0lmIe3zBmGY4m
	k71WfkQemuy+H29ZrPpsCCAHbfqJqxKfsg5IYJMiA6VBFjWfw3rcK/Y9PXtk9XL66Tnmia5xWud9P
	vaPDxxtT0O/V1UidXDbo10KApAPB0DmRidKVPQ2cpMoCvK3ZJN5+tRfJ496KFpp6ZoD56FFy3RQcz
	9b19qQrOMD/l140f/1Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryys8-0000000EiIf-27I3;
	Mon, 22 Apr 2024 18:58:36 +0000
Received: from out-173.mta1.migadu.com ([2001:41d0:203:375::ad])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryyrq-0000000Ei5t-0Zon
	for linux-phy@lists.infradead.org;
	Mon, 22 Apr 2024 18:58:20 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1713812293;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QieHunxza7oONNqDvj8FAilmUbNuLii0kfErB3NoZW4=;
	b=sC/0mPu8+v9KnEygO9w7oUbzkZXNLGmM3vEaXpON0arLdxLJlMX8Xoi+PrJOVQxDNhAkti
	ITyBwp5vF1T2bA1wh1hr6vDoPFmAq7VB7RBxNk2tullNtGozKvjtrU3Kq3P6Viiqzvhcuf
	6WTCn+k2NPi82cVAvvnYWx0FdtbdsYk=
From: Sean Anderson <sean.anderson@linux.dev>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	linux-kernel@vger.kernel.org,
	Michal Simek <michal.simek@amd.com>,
	linux-arm-kernel@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Sean Anderson <sean.anderson@linux.dev>
Subject: [PATCH 3/3] phy: zynqmp: Add debugfs support
Date: Mon, 22 Apr 2024 14:58:03 -0400
Message-Id: <20240422185803.3575319-4-sean.anderson@linux.dev>
In-Reply-To: <20240422185803.3575319-1-sean.anderson@linux.dev>
References: <20240422185803.3575319-1-sean.anderson@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_115818_453664_F34CFAA9 
X-CRM114-Status: GOOD (  11.46  )
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

Add support for printing some basic status information to debugfs. This
is helpful when debugging phy consumers to make sure they are configuring
the phy appropriately.

Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
---

 drivers/phy/xilinx/phy-zynqmp.c | 54 +++++++++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
index 08c88dcd7799..e2e86943e9f3 100644
--- a/drivers/phy/xilinx/phy-zynqmp.c
+++ b/drivers/phy/xilinx/phy-zynqmp.c
@@ -13,6 +13,7 @@
  */
 
 #include <linux/clk.h>
+#include <linux/debugfs.h>
 #include <linux/delay.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
@@ -122,6 +123,15 @@
 #define ICM_PROTOCOL_DP			0x4
 #define ICM_PROTOCOL_SGMII		0x5
 
+static const char *const xpsgtr_icm_str[] = {
+	[ICM_PROTOCOL_PD] = "powered down",
+	[ICM_PROTOCOL_PCIE] = "PCIe",
+	[ICM_PROTOCOL_SATA] = "SATA",
+	[ICM_PROTOCOL_USB] = "USB",
+	[ICM_PROTOCOL_DP] = "DisplayPort",
+	[ICM_PROTOCOL_SGMII] = "SGMII",
+};
+
 /* Test Mode common reset control  parameters */
 #define TM_CMN_RST			0x10018
 #define TM_CMN_RST_EN			0x1
@@ -768,6 +778,48 @@ static struct phy *xpsgtr_xlate(struct device *dev,
 	return ERR_PTR(-EINVAL);
 }
 
+/*
+ * DebugFS
+ */
+
+static int xpsgtr_status_read(struct seq_file *seq, void *data)
+{
+	struct xpsgtr_phy *gtr_phy = seq->private;
+	struct clk *clk;
+	u32 pll_status;
+
+	mutex_lock(&gtr_phy->phy->mutex);
+	pll_status = xpsgtr_read_phy(gtr_phy, L0_PLL_STATUS_READ_1);
+	clk = gtr_phy->dev->clk[gtr_phy->refclk];
+
+	seq_printf(seq, "Lane:            %u\n", gtr_phy->lane);
+	seq_printf(seq, "Protocol:        %s\n",
+		   xpsgtr_icm_str[gtr_phy->protocol]);
+	seq_printf(seq, "Instance:        %u\n", gtr_phy->instance);
+	seq_printf(seq, "Reference clock: %u (%pC)\n", gtr_phy->refclk, clk);
+	seq_printf(seq, "Reference rate:  %lu\n", clk_get_rate(clk));
+	seq_printf(seq, "PLL locked:      %s\n",
+		   pll_status & PLL_STATUS_LOCKED ? "yes" : "no");
+
+	mutex_unlock(&gtr_phy->phy->mutex);
+	return 0;
+}
+
+static int xpsgtr_status_open(struct inode *inode, struct file *f)
+{
+	struct xpsgtr_phy *gtr_phy = inode->i_private;
+
+	return single_open(f, xpsgtr_status_read, gtr_phy);
+}
+
+static const struct file_operations xpsgtr_status_ops = {
+	.owner = THIS_MODULE,
+	.open = xpsgtr_status_open,
+	.release = single_release,
+	.read = seq_read,
+	.llseek = seq_lseek
+};
+
 /*
  * Power Management
  */
@@ -917,6 +969,8 @@ static int xpsgtr_probe(struct platform_device *pdev)
 
 		gtr_phy->phy = phy;
 		phy_set_drvdata(phy, gtr_phy);
+		debugfs_create_file("status", 0444, phy->debugfs, gtr_phy,
+				    &xpsgtr_status_ops);
 	}
 
 	/* Register the PHY provider. */
-- 
2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3E70C2BD09
	for <linux-phy@archiver.kernel.org>; Fri, 28 Jun 2024 20:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UObqJhs15sQFZYVwEVPkBITYxWE0qKj2WHJxKJyOYJg=; b=fnS73AlRJ/Cig9
	7xYcGNX1xUSEpnWWpsoEivbwTV3I0/iwhmGf37AdmRWmdmanNYdBJ3XUpbeoEHE7fjllemBjvsvHL
	BXsfsi8XdZBzjgFyXli7fdQGMEhQ4v0qzdAPgOl1ZprOpNFKeXx86WYJHgyblOZBOoMPqAbWtAFan
	FKJAUmFbDUU/Puj1qNswjC3hc46bLZRkx5BXSoMzoGJEGgqdtP0R8x4nBtftC8wPxXzNIX8J6XCop
	5bARmVD8b71VoSQ3ROkxKrm5Dd0C085nzbhzNl56jTBGiNsgfqNN2wegebufgQiyfGC+yWpyltMmg
	C0VWvqyQQTMvFJLje5CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNIes-0000000EwUR-20PQ;
	Fri, 28 Jun 2024 20:57:26 +0000
Received: from out-188.mta1.migadu.com ([95.215.58.188])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNIdf-0000000Evko-1WIJ
	for linux-phy@lists.infradead.org;
	Fri, 28 Jun 2024 20:56:15 +0000
X-Envelope-To: radhey.shyam.pandey@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1719608170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cc0/PQs/I7BBZwE0Aen+Vq0PIaX9cTiisku8tz9D9Po=;
	b=jlVQwsY43r14MNC0D6Flo6YEepgaDVnzgdU91I+spzzM5yeGX12vDVymiuiuwed3w1+dwF
	zkX4UQWOAOtby4t7+krBw4qHLQ3oQohWjYNn6s7/oU6gf5nqaUb6A7upuxwMeslkcfziLy
	9Eb2ApDhlfu9CO+BrOWHjSLDWf5CDzk=
X-Envelope-To: laurent.pinchart@ideasonboard.com
X-Envelope-To: linux-phy@lists.infradead.org
X-Envelope-To: vkoul@kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: kishon@kernel.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: michal.simek@amd.com
X-Envelope-To: sean.anderson@linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
To: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org,
	Michal Simek <michal.simek@amd.com>,
	Sean Anderson <sean.anderson@linux.dev>
Subject: [PATCH v3 5/5] phy: zynqmp: Add debugfs support
Date: Fri, 28 Jun 2024 16:55:40 -0400
Message-Id: <20240628205540.3098010-6-sean.anderson@linux.dev>
In-Reply-To: <20240628205540.3098010-1-sean.anderson@linux.dev>
References: <20240628205540.3098010-1-sean.anderson@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_135611_705578_29B6F8CF 
X-CRM114-Status: GOOD (  12.21  )
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

Changes in v3:
- Use "none" to represent ICM_PROTOCOL_PD, since the lane may not
  actually be powered-down.

Changes in v2:
- Use debugfs_create_devm_seqfile

 drivers/phy/xilinx/phy-zynqmp.c | 40 +++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
index 991be42eef3d..cb15041371c9 100644
--- a/drivers/phy/xilinx/phy-zynqmp.c
+++ b/drivers/phy/xilinx/phy-zynqmp.c
@@ -13,6 +13,7 @@
  */
 
 #include <linux/clk.h>
+#include <linux/debugfs.h>
 #include <linux/delay.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
@@ -123,6 +124,15 @@
 #define ICM_PROTOCOL_DP			0x4
 #define ICM_PROTOCOL_SGMII		0x5
 
+static const char *const xpsgtr_icm_str[] = {
+	[ICM_PROTOCOL_PD] = "none",
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
@@ -787,6 +797,34 @@ static struct phy *xpsgtr_xlate(struct device *dev,
 	return ERR_PTR(-EINVAL);
 }
 
+/*
+ * DebugFS
+ */
+
+static int xpsgtr_status_read(struct seq_file *seq, void *data)
+{
+	struct device *dev = seq->private;
+	struct xpsgtr_phy *gtr_phy = dev_get_drvdata(dev);
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
 /*
  * Power Management
  */
@@ -936,6 +974,8 @@ static int xpsgtr_probe(struct platform_device *pdev)
 
 		gtr_phy->phy = phy;
 		phy_set_drvdata(phy, gtr_phy);
+		debugfs_create_devm_seqfile(&phy->dev, "status", phy->debugfs,
+					    xpsgtr_status_read);
 	}
 
 	/* Register the PHY provider. */
-- 
2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8EE0C2BD09
	for <linux-phy@archiver.kernel.org>; Fri, 28 Jun 2024 20:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBYsB+Oec2CC/nSXATJ6hYYv8/EunsI8pCjKB0QRw9s=; b=b1RSAUhGcy4HKL
	454WA2SogXNOmA0BpNT3Oz9JLaGvhXrioME4S9TjkQ1j9EMBapWGqMwJA0kH9Yvc2p5cx/0w3cw0j
	MsSkQXhed6/kRDahHOoZQUX1chJTalc8jta46ZzyC7IVVfToAutNJFL4LlE6w5kizRit5sO4IgxQI
	PbqU/Ry3qXt3wiQ1iiDla30nvyqRqMa6mms+j52D0CLRxSt+6uAihVcYew50+IGYWf9IN/bV58M7I
	QVOEJ9HJ3mewsNeIFTLcBZIyn2uDHZ2Vfsf270OFtxA42H3Khs5hDRdlrfjhzlB19UXImtVr3pv3b
	kUh3Zl4lmvSkR6avUDeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNIeb-0000000EwJt-0K8M;
	Fri, 28 Jun 2024 20:57:09 +0000
Received: from out-185.mta1.migadu.com ([2001:41d0:203:375::b9])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNIdc-0000000EvgM-3Y6b
	for linux-phy@lists.infradead.org;
	Fri, 28 Jun 2024 20:56:13 +0000
X-Envelope-To: radhey.shyam.pandey@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1719608166;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HEWbV4dqpa1TJriBZCpsvwB0QOnRaJIArW3SQXCHi9c=;
	b=AFDgDhKY0NsP3dTnmHaWQtnn6jcTiThwnjPr+V/uYInCqwflw4ml4bg9bGbEcCcOZtZt4R
	P+Q4wcZKBXTNZEe37nHg3mod/xb+ly7GqY1vgyhRKwTmzN2OHS/UJ+R+GYomNjWWF4Xc+X
	1Z8IXM89R0k7+VXCe/pdR/IbyMMtE+E=
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
Subject: [PATCH v3 3/5] phy: zynqmp: Only wait for PLL lock "primary" instances
Date: Fri, 28 Jun 2024 16:55:38 -0400
Message-Id: <20240628205540.3098010-4-sean.anderson@linux.dev>
In-Reply-To: <20240628205540.3098010-1-sean.anderson@linux.dev>
References: <20240628205540.3098010-1-sean.anderson@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_135609_132258_628ACC24 
X-CRM114-Status: GOOD (  15.30  )
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

For PCIe and DisplayPort, the phy instance represents the controller's
logical lane. Wait for the instance 0 phy's PLL to lock as other
instances will never lock. We do this in xpsgtr_wait_pll_lock so callers
don't have to determine the correct lane themselves.

The original comment is wrong about cumulative wait times. Since we are
just polling a bit, all subsequent waiters will finish immediately.

Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
---

(no changes since v2)

Changes in v2:
- Move the logic for waiting on PLL lock to xpsgtr_wait_pll_lock

 drivers/phy/xilinx/phy-zynqmp.c | 30 +++++++++++++++++++++---------
 1 file changed, 21 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
index a1cf32024efb..4d697e11d8eb 100644
--- a/drivers/phy/xilinx/phy-zynqmp.c
+++ b/drivers/phy/xilinx/phy-zynqmp.c
@@ -294,10 +294,30 @@ static int xpsgtr_wait_pll_lock(struct phy *phy)
 	struct xpsgtr_phy *gtr_phy = phy_get_drvdata(phy);
 	struct xpsgtr_dev *gtr_dev = gtr_phy->dev;
 	unsigned int timeout = TIMEOUT_US;
+	u8 protocol = gtr_phy->protocol;
 	int ret;
 
 	dev_dbg(gtr_dev->dev, "Waiting for PLL lock\n");
 
+	/*
+	 * For DP and PCIe, only the instance 0 PLL is used. Switch to that phy
+	 * so we wait on the right PLL.
+	 */
+	if ((protocol == ICM_PROTOCOL_DP || protocol == ICM_PROTOCOL_PCIE) &&
+	    gtr_phy->instance) {
+		int i;
+
+		for (i = 0; i < NUM_LANES; i++) {
+			gtr_phy = &gtr_dev->phys[i];
+
+			if (gtr_phy->protocol == protocol && !gtr_phy->instance)
+				goto got_phy;
+		}
+
+		return -EBUSY;
+	}
+
+got_phy:
 	while (1) {
 		u32 reg = xpsgtr_read_phy(gtr_phy, L0_PLL_STATUS_READ_1);
 
@@ -625,15 +645,7 @@ static int xpsgtr_phy_power_on(struct phy *phy)
 	/* Skip initialization if not required. */
 	if (!xpsgtr_phy_init_required(gtr_phy))
 		return ret;
-	/*
-	 * Wait for the PLL to lock. For DP, only wait on DP0 to avoid
-	 * cumulating waits for both lanes. The user is expected to initialize
-	 * lane 0 last.
-	 */
-	if (gtr_phy->protocol != ICM_PROTOCOL_DP || !gtr_phy->instance)
-		ret = xpsgtr_wait_pll_lock(phy);
-
-	return ret;
+	return xpsgtr_wait_pll_lock(phy);
 }
 
 static int xpsgtr_phy_configure(struct phy *phy, union phy_configure_opts *opts)
-- 
2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

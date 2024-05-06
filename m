Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09686C25B5F
	for <linux-phy@archiver.kernel.org>; Mon,  6 May 2024 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crXUVKPvLN1cZmeL86MERAfCv4962GJNnO85YyZpz08=; b=bmTUzfQF1HzJXd
	Ib80Q2HiR//UDc03+/2U6JwSoGwux8RMD2emjUZHWJzQEg0jDP2MssxhPyfj0CRIAb/XsCPJRUR4C
	U4fvrfgMin+S7fSP0kdZki3SJdV2CpMCPPtA03oN2pm71U26UMj/vhUZrkBldbUj664RO8UEYmtj+
	59M+ZFEgGaO/2FB4I1hwKivQKrHXPUk6Kl3blRBotQmgvY+O8DGfj3CSm8HvRIRp53rWnlsIQXcP1
	14+mAvQfb3F+laKk/CUhp0wcr6Cc4aLwiHB0Gcy7zvjNDB09kUN8eVRRIDvJbBe+mOpQiykYJ0noK
	qmB4uSPyFqih2as3Hqfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s41iQ-00000008BHv-31NQ;
	Mon, 06 May 2024 17:01:26 +0000
Received: from out-177.mta1.migadu.com ([2001:41d0:203:375::b1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s41iM-00000008BDQ-0SyO
	for linux-phy@lists.infradead.org;
	Mon, 06 May 2024 17:01:23 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1715014879;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=f+Np06nET1bUu2fFobpOkXKoyFCkgH94QLr++iblhls=;
	b=dV2SIsuUJzOTHHIwYfo2u8cKOEkJF1YDJip1kQ/Y/LYAtU7TZQgBy4HW+SFsjfJQaeLifb
	FaMEJn4HtemjuPejPPIID7eZ6jWjoDe1UjXILFqC31EHFs/Qc5CEAi6O22KoFUs3N+naHv
	L4Qa659i6SOozEuEED8H8LT8htgQP5g=
From: Sean Anderson <sean.anderson@linux.dev>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Michal Simek <michal.simek@amd.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Sean Anderson <sean.anderson@linux.dev>
Subject: [PATCH v2 3/4] phy: zynqmp: Only wait for PLL lock "primary" instances
Date: Mon,  6 May 2024 13:01:09 -0400
Message-Id: <20240506170110.2874724-4-sean.anderson@linux.dev>
In-Reply-To: <20240506170110.2874724-1-sean.anderson@linux.dev>
References: <20240506170110.2874724-1-sean.anderson@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_100122_372442_57C3F5E5 
X-CRM114-Status: GOOD (  15.07  )
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

Changes in v2:
- Move the logic for waiting on PLL lock to xpsgtr_wait_pll_lock

 drivers/phy/xilinx/phy-zynqmp.c | 30 +++++++++++++++++++++---------
 1 file changed, 21 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
index 5a8f81bbeb8d..b86fe2a249a8 100644
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
 
@@ -627,15 +647,7 @@ static int xpsgtr_phy_power_on(struct phy *phy)
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

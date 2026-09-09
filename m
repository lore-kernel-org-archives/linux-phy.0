Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDA15C79FBF
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 12:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZ9nf6iQD/3L/BuE8BFPjf58lNyQWRKIzq3KsWpZYFI=; b=pLX50Wgdubx1QA
	+ox28u2+sEgcFxOYbewc9IDOla62U6mvU9AsiKJD1X+Kujl1UG9IzaXM8SGxXj5Yptg3sMWAFydWF
	m6LJkGliJHNoUUimxPdHRrdPkN4qnRCJYXblj2hN4atLFztTILnZjNPXavwc50JaaouIb5CB+K6af
	i4xhmckG9CzPgdNn8HspszUzYfnwZdtQIZwUKPqOMgakfor6o5vW9AxNmc791Uf7O++DxvxLxfef5
	7A/eFoPIXwYaJiujnSsBdigrU6JKCxNKr4GbjbqE3xfjHLfafS8mOr8R8wAHV1nq/vwhtrNnomKUY
	7PmzXh0/V78DaZJreODw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4HOA-0000000Bf7Y-1yr3;
	Wed, 09 Sep 2026 12:26:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4HO7-0000000Bf6A-1fBs
	for linux-phy@bombadil.infradead.org;
	Wed, 09 Sep 2026 12:26:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=xjgm3OvyzTKo7Ng/KKu5sq/YV8msJ27z9ky9q1zYVWA=; b=hrut3/8SNilJQ1Yl+ZNEzN/y88
	SkP47yAejKIcZ77Risssnk3BChMmPqDE3LGiwVd1IP6eBCs3r/tiXDHhG8DCxJgFxgK9WsUuYfwbw
	INZEt60lzBPpLE0KHJQ5z/f7Bt3/FxEE9UNp1vfYvzu9SrSGsJ8O1/fxat7tcwtd/i9hfueWoPb7D
	6rCCKR4gXjpwynbhKtvFX4Nv76+ruvtGqcgEynlSWiupqQ65tUEWEUgjMJIbEY/Q/sse89eiBBRAx
	habC6k8BK8SE+xl00kGOTTYWp/4wK3W81DzrVFkKeCmw9j0xWbG7MDfnQwb3vjUDmBjGA+29NF5Vi
	oATnU9kA==;
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x4HO0-00000001ANb-3Qvn
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 12:26:50 +0000
X-UUID: b35a1e40ac4911f19a56ed5b684f684d-20260909
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.19,REQID:23ec3722-2854-4ea7-a4a3-c6430c267843,IP:0,U
	RL:0,TC:0,Content:-25,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-25
X-CID-META: VersionHash:7db8b62,CLOUDID:05c413f575a779ab3ac88967b656a50f,BulkI
	D:nil,BulkQuantity:0,SF:81|82|102|136|850|865|898,TC:nil,Content:0|15|50|9
	9,EDM:-3|-100,IP:nil,URL:99|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:
	0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULS
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: b35a1e40ac4911f19a56ed5b684f684d-20260909
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 516042360; Wed, 09 Sep 2026 20:26:36 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	johan@kernel.org,
	kishon@kernel.org,
	rogerq@ti.com
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>,
	stable@vger.kernel.org,
	Sashiko AI <sashiko@kernel.org>
Subject: [PATCH v8 4/4] phy: ti-pipe3: Fix clock leaks in init/exit error paths
Date: Wed,  9 Sep 2026 20:26:30 +0800
Message-Id: <20260909122630.1313205-5-zenghongling@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260909122630.1313205-1-zenghongling@kylinos.cn>
References: <20260909122630.1313205-1-zenghongling@kylinos.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_132645_496961_FEF4DD34 
X-CRM114-Status: GOOD (  10.96  )
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

Two paths return without disabling the clocks that ti_pipe3_init()
has just enabled, leaking clock enable references:

1. In ti_pipe3_init(), when regmap_update_bits() fails for PCIe mode,
   the function returns the error without calling
   ti_pipe3_disable_clocks(). The clocks stay permanently enabled
   since the PHY framework won't invoke the .exit callback on init
   failure.

2. In ti_pipe3_exit(), when the PHY is in SATA mode without
   dpll_reset_syscon, the function returns 0 early to avoid powering
   down the SATA DPLL (Errata i783), which also skips the
   ti_pipe3_disable_clocks() at the end of the function. Every
   init/exit cycle therefore leaks the clock enable reference taken
   in ti_pipe3_init().

Fix both by adding the missing ti_pipe3_disable_clocks() calls,
consistent with how the DPLL program error path handles cleanup.

Fixes: 234738ea3390 ("phy: ti-pipe3: move clk initialization to a separate function")
Fixes: 0a0830feb2ad ("phy: ti-pipe3: fix suspend")
Cc: stable@vger.kernel.org
Reported-by: Sashiko AI <sashiko@kernel.org>
Closes: https://lore.kernel.org/all/20260518023657.41852C2BCB0@smtp.kernel.org/
Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
---
Change in v8:
 - Expand commit message to document the SATA exit-path clock leak
   and add its own Fixes tag.

Change in v7:
 -Restore the original `return ret` in the SATA PLL-locked init path.
---
 drivers/phy/ti/phy-ti-pipe3.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-ti-pipe3.c b/drivers/phy/ti/phy-ti-pipe3.c
index fdd81c935e5f..0d4a49a3f0c7 100644
--- a/drivers/phy/ti/phy-ti-pipe3.c
+++ b/drivers/phy/ti/phy-ti-pipe3.c
@@ -518,6 +518,8 @@ static int ti_pipe3_init(struct phy *x)
 		val = 0x96 << OMAP_CTRL_PCIE_PCS_DELAY_COUNT_SHIFT;
 		ret = regmap_update_bits(phy->pcs_syscon, phy->pcie_pcs_reg,
 					 PCIE_PCS_MASK, val);
+		if (ret)
+			ti_pipe3_disable_clocks(phy);
 		return ret;
 	}
 
@@ -555,8 +557,10 @@ static int ti_pipe3_exit(struct phy *x)
 	/* If dpll_reset_syscon is not present we wont power down SATA DPLL
 	 * due to Errata i783
 	 */
-	if (phy->mode == PIPE3_MODE_SATA && !phy->dpll_reset_syscon)
+	if (phy->mode == PIPE3_MODE_SATA && !phy->dpll_reset_syscon) {
+		ti_pipe3_disable_clocks(phy);
 		return 0;
+	}
 
 	/* PCIe doesn't have internal DPLL */
 	if (phy->mode != PIPE3_MODE_PCIE) {
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

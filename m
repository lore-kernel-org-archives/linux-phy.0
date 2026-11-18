Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16062606A325
	for <linux-phy@archiver.kernel.org>; Wed, 18 Nov 2026 19:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wTtJbqJb;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=samsung.com header.i=@samsung.com header.a=rsa-sha256 header.s=mail20170921 header.b=neTfT88U
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Unsubscribe-Post:List-Owner;
	bh=4vY+CDht8/hk6cYUBWYziNUBl1qw2cZFGzIJZxyiWZk=; b=wTtJbqJbvy0FnK+hmobrjJgfxG
	L80uX273MvI1GLTApyfqYyZbZooB9ZlNLgrNo1YhBEA+NXtJBVZ0ib3oANfU73dQNlsJ3WO+EKonO
	j0eUt8cjQcX3tLeZTGe9qxe4U/QkvCuCx7MS43ZZ3YjAyywkbJ/fAtYc0thMW8AqLd8fMb1QgWtCi
	e0sw4N+HVMwLG2Nxz2pPUwjgTNv3l2H89zQocen7wszg732keCu0hjdT1LM05K11WMbqO0wnTznd/
	Woise02jDR3mKm7txAwzFYLCXN9MCDdXiq5A8YQVeZPatJtQZuob/uuur+gRKuMppgNnE4TYxeWFz
	SrG7XevA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTl5R-0000000A5eL-3PIK;
	Wed, 18 Nov 2026 19:12:53 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTl5N-0000000A5dn-0Ok5
	for linux-phy@lists.infradead.org;
	Wed, 18 Nov 2026 19:12:52 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20261118191240euoutp028812a9795928d3fbd8916dda9b0ff459~pOYLBdr0c1157611576euoutp02L
	for <linux-phy@lists.infradead.org>; Wed, 18 Nov 2026 19:12:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20261118191240euoutp028812a9795928d3fbd8916dda9b0ff459~pOYLBdr0c1157611576euoutp02L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1795029160;
	bh=pQnJmWW6nPDVDbiKnkWy2swOvfjrmQ+u4ZBhr5A3f7M=;
	h=From:To:Cc:Subject:Date:References:From;
	b=neTfT88UtZtb8+MzvLHLB7HJ5OGTAmn+qJocvu/auOYis5WAlCO36FGGoLnhACRtd
	 9eCrS03nfKWw/hjY+ZGPO556QcKgRsknSNojWaY0tti8QiivCYvqdoAIm46aqse5aw
	 PEX7b2cP1tcEcGuAycAmZ+mige/oUlvTgKKNkcAA=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20261118191239eucas1p1054471efd4b07967555d34a2aed994c0~pOYKdupe21910519105eucas1p1J;
	Wed, 18 Nov 2026 19:12:39 +0000 (GMT)
Received: from AMDC4653.digital.local (unknown [106.120.51.32]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20261118191239eusmtip2489642b72e5eb3c0cdd84cb7d9d30c28~pOYKCR2S62280122801eusmtip2w;
	Wed, 18 Nov 2026 19:12:39 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-phy@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Vinod Koul
	<vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Manivannan
	Sadhasivam <mani@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Peter
	Griffin <peter.griffin@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>
Subject: [PATCH] phy: samsung: exynos5250-sata: fix unreliable PLL lock
 timeout
Date: Wed, 18 Nov 2026 20:12:31 +0100
Message-ID: <20261118191233.376139-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CMS-MailID: 20261118191239eucas1p1054471efd4b07967555d34a2aed994c0
X-Msg-Generator: CA
X-RootMTR: 20261118191239eucas1p1054471efd4b07967555d34a2aed994c0
X-EPHeader: CA
X-CMS-RootMailID: 20261118191239eucas1p1054471efd4b07967555d34a2aed994c0
References: <CGME20261118191239eucas1p1054471efd4b07967555d34a2aed994c0@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_111249_595648_92B5CD99 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Arndale boards the SATA PHY occasionally fails to initialize, which
makes the AHCI controller probe fail and the attached disk disappear:

  phy phy-12170000.sata-phy.11: PHY PLL locking failed
  phy phy-12170000.sata-phy.11: phy init failed --> -14
  ahci-dwc 122f0000.sata: probe with driver ahci-dwc failed with error -14

The PLL lock is polled by wait_for_reg_status() with a timeout of
usecs_to_jiffies(1000). On ARM with the default HZ=100 that rounds up to
a single jiffy, so the effective timeout is anything between almost zero
and 10ms, depending on where in the tick period the wait starts. The
loop also does not re-check the status after the deadline has passed,
so an interrupt or preemption during polling can turn an already locked
PLL into a reported failure. Finally, -EFAULT is a misleading error code
for a timeout.

Replace the open-coded loop with readl_poll_timeout(), which measures
time with ktime, performs a final read after the timeout, and returns
-ETIMEDOUT. Use a 10ms timeout, matching the upper bound of the
previous behaviour with HZ=100.

Fixes: bcff4cba41bc ("PHY: Exynos: Add Exynos5250 SATA PHY driver")
Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
This patch has been developed with LLM assistance and have been tested
on the real Exynos5250-based Arndale board.

Best regards
Marek Szyprowski, PhD
Samsung R&D Institute Poland
---
 drivers/phy/samsung/phy-exynos5250-sata.c | 23 ++++++-----------------
 1 file changed, 6 insertions(+), 17 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynos5250-sata.c b/drivers/phy/samsung/phy-exynos5250-sata.c
index a88534eba2be..b55cbb3c47b3 100644
--- a/drivers/phy/samsung/phy-exynos5250-sata.c
+++ b/drivers/phy/samsung/phy-exynos5250-sata.c
@@ -10,6 +10,7 @@
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/io.h>
+#include <linux/iopoll.h>
 #include <linux/i2c.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
@@ -43,7 +44,8 @@
 #define EXYNOS5_SATA_PHSATA_STATM	0xf0
 #define PHSTATM_PLL_LOCKED		BIT(0)
 
-#define PHY_PLL_TIMEOUT (usecs_to_jiffies(1000))
+#define PHY_PLL_POLL_US		10
+#define PHY_PLL_TIMEOUT_US	10000
 
 struct exynos_sata_phy {
 	struct phy *phy;
@@ -53,19 +55,6 @@ struct exynos_sata_phy {
 	struct i2c_client *client;
 };
 
-static int wait_for_reg_status(void __iomem *base, u32 reg, u32 checkbit,
-				u32 status)
-{
-	unsigned long timeout = jiffies + PHY_PLL_TIMEOUT;
-
-	while (time_before(jiffies, timeout)) {
-		if ((readl(base + reg) & checkbit) == status)
-			return 0;
-	}
-
-	return -EFAULT;
-}
-
 static int exynos_sata_phy_power_on(struct phy *phy)
 {
 	struct exynos_sata_phy *sata_phy = phy_get_drvdata(phy);
@@ -142,9 +131,9 @@ static int exynos_sata_phy_init(struct phy *phy)
 	val |= RESET_CMN_RST_N;
 	writel(val, sata_phy->regs + EXYNOS5_SATA_RESET);
 
-	ret = wait_for_reg_status(sata_phy->regs,
-				EXYNOS5_SATA_PHSATA_STATM,
-				PHSTATM_PLL_LOCKED, 1);
+	ret = readl_poll_timeout(sata_phy->regs + EXYNOS5_SATA_PHSATA_STATM,
+				 val, val & PHSTATM_PLL_LOCKED,
+				 PHY_PLL_POLL_US, PHY_PLL_TIMEOUT_US);
 	if (ret < 0)
 		dev_err(&sata_phy->phy->dev,
 			"PHY PLL locking failed\n");
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

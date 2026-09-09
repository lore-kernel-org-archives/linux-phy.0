Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B7E4C79FB9
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 12:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/9eMNw31dPnIV61zEMt4nmEFSKOQhtHjnyjazIuDSc=; b=CyASQhAA+XMaaw
	Hx4+CAmi14hNd8/zWgWB4UtXKqtnILXo/OEh1wPiLx6jwY6X33Z/dFSsM6a1cAn4igmJ6N3tGxBR3
	fJp0qqtpm8zHtNU4qmYFPPF9o+k7f114dXbpc/hQwZpybQKJWYG6WbdzdPlzF39/ka/nuGuP7cmlQ
	nAQ9CROQNbRsCTCdITgFBIfaSwISuKK8WMEHase95sPtdtGiivjdMH/1v8qnzTPyNt6BFODKSItt6
	1YO+JFdkyIjJeGXa7GUcgAHVga24R748dd9dxgCT5QHTqq/hq6HpA1p2uzNkRu17iu1wcUU2Z/15j
	zAFTa7sfObhS7iQ60X5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4HO8-0000000Bf6c-0v0w;
	Wed, 09 Sep 2026 12:26:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4HO5-0000000Bf5v-2wuU
	for linux-phy@bombadil.infradead.org;
	Wed, 09 Sep 2026 12:26:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=I0atdW7rhWDHtVpjqMxLPUk+OuZDIFCivw0RfwY0ds0=; b=XTWE8rFSRNR80M/Ak3lPhUv+kZ
	Mgj2nYuZOCeSHyg4a9CEFGIA7qWF7rGwJP3RL1aVFZu2F9JvpYZFXzPIfLh/ryNhe++kDFoxO6sEI
	yoJ5Y0mA3D9OF71s+PpISFlrWK01hDpOGMpqYva6BnLbU6BkHW7sHVTPiXhrCtTVbXOe+oe7BaLPT
	d2yWdgogFOs43T8RlUjgM+LfCbYd6ExwJpheZrE6XJHZIkCp0gHH60UZx8rV2cBPAGJDwoYW7AWS7
	8MRE/K8yMnwfZeR1sd3JUKqXtG+yUlkMMfAImgo9p5/3/ClUuu7CDAeV3zVTxemfKpRptAUJpeXHq
	snD9IR/A==;
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x4HO0-00000001ANZ-23R3
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 12:26:48 +0000
X-UUID: b23b6a64ac4911f19a56ed5b684f684d-20260909
X-CID-CACHE: Type:Local,Time:202609091934+08,HitQuantity:1
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.19,REQID:9bf18910-64af-4589-9f46-c444e561145c,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:7db8b62,CLOUDID:6ddb920411906f269bd75c585bf675a1,BulkI
	D:nil,BulkQuantity:0,SF:81|82|102|850|865|898,TC:nil,Content:0|15|50|99,ED
	M:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:
	0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: b23b6a64ac4911f19a56ed5b684f684d-20260909
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 1052706627; Wed, 09 Sep 2026 20:26:34 +0800
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
	Sashiko AI <sashiko@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: [PATCH v8 1/4] phy: ti-pipe3: Fix ignored clock enable return value  in init
Date: Wed,  9 Sep 2026 20:26:27 +0800
Message-Id: <20260909122630.1313205-2-zenghongling@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260909122630.1313205-1-zenghongling@kylinos.cn>
References: <20260909122630.1313205-1-zenghongling@kylinos.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_132645_129727_2AE065E9 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
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

ti_pipe3_init() ignores the return value of ti_pipe3_enable_clocks(),
which can lead to:

1. Unclocked hardware access if clock enable fails
2. Unbalanced clock disables in error paths

ti_pipe3_enable_clocks() returns an error code when clock enable fails
and rolls back any partially enabled clocks. If we ignore this error
and continue, we access hardware without proper clocking, which can
cause bus errors.

Additionally, if we reach error paths later in the function and call
ti_pipe3_disable_clocks(), we'll be disabling already-disabled clocks,
causing unbalanced disable warnings.

Fix this by checking the return value of ti_pipe3_enable_clocks()
and returning early if it fails.

Fixes: 234738ea3390 ("phy: ti-pipe3: move clk initialization to a separate function")
Reported-by: Sashiko AI <sashiko@kernel.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
---
Change in v7:
 -Remove the now-redundant initialization of ret, as suggested by Mani.
---
 drivers/phy/ti/phy-ti-pipe3.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/ti/phy-ti-pipe3.c b/drivers/phy/ti/phy-ti-pipe3.c
index b5543b5c674c..0e3bc9218733 100644
--- a/drivers/phy/ti/phy-ti-pipe3.c
+++ b/drivers/phy/ti/phy-ti-pipe3.c
@@ -498,9 +498,12 @@ static int ti_pipe3_init(struct phy *x)
 {
 	struct ti_pipe3 *phy = phy_get_drvdata(x);
 	u32 val;
-	int ret = 0;
+	int ret;
+
+	ret = ti_pipe3_enable_clocks(phy);
+	if (ret)
+		return ret;
 
-	ti_pipe3_enable_clocks(phy);
 	/*
 	 * Set pcie_pcs register to 0x96 for proper functioning of phy
 	 * as recommended in AM572x TRM SPRUHZ6, section 18.5.2.2, table
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

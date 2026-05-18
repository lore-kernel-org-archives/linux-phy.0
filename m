Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD79FCD4F3D
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 02:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iZ8RbJmf3H0DGrsUuSBy3Z6qAXPGxH8OapArU35+2vg=; b=ew6PZ74cfSWxln
	OZtneAaoDdg+kw6LrpskrIHPpTbXraYfrUPvob9A7QQFNhdxve7lcyDPS1KIgmSsEcgl6XXtD52Ap
	YSakK5EGRh2AqyH+bag/LREUWiYRO1ZdFIpW5lP1NHvs/B+eCrio0ey9l5N1ugZHwNDSlTXbowJ0/
	+1JqN38ggExoefVWJWcZTKFvWRLv6ranKFKwE6eQkzidU6ylOQ7sAk6bQPA5OzqpnRs1K4B+ZZbO0
	JiK8xO3IGW7y0JWVFfEHbyvE2zj8tSX8H8KVMoPHZ7DTRzITjQqK7VXu67okXoQF4dCUuy05gbKrK
	uj1CwRVNIw4DQ2Q6/SVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOnWQ-0000000Du2L-1iAj;
	Mon, 18 May 2026 02:15:58 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOnWN-0000000Du0f-09CM
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 02:15:56 +0000
X-UUID: 79b02d0e525f11f1aa26b74ffac11d73-20260518
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:604337b8-28ed-425a-9dd1-e5ca300bf38b,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:e7bac3a,CLOUDID:2aab8cacb35062e1478b993f8e4a6ad2,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:102|850|865|898,TC:nil,Content:0|15|50,E
	DM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA
	:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 79b02d0e525f11f1aa26b74ffac11d73-20260518
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 1947331252; Mon, 18 May 2026 10:15:44 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	johan@kernel.org,
	kishon@kernel.org,
	rogerq@ti.com
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [PATCH v4 0/2] phy: ti-pipe3: Fix clock resource handling issues
Date: Mon, 18 May 2026 10:15:37 +0800
Message-Id: <20260518021539.14890-1-zenghongling@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260517_191555_408156_59EB416B 
X-CRM114-Status: UNSURE (   6.24  )
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

This patch series fixes two clock resource handling issues in the
ti-pipe3 PHY driver:

Patch 1 fixes a clock resource leak when probe fails after enabling
the SATA refclk. The error path now properly disables the clock and
cleans up runtime PM resources.

Patch 2 fixes EPROBE_DEFER handling to prevent masking probe deferral
errors. It uses devm_clk_get_optional() for SATA refclk to properly
handle optional clocks while still propagating -EPROBE_DEFER and other
error codes.

These fixes ensure proper resource cleanup on probe failures and prevent
permanent driver initialization failures due to incorrect error handling.

Changes in v4:
- Fix patch version numbering (was incorrectly labeled as v2/v3)
- Ensure patches are in the same series to avoid breaking Patchwork

Hongling Zeng (2):
  phy: ti: pipe3: Fix clock resource leak on probe errors
  phy: ti-pipe3: Fix EPROBE_DEFER handling for clock resources

 drivers/phy/ti/phy-ti-pipe3.c | 47 +++++++++++++++++++++++++++--------
 1 file changed, 36 insertions(+), 11 deletions(-)

--
2.25.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CA08CD4F3C
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 06:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uWQysARb/fNwUbPAgjcYuewUvAUOfyoxve2eEDq4gTo=; b=GxWARD/57RwVlq
	ApY3d0lJoq61xDxs5d5rxmTqmITbVBQN1DKmxEzslS2+4xvtQQzBwy/NgDVkY73sOKVKtjZbHoYJi
	dKoP/rex8j6AeXsDDCI13q/Pt+ONHw01HHYsMSoVOVASAnwqv5mKbbks8ylF9ETAKwr/y4pZCbQl6
	t3diRQTGxkA1v6jFlHpwKD5RKmMe1jngd//U6x/lRMCx8+1qP1s43veZGBd40Hm5vkre1Xplce7bE
	nyfEnyvh1BR4akpCzGeUsgXLHH24DbUphCWsfP9EPM9+SWJ3IgyIcZqN0TdSV7N7D6PQPEJQfl3WL
	jTKFj6eGSGKfeodKd3eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOrUC-0000000EQiB-3WxA;
	Mon, 18 May 2026 06:29:57 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOrU7-0000000EQfs-0C2m
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 06:29:55 +0000
X-UUID: f42da8ae528211f1aa26b74ffac11d73-20260518
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:9f10d811-500e-4a70-9c18-1ee39eddcbf3,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:e7bac3a,CLOUDID:56c502121f7a23c96e6627ce59e8b115,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:102|850|865|898,TC:nil,Content:0|15|50,E
	DM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA
	:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: f42da8ae528211f1aa26b74ffac11d73-20260518
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 1169818995; Mon, 18 May 2026 14:29:42 +0800
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
Subject: [PATCH v5 0/4] phy: ti-pipe3: Fix clock resource handling issues
Date: Mon, 18 May 2026 14:29:34 +0800
Message-Id: <20260518062938.48114-1-zenghongling@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260517_232951_518421_3C471856 
X-CRM114-Status: UNSURE (   7.28  )
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

This patch series fixes multiple clock resource handling issues in the
ti-pipe3 PHY driver.

Patch 1 fixes a critical issue where ti_pipe3_init() was ignoring the
return value of ti_pipe3_enable_clocks(), which could lead to unclocked
hardware access and unbalanced clock disables.

Patch 2 fixes a clock resource leak when probe fails after enabling
the SATA refclk. The error path now properly disables the clock and
cleans up runtime PM resources.

Patch 3 fixes EPROBE_DEFER handling to prevent masking probe deferral
errors. It uses devm_clk_get_optional() for SATA refclk to properly
handle optional clocks while still propagating -EPROBE_DEFER and other
error codes.

Patch 4 fixes a clock leak in the init error path when regmap_update_bits()
fails in PCIe mode, adding proper clock cleanup consistent with other
error paths.

These fixes ensure proper resource cleanup on probe and init failures,
and prevent permanent driver initialization failures due to incorrect
error handling.

Changes in v5:
- Add patch to fix ignored clock enable return value in ti_pipe3_init()
- Improve error handling consistency across all paths

Changes in v4:
- Use devm_clk_get_optional() for SATA refclk
- Drop manual -ENOENT handling

Hongling Zeng (4):
  phy: ti-pipe3: Fix ignored clock enable return value in init
  phy: ti: pipe3: Fix clock resource leak on probe errors
  phy: ti-pipe3: Fix EPROBE_DEFER handling for clock resources
  phy: ti-pipe3: Fix clock leak in init error path

 drivers/phy/ti/phy-ti-pipe3.c | 58 ++++++++++++++++++++++++++++--------
 1 file changed, 46 insertions(+), 12 deletions(-)

--
2.25.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

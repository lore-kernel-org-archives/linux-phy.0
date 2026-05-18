Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33CF0CD343F
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 06:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Iqsd3oRd2GgtWMkNIn1mzaU6B7IwXC32zM/TtwmAc4=; b=CPOnudyMBnn5g5
	qwTVjJKcKlNnzT88JUAP6LyfccTwwbGaWklCw349kyVbAGZw7JYMpHhmDNZERuiQnCvQPGrbIKIwO
	siJsSwUi9HLVW6KvdsCx+6yIT1BvHsXPQK21dmDGRWW49k+Z5rAh79LmGN9Hb0Z+5+C36NbR23g4N
	jsTmMVW1jdveasipmlOtR829aEbWNARwLQD+vjJdXn2Rwpg7IbS6unUL0LbvDuC9d+ORYPajzfiQH
	P71Cy8bAQK1Xfvy1sgprN9/bZ8bPfwPNl5tY5mSv5YR9fK/kpe4qGr9egSVtbj3MMKEKrqEpcL62P
	Ju8VgBFKaFWktrhOF57A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOrUS-0000000EQnK-32YJ;
	Mon, 18 May 2026 06:30:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOrUR-0000000EQmm-2CPt
	for linux-phy@bombadil.infradead.org;
	Mon, 18 May 2026 06:30:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=PRCQGJXxlQyZsJOmaBRAoQPXa3m7L0m8okvy+7Dv7NA=; b=oAoCp0D8tLwQLVNULh4QyfwJCY
	BJpjUqfHUIEzoIrF33TAT8SB269ztiO3YWeRyYDzHh9EGJj3In0vbkMQy7BoIDIaMcxJskz2Iskx0
	pR6Z514Ezcv2OartNqXrNK0QEVI5ugpZGGPZzgmPIzTMzJj0vpZujRsqJCKQYkfGq+bGpSuHw8amb
	k6B6IxUlfVpBJGVVivxwyef58UQNw1xo7pGZ3+ZeYn92ozXNoy9tbozbm8RksYRqGur8brQf6r600
	IsWMAsC3/SUyYGIY9d/Ev3foz9D1UZUy+AqTx3ujfHkKEFYG/GoSqOSOea6D7y39Lqcsw7XLsvrcf
	kOC7ULtw==;
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOrUL-0000000A1Qe-2iHc
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 06:30:09 +0000
X-UUID: f607e8ba528211f1aa26b74ffac11d73-20260518
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:4bb8eabc-56d3-4dfa-a082-a4f92b4d3046,IP:0,U
	RL:0,TC:0,Content:-25,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-25
X-CID-META: VersionHash:e7bac3a,CLOUDID:2cf1c7d3a309c4189b32b605f2a15957,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|850|865|898,TC:nil,Content:0|1
	5|50,EDM:-3,IP:nil,URL:99|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,
	OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULS
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: f607e8ba528211f1aa26b74ffac11d73-20260518
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 2073245212; Mon, 18 May 2026 14:29:45 +0800
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
	stable@vger.kernel.org
Subject: [PATCH v5 4/4] phy: ti-pipe3: Fix clock leak in init error path
Date: Mon, 18 May 2026 14:29:38 +0800
Message-Id: <20260518062938.48114-5-zenghongling@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260518062938.48114-1-zenghongling@kylinos.cn>
References: <20260518062938.48114-1-zenghongling@kylinos.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_073007_057667_364D9B82 
X-CRM114-Status: UNSURE (   7.25  )
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

When regmap_update_bits() fails in ti_pipe3_init() for PCIe mode,
the function returns the error without calling ti_pipe3_disable_clocks().
This leaves the clocks permanently enabled since the PHY framework won't
invoke the .exit callback on init failure.

Fix this by adding proper clock cleanup in the PCIe error path, consistent
with how the DPLL program error path handles cleanup.

Fixes: 234738ea3390 ("phy: ti-pipe3: move clk initialization to a separate function")
Reported-by: Sashiko AI <sashiko@kernel.org>
Closes: https://lore.kernel.org/all/20260518023657.41852C2BCB0@smtp.kernel.org/
Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
Cc: stable@vger.kernel.org

---
Change in v5:
  -Add Fix ignored clock enable return value in init patch
---
 drivers/phy/ti/phy-ti-pipe3.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/ti/phy-ti-pipe3.c b/drivers/phy/ti/phy-ti-pipe3.c
index 9ec228c2a940..4897e4ba2d7d 100644
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
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

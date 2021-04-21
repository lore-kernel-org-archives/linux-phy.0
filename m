Return-Path: <SRS0=Wr7y=JS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 748CBC433B4
	for <linux-phy@archiver.kernel.org>; Wed, 21 Apr 2021 13:56:43 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F007261445
	for <linux-phy@archiver.kernel.org>; Wed, 21 Apr 2021 13:56:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F007261445
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FKqxPhxDXp5iBqvNMKRFXtVgB9d9CNI3Xq/Xap4raQE=; b=f6Va0Xma3jhKeV3BWs+x60GoRJ
	+dNQ2w6zwdzdc5jMA1RujRi02ExWoJv25ix8vGRqOsFgXX3F2nNFuSgwC5p+nyXbuiN7zw0CUC6fV
	PdGuKeDoz/xwiIwn0CD6H3vkTc/QviDcxohEyGc0UvWDyWz9ZqRsNUNKctw01nh7XawV00Mmss6hn
	kAMumFinMP702seWWQAfLIopMgFjboAzdBVX9nPnGk1SjAi7hpgeIeZDQm2tWHAw//De/5YgOxwLl
	9btQFYHzogkTqzAXsXsdj6qepXP5fHlNfs+r994LXFeNWw5m9vJk0mzAu4rG2VzjY4sZOqL+T4T0Y
	DCFp0a8g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZDLN-00EVnr-2k; Wed, 21 Apr 2021 13:56:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZDL5-00EVlo-BU
 for linux-phy@desiato.infradead.org; Wed, 21 Apr 2021 13:56:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=/D0x2DG7nAE2avgO6ToB6YMiUCbYpWRarK6dDtXQmNs=; b=FeGSAcaBk5P39MH53Txm0E+jpE
 7JrY4jWIqT79THtZ/pomxwAHRsspAczzRu13jKI8uTJrpWF1hMijxdC9tffLxZEcoqtooxeDiq9kR
 rAzOVbvBZKLVp9M764SvJgTHOvZDgZrkteGIgcej0KR1QpS2w2wiFRvu8uLWHjnZdbpzAIhRSAlV1
 jDixEiFIfjtKVsW9pi9IeSAT0YsvSmFsG2pIyxpp27hmenEIOnlLX4nP7+WDPB13mFWFKpCNO51Fe
 hnyD/hYUaoNmrStZcbZdsCdknYuu2/lNRS4KdlkfZ14ZdStJfDFm9+OyenDo3mPAzvWXy3PLRPgia
 FR+sNFzA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZDL2-00Cw0N-Uk
 for linux-phy@lists.infradead.org; Wed, 21 Apr 2021 13:56:22 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 23BFE61445;
 Wed, 21 Apr 2021 13:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619013380;
 bh=WriTCo0S6j+IjAPj6Z5yqE11oeq+w4YKDEuY4LaCLAA=;
 h=From:To:Cc:Subject:Date:From;
 b=lYNrwyHe5Wffdt7MP8/+/yxwH1NzaeuNbIYc3H4VjKowvtrlXbVP+1t9GfcEt5p43
 ZtbxCw53f1eUeY581aUtYVrtU8KddkQPx58r6YMOgMKnEnccBtklyuVgsJEEZk5Rbw
 /oRvUJY5UYc8xpezhBGJVxqgvGs8KYhkNoNmxZkHn7yMYw1FkYqvts9XJ1Gse/DsUf
 rr9jqEWY0ESAUgk8J0d3ZuF9E2VDGncThrY1dF8CBRQTJBm5i/Tx2exmf5fK7hPeuS
 jWPJgMXwhtYD1PF4wfoMF8mMTlZc2H+EdmUWQZ/mBhjgunr9NXOO5ae4Tq3Kthxe59
 a/UbyGPy0prnA==
From: Arnd Bergmann <arnd@kernel.org>
To: JC Kuo <jckuo@nvidia.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Marc Zyngier <maz@kernel.org>,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>,
 linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] phy: tegra: xusb: annotate PM functions as __maybe_unused
Date: Wed, 21 Apr 2021 15:56:07 +0200
Message-Id: <20210421135613.3560777-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_065621_049079_BDFB4303 
X-CRM114-Status: GOOD (  10.16  )
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

From: Arnd Bergmann <arnd@arndb.de>

Depending on the configuration, there are no references to these
two helpers:

drivers/phy/tegra/xusb.c:1286:12: error: 'tegra_xusb_padctl_resume_noirq' defined but not used [-Werror=unused-function]
 1286 | static int tegra_xusb_padctl_resume_noirq(struct device *dev)
      |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/phy/tegra/xusb.c:1276:12: error: 'tegra_xusb_padctl_suspend_noirq' defined but not used [-Werror=unused-function]

Mark them as __maybe_unused to shut up the warnings without adding
fragile #ifdefs.

Fixes: b8bb3d9c9b74 ("phy: tegra: xusb: Add sleepwalk and suspend/resume")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/phy/tegra/xusb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index 0aadac678191..963de5913e50 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -1273,7 +1273,7 @@ static int tegra_xusb_padctl_remove(struct platform_device *pdev)
 	return err;
 }
 
-static int tegra_xusb_padctl_suspend_noirq(struct device *dev)
+static __maybe_unused int tegra_xusb_padctl_suspend_noirq(struct device *dev)
 {
 	struct tegra_xusb_padctl *padctl = dev_get_drvdata(dev);
 
@@ -1283,7 +1283,7 @@ static int tegra_xusb_padctl_suspend_noirq(struct device *dev)
 	return 0;
 }
 
-static int tegra_xusb_padctl_resume_noirq(struct device *dev)
+static __maybe_unused int tegra_xusb_padctl_resume_noirq(struct device *dev)
 {
 	struct tegra_xusb_padctl *padctl = dev_get_drvdata(dev);
 
-- 
2.29.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

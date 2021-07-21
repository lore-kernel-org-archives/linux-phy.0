Return-Path: <SRS0=xi9z=MN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535FFC12002
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 15:43:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1EF046120A
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 15:43:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1EF046120A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0BiSPCpzwbdiCWHoDaFwaagcMk2ztQAy057ADajPgso=; b=zEXU86KEDJEOik
	Nijz2M7DLbBNXrtVWVLSpG22U0v7o4NBFAdrE4Zk8Y+SC7TqzNQnX0QCQU2vFaF5OROnpXuPl3xaa
	HFH5pJJrIPv0gwR6oLjrt/40drko5ZHJe0L/hbXOrcHwl0/i9iw2x2R8YIQGpDW501Gq1So0bFaNE
	KNSz329AHtaIMCI/Sg6xHRTkyAY3wU0YXgciJv0igbFFIfQUc8HVNsUHh6e60zIyuqyASvIDrK0VF
	LxCB+QE5x5/xRejoOUnjdQf5eMkmtnPuQxtLZqorHY4KkIAz1IUgdblLcK2cMv7H0eso2DoKqX/Do
	n/2r8px4XHYA3gi8da8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6ENT-00GOYY-CL; Wed, 21 Jul 2021 15:43:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6E6d-00GIKB-23
 for linux-phy@lists.infradead.org; Wed, 21 Jul 2021 15:25:56 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6D33861244;
 Wed, 21 Jul 2021 15:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626881154;
 bh=wjqtZHJ1O1pIfsvtHuG3THZnQPY//zpBpnkaegjFRl8=;
 h=From:To:Cc:Subject:Date:From;
 b=Dvw6DkqeI3kmFnWhMCI8yihoXRo9PNLiyahTyM6EVJ3ohV6CGpnLy2kVkcRqNzzaF
 /znCchJtzAl6ShY/0rrE//3j5HVXWgvFrvGYTnjK1nTmbUqDU2asaoHi5GrLfBu8C/
 10UW3fRofo/lvTY8kLME6R5iMszcLxxP1MvxUC+sdQItdc/lRCoONd8UHdq4Jax8MN
 2cyeJHF7DxrW6e2eZEZIjlwxNXoVYqsN8WnLExVTzxjEK7axC1xAX8YItgmejVll9Q
 zCx5hOCcUXr+m3ALPp5X+RS3gLL/p30ECJOdmstJM5qcHZrFfwyaP3yJNjP20zKm/J
 hwrW41syI4U9g==
From: Arnd Bergmann <arnd@kernel.org>
To: JC Kuo <jckuo@nvidia.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] phy: tegra: xusb: mark PM functions as __maybe_unused
Date: Wed, 21 Jul 2021 17:25:42 +0200
Message-Id: <20210721152550.2976003-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210721_082555_182395_CEC1233C 
X-CRM114-Status: UNSURE (   9.99  )
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

From: Arnd Bergmann <arnd@arndb.de>

When these are not referenced, gcc prints a harmless warning:

drivers/phy/tegra/xusb.c:1286:12: error: 'tegra_xusb_padctl_resume_noirq' defined but not used [-Werror=unused-function]
 1286 | static int tegra_xusb_padctl_resume_noirq(struct device *dev)
      |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/phy/tegra/xusb.c:1276:12: error: 'tegra_xusb_padctl_suspend_noirq' defined but not used [-Werror=unused-function]
 1276 | static int tegra_xusb_padctl_suspend_noirq(struct device *dev)
      |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Fixes: c545a9056712 ("phy: tegra: xusb: Add sleepwalk and suspend/resume")
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

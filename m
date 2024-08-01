Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3161FC3DA7F
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 00:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QVINJpestLKF5XUPecEL1XEyZd1DKhnkYXk4ssYGtG8=; b=bz8liU/xrs9wlg
	C1UzvoROATAmjIKrmIzpSiIfAjW8xc93anrHsG7jH4HDLNjjl3RsPDIweK07n1GhuiisCvEFSLRvk
	DwpimGSXmuAFu8t0ajRuhXjaOvD9XWPIqqOAPNyxIgpT5mY+3YFBSG6cRrj5KVxR4owMXfhcEMwC+
	PI+2REgumdXd0B8TATh/VNhXIEzXBOSDK4KytsqbNgHkMs39qjH5dy4JSJjc+C8axIba3ZywR1QpN
	oPVu32Vhjuabgy//XQFLBaBjXn49OLsFsN99ABot64v7gXOJ4nGgZak1s+4vxnZcFpMw7o69Emsrc
	fwL/3KWBJPnNvVKjofuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZJe9-00000002zXc-2nBn;
	Thu, 01 Aug 2024 00:26:21 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZJdd-00000002zJs-2xum;
	Thu, 01 Aug 2024 00:25:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0AFD0624B0;
	Thu,  1 Aug 2024 00:25:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DF10C4AF0C;
	Thu,  1 Aug 2024 00:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722471948;
	bh=xGhvvW5Nb1lltgltgtaN920HQ82BD/KDG6WYsOpH+9o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=p+hoCl+LIdQsu7aaqPLKcgr7Iyq/1D8wQi2CBT8xlz9cnEBdKy5p47R5CuTF9oBwt
	 fXYqAYqHnPMdr79kYlx0y8k+a1nd/vxPOAkP1MZfp3VOW9AyOyPRIAvyLlYJem65MB
	 F1oztwRRlc9Lfy1sqSofPVqBPrD2IKzZFGqXoDG2Idgz35PFBCtD8tjrSWkxPfo+I5
	 IhE2kY/gQe9uLTQOH8yUNsVHBweojaiKpiIJ2MHA0pzriNQ84xXY982uppZc4PgBza
	 41j+bzqhdQo1kYoyI3R4o7dBPznZQdYXyZzt8QHaczAKFntid4yHFaA3QE4f1pMMpC
	 CBWUpP/SsaoFg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sean Anderson <sean.anderson@linux.dev>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	laurent.pinchart@ideasonboard.com,
	kishon@kernel.org,
	michal.simek@amd.com,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH AUTOSEL 6.6 70/83] phy: zynqmp: Take the phy mutex in xlate
Date: Wed, 31 Jul 2024 20:18:25 -0400
Message-ID: <20240801002107.3934037-70-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240801002107.3934037-1-sashal@kernel.org>
References: <20240801002107.3934037-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.43
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_172549_851119_4201952F 
X-CRM114-Status: UNSURE (   9.00  )
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

From: Sean Anderson <sean.anderson@linux.dev>

[ Upstream commit d79c6840917097285e03a49f709321f5fb972750 ]

Take the phy mutex in xlate to protect against concurrent
modification/access to gtr_phy. This does not typically cause any
issues, since in most systems the phys are only xlated once and
thereafter accessed with the phy API (which takes the locks). However,
we are about to allow userspace to access phys for debugging, so it's
important to avoid any data races.

Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
Link: https://lore.kernel.org/r/20240628205540.3098010-5-sean.anderson@linux.dev
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/phy/xilinx/phy-zynqmp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
index 2559c6594cea2..b2b761e8d6a3a 100644
--- a/drivers/phy/xilinx/phy-zynqmp.c
+++ b/drivers/phy/xilinx/phy-zynqmp.c
@@ -798,6 +798,7 @@ static struct phy *xpsgtr_xlate(struct device *dev,
 	phy_type = args->args[1];
 	phy_instance = args->args[2];
 
+	guard(mutex)(&gtr_phy->phy->mutex);
 	ret = xpsgtr_set_lane_type(gtr_phy, phy_type, phy_instance);
 	if (ret < 0) {
 		dev_err(gtr_dev->dev, "Invalid PHY type and/or instance\n");
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

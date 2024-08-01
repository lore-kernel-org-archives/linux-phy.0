Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41A43C3DA7F
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 00:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WEmfNWJyNNNv9RGknkVN8VWoUxMhQRlGutn+duHDqHA=; b=eBHwQKMHRnH31V
	jK4PL/24pqK85t+6l/RwuKHuY/iTpzqoqED5Fdl08arpwqzK0VOewMVsLGd9niodfDASdl++tvLg9
	S+A2PilzZBbQV0VaJbS2GSmKbxyJyKtmNL3v7Hzvna41sfxZj4R3j8c0F858afKjcyMaMpFVGqi9U
	rIqGVKapyWUuES8CDKMdiEIha1q/+r9YvLHq90GviMFL2pMDCGSu6imLlMBNbK840LtHwfKl+49Zu
	y1HKF3WETE5FiVUd5vUlOfCI0+uw9wLjR8gO4TxwfoogzVOXKJXP2dXc15B5zyf1T9iM8SK11f7nU
	Flsrv5yWvv0p6cMRSydg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZJjW-000000031hW-3Xfr;
	Thu, 01 Aug 2024 00:31:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZJit-000000031QC-2cJy;
	Thu, 01 Aug 2024 00:31:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0BF4A6173B;
	Thu,  1 Aug 2024 00:31:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3C62C116B1;
	Thu,  1 Aug 2024 00:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722472274;
	bh=CD6Jx+aTI+3Lv99v/xOm4/THGDtLnHkNjrNWCrQ0syk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=okJgImihSn3ytl0b8YuCjZ9fEWkAHFoEluWFjs7z3S4TMMTZwhjilzPo9RnY5HaB9
	 tz4o3I0FhOUyLhSDvDotbPFnceYX/z6EuL0CfV4QgFbsrDCWcvWS1N1GPaQyB391Ky
	 jp95iZAm3N1NIOWixBRKX6Ll+aGx+e1XL5vrMUKFvS0oEFb/QT13ncfJqZjXlsyhkD
	 J2AJki3ZT4YoAi9EYMY+YgMrZ2jAOFx6dtDouKvwcjNdYb+aEHSfoCoZgMFlBQeVop
	 BIFfZHE5qri5D4ABTTknrWk0BZB4HRKkNYVZY7WQYLIDVQ+mSJAAGlCaM6D3pqKUhO
	 MYJmcFNGxbOMg==
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
Subject: [PATCH AUTOSEL 6.1 51/61] phy: zynqmp: Take the phy mutex in xlate
Date: Wed, 31 Jul 2024 20:26:09 -0400
Message-ID: <20240801002803.3935985-51-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240801002803.3935985-1-sashal@kernel.org>
References: <20240801002803.3935985-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_173115_748350_ABDE3FE9 
X-CRM114-Status: UNSURE (   8.95  )
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
index 9be9535ad7ab7..67c45336bb2c0 100644
--- a/drivers/phy/xilinx/phy-zynqmp.c
+++ b/drivers/phy/xilinx/phy-zynqmp.c
@@ -790,6 +790,7 @@ static struct phy *xpsgtr_xlate(struct device *dev,
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

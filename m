Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F84EC3ABBC
	for <linux-phy@archiver.kernel.org>; Tue,  6 May 2025 03:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QcTSEN9nndMxYxr6XJmORb6I9p4Q/S4mBElTv7fmS8M=; b=fWjSDeg9z+4sVx
	Bdn1cIlCNnj0kJKaTmEP46sNEG831z4oux3rLnY8EQiq5Ds0y3Uh3lvBzXV7thjtU4c9NcWzGAUUd
	VEbdr1tOj9Sxeqf/G4TF5+B5BPeXkAubvVx17eaeOvT8PgqCn2feFlQrxcSGYgPpGIWwtrrbDFylY
	4eCo5H4AS4AvRD+fiXy91Stu27R7EHpfiSO+vDIc8BGOT6r0144bAeSCqF14RMfVWM505swnzT1ij
	jufD1SEYhI3dqWCWAwcWItNkTj7nm8ZyiypZNtMel/bO3R0c2bAMzTsKMVD6oFDxFfKZ4JAiRHG8C
	17bvneae7rE6sBq9Echg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC8qE-00000009xHc-4Aem;
	Tue, 06 May 2025 03:19:34 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC4qn-00000008wY5-2hKe
	for linux-phy@lists.infradead.org;
	Mon, 05 May 2025 23:03:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 326C0629C3;
	Mon,  5 May 2025 23:03:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0ADBC4CEED;
	Mon,  5 May 2025 23:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746486232;
	bh=Nm5dAaQuP1tFUt1Z3tmizws4xDWNqGjg64KYQwYXWXA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qnGnSEOMt6zeIq0jri54y0sWJGZ6FeyYHGr7+0A1km8rtiN3IVAfCK4dakcvEqVHf
	 80fFqHStVOmCpBt+aGpRUK2CiAylc0YJcssWq/s98HIhySggeQ6TWhNasZClcFXWOk
	 ekbtiW1yKMWFBwGoQq5p5hUgy930X/rGiNk15ubjX4a9GUeuqjNhs2rXEJ7imZgv9Y
	 K64+VIagIpjZMqusJIyTRcsunlTb0ltIdKDm2qEjgkVB1wKp84J/inawNt/R7ytgym
	 fBLKkEuzDrtmxR7ZwC+SpSMptLY+iznFUY6i3q5LeshO68JdQ+LxlqjtN2ZwqdIMcX
	 w0i6qCvlF4u8A==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Damon Ding <damon.ding@rock-chips.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	kishon@kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 6.6 220/294] phy: core: don't require set_mode() callback for phy_get_mode() to work
Date: Mon,  5 May 2025 18:55:20 -0400
Message-Id: <20250505225634.2688578-220-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505225634.2688578-1-sashal@kernel.org>
References: <20250505225634.2688578-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.89
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

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

[ Upstream commit d58c04e305afbaa9dda7969151f06c4efe2c98b0 ]

As reported by Damon Ding, the phy_get_mode() call doesn't work as
expected unless the PHY driver has a .set_mode() call. This prompts PHY
drivers to have empty stubs for .set_mode() for the sake of being able
to get the mode.

Make .set_mode() callback truly optional and update PHY's mode even if
it there is none.

Cc: Damon Ding <damon.ding@rock-chips.com>
Link: https://lore.kernel.org/r/96f8310f-93f1-4bcb-8637-137e1159ff83@rock-chips.com
Tested-by: Damon Ding <damon.ding@rock-chips.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Link: https://lore.kernel.org/r/20250209-phy-fix-set-moe-v2-1-76e248503856@linaro.org
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/phy/phy-core.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index a892e1d7e2d02..9417372a01554 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -400,13 +400,14 @@ EXPORT_SYMBOL_GPL(phy_power_off);
 
 int phy_set_mode_ext(struct phy *phy, enum phy_mode mode, int submode)
 {
-	int ret;
+	int ret = 0;
 
-	if (!phy || !phy->ops->set_mode)
+	if (!phy)
 		return 0;
 
 	mutex_lock(&phy->mutex);
-	ret = phy->ops->set_mode(phy, mode, submode);
+	if (phy->ops->set_mode)
+		ret = phy->ops->set_mode(phy, mode, submode);
 	if (!ret)
 		phy->attrs.mode = mode;
 	mutex_unlock(&phy->mutex);
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

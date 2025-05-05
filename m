Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B18E5C3ABBF
	for <linux-phy@archiver.kernel.org>; Tue,  6 May 2025 00:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=txaDdh28EIg47tADVG6BZbH/wxQmBdlDb7CE4buyCBE=; b=jISwbofbZhW51G
	SUIDwXqKb/vJZklGu3CYdhUeedvqJqL610el2Q6i4rxnVqX9SEsjaykoPOvXl5DaOiEnmeqXt2a3D
	NoYDV+p2za2J3UuoI9syzc1SH5tOBh03J+cNLlqXee2BemlSPbmEyi78DEAOVd+E10ddd9lvmZ9LE
	O9WMiBsJl5jmq0OXdv45rXcO3Pr/rOVvaz50mt1JvE2Hj5nKhOg61K4uUN2vtNN2fRi23LNxIVgbk
	5Ff08B5MbaYOyFD/gEWpnTkR56eF9nIGeJfMSl5yfyz6yPIEeHkWJ7ER50MmU6YY+Fsa0X5qvG2ST
	OAx9A3cgcXdgXw2aDZEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC61u-00000009Fh7-1PJk;
	Tue, 06 May 2025 00:19:26 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC4Lu-00000008mqy-2Pq4
	for linux-phy@lists.infradead.org;
	Mon, 05 May 2025 22:32:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 99E0049DBA;
	Mon,  5 May 2025 22:31:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40D8EC4CEEE;
	Mon,  5 May 2025 22:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746484318;
	bh=EzbQ5qsjT66UzhzAE1HztXaKwjz0xNHAWtSQyhTwrms=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aXS6WJy+kFpRaN3KzYZzowHKkyD5+OiIfqoZrLgIWpKxy8kr58oZ2vCUTkZjBAG8y
	 gOw0PwJy7asdNRXjLg+kZWRGKcEa2SA5KpPyj12bb6NSUtmGzow+AJeLXFicAy0HSV
	 eRIq5ttLSda9QZL+oomJ6uAc3BNoB53Xq1htoKOhD790SbmBodFdePhE36z9kgluXR
	 h10TMi6L5BIUwnpi8SRAAF5Fo1V6/+gu1hs7fHlYKkOv5TTnpqb7BY+hb3eCXbyVeA
	 M7YCJ39n6o3DU2fNLQefynEdcWioOUuWp/2sL5Ew41rr9yA5Gjpe1nxvuQ422nn9WV
	 hleKIelPb4aqA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Damon Ding <damon.ding@rock-chips.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	kishon@kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 6.14 451/642] phy: core: don't require set_mode() callback for phy_get_mode() to work
Date: Mon,  5 May 2025 18:11:07 -0400
Message-Id: <20250505221419.2672473-451-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505221419.2672473-1-sashal@kernel.org>
References: <20250505221419.2672473-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.14.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_153158_639422_B3CE2EB5 
X-CRM114-Status: GOOD (  10.44  )
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
index 8dfdce605a905..067316dfcd83a 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -405,13 +405,14 @@ EXPORT_SYMBOL_GPL(phy_power_off);
 
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

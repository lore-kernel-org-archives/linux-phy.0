Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7D52C3ABAC
	for <linux-phy@archiver.kernel.org>; Tue,  6 May 2025 04:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Smus9WFpSwPEZUdY8BAbBEWMpasWYNj37sPyyMQRww=; b=MGWRDjE3abahg0
	t4gbvTV+Y6F4wAtIbUCfNkLxCly79GosHfDeXy2msTsSl7bCwpWsw0bPHNtThWu671Bt45Y95iCCp
	8fRYYbvxRx89kbszun4n6Pqobjo2j9D+Jp660MtApeShru4q1b1qJBVBviZxk2ICzBWRIn8EP3wfS
	JWzantE4AHlrg7J8b0Ol+Ew7pzP0dZ4Djt69liT8wrJZOJjnRa/XLUraCdb3Y8Qd9mKQuV9NLZRRM
	EZOjsMyNQ5PY9JLqu+8gyZljz5GnoFYGVKjRQ22d1YL1zpUDKfWFMSeAVTRWsPwNfK6UwidUmnjMC
	vXjzY+CFs37bARlDaTgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC9Ya-0000000A84n-1nkD;
	Tue, 06 May 2025 04:05:24 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC4yb-00000008ypl-07nw
	for linux-phy@lists.infradead.org;
	Mon, 05 May 2025 23:11:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 955E9629CB;
	Mon,  5 May 2025 23:11:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37074C4CEEF;
	Mon,  5 May 2025 23:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746486716;
	bh=GfrMrwI1HzyaSwl8t6c37iWXgnxb6KyIge4Y6qbMHOg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NPZk9VNxaA9kB6ttW+oTa0x4HdiKBIIfQEx8A9Bw8RnqHKDXinHN4Ij/jVTQ58Dm3
	 p0TWpOxMsGZ9tfp+jJD564t1HvvjVpLJrtPMhI8I9mkc3qVpYYuv23bdqQthIMuoib
	 Ekus105iJeDNPsjBnyf9Mr9VXYeYyIrJc1virIsB8sJi6Z6y1/GEIy/pm1hdJZPS3D
	 y6ZjmYyHylvzhqfRBHynRsM2aUDieNhgVnavG8nqjOdwX5JTtmRbze0lI2JgXKNmVA
	 OxZr3s1AET6C8G1rtwdqsheUcxQKJCwA64ckH/Tmd/vyfuI9lUWOp7cXqJyKlDO8Kc
	 h2ahssSOr/eHw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Damon Ding <damon.ding@rock-chips.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	kishon@kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 6.1 169/212] phy: core: don't require set_mode() callback for phy_get_mode() to work
Date: Mon,  5 May 2025 19:05:41 -0400
Message-Id: <20250505230624.2692522-169-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505230624.2692522-1-sashal@kernel.org>
References: <20250505230624.2692522-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.136
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
index 0730fe80dc3c1..069bcf49ee8f7 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -398,13 +398,14 @@ EXPORT_SYMBOL_GPL(phy_power_off);
 
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

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB4D3C3ABAC
	for <linux-phy@archiver.kernel.org>; Tue,  6 May 2025 04:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PdT7s5f840akt5YV302FVwYqT6T9lXqPWftSs86M6pw=; b=kpQ9XofypWUOZQ
	CgFf8Cwf9coSBfny8ZK0bvkpsEKjefGRGH8zfKZTcACjH3LyfCSiJEdRCJew9ImparkUcurO2KRAy
	t8skEC2L8O/1pwfapXJUMY10f/Y+YY+zD2tgAGsMzwbWODSAcVOA38LbEiyooe0HcDtwQSRQcFEVZ
	lNXTtPC7ajnnVg+LFZHtyb3KhcTL6RT4U9BPJ+QTb+d7V0CUO7l6QNNaRHWid94tmMZgSvqtnNpxf
	1rSkmQjaSuOytizvfJwvNpOf7Y73YBylw5+kBLUoKix7hgso1Ux2VBqMBH2AeuZnrDqwyDDc78+l8
	/vsb27ecPxas6RngE6Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCAMs-0000000AK1X-2cPY;
	Tue, 06 May 2025 04:57:22 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC59v-000000092JW-3z5E
	for linux-phy@lists.infradead.org;
	Mon, 05 May 2025 23:23:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 46FDD5C5BDA;
	Mon,  5 May 2025 23:21:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A41BC4CEE4;
	Mon,  5 May 2025 23:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746487419;
	bh=e6EjrVCX7JbG3XU1rbqsmjOintgDWviy07DAme+S1kA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=H38Zy5i+Z0Fs5gbgYErlWY5itQoALS/dczUd5eu6HvGv6tFspBPTcAzYYApEGuZ4w
	 fmmf0xM6JpkPQ8a/Cj5LleDpMC6u3eRJXJ43nihonR1PsVdlG8tFrA6A0IuS/WhROu
	 dnKp9MfOjZ/ARgGsDzHWvHCNE4Vup+WEjuLhQZT7/d1My4LiznJpDD7C6iJHpE9/uE
	 6hQ8D4V4OwguLIGCBMvZJJ6MS8DrRPZNnJkfBKY604Eh8uFwKclzQ67acJT8+nEiK0
	 cP+HODBRppN8WJtFZeXBUUxxM35WSDINhhEUX+HISAEBHA/H3tAkVfuy1vx3yYJxa2
	 QqMeyAZhIBnvw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Damon Ding <damon.ding@rock-chips.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	kishon@kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 5.4 61/79] phy: core: don't require set_mode() callback for phy_get_mode() to work
Date: Mon,  5 May 2025 19:21:33 -0400
Message-Id: <20250505232151.2698893-61-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505232151.2698893-1-sashal@kernel.org>
References: <20250505232151.2698893-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.4.293
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_162340_028619_3E011534 
X-CRM114-Status: GOOD (  10.54  )
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
index c94a0d2c45161..917e01af4769f 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -360,13 +360,14 @@ EXPORT_SYMBOL_GPL(phy_power_off);
 
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

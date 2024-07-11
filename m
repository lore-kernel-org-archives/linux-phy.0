Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB4BCC3DA4E
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jul 2024 19:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n9x6ga0c0uGbVKmdpyVKCbivTYojNsvglAUJ61h9ZXY=; b=QCBEYxOTmw0cE8
	MeMB2o198XsMuJpPZh8wM59ddKYR+vMGmqNVUZJFT2EstQyumzsihxF5OLprV+yKScyi9dF0SeWJ8
	lEncV1D2bCrk/Wm1VJFXEwkuaF9mXVsgKQogb1PE0sBibR6Kz7T1PtKjflfHU4iBOXKS9Gj4l5EWk
	rttGvgdwrXigRnCfyzNnW6mrQO2v8WjUfVKXws1Hn2w1PK928YemEn9S09IheYewwmjaEJJfX3ANB
	MBdk1HzRV9haJdBdZ2aB3WWBuRqwb3YBae43GEZNLqOqFZCG4n41kKLd0zG49KFTXcQuAAckQj/zQ
	QyuFNKunSKFr3rnFIfgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRzZN-0000000FDv4-2CdW;
	Thu, 11 Jul 2024 19:35:09 +0000
Received: from smtp-15.smtpout.orange.fr ([80.12.242.15] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRzZJ-0000000FDr9-3RE4
	for linux-phy@lists.infradead.org;
	Thu, 11 Jul 2024 19:35:07 +0000
Received: from fedora.. ([77.131.3.214])
	by smtp.orange.fr with ESMTPA
	id RzZBsCMFrj4pfRzZHsIiSB; Thu, 11 Jul 2024 21:35:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1720726503;
	bh=+R7FMy9AXoamPmQBHl0PouZlAVVAloz2ln5nMlCPFco=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=G4FCmE10keN47ZT0oy7vcEVw+P05COp971q569t5kqgym7lD3ENBPU+VwI9cntx/z
	 8dSrndaG7iv76mVM2IFztFqCb2qAkQxgXmkP4zqZVUAIeEufn8LHOKY7roFiDPX8cr
	 zPjaAm3PLkMLfkHAH3XnOLIgptNnUnIv0BkilwdDbOVmaT5eQQx1MxFzDu+0CrEfKI
	 3ophi6NDVNA9LE02ljoqzR2wTMy+rbdO79oU5RB+06pGlNFUDN1ioCU5p/fjoXYmdh
	 LuQgx9ZgX2eK+x9d40YpbLS9p8SyhhG/1dgwZqNY3FfttuZr8FXZTesBvHN1JQp3be
	 I+aJFk5GhtzRw==
X-ME-Helo: fedora..
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Thu, 11 Jul 2024 21:35:03 +0200
X-ME-IP: 77.131.3.214
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: [PATCH 3/3] phy: cadence: Sierra: Constify a u32[]
Date: Thu, 11 Jul 2024 21:34:54 +0200
Message-ID: <43d881d52e3c1632ad197d4c2c18b6c481a13b24.1720723132.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cover.1720723132.git.christophe.jaillet@wanadoo.fr>
References: <cover.1720723132.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_123506_017278_8D227651 
X-CRM114-Status: GOOD (  10.70  )
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

'cdns_sierra_pll_mux_table' is not modified in this driver.
And it is only used as a "const u32 *".

Constifying this structure moves some data to a read-only section, so
increase overall security.

On a x86_64, with allmodconfig:
Before:
======
   text	   data	    bss	    dec	    hex	filename
  60937	   3894	     16	  64847	   fd4f	drivers/phy/cadence/phy-cadence-sierra.o

After:
=====
   text	   data	    bss	    dec	    hex	filename
  60897	   3878	     16	  64791	   fd17	drivers/phy/cadence/phy-cadence-sierra.o

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
Compile tested-only.
---
 drivers/phy/cadence/phy-cadence-sierra.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index 947492c8f381..3010c9f24136 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -310,7 +310,7 @@ static const struct clk_parent_data pll_mux_parent_data[][SIERRA_NUM_CMN_PLLC_PA
 	},
 };
 
-static u32 cdns_sierra_pll_mux_table[][SIERRA_NUM_CMN_PLLC_PARENTS] = {
+static const u32 cdns_sierra_pll_mux_table[][SIERRA_NUM_CMN_PLLC_PARENTS] = {
 	[CMN_PLLLC] = { 0, 1 },
 	[CMN_PLLLC1] = { 1, 0 },
 };
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

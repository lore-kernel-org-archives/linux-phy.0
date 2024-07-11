Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B41AC3DA45
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jul 2024 19:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9kpMMHwvy4MKFDpnme3dEZya8pAkgnI4s/DyfIMuZu0=; b=INBgQrSuRzdyGB
	+Oji/5iFf41GsiHwvDcTbS2NCJ8K4diSgu6cwaaiF+Y8wq4kB0Kaa7e66oQ+65+VcDYL5tUVJ8FF1
	lMhuRZsG8ASSmpN106S/FtF2rxnLGhMI5LCdcuqOraezV6O0o2TSDBr16nBDe4iQtqf0vuRSntp4b
	aOqM+C5jJmv8u4oqy1ZF+LsuRVisMOtKZhEwVa7KdbPxJZ4S1kc1nIdCQ5/unvpPtCCpel9GDYxL2
	jOPxojgYomPQq5LY8Ln5XVxOVpHzsf5G88qyaDNTdyQdn0JXv1llkgehBN2tjjoO8H4kLkG+EfGwd
	anDrc463vFJfLCnzQiOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRzZL-0000000FDti-3N5q;
	Thu, 11 Jul 2024 19:35:07 +0000
Received: from smtp-65.smtpout.orange.fr ([80.12.242.65] helo=msa.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRzZH-0000000FDqN-2PdQ
	for linux-phy@lists.infradead.org;
	Thu, 11 Jul 2024 19:35:05 +0000
Received: from fedora.. ([77.131.3.214])
	by smtp.orange.fr with ESMTPA
	id RzZBsCMFrj4pfRzZEsIiRe; Thu, 11 Jul 2024 21:35:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1720726501;
	bh=MaLM7B8grFGEA8Qhxc325Ffgm/J2Yg0HpAuW5vXtFvE=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=uKlfxmlZm+QDK9dDFuhV//L6spwodsLDPA9Fqhg/ncr3a1Z9vkzcdMNckcJEsP7Cy
	 HHrKThLpkL6iNE/eHu3mDTKRFwbfrtvF3/VxzHRGzXyDptCEI+uX1bEd4BHazLP+nC
	 eeFMytPSvArCHyalNCDhdiJgVewvlteO9DNw9p/a6cj193aaaETA4ClxIsU1Tl2QMu
	 K4MKrlnKmSLdL/+8GRxsg6iTbNm9OF0tmxMBhp9S2RpOgXT62e9FSBfimxm1cgzrFH
	 rxx0zb5ZjRpC5bNoXBSuzOiW787NX+GytCf2gheKLtWTQVOaCKndKY+89u5KB85tm9
	 +lan4gygVrKsA==
X-ME-Helo: fedora..
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Thu, 11 Jul 2024 21:35:01 +0200
X-ME-IP: 77.131.3.214
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: [PATCH 1/3] phy: cadence: Sierra: Constify struct cdns_reg_pairs
Date: Thu, 11 Jul 2024 21:34:52 +0200
Message-ID: <c57ee8206ebba8c222d7d954335654384072b9ac.1720723132.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cover.1720723132.git.christophe.jaillet@wanadoo.fr>
References: <cover.1720723132.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_123503_770402_B1A6ABAF 
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

'struct cdns_reg_pairs' is not modified in this driver.

Constifying this structure moves some data to a read-only section, so
increase overall security.

On a x86_64, with allmodconfig:
Before:
======
   text	   data	    bss	    dec	    hex	filename
  60489	   4342	     16	  64847	   fd4f	drivers/phy/cadence/phy-cadence-sierra.o

After:
=====
   text	   data	    bss	    dec	    hex	filename
  60521	   4310	     16	  64847	   fd4f	drivers/phy/cadence/phy-cadence-sierra.o

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
Compile tested-only.
---
 drivers/phy/cadence/phy-cadence-sierra.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index d4eb93ce8232..6bb0ca3443f1 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -1544,7 +1544,7 @@ static void cdns_sierra_phy_remove(struct platform_device *pdev)
 }
 
 /* SGMII PHY PMA lane configuration */
-static struct cdns_reg_pairs sgmii_phy_pma_ln_regs[] = {
+static const struct cdns_reg_pairs sgmii_phy_pma_ln_regs[] = {
 	{0x9010, SIERRA_PHY_PMA_XCVR_CTRL}
 };
 
@@ -1609,7 +1609,7 @@ static struct cdns_sierra_vals sgmii_100_no_ssc_plllc1_opt3_ln_vals = {
 };
 
 /* QSGMII PHY PMA lane configuration */
-static struct cdns_reg_pairs qsgmii_phy_pma_ln_regs[] = {
+static const struct cdns_reg_pairs qsgmii_phy_pma_ln_regs[] = {
 	{0x9010, SIERRA_PHY_PMA_XCVR_CTRL}
 };
 
@@ -1675,7 +1675,7 @@ static struct cdns_sierra_vals qsgmii_100_no_ssc_plllc1_ln_vals = {
 };
 
 /* PCIE PHY PCS common configuration */
-static struct cdns_reg_pairs pcie_phy_pcs_cmn_regs[] = {
+static const struct cdns_reg_pairs pcie_phy_pcs_cmn_regs[] = {
 	{0x0430, SIERRA_PHY_PIPE_CMN_CTRL1}
 };
 
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

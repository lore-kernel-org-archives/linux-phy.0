Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1054AC3DA45
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jul 2024 17:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UgWZq6JJAWDhS8Zy38RR15sWbgL7YiFYj0i5WX2h1jU=; b=hlzC8b+BG6fq0U
	iKKQhUSsLqTsVunkxHxdAc26yUsNfF4UtyBJYBJAYkk6GsXiZXKvRdF9dY0vD8uT4pqAnZbyXKA9Q
	NZOaVyUMIOA7/9m3k4evNwff7k7K4+myLIK9XtHsZTGkDZ3gvJLXgTwOCzZY1zEOWQb13ZRn0X9yX
	+UoBzEGgtHiTvPx0YMjU0pSwfqD07ItXq95tg3jZ3WJpm9CeBqYWYDW41KTaC7MtSkYPILyTokquP
	9DuEEI25QVV9ujFzsvU0/tdxCvkN2LA6S0RjfkI7WhVSGKEdD3gcsfygMDE4O00JDBEfDp//m8pFB
	Y0g9dHKDCapyEF/uiymQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRxdr-0000000EsPd-3DcW;
	Thu, 11 Jul 2024 17:31:39 +0000
Received: from smtp-69.smtpout.orange.fr ([80.12.242.69] helo=msa.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRxdp-0000000EsOM-0dbk
	for linux-phy@lists.infradead.org;
	Thu, 11 Jul 2024 17:31:38 +0000
Received: from fedora.home ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id RxdPsAr1uHTrpRxdmsVLtc; Thu, 11 Jul 2024 19:31:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1720719094;
	bh=A0NOwSSCnj3xicr3sw3iyD9fFy6aCRNZ4cGMskLj1QM=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=UNMBB7gtc7++sYbZbHSmEkl0Q2G25m2AmSWlZTsaAR2p4ORz/j+s2vd8g970Gb/KG
	 ZmmfG+DPhLZJ4/hZoWgw/5iWuK7XlnYwSIaMMhY39sAZafDKtFNhgRgzUMQntGxhOC
	 k2Uor2s6qs/UV9T/sovoP7xKHNHfTxMQhmahyLsAZk6oFrl0S27efy2rfTdb56TSEx
	 4AnieTSKpAf/sQfI56rmKM/TN+JEUU1RJccjAiBlm41+Obhg92kQgcgZCIN4TG6oIG
	 6froEreYKDt1lt3i34WeJZDFOa6y6zLT1i53kwPex0k0BaifIUEPBDQ9rel75nbFMB
	 SyGyBsAU5y3uw==
X-ME-Helo: fedora.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Thu, 11 Jul 2024 19:31:34 +0200
X-ME-IP: 90.11.132.44
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: [PATCH 2/4] phy: cadence-torrent: Constify struct cdns_torrent_vals_entry
Date: Thu, 11 Jul 2024 19:31:07 +0200
Message-ID: <dcc4e539999a840b3fd8f40fd8fd7523390232ac.1720718240.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cover.1720718240.git.christophe.jaillet@wanadoo.fr>
References: <cover.1720718240.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_103137_486594_4B9B7B9B 
X-CRM114-Status: UNSURE (   9.91  )
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

'struct cdns_torrent_vals_entry' is not modified in this driver.

Constifying this structure moves some data to a read-only section, so
increase overall security.

On a x86_64, with allmodconfig:
Before:
======
   text	   data	    bss	    dec	    hex	filename
  85130	  13214	     16	  98360	  18038	drivers/phy/cadence/phy-cadence-torrent.o

After:
=====
   text	   data	    bss	    dec	    hex	filename
  92234	   6078	     16	  98328	  18018	drivers/phy/cadence/phy-cadence-torrent.o

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
Compile tested-only.
---
 drivers/phy/cadence/phy-cadence-torrent.c | 24 +++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index 6551dcf99639..6787d64ee982 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -432,7 +432,7 @@ struct cdns_torrent_vals_entry {
 };
 
 struct cdns_torrent_vals_table {
-	struct cdns_torrent_vals_entry *entries;
+	const struct cdns_torrent_vals_entry *entries;
 	u32 num_entries;
 };
 
@@ -4611,7 +4611,7 @@ static struct cdns_torrent_vals pcie_100_no_ssc_rx_ln_vals = {
 	.num_regs = ARRAY_SIZE(pcie_100_ext_no_ssc_rx_ln_regs),
 };
 
-static struct cdns_torrent_vals_entry link_cmn_vals_entries[] = {
+static const struct cdns_torrent_vals_entry link_cmn_vals_entries[] = {
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_DP, TYPE_NONE), &sl_dp_link_cmn_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_DP, TYPE_PCIE), &pcie_dp_link_cmn_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_DP, TYPE_USB), &usb_dp_link_cmn_vals},
@@ -4647,7 +4647,7 @@ static struct cdns_torrent_vals_entry link_cmn_vals_entries[] = {
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USXGMII, TYPE_QSGMII), &usxgmii_sgmii_link_cmn_vals},
 };
 
-static struct cdns_torrent_vals_entry xcvr_diag_vals_entries[] = {
+static const struct cdns_torrent_vals_entry xcvr_diag_vals_entries[] = {
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_DP, TYPE_NONE), &sl_dp_xcvr_diag_ln_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_DP, TYPE_PCIE), &dp_pcie_xcvr_diag_ln_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_DP, TYPE_USB), &dp_usb_xcvr_diag_ln_vals},
@@ -4683,7 +4683,7 @@ static struct cdns_torrent_vals_entry xcvr_diag_vals_entries[] = {
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USXGMII, TYPE_QSGMII), &usxgmii_sgmii_xcvr_diag_ln_vals},
 };
 
-static struct cdns_torrent_vals_entry pcs_cmn_vals_entries[] = {
+static const struct cdns_torrent_vals_entry pcs_cmn_vals_entries[] = {
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USB, TYPE_NONE), &usb_phy_pcs_cmn_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USB, TYPE_PCIE), &usb_phy_pcs_cmn_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USB, TYPE_SGMII), &usb_phy_pcs_cmn_vals},
@@ -4691,7 +4691,7 @@ static struct cdns_torrent_vals_entry pcs_cmn_vals_entries[] = {
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USB, TYPE_DP), &usb_phy_pcs_cmn_vals},
 };
 
-static struct cdns_torrent_vals_entry cmn_vals_entries[] = {
+static const struct cdns_torrent_vals_entry cmn_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_19_2_MHZ, CLK_19_2_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_19_2_no_ssc_cmn_vals},
 	{CDNS_TORRENT_KEY(CLK_25_MHZ, CLK_25_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_25_no_ssc_cmn_vals},
 
@@ -4773,7 +4773,7 @@ static struct cdns_torrent_vals_entry cmn_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_156_25_MHZ, CLK_100_MHZ, TYPE_USXGMII, TYPE_QSGMII, NO_SSC), &ml_usxgmii_pll0_156_25_no_ssc_cmn_vals},
 };
 
-static struct cdns_torrent_vals_entry cdns_tx_ln_vals_entries[] = {
+static const struct cdns_torrent_vals_entry cdns_tx_ln_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_19_2_MHZ, CLK_19_2_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_19_2_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_25_MHZ, CLK_25_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_25_no_ssc_tx_ln_vals},
 
@@ -4855,7 +4855,7 @@ static struct cdns_torrent_vals_entry cdns_tx_ln_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_156_25_MHZ, CLK_100_MHZ, TYPE_USXGMII, TYPE_QSGMII, NO_SSC), &ml_usxgmii_156_25_no_ssc_tx_ln_vals},
 };
 
-static struct cdns_torrent_vals_entry cdns_rx_ln_vals_entries[] = {
+static const struct cdns_torrent_vals_entry cdns_rx_ln_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_19_2_MHZ, CLK_19_2_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_19_2_no_ssc_rx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_25_MHZ, CLK_25_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_25_no_ssc_rx_ln_vals},
 
@@ -4966,14 +4966,14 @@ static const struct cdns_torrent_data cdns_map_torrent = {
 	},
 };
 
-static struct cdns_torrent_vals_entry j721e_phy_pma_cmn_vals_entries[] = {
+static const struct cdns_torrent_vals_entry j721e_phy_pma_cmn_vals_entries[] = {
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USXGMII, TYPE_NONE), &ti_usxgmii_phy_pma_cmn_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USXGMII, TYPE_PCIE), &ti_usxgmii_phy_pma_cmn_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USXGMII, TYPE_SGMII), &ti_usxgmii_phy_pma_cmn_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_USXGMII, TYPE_QSGMII), &ti_usxgmii_phy_pma_cmn_vals},
 };
 
-static struct cdns_torrent_vals_entry ti_tx_ln_vals_entries[] = {
+static const struct cdns_torrent_vals_entry ti_tx_ln_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_19_2_MHZ, CLK_19_2_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_19_2_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_25_MHZ, CLK_25_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_25_no_ssc_tx_ln_vals},
 
@@ -5089,7 +5089,7 @@ static const struct cdns_torrent_data ti_j721e_map_torrent = {
 };
 
 /* TI J7200 (Torrent SD0805) */
-static struct cdns_torrent_vals_entry ti_j7200_cmn_vals_entries[] = {
+static const struct cdns_torrent_vals_entry ti_j7200_cmn_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_19_2_MHZ, CLK_19_2_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_19_2_no_ssc_cmn_vals},
 	{CDNS_TORRENT_KEY(CLK_25_MHZ, CLK_25_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_25_no_ssc_cmn_vals},
 
@@ -5171,7 +5171,7 @@ static struct cdns_torrent_vals_entry ti_j7200_cmn_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_156_25_MHZ, CLK_100_MHZ, TYPE_USXGMII, TYPE_QSGMII, NO_SSC), &j7200_ml_usxgmii_pll0_156_25_no_ssc_cmn_vals},
 };
 
-static struct cdns_torrent_vals_entry ti_j7200_tx_ln_vals_entries[] = {
+static const struct cdns_torrent_vals_entry ti_j7200_tx_ln_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_19_2_MHZ, CLK_19_2_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_19_2_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_25_MHZ, CLK_25_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_25_no_ssc_tx_ln_vals},
 
@@ -5253,7 +5253,7 @@ static struct cdns_torrent_vals_entry ti_j7200_tx_ln_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_156_25_MHZ, CLK_100_MHZ, TYPE_USXGMII, TYPE_QSGMII, NO_SSC), &usxgmii_156_25_no_ssc_tx_ln_vals},
 };
 
-static struct cdns_torrent_vals_entry ti_j7200_rx_ln_vals_entries[] = {
+static const struct cdns_torrent_vals_entry ti_j7200_rx_ln_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_19_2_MHZ, CLK_19_2_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_19_2_no_ssc_rx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_25_MHZ, CLK_25_MHZ, TYPE_DP, TYPE_NONE, NO_SSC), &sl_dp_25_no_ssc_rx_ln_vals},
 
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

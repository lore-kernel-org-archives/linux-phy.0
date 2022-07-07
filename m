Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FE9CC433EF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 07:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+L340/0O1WpDtdOy1wCnI7F/1rviprPMoVaBN3HncM=; b=N3H1c0UkAHtWDJ
	OBgPDDN9beUPeAJlsa72h3AWHhBx+3owI1j3NrTU71yYTx171VroRQ4HWjcM+PSw6cn6O3PfeUnxp
	8TRc22aTUpHUR9i82bLGnByeU4rYPB4syiljjjkdX9vNcYcYivgmeexuQNFCyHS1I2565/HbppnVq
	2GRVILbbNwMRTCh3FQq4X3C7vjmKTKVp5bjp8hynlKnkjO6w2sczpvnwESHe3Qe4UMaql76nW2x2/
	k42tTXKQfrBy0lTYhvFIrxIqu0/ZlLQ4CE49TDb6+RYTbhTf8LBolDBtnEkU5PRcZEiXEchKQMB25
	TqI9phIjvrn2+MF8n2IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Lma-00EUjL-4B; Thu, 07 Jul 2022 07:18:40 +0000
Received: from www381.your-server.de ([78.46.137.84])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Llc-00EU9R-51
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 07:17:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=metafoo.de;
	 s=default2002; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=n8PvFMQUUSfzGQ+gJzXclFTDPEAZYFvuaAtijT7/nJQ=; b=ODCWoAi7Kve1tOXlyruTEfgKdk
	91395hzSrra9MvNzbxrJPO8sqO5Xn8cN4X8bRokWOd+7VUEsykrzLasF2zhSEw3+XEDBo9gs+6Nzy
	CQ2iDlnVNyw5/VA5MdZ38ArgwEIQMmkusjvONA5DS5xYoJwVDUt6dZSD7WnWkqFClsPvnrycUw2oS
	ZFGONuWodzUUsD119U3WMrbTrD+kNHjADRo8vocgWmPJ4h0GjylIW366HbEn1/BWGr5CBU4JOBIPL
	Vo9xCjc21eMctfFww7hAW7/saTrZ/LGJosEbj9QBTBGoXTxWghE+zOvQ8zJ/xxYP/0RkzVRD0Xtah
	ARqbReoA==;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www381.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92.3)
	(envelope-from <lars@metafoo.de>)
	id 1o9LlS-0007JP-5N; Thu, 07 Jul 2022 09:17:30 +0200
Received: from [2001:a61:2a49:8301:9e5c:8eff:fe01:8578] (helo=lars-desktop.fritz.box)
	by sslproxy05.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <lars@metafoo.de>)
	id 1o9LlR-000PXX-VN; Thu, 07 Jul 2022 09:17:29 +0200
From: Lars-Peter Clausen <lars@metafoo.de>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Swapnil Jakhade <sjakhade@cadence.com>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Lars-Peter Clausen <lars@metafoo.de>
Subject: [PATCH 2/2] phy: cadence-torrent: Remove unused `regmap` field from state struct
Date: Thu,  7 Jul 2022 09:17:22 +0200
Message-Id: <20220707071722.44201-2-lars@metafoo.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220707071722.44201-1-lars@metafoo.de>
References: <20220707071722.44201-1-lars@metafoo.de>
MIME-Version: 1.0
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.103.6/26595/Wed Jul  6 09:53:23 2022)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_001740_259367_20D88266 
X-CRM114-Status: GOOD (  10.32  )
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

The driver state struct for the sierra PHY driver has a field named
`regmap` that is never referenced. Remove it since it is unused.

Not that there are separate fields of type `struct regmap` for the
individual sections of the device's register map. These other regmaps are
used and not affected by the patch.

Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
---
 drivers/phy/cadence/phy-cadence-torrent.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index 7c4b8050485f..f099053c583c 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -331,7 +331,6 @@ struct cdns_torrent_phy {
 	struct cdns_torrent_inst phys[MAX_NUM_LANES];
 	int nsubnodes;
 	const struct cdns_torrent_data *init_data;
-	struct regmap *regmap;
 	struct regmap *regmap_common_cdb;
 	struct regmap *regmap_phy_pcs_common_cdb;
 	struct regmap *regmap_phy_pma_common_cdb;
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

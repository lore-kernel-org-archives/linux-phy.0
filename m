Return-Path: <SRS0=wP85=II=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B93C433E6
	for <linux-phy@archiver.kernel.org>; Wed, 10 Mar 2021 15:55:18 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 391F064F4C
	for <linux-phy@archiver.kernel.org>; Wed, 10 Mar 2021 15:55:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 391F064F4C
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wGEyXgJguZ1t4L7TB+n6HJM+YUYOULYM9fcofPg/TPc=; b=eMK7T5W8ugRtMCEd72mOwXJEI
	SwETD0BVZnOiVKhAOTj/1zxgMmbS8n9cIHJG4q8ATMKsbJyB/Gymz927X3pEkGk8k1pyBMSzUJPmb
	nfvnNsWgbrMJ+Oe06P1+LEf4Ttr7TGi8vZNi0hfvXLbGcui8pNMVpRG1qi6G+C5Mg0LWAZ1/1KZGR
	nXXfaseiCjoab0YNPvyNW1ZhhsHQcReeEV2owwKApN5LXA3YDyZ1c1uB4iri5a1eqo9sIOKnpAdCS
	aHDHOJa+B/TLSOLxDM59rBoLkCrBZOCrVcf8pQEVIEAv+ePa/g8utwv+sqw4+JdFhEsrifuS1/Igr
	egw6DKPVw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lK1B6-0079gf-KJ; Wed, 10 Mar 2021 15:55:16 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lK1B3-0079g5-FG
 for linux-phy@lists.infradead.org; Wed, 10 Mar 2021 15:55:15 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12AFtANJ071321;
 Wed, 10 Mar 2021 09:55:10 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1615391710;
 bh=dm+U4X4EOZxEx+9CgGj+1LJA+tv3/55FfGG9lW8Ffdk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Zhb8WPS2KOTvRel1/RxPtFnx0IhqUkyODogfUFTVgvui80jLTCyKbqo6iHIP3PgC9
 cSBElsGYwd1/5Hg6Gw+vdLjCFVoFfuD2xU1UncrCXtIlnZeu6yql+sQQixx3r+8tWb
 Yn02EpzLR1aQIYR/48q6fjA+LR6QjZyVJKNWfIk4=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12AFtAYH029708
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 10 Mar 2021 09:55:10 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 10
 Mar 2021 09:55:10 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 10 Mar 2021 09:55:10 -0600
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12AFsq5l082613;
 Wed, 10 Mar 2021 09:55:07 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Swapnil Jakhade <sjakhade@cadence.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>, Lokesh Vutla
 <lokeshvutla@ti.com>, <linux-phy@lists.infradead.org>
Subject: [PATCH 4/4] phy: cadence-torrent: Explicitly request exclusive reset
 control
Date: Wed, 10 Mar 2021 21:24:45 +0530
Message-ID: <20210310155445.534-5-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210310155445.534-1-kishon@ti.com>
References: <20210310155445.534-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_155513_812194_6B9F0785 
X-CRM114-Status: GOOD (  10.07  )
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

No functional change. Since the reset controls obtained in
Torrent is exclusively used by the Torrent device, use
exclusive reset control request API calls.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/cadence/phy-cadence-torrent.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index 5ee1657f5a1c..ff8bb4b724c0 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -2264,7 +2264,7 @@ static int cdns_torrent_reset(struct cdns_torrent_phy *cdns_phy)
 		return PTR_ERR(cdns_phy->phy_rst);
 	}
 
-	cdns_phy->apb_rst = devm_reset_control_get_optional(dev, "torrent_apb");
+	cdns_phy->apb_rst = devm_reset_control_get_optional_exclusive(dev, "torrent_apb");
 	if (IS_ERR(cdns_phy->apb_rst)) {
 		dev_err(dev, "%s: failed to get apb reset\n",
 			dev->of_node->full_name);
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

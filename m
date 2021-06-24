Return-Path: <SRS0=UgvN=LS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D81FC49EAB
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 18:41:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EEA0961405
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 18:41:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EEA0961405
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/BAmZ2bUccVHVu/Zojy5tJTTRnvaE2SVmqoL6sEvWxk=; b=yNes8n7jPuLqNs
	WvNLdFlwTQDxVAbRIaG1g0Q9NrCFvjEQVnUo9EmJ4jgB65qLZl1I64vVrnuEPBUHXW27zQLv12ZIn
	ww8DiCIEhJlB4EWNJhysJk0AaRCSp3lkMmZVSx8nGKSaxrDqU+pq/mqx4/D7agsixYAmNLJKAO4SV
	7tzifPzU0Zrd8irRVn4k4kyPcLAIG0bsjPZ7HTLH32OLgzh70OxwXiX2Bt97Z3JY1NlCB0Ke3F1mP
	Kuk/Pmkff8KgIX2H1+6DSq26Ub/g6yICC3qJilt48Ogh+TRVj4bOO7bPWaZFl/8IrVOHW72NSswZJ
	snatepnXbtfrMffRfpPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwUI7-00FsgW-FI; Thu, 24 Jun 2021 18:41:31 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwUI4-00Fsdd-HR
 for linux-phy@lists.infradead.org; Thu, 24 Jun 2021 18:41:30 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15OIfDQ6074471;
 Thu, 24 Jun 2021 13:41:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1624560073;
 bh=PwhGT5b1kWmV4Ngw9Q8N5BJaBMf7WQHsRP6rwzdY8gc=;
 h=From:To:CC:Subject:Date;
 b=dK3xG2Dkj9pSbC9Gvs/+Dujrnyhy/LVhV+sqH8CVVySZt9MBpqOme6UmbQqLnVqjJ
 0wP1JD5vM/fqxa7U13i7yPDYvDMYYzeHP0SEuPkoZBv/M8z/gCtGngDWFsQibSZekz
 NDuO0LL7I/X2LDOLpzUFO90wYy11E2P4JhnUxmMU=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15OIfDaf107198
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 24 Jun 2021 13:41:13 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 24
 Jun 2021 13:41:13 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 24 Jun 2021 13:41:13 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15OIf9Hv041395;
 Thu, 24 Jun 2021 13:41:10 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Nikhil Devshatwar <nikhil.nd@ti.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Paul Kocialkowski
 <paul.kocialkowski@bootlin.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Kishon Vijay Abraham I
 <kishon@ti.com>, Peter Chen <peter.chen@nxp.com>, Pratyush Yadav
 <p.yadav@ti.com>,
 Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH v3 0/7] Rx mode support for Cadence DPHY
Date: Fri, 25 Jun 2021 00:11:01 +0530
Message-ID: <20210624184108.21312-1-p.yadav@ti.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_114128_701356_3459B43C 
X-CRM114-Status: GOOD (  12.63  )
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

Hi,

This series adds support for Rx mode on Cadence DPHY driver. It has been
split off from [0] to facilitate easier merging. I have still kept it as
v3 to maintain continuity with the previous patches. This series also
includes conversion to YAML binding.

Tested on TI's J721E with OV5640 sensor.

[0] https://patchwork.linuxtv.org/project/linux-media/list/?series=5526&state=%2A&archive=both

Changes in v3:
- Use a table to select the band.
- Use a table to poll the data lane ready bits.
- Multiply the DPHY HS clock rate by 2 to get the bit rate since the
  clock is DDR.
- Add Rob's R-by.

Changes in v2:
- Drop reg description.
- Add a description for each DPHY clock.
- Rename dphy@... to phy@... in example.
- Add Laurent's R-by.
- Re-order subject prefixes.
- Re-order subject prefixes.
- Add power-domain to the example.
- Add Laurent's R-by.
- Re-order subject prefixes.

Paul Kocialkowski (1):
  phy: Distinguish between Rx and Tx for MIPI D-PHY with submodes

Pratyush Yadav (6):
  phy: cdns-dphy: Prepare for Rx support
  phy: cdns-dphy: Allow setting mode
  phy: cdns-dphy: Add Rx support
  phy: dt-bindings: Convert Cadence DPHY binding to YAML
  phy: dt-bindings: cdns,dphy: make clocks optional
  phy: dt-bindings: cdns,dphy: add power-domains property

 .../devicetree/bindings/phy/cdns,dphy.txt     |  20 -
 .../devicetree/bindings/phy/cdns,dphy.yaml    |  54 +++
 drivers/phy/cadence/cdns-dphy.c               | 344 ++++++++++++++++--
 include/linux/phy/phy-mipi-dphy.h             |  13 +
 4 files changed, 375 insertions(+), 56 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.yaml

-- 
2.30.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

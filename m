Return-Path: <SRS0=GqE6=NL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DD7C4338F
	for <linux-phy@archiver.kernel.org>; Fri, 20 Aug 2021 19:04:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6515861102
	for <linux-phy@archiver.kernel.org>; Fri, 20 Aug 2021 19:04:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6515861102
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nRkKhkiC9Z7l2Vlg+QPutzGMGdnE7joJWm7lyKH+PYc=; b=asT9J6HKlGmhq/
	UKJuILwUGst6JInKNSzsvkL0T2PZdUpsrVIZq/Ya07IgLBfMlI408a0TTNO8W+E8n1S7UfxtDnSbM
	DFTDmfGPZ6H/7ddZdEZeDOBnahuY0gOQL0IpEBxMOJwg2xfKMtHQyTpOOzh6r0MT6Gy1craan0KZL
	WqAkT+iWUWHuErL2AzxDK1q758kyq98TOfbkZboJIYTcDcXrohyGsu5i42bv0ySf5Fu3OdQeTLCje
	w3cEsN8UjdPope4ARR9rs/He5Dz+TJBrvncoL+RQ2VprJZRtQAd4K2F0po9q+qIOBD+RQ6tyeegVv
	DdT3JKQpDpVy4UR6Ju0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mH9oD-00Bxj7-UU; Fri, 20 Aug 2021 19:04:05 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mH9o8-00BxhJ-Bg
 for linux-phy@lists.infradead.org; Fri, 20 Aug 2021 19:04:04 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 17KJ3p9I081608;
 Fri, 20 Aug 2021 14:03:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1629486231;
 bh=quRiQhXdk6WCGDxPbnZkmnARtCTeN8OCt02MgE+FDH4=;
 h=From:To:CC:Subject:Date;
 b=nTMIU5pEKssi9MXATtK5n9c5nJ5VktdOdQA6xRpuZN7i818X8kIRb7BCr/Lg/j2W0
 I/mH2TSZgmuUZgEvAmH81xODVUcQKFimBlgzaVGdHTLOpLzeaWgjqKhkOdnvO1hfwj
 j9lrPvWDC0hV2HNM5MVVUAgByIfC7KW0vIKvaVP4=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 17KJ3pDM022046
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 20 Aug 2021 14:03:51 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 20
 Aug 2021 14:03:51 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 20 Aug 2021 14:03:51 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 17KJ3lwW018479;
 Fri, 20 Aug 2021 14:03:47 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Nikhil Devshatwar <nikhil.nd@ti.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Kishon Vijay Abraham I <kishon@ti.com>, Peter
 Chen <peter.chen@nxp.com>, Pratyush Yadav <p.yadav@ti.com>, Rob Herring
 <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH v4 0/6] Rx mode support for Cadence DPHY
Date: Sat, 21 Aug 2021 00:33:40 +0530
Message-ID: <20210820190346.18550-1-p.yadav@ti.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210820_120400_565117_15953C59 
X-CRM114-Status: GOOD (  14.14  )
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
split off from [0] to facilitate easier merging. I have still kept the
version number to maintain continuity with the previous patches. This
series also includes conversion to YAML binding.

Tested on TI's J721E with OV5640 sensor.

[0] https://patchwork.linuxtv.org/project/linux-media/list/?series=5526&state=%2A&archive=both

Changes in v4:
- Instead of having both Rx and Tx modes in the same driver data, keep
  them separate since the op selection is based on compatible now. For
  that reason, the cdns_dphy_driver_data struct is no longer needed.
- Rename ref_dphy_ops to tx_ref_dphy_ops to clarify their purpose.
- Drop submode checks in validate() hook.
- Drop the submode parts. Use a different compatible for the Rx ops.
- Make bands and num_bands static.

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

Pratyush Yadav (6):
  phy: cdns-dphy: Prepare for Rx support
  phy: cdns-dphy: Add Rx support
  phy: dt-bindings: Convert Cadence DPHY binding to YAML
  phy: dt-bindings: cdns,dphy: make clocks optional
  phy: dt-bindings: cdns,dphy: add power-domains property
  phy: dt-bindings: cdns,dphy: add Rx DPHY compatible

 .../devicetree/bindings/phy/cdns,dphy.txt     |  20 --
 .../devicetree/bindings/phy/cdns,dphy.yaml    |  55 ++++
 drivers/phy/cadence/cdns-dphy.c               | 294 +++++++++++++++---
 3 files changed, 313 insertions(+), 56 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.yaml

--
2.30.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

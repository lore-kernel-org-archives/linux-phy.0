Return-Path: <SRS0=/D6Q=NY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CBE9C433F5
	for <linux-phy@archiver.kernel.org>; Thu,  2 Sep 2021 18:56:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E7AE360F11
	for <linux-phy@archiver.kernel.org>; Thu,  2 Sep 2021 18:56:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E7AE360F11
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EPsPkpuFEFpuWAi0i4EnH243Zzl5Ze2fvlxyv8wfTz0=; b=x9WfA0/7Q+Uai4
	fdy5xdkqyzZbjFiAer43PaT2/S/EamdqYRT7kZeYWXj6tLH3WXuQQ3QoKBVydPSwDIgYQDPfALxHs
	cThidFWhHKcAXCPHSEYDKLwOz3GfRiIUjcwWAMLfWKiG5KHrzI7nYEQ519+eehSE2sxjfJ/V1jP1y
	a81zk7v1Cz0VostwwbPFRBc4V94StkWbhpc9uJ2vDOmP1jVaWYV8/9HqfTZgAMChfzH8KDJHaYcy9
	a3oUswz6/KLFNlcPZcdY8+Zz1zIQ3ENhtChWpCflKqiH1WNX1ii2p+IqZyFzE32Np0ohywxd36EYA
	bGwdtwzWim+WKOm1t7EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLrsX-00AJdn-7u; Thu, 02 Sep 2021 18:56:01 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLrsU-00AJco-Ct
 for linux-phy@lists.infradead.org; Thu, 02 Sep 2021 18:56:00 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 182ItmCI116551;
 Thu, 2 Sep 2021 13:55:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1630608948;
 bh=y8LCb+YTT5nCF8UWI/R0EGK5b0c+FB4dHQffz0z42Qk=;
 h=From:To:CC:Subject:Date;
 b=vZwP79W3uiivn5yItQcYak/+rMIeV1GFwV5tQTBd4drIJR8fg6kmSrgV5AFwgbNHy
 aWxqt+SZC0uxXlATz9O/7fbLHm7JXhoKNrg95lXEbW6Ox162pNk18RfWpWjFR2wWcM
 F6T7lOimGrdrxOAXrx/G4XBGAvKX5NdQ4UmxPdmI=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 182Itm0L003409
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 2 Sep 2021 13:55:48 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Thu, 2
 Sep 2021 13:55:48 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Thu, 2 Sep 2021 13:55:48 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 182Itiao017156;
 Thu, 2 Sep 2021 13:55:44 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Nikhil Devshatwar <nikhil.nd@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Pratyush Yadav <p.yadav@ti.com>, Rob Herring <robh+dt@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>
Subject: [PATCH v5 0/6] Rx mode support for Cadence DPHY
Date: Fri, 3 Sep 2021 00:25:37 +0530
Message-ID: <20210902185543.18875-1-p.yadav@ti.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210902_115558_607683_223BF405 
X-CRM114-Status: GOOD (  17.89  )
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

Changes in v5:
- Based on Laurent's suggestion, add cdns_dphy_info which contains the
  phy_ops and cdns_dphy_tx_ops (renamed from cdns_dphy_ops). This lets us
  get rid of the phy ops wrappers.
- Move probe() and remove() into cdns_dphy_common_ops() since they can
  be used by both modes. Drop the check in power_on().
- Get the clocks in the tx ops probe to make sure they are mandatory for
  Tx mode but not for Rx mode.
- Use the new cdns_dphy_info to specify PHY ops.
- Re-order include in alphabetical order.
- Make bands const.
- Drop num_bands.
- Make i, lanes unsigned.
- Drop the maximum check in cdns_dphy_rx_get_band_ctrl(). Let the loop
  complete and return -EOPNOTSUPP when we reach the end.
- Drop the "rate < bands[i].min_rate" check since the bands are in
  ascending order.
- Move data_lane_ctrl to start of function and make it static const.
- Make clocks a required property based on the compatible.
- Use enum instead.

Changes in v4:
- Instead of having both Rx and Tx modes in the same driver data, keep
  them separate since the op selection is based on compatible now. For
  that reason, the cdns_dphy_driver_data struct is no longer needed.
- Rename ref_dphy_ops to tx_ref_dphy_ops to clarify their purpose.
- Drop submode checks in validate() hook.
- Drop the submode parts. Use a different compatible for the Rx ops.
- Make bands and num_bands static.
- Drop the submode patches. Use a different compatible for Rx mode DPHY
instead.

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
  phy: dt-bindings: cdns,dphy: make clocks optional for Rx mode
  phy: dt-bindings: cdns,dphy: add power-domains property
  phy: dt-bindings: cdns,dphy: add Rx DPHY compatible

 .../devicetree/bindings/phy/cdns,dphy.txt     |  20 -
 .../devicetree/bindings/phy/cdns,dphy.yaml    |  66 ++++
 drivers/phy/cadence/cdns-dphy.c               | 351 +++++++++++++++---
 3 files changed, 356 insertions(+), 81 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.yaml

-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

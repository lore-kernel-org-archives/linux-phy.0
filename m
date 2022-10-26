Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAC1FC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 26 Oct 2022 07:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DeGj1OT+3riPJcLFKrZOrP6W1DhwEQ29UbIh/st7rRQ=; b=F4RC4cJv9LAQXl
	ggyXJg+N81TN6/RhvdgGPhOxgK4FWcxF18cpcgoVRySifIBewZ6x/3UnG2lpgbxo49F4Zx4WSSzAe
	CZaaIpX06R2Z7H5HfBPjIFYEnsB3ox+Of5V9GwqnGV3h9Lc3zadqMYSdwwOZRVk7Nicji7yqHVHs5
	LTP6Wcf6kjcuApwK/sre0QhTNv5B4IIjcEGY+EXygNAkV2dWj6NZudL211IYgo6daQ127eFcWDdSA
	pYebowaxIeqpbzNzhx51HXhlnfOst9k5LkN/vgWRrEKHJtKQNKh2wCQcsLPYa8tDoPSGFfkk8WFfJ
	o+R8bFSQWxuYXANY39uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onb6y-008Qha-8x; Wed, 26 Oct 2022 07:46:04 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onb6d-008Qbi-VF; Wed, 26 Oct 2022 07:45:45 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29Q7jb16095916;
	Wed, 26 Oct 2022 02:45:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1666770338;
	bh=72Wp6K6btvwssLObTvZnh3Xf9VESzUOX8m3VxikOzuo=;
	h=From:To:CC:Subject:Date;
	b=iSxYsvX3kB9ZR28KwJ8Qvs1v94DxEjT4sZNR4EBJBMz6t48U3n69AB7h1eI+n1tVm
	 izg1iDbjys8YVwhqGwGJIidL5nwc9PIBf75CZCxl1f5kLF+QtpV6CBLpHlDnMRkxT1
	 ibl2FSlQze/CsH33eiH218oztQ5WFj/l5nM4V5IM=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29Q7jbRG083990
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 26 Oct 2022 02:45:37 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 26
 Oct 2022 02:45:37 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 26 Oct 2022 02:45:37 -0500
Received: from uda0492258.dhcp.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29Q7jXFj005631;
	Wed, 26 Oct 2022 02:45:34 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <robh+dt@kernel.org>, <lee@kernel.org>, <krzysztof.kozlowski@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <kishon@kernel.org>,
        <vkoul@kernel.org>, <dan.carpenter@oracle.com>, <rogerq@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <s-vadapalli@ti.com>
Subject: [PATCH v3 0/3] Add support to PHY GMII SEL for J721e CPSW9G QSGMII
Date: Wed, 26 Oct 2022 13:15:29 +0530
Message-ID: <20221026074532.109220-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_004544_208654_98CC698C 
X-CRM114-Status: GOOD (  12.40  )
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

Add compatible for J721e CPSW9G, which contains 8 external ports and 1
internal host port.

Update existing approach of using compatible to differentiate between
devices that support QSGMII mode and those that don't. The new
approach involves storing the number of qsgmii main ports for the device
in the num_qsgmii_main_ports member of the "struct phy_gmii_sel_soc_data".
This approach makes it scalable for newer devices.

=========
Changelog
=========
v2 -> v3:
1. Run 'make DT_CHECKER_FLAGS=-m dt_binding_check' and fix errors and
   warnings corresponding to the patch for:
   Documentation/devicetree/bindings/phy/ti,phy-gmii-sel
   with the latest dt-schema and yamllint.

v1 -> v2:
1. Drop all patches corresponding to SGMII mode. This is done since I do
   not have a method to test SGMII in the standard mode which uses an
   SGMII PHY. The previous series used SGMII in a fixed-link mode,
   bypassing the SGMII PHY. I will post the SGMII patches in a future
   series after testing them.
2. Update description for the property "ti,qsgmii-main-ports", to describe
   it in a unified way across the compatibles.
3. Add minItems, maxItems, and items at the top, where the property
   "ti,qsgmii-main-ports" is first defined. Modify them later
   appropriately, based on the compatible.
4. Update the method to fetch the property "ti,qsgmii-main-ports" from the
   device-tree, to make it scalable.
5. Use dev_err() when the value(s) provided in the device-tree for the
   property "ti,qsgmii-main-ports" is/are invalid.

v2:
https://lore.kernel.org/r/20221018084333.149790-1-s-vadapalli@ti.com/
v1:
https://lore.kernel.org/r/20220914093911.187764-1-s-vadapalli@ti.com/

Siddharth Vadapalli (3):
  dt-bindings: phy: ti: phy-gmii-sel: Add bindings for J721e
  phy: ti: gmii-sel: Update methods for fetching and using qsgmii main
    port
  phy: ti: gmii-sel: Add support for CPSW9G GMII SEL in J721e

 .../bindings/phy/ti,phy-gmii-sel.yaml         | 48 ++++++++++++++++---
 drivers/phy/ti/phy-gmii-sel.c                 | 42 +++++++++++++---
 2 files changed, 77 insertions(+), 13 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

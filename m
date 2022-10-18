Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E085C43217
	for <linux-phy@archiver.kernel.org>; Tue, 18 Oct 2022 08:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lVL6CbY5wr9mPHfMhv3uRRuKSaNzjBEUbJRybvoX+qs=; b=12ErwXNgsTHd18
	813FDsTpIiPE6QZQXXQDYNsln1ScocGkw0FKHDLh22Rt4tK8wN83EKdiNqmZLpNS8n4hM8OjiiEsU
	n6Kfc6qZ41j0y1NUnmhHMpreYesfbyV2JgE7bH+t3KJ9gyKr78pD692UrtEIWtfCnLC95kOr4fjJN
	Gn1O5FBn7q4H2mnDA54gkyi7IQhlJt/sHuzBefgJLmzck6dnhaON4JcMvR1WrZZ7M6b+yw4dKNnwx
	upoMF6376ITC2GTreW/nFqTtucXZLgRkpJKmD7rHQ4dar/OuQuV+tvx0VVN8WJyJl/kgFsR52N3ZG
	hKD8BlpkQ4dfVK0ARONQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okiCf-004R9o-Gp; Tue, 18 Oct 2022 08:44:01 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okiCT-004R5Z-Ng; Tue, 18 Oct 2022 08:43:51 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29I8hbZ3040046;
	Tue, 18 Oct 2022 03:43:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1666082617;
	bh=QmDZI3TBEjPeKNZilh+9aFh3Fur9k+LaiSQR5pUzem8=;
	h=From:To:CC:Subject:Date;
	b=r/9k2rtbuN3htvghYmuj8nXP4urgbY4jvhXNaktKO3OG21ova2uWLHMDeu1p9l8q4
	 WrqcDMcJ8rEjsyv+KwhFpLm/3taZDC85pCpuieH/1kyKkq129mEYS9bmsqdhsrrXv6
	 Y59TBDTEsfkIfiowWzpG6jBIFzrX0qzz/8gzBe7E=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29I8hbnf022532
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 18 Oct 2022 03:43:37 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Tue, 18
 Oct 2022 03:43:37 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Tue, 18 Oct 2022 03:43:37 -0500
Received: from uda0492258.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29I8hXCP076871;
	Tue, 18 Oct 2022 03:43:34 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <robh+dt@kernel.org>, <lee@kernel.org>, <krzysztof.kozlowski@linaro.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <kishon@kernel.org>,
        <vkoul@kernel.org>, <dan.carpenter@oracle.com>, <rogerq@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <s-vadapalli@ti.com>
Subject: [PATCH v2 0/3] Add support to PHY GMII SEL for J721e CPSW9G QSGMII
Date: Tue, 18 Oct 2022 14:13:30 +0530
Message-ID: <20221018084333.149790-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_014349_883184_0AEC68A3 
X-CRM114-Status: GOOD (  11.18  )
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

v1:
https://lore.kernel.org/r/20220914093911.187764-1-s-vadapalli@ti.com/

Siddharth Vadapalli (3):
  dt-bindings: phy: ti: phy-gmii-sel: Add bindings for J721e
  phy: ti: gmii-sel: Update methods for fetching and using qsgmii main
    port
  phy: ti: gmii-sel: Add support for CPSW9G GMII SEL in J721e

 .../bindings/phy/ti,phy-gmii-sel.yaml         | 48 +++++++++++++++----
 drivers/phy/ti/phy-gmii-sel.c                 | 42 +++++++++++++---
 2 files changed, 75 insertions(+), 15 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

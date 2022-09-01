Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4C7CECAAD3
	for <linux-phy@archiver.kernel.org>; Thu,  1 Sep 2022 08:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TC4lKhSuA0QpG/y1FSX5DRT78Qoe+o4ciCAfc/ntwVY=; b=IeDWSlsJp6tIrS
	4tfjO4vsE88pF82jlLWDdH7eZQa9jfPJjxCq9Qqng8b6j7okIlUbsYrZeeyF9RtP2l5/g1XIWQ0bU
	6smW5e/1AYYfsTMzCanW1TmN9rfPHrChvizsxLzBKS+bCmDv/4NBbyQi1gOlN89eOtEnVNjohj4R/
	Mz0TZtC8KzMm24/uH9eSA/UqBeOd8CwdVf5C9wcb5o2vLa2kGt2wRr2NA6LXFCuKHCptc85EBpy8T
	1HrjT8tPpmQjwgxaLBaeAZXyAWLFJjdO9PS/3DjMgukZGN74llcFn+PrtjAyztGYegcvVPs6XK18b
	4FmpqtXIY43hwNorHIRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTfyp-00Ag29-Dy; Thu, 01 Sep 2022 08:55:19 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTfym-00Ag1V-EI
	for linux-phy@lists.infradead.org; Thu, 01 Sep 2022 08:55:18 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2818tCgH071394;
	Thu, 1 Sep 2022 03:55:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1662022512;
	bh=Rp7Er2+2VSUffoa8YeSJqxXCd2HQa8OFaBesg8+O1Oo=;
	h=From:To:CC:Subject:Date;
	b=JwfIFzJiJbZWuUiGc+oVTqrs3QFjvyvNco758Hjuv+anedDgmcv7RSQalqT6gT4+y
	 vbwt72WJzuQKuVZYJKDUlLceElNyxVoYx9sf8G3NZ1O9nZ3gN4/FN86iXIrj5/Ac/H
	 A3AY8zL8P6/YU8paOY/MU3lMSUlYHMD3slZ6aq50=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2818tCIM118507
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 1 Sep 2022 03:55:12 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Thu, 1 Sep
 2022 03:55:11 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Thu, 1 Sep 2022 03:55:11 -0500
Received: from uda0492258.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2818t7Ta061466;
	Thu, 1 Sep 2022 03:55:08 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <robh+dt@kernel.org>, <lee.jones@linaro.org>,
        <krzysztof.kozlowski@linaro.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <kishon@ti.com>, <vkoul@kernel.org>, <dan.carpenter@oracle.com>,
        <grygorii.strashko@ti.com>, <rogerq@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <s-vadapalli@ti.com>
Subject: [PATCH v4 0/2] Add support for QSGMII mode
Date: Thu, 1 Sep 2022 14:25:04 +0530
Message-ID: <20220901085506.138633-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_015516_608730_7E8A830B 
X-CRM114-Status: GOOD (  10.18  )
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

Add compatible for J7200 CPSW5G.

Add support for QSGMII mode in phy-gmii-sel driver for CPSW5G in J7200.

Change log:

v3 -> v4:
1. Update $ref to /schemas/phy/phy-provider.yaml in
   Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml.
2. Update commit message for the "phy: ti: gmii-sel: Add support for
   CPSW5G GMII SEL in J7200" patch, describing the reason for defining the
   property "ti,qsgmii-main-ports" as an array.
3. Add a check in drivers/phy/ti/phy-gmii-sel.c to ensure that the value
   of the variable "main_ports" is within bounds. If the property
   "ti,qsgmii-main-ports" is either not mentioned in the devicetree or the
   value of the property is out of bounds, in both these cases,
   "main_ports" defaults to 1.
4. Use the function "of_property_read_u32()" instead of the function
   "of_property_read_u32_array()" in drivers/phy/ti/phy-gmii-sel.c.

v2 -> v3:
1. Add $ref to "phy@[0-9a-f]+$" pattern property in
   Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml.
2. Restrict the optional ti,qsgmii-main-ports property to
   ti,j7200-cpsw5g-phy-gmii-sel property by adding an else statement and
   disallowing it for other compatibles.
3. Move the "items" constraint for the ti,qsgmii-main-ports property to
   the place the property is defined.

v1 -> v2:
1. Rename ti,enet-ctrl-qsgmii as ti,qsgmii-main-ports.
2. Change ti,qsgmii-main-ports property from bitmask to integer.
3. Update commit message with property name as ti,qsgmii-main-ports.

v3: https://lore.kernel.org/r/20220822065631.27933-1-s-vadapalli@ti.com/
v2: https://lore.kernel.org/r/20220816055848.111482-1-s-vadapalli@ti.com/
v1: https://lore.kernel.org/r/20220531111221.22963-1-s-vadapalli@ti.com/


Siddharth Vadapalli (2):
  dt-bindings: phy: ti: phy-gmii-sel: Add bindings for J7200
  phy: ti: gmii-sel: Add support for CPSW5G GMII SEL in J7200

 .../mfd/ti,j721e-system-controller.yaml       |  6 +++
 .../bindings/phy/ti,phy-gmii-sel.yaml         | 30 +++++++++++-
 drivers/phy/ti/phy-gmii-sel.c                 | 47 +++++++++++++++++--
 3 files changed, 79 insertions(+), 4 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

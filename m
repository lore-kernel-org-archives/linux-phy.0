Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B5E5ECAAD5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Sep 2022 08:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qgHOl6QGz5O7A8Iwhr5H3A+MnFEHD36lPXyW7ELDWso=; b=1WFpwcmDsfrOLa
	VqZrfFhKHy77u2nIi2sYEExcT2aGWSBKMF33j9gecAz0aW3gQhdZqY00zk5o29da7abVX8ejJIOAo
	yM78DFFQAodfMswEBkwy8xKke19OIqmbJuE7RLTwelW7KWj0x7OUsA7ilu1x4TtVsSIeFy3MvoRt3
	t9L6kNd2aJYb6pCJK7z62XShLrNGuBKjm4libPnHiv0lbyqJd4WcrgeNowM35KrIOP+IsvupH12CF
	5+IMBdF9KM5y61Ao75P2mU2tDycWmif8FOewPnNtpwldrifgxpIaMrMIBuJVO/Tk7JVvAkvzk1mPM
	QrN0+o0FhU998ylv7D0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfHQ-0082pw-DU; Mon, 12 Sep 2022 08:59:00 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfFh-0081qh-SH; Mon, 12 Sep 2022 08:57:20 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 28C8utVu009416;
	Mon, 12 Sep 2022 03:56:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1662973015;
	bh=sRvNlBh/Ss9x2rZ28t0BBU8aqg7AeYRUVbKpiLO9SGY=;
	h=From:To:CC:Subject:Date;
	b=oEOhWi7mwHVhN5SzOVGqyKqfb4/6G7BggJGPNeb2MXz/WaLD74CgkPCzPrjmSCMZF
	 LEACfUC03ZwiLK0xP1ppai7mVglbyRdjN0AZLCeLw8ukqOdwyndQJMEdPlEVESLhoJ
	 9IwJgeRdT+FZO8s2zE6xDy+S/l1jZ3WkDmftWwPE=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 28C8utm7015771
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 12 Sep 2022 03:56:55 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Mon, 12
 Sep 2022 03:56:55 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Mon, 12 Sep 2022 03:56:55 -0500
Received: from uda0492258.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 28C8up6u104303;
	Mon, 12 Sep 2022 03:56:51 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <robh+dt@kernel.org>, <lee.jones@linaro.org>,
        <krzysztof.kozlowski@linaro.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <kishon@ti.com>, <vkoul@kernel.org>, <dan.carpenter@oracle.com>,
        <grygorii.strashko@ti.com>, <rogerq@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <s-vadapalli@ti.com>
Subject: [PATCH v5 0/3] Add support for QSGMII mode
Date: Mon, 12 Sep 2022 14:26:47 +0530
Message-ID: <20220912085650.83263-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_015714_223347_F1CE007B 
X-CRM114-Status: GOOD (  13.24  )
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

v4 -> v5:
1. Undo cleanup changes in the example in:
   Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml, moving it
   to a separate patch in the same series. The cleanup patch is the first
   patch in this series, with the other patches from previous versions
   following it in the same order.
2. Update $ref to "/schemas/phy/ti,phy-gmii-sel.yaml#" in:
   Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml.
3. Update description for the "phy@[0-9a-f]+$" pattern property.
4. Add blank lines in between IF/THEN statements in:
   Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml.
5. Update the IF/THEN statement corresponding to the property
   "ti,qsgmii-main-ports", disallowing the property for all compatibles
   except "ti,j7200-cpsw5g-phy-gmii-sel" in:
   Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml.
6. Move "maxItems: 1" to the top where "ti,qsgmii-main-ports" property is
   first defined, in:
   Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml.

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

v4: https://lore.kernel.org/r/20220901085506.138633-1-s-vadapalli@ti.com/
v3: https://lore.kernel.org/r/20220822065631.27933-1-s-vadapalli@ti.com/
v2: https://lore.kernel.org/r/20220816055848.111482-1-s-vadapalli@ti.com/
v1: https://lore.kernel.org/r/20220531111221.22963-1-s-vadapalli@ti.com/

Siddharth Vadapalli (3):
  dt-bindings: phy: ti: phy-gmii-sel: Cleanup example
  dt-bindings: phy: ti: phy-gmii-sel: Add bindings for J7200
  phy: ti: gmii-sel: Add support for CPSW5G GMII SEL in J7200

 .../mfd/ti,j721e-system-controller.yaml       |  6 +++
 .../bindings/phy/ti,phy-gmii-sel.yaml         | 27 ++++++++++-
 drivers/phy/ti/phy-gmii-sel.c                 | 47 +++++++++++++++++--
 3 files changed, 76 insertions(+), 4 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17FE9C61DA4
	for <linux-phy@archiver.kernel.org>; Wed, 15 Mar 2023 09:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=03JeToVF08SPRYdurDNAAwWBxoU47gRF8WF7n7DMkkk=; b=fH5zo1ci/i9Wxl
	UBk7FtSQTARyaNn4RAFDPPRo4CuuebIiPuuCA6uAa/bq3uKVBAddBZz8ZrTtsjfnqmCQjYRVJBSFT
	SrSD6qBPbs15NUPEBwzuf/Kkc/dzsOYgjWweFAmTVx/DqHSvXe1IZK/zhEpSH+MuOt5P4bRRsXtnd
	12PA05OdVhlTGwoauDZ6Lc64SHf2V/Xv/i9Fd5jvFCfkQfgRQd+chlcVrMiHMm0R+zm0JEqV4nPU+
	pAEdVsU/OzN2RWCmXSSPRWBgKwXwHUayp1LPi4g8NFAox/gWsbQ6ZyVbkPN4n069G56RnjIM74BB2
	EbCY5XhTy9PNHtjm67gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcNMt-00Cvjb-1p;
	Wed, 15 Mar 2023 09:24:23 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcNMp-00Cvid-04;
	Wed, 15 Mar 2023 09:24:20 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 32F9OD5V076003;
	Wed, 15 Mar 2023 04:24:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1678872253;
	bh=kN5HfLaSDZw2gaUqS4ucdoReUGJEGmout9fy809fv6o=;
	h=From:To:CC:Subject:Date;
	b=b3BX8snHa1faIoUo8QBr+GbwARRcAahOJ9P4DV4DiwdUsJ/l7ZxJn3kw8xwcz4jrw
	 aCg22h/UgxGCNy0RWCHo9sBSTfBY3/EROcesdcbUwoaJjnVvfAUOvir8PLFC5kTO0j
	 QfixD2+hM7+FPgzzOdzZBWN9/q+65w0xe7UphR+Y=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 32F9ODAj022902
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 15 Mar 2023 04:24:13 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Wed, 15
 Mar 2023 04:24:12 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Wed, 15 Mar 2023 04:24:12 -0500
Received: from uda0492258.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 32F9O9oi071738;
	Wed, 15 Mar 2023 04:24:09 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski@linaro.org>, <krzysztof.kozlowski+dt@linaro.org>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <srk@ti.com>, <s-vadapalli@ti.com>
Subject: [PATCH] dt-bindings: phy: ti: phy-gmii-sel: Add support for J784S4 CPSW9G
Date: Wed, 15 Mar 2023 14:54:08 +0530
Message-ID: <20230315092408.1722114-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_022419_138502_A1C00B18 
X-CRM114-Status: UNSURE (   8.64  )
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

The CPSW9G instance of CPSW Ethernet Switch on TI's J784S4 SoC supports
additional PHY modes like QSGMII. Add a compatible for it.

Enable the use of "ti,qsgmii-main-ports" property for J784S4 CPSW9G.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---
 Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
index 6d46f57fa1b4..3f2c5e2a11d5 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
@@ -55,6 +55,7 @@ properties:
       - ti,am654-phy-gmii-sel
       - ti,j7200-cpsw5g-phy-gmii-sel
       - ti,j721e-cpsw9g-phy-gmii-sel
+      - ti,j784s4-cpsw9g-phy-gmii-sel
 
   reg:
     maxItems: 1
@@ -87,6 +88,7 @@ allOf:
               - ti,am654-phy-gmii-sel
               - ti,j7200-cpsw5g-phy-gmii-sel
               - ti,j721e-cpsw9g-phy-gmii-sel
+              - ti,j784s4-cpsw9g-phy-gmii-sel
     then:
       properties:
         '#phy-cells':
@@ -113,6 +115,7 @@ allOf:
           contains:
             enum:
               - ti,j721e-cpsw9g-phy-gmii-sel
+              - ti,j784s4-cpsw9g-phy-gmii-sel
     then:
       properties:
         ti,qsgmii-main-ports:
@@ -130,6 +133,7 @@ allOf:
               enum:
                 - ti,j7200-cpsw5g-phy-gmii-sel
                 - ti,j721e-cpsw9g-phy-gmii-sel
+                - ti,j784s4-cpsw9g-phy-gmii-sel
     then:
       properties:
         ti,qsgmii-main-ports: false
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

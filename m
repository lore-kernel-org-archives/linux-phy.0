Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DB74CFD31C
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 10:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mcH0SrzN8UFYqbTRqRxuljz1IKevhvVDHLTAXe5xknU=; b=cm9uFaETM+mdjX
	/tD5yanWcAvrofBSkuftJccGLs539Fd9Rbw1cxhQtNnOCoXPh0yygXv+EVBZqyoWbYXC/OapXa3Uo
	3MRKN7ZIjjGSQ7zVo5lBSUltw13/p2Osfr/Uxga04QFBUlEPAJTwUYDflLMm/35kA4UoCYvxUzbCC
	36eF9OSpdRCQIwnpPPsH+RFO6z6vILcJB0FvQJUvemW88MuGB265B/4r17HGcrH54+k3/T8vfLqmX
	BjncaUOAJX9IrEZcug6mv8WnrlWf94HRMCqkDFK9oiNk3lE8GCwcUyCuGjjie8WPJfWRQf0BZguwY
	GT2OVSjTwtv0lgHsgk9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNUGS-0000000BTj1-3nyB;
	Mon, 24 Nov 2025 10:57:48 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNUGQ-0000000BTgM-31KC
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 10:57:48 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20251124105743epoutp02c51c7c8ed63e6ac4fc7181422dfaf9eb~67Civ8V8O1000310003epoutp02b
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:57:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20251124105743epoutp02c51c7c8ed63e6ac4fc7181422dfaf9eb~67Civ8V8O1000310003epoutp02b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1763981863;
	bh=kk9HmVPFpQ2R/aJFNdexBjgNEdJJyrkVPPQMrQyMok4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aTvsO4Z+inK4hm4+1fN7J3epttkuHNjV/AWEJslYzORL1P+eRMBAyPgGF2wVQ2QI4
	 B1ItGqGF9l3eV9h4d014B1YYzPLYhUXzTo/kS02jocaYygSAwlEB/5LZ65Cf06eTKe
	 ynD9dQrGpBG+tuTNcCEcJ/TqoXOnFXT4/ejk8hYk=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20251124105742epcas5p16b628f80e4675021f93ff508770ffa89~67CiJvhhP2894728947epcas5p1h;
	Mon, 24 Nov 2025 10:57:42 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.95]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4dFN854ynNz6B9m7; Mon, 24 Nov
	2025 10:57:41 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20251124105741epcas5p2f5f2e2d355271f6b212e266d03828890~67Cgi2uco1723117231epcas5p2d;
	Mon, 24 Nov 2025 10:57:41 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20251124105737epsmtip2ab736bdf3da7a14a091e8812461f2760~67CdcLtZb1716317163epsmtip2J;
	Mon, 24 Nov 2025 10:57:37 +0000 (GMT)
From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
	andre.draszik@linaro.org, peter.griffin@linaro.org, kauschluss@disroot.org,
	johan@kernel.org, ivo.ivanov.ivanov1@gmail.com, m.szyprowski@samsung.com,
	s.nawrocki@samsung.com, pritam.sutar@samsung.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com,
	dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com,
	selvarasu.g@samsung.com, Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>
Subject: [PATCH v10 5/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 combo ssphy
Date: Mon, 24 Nov 2025 16:34:52 +0530
Message-Id: <20251124110453.2887437-6-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251124110453.2887437-1-pritam.sutar@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20251124105741epcas5p2f5f2e2d355271f6b212e266d03828890
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20251124105741epcas5p2f5f2e2d355271f6b212e266d03828890
References: <20251124110453.2887437-1-pritam.sutar@samsung.com>
	<CGME20251124105741epcas5p2f5f2e2d355271f6b212e266d03828890@epcas5p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_025747_079176_984D0779 
X-CRM114-Status: GOOD (  10.19  )
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

The USBDRD31 5nm controller consists of Synopsys USB20 femptoPhy and
USB31 SSP+ combophy. Document support for the USB31 SSP+ phy found on
combophy of the ExynosAutov920 SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 .../bindings/phy/samsung,usb3-drd-phy.yaml     | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index 15e75b0f66f1..2f457f8b13e8 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -34,6 +34,7 @@ properties:
       - samsung,exynos7870-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
       - samsung,exynos990-usbdrd-phy
+      - samsung,exynosautov920-usb31drd-combo-ssphy
       - samsung,exynosautov920-usbdrd-combo-hsphy
       - samsung,exynosautov920-usbdrd-phy
 
@@ -232,6 +233,7 @@ allOf:
               - samsung,exynos7870-usbdrd-phy
               - samsung,exynos850-usbdrd-phy
               - samsung,exynos990-usbdrd-phy
+              - samsung,exynosautov920-usb31drd-combo-ssphy
               - samsung,exynosautov920-usbdrd-combo-hsphy
               - samsung,exynosautov920-usbdrd-phy
     then:
@@ -256,18 +258,32 @@ allOf:
         compatible:
           contains:
             enum:
+              - samsung,exynosautov920-usb31drd-combo-ssphy
               - samsung,exynosautov920-usbdrd-combo-hsphy
               - samsung,exynosautov920-usbdrd-phy
     then:
       required:
         - dvdd-supply
         - vdd18-supply
-        - vdd33-supply
 
     else:
       properties:
         dvdd-supply: false
         vdd18-supply: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynosautov920-usbdrd-combo-hsphy
+              - samsung,exynosautov920-usbdrd-phy
+    then:
+      required:
+        - vdd33-supply
+
+    else:
+      properties:
         vdd33-supply: false
 
 unevaluatedProperties: false
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

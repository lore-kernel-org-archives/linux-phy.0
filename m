Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCB2FCFD317
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 10:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QjsDH75wYe+LneNAkNvmWer8jWyUw3dfAnH2kqOvD1E=; b=A9c2vcjgj1AHTS
	NjXG9cBN1xjIXpYL8f5rzmlkBnqJaGdcdDifrnMT3eLT2jt4IyXEv3v46DrsEZ1OJSus7rGdV5P1R
	iNd7Kh06GxRTPe7UXnRlQPxyXI2jiYtfiLrEaQBc25bxGZh5g3WxeudYkDfYJ1DLralHhM2hxWzS2
	LAzHRf7u7hsrB/dUKTM00G6d90kWMMh0unFM4AjV2SdiR2DZgfZaRsQldoN9AT3AHBQLVzCd5zuaw
	s1hk58m0PG7/EHQrTKM58DeVC7aC+liO0XI2dhA6IC6Tsnft53Mj1pccrvsaGKQuPoj7oYY83ARoa
	IvNjAzZd097fRyzPDcIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNUFu-0000000BTRf-2V8N;
	Mon, 24 Nov 2025 10:57:14 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNUFr-0000000BTP3-21Nb
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 10:57:13 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20251124105704epoutp01b6beb474abeb425b740b7da703f25b65~67B_T1PF_0859908599epoutp01H
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:57:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20251124105704epoutp01b6beb474abeb425b740b7da703f25b65~67B_T1PF_0859908599epoutp01H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1763981824;
	bh=4sCKt2E9YMfJjGTwvYUSazk5kqNn9ep/uzdp0bi6eB4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mX+0U8ruA1rWgPYAikPgs8wG2W4zdsou4wjJ8M4s4cq1ZnLnQ5gPdsyzl6Zhlz42A
	 swNEccAINzLaW5er6W1xrIJQ9a50aBkz4rLhfJHiuG8jx14IUbQaQ7D5b8O8OWQFxQ
	 T7Ki3C5wrCRn+xZp+6cVeIPnqukXurDKxvp9GlcU=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20251124105703epcas5p3dcd874f370ec4e5b9523f9ff0a4bd346~67B9zDTwn3134631346epcas5p3Y;
	Mon, 24 Nov 2025 10:57:03 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.87]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4dFN7L6RX5z6B9mB; Mon, 24 Nov
	2025 10:57:02 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20251124105701epcas5p3dec65b2086af1e2a4aab0ca3abe5163b~67B70jWTM1243512435epcas5p3v;
	Mon, 24 Nov 2025 10:57:01 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20251124105652epsmtip2af3a5c823a8fb372eb722879572e64b0~67BzOzfZ11580115801epsmtip2b;
	Mon, 24 Nov 2025 10:56:52 +0000 (GMT)
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
Subject: [PATCH v10 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Date: Mon, 24 Nov 2025 16:34:48 +0530
Message-Id: <20251124110453.2887437-2-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251124110453.2887437-1-pritam.sutar@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20251124105701epcas5p3dec65b2086af1e2a4aab0ca3abe5163b
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20251124105701epcas5p3dec65b2086af1e2a4aab0ca3abe5163b
References: <20251124110453.2887437-1-pritam.sutar@samsung.com>
	<CGME20251124105701epcas5p3dec65b2086af1e2a4aab0ca3abe5163b@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_025711_826647_FBEDDDC8 
X-CRM114-Status: GOOD (  13.48  )
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

Document support for the USB20 phy found on the ExynosAutov920 SoC. The
USB20 phy is functionally identical to that on the Exynos850 SoC, so no
driver changes are needed to support this phy. However, add a dedicated
compatible string for USB20 phy found in this SoC.

This phy needs 0.75v, 0.18v and 3.3v supplies for its internal
functionally. Power Supply's names are as per phy's User Data-Book.
These names, (dvdd, vdd18 and vdd33), are considered  for 0.75v, 1.8v
and 3.3v respectively.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 .../bindings/phy/samsung,usb3-drd-phy.yaml    | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index ea1135c91fb7..1e9dc21b585a 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -34,6 +34,7 @@ properties:
       - samsung,exynos7870-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
       - samsung,exynos990-usbdrd-phy
+      - samsung,exynosautov920-usbdrd-phy
 
   clocks:
     minItems: 1
@@ -110,6 +111,15 @@ properties:
   vddh-usbdp-supply:
     description: VDDh power supply for the USB DP phy.
 
+  dvdd-supply:
+    description: 0.75V power supply for the USB phy.
+
+  vdd18-supply:
+    description: 1.8V power supply for the USB phy.
+
+  vdd33-supply:
+    description: 3.3V power supply for the USB phy.
+
 required:
   - compatible
   - clocks
@@ -221,6 +231,7 @@ allOf:
               - samsung,exynos7870-usbdrd-phy
               - samsung,exynos850-usbdrd-phy
               - samsung,exynos990-usbdrd-phy
+              - samsung,exynosautov920-usbdrd-phy
     then:
       properties:
         clocks:
@@ -238,6 +249,24 @@ allOf:
         reg-names:
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynosautov920-usbdrd-phy
+    then:
+      required:
+        - dvdd-supply
+        - vdd18-supply
+        - vdd33-supply
+
+    else:
+      properties:
+        dvdd-supply: false
+        vdd18-supply: false
+        vdd33-supply: false
+
 unevaluatedProperties: false
 
 examples:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

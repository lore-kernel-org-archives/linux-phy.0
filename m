Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5E4DC87FD1
	for <linux-phy@archiver.kernel.org>; Tue,  5 Aug 2025 17:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X7vGQrZNociAHS8uxpa4z7wAAP5zo9xcTcig4wRnQy8=; b=D9aiE9yC76H6+r
	+VSFBTutZWVfsUeZBgYJHnltil3MklFkRJZv9pkxZo4jCMoB/EIb3XLoYLKmsMCfklWEU6nP6OlQp
	gDrBj7VWfj3Gd3cyi51hMllYI8yMNgEPfhRAzICd02X194syKvbsxFkYsCABZUJwScWuJI9BQBfpz
	K7AmkUgfpmWukHyqwnSP+tN2WQIwSQAFJf/IcC4o7YoSmmXGzfW6YJA2BMpM6vYWdW1q7BhBpNNQV
	Z3RD6xRVROAkX3lHDXZxL2Tbc3qguGMWf1ex3285DNNoRzrORzsJtPzVDUSoPw/E2xaEJVDCO4KJ5
	KD30PS45ten/OWsym71g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujLrQ-0000000DToS-2I5Y;
	Tue, 05 Aug 2025 17:54:04 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujLMl-0000000DPxS-43pd
	for linux-phy@lists.infradead.org;
	Tue, 05 Aug 2025 17:22:25 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20250805172216epoutp0275000ef640054e1e4ac0f7bd5dac31c1~Y7rnBRaFW2052720527epoutp02n
	for <linux-phy@lists.infradead.org>; Tue,  5 Aug 2025 17:22:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20250805172216epoutp0275000ef640054e1e4ac0f7bd5dac31c1~Y7rnBRaFW2052720527epoutp02n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1754414536;
	bh=l4q8MX8CATXRHpiVO/WpCJL4YnEHmgp04TW4vRLD6OA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jkKZnSHCS3miJo3fVWT6c0tvq+fgyw0KNf9UxnJ7gtpDFY1rP3xMFofqweRddHqBV
	 isLBY3JH10yaMkV1kdVw8dKg/ihIo8WclRCbrtjqvyIbnwfF57sCPe2Y3rJupY3ufK
	 bQK5ai8FIEkdLh1yCvoCqz/Qai8QWnMciX22jhFQ=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250805172215epcas5p1f78948ec4bdeb49df47afecdd5c644ba~Y7rmQN8Ds3014130141epcas5p1G;
	Tue,  5 Aug 2025 17:22:15 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.92]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4bxKx24k5nz3hhT4; Tue,  5 Aug
	2025 17:22:14 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20250805114306epcas5p37782c02ae0ddc6b77094786c90af247a~Y3DfD36Zq1521815218epcas5p3d;
	Tue,  5 Aug 2025 11:43:06 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250805114303epsmtip1cc4d64568a5ff83276b57953e8948eed~Y3Db8IMhR1482414824epsmtip1B;
	Tue,  5 Aug 2025 11:43:03 +0000 (GMT)
From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
	andre.draszik@linaro.org, peter.griffin@linaro.org, kauschluss@disroot.org,
	ivo.ivanov.ivanov1@gmail.com, igor.belwon@mentallysanemainliners.org,
	m.szyprowski@samsung.com, s.nawrocki@samsung.com, pritam.sutar@samsung.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com,
	dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com,
	selvarasu.g@samsung.com
Subject: [PATCH v5 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Date: Tue,  5 Aug 2025 17:22:11 +0530
Message-Id: <20250805115216.3798121-2-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250805115216.3798121-1-pritam.sutar@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20250805114306epcas5p37782c02ae0ddc6b77094786c90af247a
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250805114306epcas5p37782c02ae0ddc6b77094786c90af247a
References: <20250805115216.3798121-1-pritam.sutar@samsung.com>
	<CGME20250805114306epcas5p37782c02ae0ddc6b77094786c90af247a@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_102224_350921_D205A4B5 
X-CRM114-Status: UNSURE (   9.20  )
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

This SoC has USB2.0 phy and supports only UTMI+ interface. This phy
requires two clocks, named as "phy" and "ref". The required supplies for
this phy are vdd075_usb20(0.75v), vdd18_usb20(1.8v), vdd33_usb20(3.3v).

Add a dedicated compatible string for USB HS phy found in this SoC.

Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 .../bindings/phy/samsung,usb3-drd-phy.yaml    | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index e906403208c0..1932a2272ef9 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -34,6 +34,7 @@ properties:
       - samsung,exynos7870-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
       - samsung,exynos990-usbdrd-phy
+      - samsung,exynosautov920-usbdrd-phy
 
   clocks:
     minItems: 1
@@ -110,6 +111,12 @@ properties:
   vddh-usbdp-supply:
     description: VDDh power supply for the USB DP phy.
 
+  dvdd075-usb20-supply:
+    description: 0.75V power supply for the USB 2.0 phy.
+
+  vdd18-usb20-supply:
+    description: 1.8V power supply for the USB 2.0 phy.
+
 required:
   - compatible
   - clocks
@@ -219,6 +226,7 @@ allOf:
               - samsung,exynos7870-usbdrd-phy
               - samsung,exynos850-usbdrd-phy
               - samsung,exynos990-usbdrd-phy
+              - samsung,exynosautov920-usbdrd-phy
     then:
       properties:
         clocks:
@@ -235,6 +243,17 @@ allOf:
 
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
+        - dvdd075-usb20-supply
+        - vdd18-usb20-supply
+        - vdd33-usb20-supply
 
 unevaluatedProperties: false
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

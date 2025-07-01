Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CB21C7EE30
	for <linux-phy@archiver.kernel.org>; Tue,  1 Jul 2025 14:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T32PjOfRP/55N/jdvFVZIN3vDO9TFAk61kcpIrrBNJs=; b=ljo7uYh6uKxF+8
	N6Rt/teavLmQMXc++XzYKR2G7pbQ3lq7xS8C8IaXNtDOeLzrAfXtLgo8WW4h+qSzmXXnRIxSQpUzU
	qfVCnuiZiIU/kjW16v3qxLKnueZUmWnc/sz+bzh1mte1F/tjEc+bVT8tzczkf0CwQXEdqZF6L2h+1
	Y0ABHpQsuuTkfIR9xuyxNuoq663PQ1txoopwLfq9ZsdJtIW/85R0gYBMSuWjjb1x1roiG2n19/+nW
	IXtwrk7oH5f3Ab3sWGCSD3K5mFIzeVMSgA+97wpBJ88TsFq1DUUDJoLA+SXv6xILlr+C6EZuxx8Ut
	Ks3+b35T11dhuXbmzxmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWc8v-00000005kNd-3Cdi;
	Tue, 01 Jul 2025 14:39:29 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWaiO-00000005SK3-1bI2
	for linux-phy@lists.infradead.org;
	Tue, 01 Jul 2025 13:08:02 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20250701130756epoutp02dbef0e04fa5912932207a300b53873bf~OIojxon7b0599205992epoutp02M
	for <linux-phy@lists.infradead.org>; Tue,  1 Jul 2025 13:07:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20250701130756epoutp02dbef0e04fa5912932207a300b53873bf~OIojxon7b0599205992epoutp02M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1751375276;
	bh=JgnhviKDwcEkzqEavBNjnoGVBk5ClTzXwbk+ec1DARo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lL8Z+9AnRIqdhnPclPzn0hzkfWvFh0y0Ofq0QFj/4FFqb7bQa0mMBAmfjgdJfj7GX
	 TK1GOjyHDjl6m44ShEyA0fJL9EKowiPEXX5uWcI19iifi7itbgupXTLfj8ThQgPWYc
	 9U2sPadATskrHV3QX2TuTyNcHei8eZBlpQHgMzLM=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20250701130755epcas5p22ab68adeef6288e7c8cc5a7e48343b8a~OIojEhiQA2000520005epcas5p2p;
	Tue,  1 Jul 2025 13:07:55 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.174]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4bWjxk0DJmz6B9m6; Tue,  1 Jul
	2025 13:07:54 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20250701115955epcas5p320cfe73ca33522cd2f9f7970cfde1c63~OHtLRTmHW3228232282epcas5p3d;
	Tue,  1 Jul 2025 11:59:55 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250701115952epsmtip1c46584c57e4a72ad1d06026394084dbd~OHtITE5Zt1373113731epsmtip1r;
	Tue,  1 Jul 2025 11:59:52 +0000 (GMT)
From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
	andre.draszik@linaro.org, peter.griffin@linaro.org,
	neil.armstrong@linaro.org, kauschluss@disroot.org,
	ivo.ivanov.ivanov1@gmail.com, m.szyprowski@samsung.com,
	s.nawrocki@samsung.com, pritam.sutar@samsung.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com,
	dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com,
	selvarasu.g@samsung.com, Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Date: Tue,  1 Jul 2025 17:37:01 +0530
Message-Id: <20250701120706.2219355-2-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250701120706.2219355-1-pritam.sutar@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20250701115955epcas5p320cfe73ca33522cd2f9f7970cfde1c63
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250701115955epcas5p320cfe73ca33522cd2f9f7970cfde1c63
References: <20250701120706.2219355-1-pritam.sutar@samsung.com>
	<CGME20250701115955epcas5p320cfe73ca33522cd2f9f7970cfde1c63@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_060801_057741_E0D1EEB0 
X-CRM114-Status: UNSURE (   9.95  )
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

Add a dedicated compatible string for USB HS phy found in this SoC.
The SoC requires two clocks, named "phy" and "ref" (same as clocks
required by Exynos850).

It also requires various power supplies (regulators) for the internal
circuitry to work. The required voltages are:
* avdd075_usb - 0.75v
* avdd18_usb20 - 1.8v
* avdd33_usb20 - 3.3v

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 .../bindings/phy/samsung,usb3-drd-phy.yaml    | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index e906403208c0..2e29ff749bba 100644
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
 
+  avdd075_usb-supply:
+    description: 0.75V power supply for USB phy
+
+  avdd18_usb20-supply:
+    description: 1.8V power supply for USB phy
+
+  avdd33_usb20-supply:
+    description: 3.3V power supply for USB phy
+
 required:
   - compatible
   - clocks
@@ -235,6 +245,33 @@ allOf:
 
         reg-names:
           maxItems: 1
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynosautov920-usbdrd-phy
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+
+        clock-names:
+          items:
+            - const: phy
+            - const: ref
+
+        reg:
+          maxItems: 1
+
+        reg-names:
+          maxItems: 1
+
+      required:
+        - avdd075_usb-supply
+        - avdd18_usb20-supply
+        - avdd33_usb20-supply
 
 unevaluatedProperties: false
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

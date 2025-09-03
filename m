Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3D86CA100C
	for <linux-phy@archiver.kernel.org>; Wed,  3 Sep 2025 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PHNysHX5J14tNBiVQp/U97kFjpz1KUjaUva98Xe5RW8=; b=nuSBmNhlnTHJ57
	fSY5j3Yhc2mxMJ8lIToKsGlzXLqYA7kEzha+a4fDTp03taDBtR7CVQI2N19XZ8HI5w0vp2gmZeoZu
	1r4Yq+9tgr43fObSv8CCJawHKIWpJJvp6jXIVYtjtusRSN6zZ8n+93IDKE7fRkDw6JS6HZN86FF4z
	0dp4jCdF88mpDllDcSlcdH+bsoojfWnQRZI2GAtC9TP2K+JrtogUFz9ugF4gIswe5RD4MXuECo6XN
	4bKPuGnmBARyw/hEB2o1l44+gnwas0vxWgqGwEgAFR/IapXwkNbnbsAo7acQuKBVrTNYFdSqyX4rx
	HT6lgorLQPqJ8kvlP6AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utiKT-00000005Ims-28Qv;
	Wed, 03 Sep 2025 07:54:53 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uthwH-000000056A6-3Afy
	for linux-phy@lists.infradead.org;
	Wed, 03 Sep 2025 07:29:55 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250903072952epoutp018fe577d2d147595511eabe3c01c7768c~htTppGQM01337613376epoutp01_
	for <linux-phy@lists.infradead.org>; Wed,  3 Sep 2025 07:29:52 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250903072952epoutp018fe577d2d147595511eabe3c01c7768c~htTppGQM01337613376epoutp01_
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1756884592;
	bh=TpuYL4TT61lQI9x+lJB1ZTckMbvty0pgE6VMnOCTsnw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UCk+SPk4mku7KQMh1sLhcUfFM2ajMqPk/yMDVugl1jV3cekR+2xgLU7x3ITPx9iYC
	 KHMQ/CqBTudMpS711QDqN2sdTdp9yma0d6/EEiF+Sp5+lnInykCvFQ44l1bxNM3hl1
	 jOvWseO9n3YK2+bwbCrnfr41O3DS86QcXoRFFrzc=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20250903072951epcas5p2532bcdf559d1db330fdc8619e96a8460~htTo9aiZS1205312053epcas5p2I;
	Wed,  3 Sep 2025 07:29:51 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.95]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4cGvQ62bDHz3hhTS; Wed,  3 Sep
	2025 07:29:50 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20250903072949epcas5p11a1e474fad83ff3036be2c443ed5bc35~htTnHrOau2114721147epcas5p1K;
	Wed,  3 Sep 2025 07:29:49 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250903072946epsmtip2c4c26661b9c4e852e257cab46c8c124e~htTkPc_AO2480024800epsmtip2T;
	Wed,  3 Sep 2025 07:29:46 +0000 (GMT)
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
Subject: [PATCH v8 5/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 combo ssphy
Date: Wed,  3 Sep 2025 13:08:26 +0530
Message-Id: <20250903073827.3015662-6-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250903073827.3015662-1-pritam.sutar@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20250903072949epcas5p11a1e474fad83ff3036be2c443ed5bc35
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250903072949epcas5p11a1e474fad83ff3036be2c443ed5bc35
References: <20250903073827.3015662-1-pritam.sutar@samsung.com>
	<CGME20250903072949epcas5p11a1e474fad83ff3036be2c443ed5bc35@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_002954_110839_281118B9 
X-CRM114-Status: GOOD (  12.80  )
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

Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 .../bindings/phy/samsung,usb3-drd-phy.yaml     | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index 4a8bcf63cd91..72d41ccdb090 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -34,6 +34,7 @@ properties:
       - samsung,exynos7870-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
       - samsung,exynos990-usbdrd-phy
+      - samsung,exynosautov920-usb31drd-combo-ssphy
       - samsung,exynosautov920-usbdrd-combo-hsphy
       - samsung,exynosautov920-usbdrd-phy
 
@@ -230,6 +231,7 @@ allOf:
               - samsung,exynos7870-usbdrd-phy
               - samsung,exynos850-usbdrd-phy
               - samsung,exynos990-usbdrd-phy
+              - samsung,exynosautov920-usb31drd-combo-ssphy
               - samsung,exynosautov920-usbdrd-combo-hsphy
               - samsung,exynosautov920-usbdrd-phy
     then:
@@ -254,18 +256,32 @@ allOf:
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

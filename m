Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53422CCD18D
	for <linux-phy@archiver.kernel.org>; Fri, 10 Oct 2025 07:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+cHhjixcUY+fQnQ/LZ6W3Gxmc63ThfsMZxFPnII/qdU=; b=CPLuGmBJQvbfmr
	h+aM3JS8bOAF3PeBtvFdsJIDOUQKBpiUesvHt/Y1/ux5ov6dzXMDXRIMTX1YAWUa+nPoVRM3C97l4
	TzSQZmcGd2BaMPemHpWT2ASoxl7MKCB9RKq9vG/SClO8VUqPnWuB+3kq5SDBgrVtiZ+Zef65DjSOA
	9W9comQMEh00cDkXVsPj2rNPWbyL/2nm1KO99BWJumT/0ViubTU3EaGUDbc24Mfo6ZWiZLAU1WAOU
	qyAfT0jk5+V0ukJsLtnvTU1NEbLuP0j53w+bhJZyb30CAr4WlQscpNgDFtzfAICRPOE4mMoyAOtFa
	EXx/OItBxMgDUOHrT1jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v777d-00000007o4P-0BRG;
	Fri, 10 Oct 2025 07:01:01 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v777Z-00000007nzv-2wQe
	for linux-phy@lists.infradead.org;
	Fri, 10 Oct 2025 07:00:59 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20251010070055epoutp01d292838c12138b9b9e6396eee965a1b7~tDx8fUZfn2433024330epoutp01D
	for <linux-phy@lists.infradead.org>; Fri, 10 Oct 2025 07:00:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20251010070055epoutp01d292838c12138b9b9e6396eee965a1b7~tDx8fUZfn2433024330epoutp01D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1760079655;
	bh=CoEsBSUs3IlWDZJ+Mn282VTDP277IdfsFRG7aJRcQZo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZbOWmgWN/1g8/oLz7kH9zxiz5MG16QSLoIO84r+jaSG2i8znps/RRP5JfGdgBvBdK
	 eBlKLqrdG3woAGbPZdtTodv+ZxpWTcTYVvDFeAvOxt83ZXsyL9Z+TgabHLToFM8ip3
	 a3WJj3p+BbVEcpKeQn6FjScWwcSLHigHeZdlvusY=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20251010070055epcas5p14dc15910e0de39afe49642b539cb8ada~tDx79Q84U2549825498epcas5p1J;
	Fri, 10 Oct 2025 07:00:55 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.95]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4cjd1f1X6Gz6B9mG; Fri, 10 Oct
	2025 07:00:54 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20251010070053epcas5p454e7414d50369bfe7e8e417b91bcbaef~tDx6lc11V1813618136epcas5p4O;
	Fri, 10 Oct 2025 07:00:53 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20251010070047epsmtip25579faf740db3bf4aac812c5811f7d02~tDx1GVk120573805738epsmtip28;
	Fri, 10 Oct 2025 07:00:47 +0000 (GMT)
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
Subject: [PATCH v9 3/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 combo hsphy
Date: Fri, 10 Oct 2025 12:39:09 +0530
Message-Id: <20251010070912.3758334-4-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251010070912.3758334-1-pritam.sutar@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20251010070053epcas5p454e7414d50369bfe7e8e417b91bcbaef
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20251010070053epcas5p454e7414d50369bfe7e8e417b91bcbaef
References: <20251010070912.3758334-1-pritam.sutar@samsung.com>
	<CGME20251010070053epcas5p454e7414d50369bfe7e8e417b91bcbaef@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251010_000058_062387_2BEFA5D4 
X-CRM114-Status: GOOD (  11.88  )
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

The USBDRD31 5nm controller consists of Synopsys USB2.0 femptophy and
USBSS combophy. Add-on USB20 femptophy is required to support USB20 data
rates along with USBSS phy. Document support for the USB2.0 femptophy
found on combophy of the this SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 .../devicetree/bindings/phy/samsung,usb3-drd-phy.yaml          | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index 8d8114eb5660..4a8bcf63cd91 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -34,6 +34,7 @@ properties:
       - samsung,exynos7870-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
       - samsung,exynos990-usbdrd-phy
+      - samsung,exynosautov920-usbdrd-combo-hsphy
       - samsung,exynosautov920-usbdrd-phy
 
   clocks:
@@ -229,6 +230,7 @@ allOf:
               - samsung,exynos7870-usbdrd-phy
               - samsung,exynos850-usbdrd-phy
               - samsung,exynos990-usbdrd-phy
+              - samsung,exynosautov920-usbdrd-combo-hsphy
               - samsung,exynosautov920-usbdrd-phy
     then:
       properties:
@@ -252,6 +254,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - samsung,exynosautov920-usbdrd-combo-hsphy
               - samsung,exynosautov920-usbdrd-phy
     then:
       required:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

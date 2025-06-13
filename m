Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95000C71135
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jun 2025 08:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRs/rAmEP+Ghq6CSaVG7/8+CBj4kfCDeTFIAq/fW5to=; b=2st5EU9CDjgMrY
	4sR+iNWr6Me7PayJf6DrBrqvTmLuZ2Z8I71H946toOI6mAhak9zyQ0SG2fDfIy7QHqT8xpKEo7cWM
	6FB2Sw5/hTp62PKCwF9xidYweJwWDxTKWXLyFsvxWnTbiwecI5e0Z8cLKiDoXG++mREbeKVJ/2Mnm
	juPmHg7Zcbx+QoCi8hvWuaGKmdgi3QbtlnQVABTfX4qlwUfNSvVNGjQZSopoyB0PG8py9Qcgy0uOG
	IkGaNlrng3DJ3uMpU+LfKPpmZxTFRqQs3GsnomECHKMxkPKwqOGG3AFEenu8k5/7a9kHV4pdN4Ye8
	v14ll4jDEkH5AzLkMhug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPziC-0000000FkQW-0gEd;
	Fri, 13 Jun 2025 08:24:32 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPyY0-0000000FZDg-186Z
	for linux-phy@lists.infradead.org;
	Fri, 13 Jun 2025 07:09:58 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250613070952epoutp011a35715ceb7e28e692e0bcdfc57de41e~IiIySeJvf2937229372epoutp017
	for <linux-phy@lists.infradead.org>; Fri, 13 Jun 2025 07:09:52 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250613070952epoutp011a35715ceb7e28e692e0bcdfc57de41e~IiIySeJvf2937229372epoutp017
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1749798592;
	bh=/BRy9T3GJRyRf9B/1o6vliSFsXzSoe+6lNyeT9l/lCs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dVhGyv7E4bH4IcN/CvjW3XdsuoMJEplVpr43Z1rP/59ZIsI/O/UJhu+bTKVhTPglf
	 pzHyjQ5FyMOQKFM/p63MsEj0Xx9Lj7Y2cifpxxAP6J96ePq3VKU4UzQwPYhTBPy5w3
	 ZbI3hheVjlEohR+YmbcVibTum7s8rhgAi1P2GxeQ=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250613070951epcas5p1fdc2bff451059aec05b30db2383871db~IiIxZ79nR0357803578epcas5p1e;
	Fri, 13 Jun 2025 07:09:51 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.178]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4bJVrs4Gtzz3hhTC; Fri, 13 Jun
	2025 07:09:49 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20250613055040epcas5p35219ddeddd9fe5f4632ca837db91847a~IhDouBZAM2143021430epcas5p3H;
	Fri, 13 Jun 2025 05:50:40 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250613055037epsmtip108ea6972ed6eff7d92b617765eca97a2~IhDlulA8s0439404394epsmtip1N;
	Fri, 13 Jun 2025 05:50:37 +0000 (GMT)
From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
	andre.draszik@linaro.org, peter.griffin@linaro.org, kauschluss@disroot.org,
	ivo.ivanov.ivanov1@gmail.com, m.szyprowski@samsung.com,
	s.nawrocki@samsung.com, pritam.sutar@samsung.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com,
	dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com,
	selvarasu.g@samsung.com
Subject: [PATCH v3 1/9] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Date: Fri, 13 Jun 2025 11:26:05 +0530
Message-Id: <20250613055613.866909-2-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250613055613.866909-1-pritam.sutar@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20250613055040epcas5p35219ddeddd9fe5f4632ca837db91847a
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250613055040epcas5p35219ddeddd9fe5f4632ca837db91847a
References: <20250613055613.866909-1-pritam.sutar@samsung.com>
	<CGME20250613055040epcas5p35219ddeddd9fe5f4632ca837db91847a@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_000956_937784_570F762E 
X-CRM114-Status: GOOD (  11.22  )
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
The devicetree node requires two clocks, named "phy" and "ref"
(same as clocks required by Exynos850).

Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index cc60d2f6f70e..71db17d93c6a 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -33,6 +33,7 @@ properties:
       - samsung,exynos7-usbdrd-phy
       - samsung,exynos7870-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
+      - samsung,exynosautov920-usbdrd-phy
 
   clocks:
     minItems: 1
@@ -217,6 +218,7 @@ allOf:
               - samsung,exynos5420-usbdrd-phy
               - samsung,exynos7870-usbdrd-phy
               - samsung,exynos850-usbdrd-phy
+              - samsung,exynosautov920-usbdrd-phy
     then:
       properties:
         clocks:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

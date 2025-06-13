Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67DEDC61DB2
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jun 2025 07:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3X5g7AbNU3T/85mBzS5OmUSr+mpaPEBQERcHMqhXpSg=; b=srlS5uONef1dSP
	GDohuJcRD6epYpIUQWUZJ2dXgz7x3RLZfFG/Qw0spbQIgQjBAD3iGNpdzfeOJYheiVW6sW65mHhP8
	F4epAcS0WZAIeZQd+TPo+u2O1+aT14V3lYLWxuFZQXP3TndkmYAXEKqwtinhUycqWAtQYvfZbA83r
	yyh98fgT53K90tYt5slwiGGZYqw01wqtpcw8DEc0LwMN2TZH+K1kbqL+3GCXL573OV41mjTRE2hl4
	TclgOoWOB/Qs3uKX46dot6K+Jh1Qfe2HdSHaRGhIB+/UCzMuKgxySwIXQFq50emmwxVfsEYq6cyQE
	J2rBAi8+JIC5DNhXe1Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPyjI-0000000FaOl-0iLI;
	Fri, 13 Jun 2025 07:21:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPyYN-0000000FZIl-1Hgj
	for linux-phy@bombadil.infradead.org;
	Fri, 13 Jun 2025 07:10:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=References:Content-Type:
	Content-Transfer-Encoding:MIME-Version:In-Reply-To:Message-Id:Date:Subject:Cc
	:To:From:Sender:Reply-To:Content-ID:Content-Description;
	bh=WT3+OA7xbIRPQyDTFFQo2fANnLJO9FZ0B+dE0jn8FdQ=; b=W1i7Wifknxcq3rjfQWtF1hIS0O
	kibvH3HCvW4pn4TDIG90kmCoiAQflSUlzdD7E0q5tvjgXLrLj6tAPpLADiTCHhwoZI4mOxSbwPKtj
	BbKT7X/zb5UL4t1PpIhct7Hbex2yek464YqweiqgyOq5t3ZJsUvHacplAocwuPJ/FM722NZl19KO1
	BXsPodIkNgPmun7UsJPzsqw/oXx8Atdb5YSQuOyl1jBy1xZv9E2VmxRhGlQ17wMEZRR04thIIIPRv
	5y5yh2Pl0F0g1bEeeFli6W2biy7xm2pnGIUzCmNFjS7cw+gS1v+89/4AVPJxen5CNf0jS6gfFyuqI
	u1ry0oww==;
Received: from mailout1.samsung.com ([203.254.224.24])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPyYK-00000002syK-3i05
	for linux-phy@lists.infradead.org;
	Fri, 13 Jun 2025 07:10:19 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250613071012epoutp01b86263c9148e6bfc25570c7e32811a82~IiJFN7KbO2937229372epoutp01c
	for <linux-phy@lists.infradead.org>; Fri, 13 Jun 2025 07:10:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250613071012epoutp01b86263c9148e6bfc25570c7e32811a82~IiJFN7KbO2937229372epoutp01c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1749798612;
	bh=WT3+OA7xbIRPQyDTFFQo2fANnLJO9FZ0B+dE0jn8FdQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=C/UlYquDakeVKB2xeeNw1J+Lu1bLQgqNJf4pxX4Cy4et3mgGOmrGZqstAsuqcIR9E
	 O1cLGKxCTJtnD6P6yvjai0ppdn84kKzZBF9+g9yEax/Fg3ud0nylVESu/Vz1D9mlUJ
	 P1PWfkQp1ff00IKeBifjWIZ56jO27wCUVTIM44BE=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250613071012epcas5p3afb22a58b1c9df45f359239ee34da87e~IiJEiwpSi0170401704epcas5p3f;
	Fri, 13 Jun 2025 07:10:12 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.178]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4bJVsF75j8z2SSKj; Fri, 13 Jun
	2025 07:10:09 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20250613055050epcas5p3f995a6696ccf4f7eeb0b5d76382f71f7~IhDxlUrs13253332533epcas5p3P;
	Fri, 13 Jun 2025 05:50:50 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250613055047epsmtip1f04e1592f84c83b804209cfdc697af15~IhDu36OMJ0400204002epsmtip1M;
	Fri, 13 Jun 2025 05:50:47 +0000 (GMT)
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
Subject: [PATCH v3 4/9] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 combo HS phy
Date: Fri, 13 Jun 2025 11:26:08 +0530
Message-Id: <20250613055613.866909-5-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250613055613.866909-1-pritam.sutar@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20250613055050epcas5p3f995a6696ccf4f7eeb0b5d76382f71f7
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250613055050epcas5p3f995a6696ccf4f7eeb0b5d76382f71f7
References: <20250613055613.866909-1-pritam.sutar@samsung.com>
	<CGME20250613055050epcas5p3f995a6696ccf4f7eeb0b5d76382f71f7@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_081017_618667_E90A88F5 
X-CRM114-Status: GOOD (  12.40  )
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

Add a dedicated compatible string for USB combo HS phy found in this
SoC. The devicetree node requires two clocks, named "phy" and "ref".

This phy supports USB3.1 SSP+(10Gbps) protocol and is backwards
compatible to the USB3.0 SS(5Gbps). 'Add-on USB2.0' phy is added
to support USB2.0 HS(480Mbps), FS(12Mbps) and LS(1.5Mbps) data rates.
These two phys are combined to form a combo phy.

Add schema only for 'Add-on USB2.0' HS phy.

Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index 71db17d93c6a..26660799e3ca 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -33,6 +33,7 @@ properties:
       - samsung,exynos7-usbdrd-phy
       - samsung,exynos7870-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
+      - samsung,exynosautov920-usbdrd-hsphy
       - samsung,exynosautov920-usbdrd-phy
 
   clocks:
@@ -218,6 +219,7 @@ allOf:
               - samsung,exynos5420-usbdrd-phy
               - samsung,exynos7870-usbdrd-phy
               - samsung,exynos850-usbdrd-phy
+              - samsung,exynosautov920-usbdrd-hsphy
               - samsung,exynosautov920-usbdrd-phy
     then:
       properties:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

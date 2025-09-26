Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A02E8CAC5AC
	for <linux-phy@archiver.kernel.org>; Fri, 26 Sep 2025 07:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0eN6Zuxk1ZDuNwaxq2nwJurlhDyxwGogjRawNcqoMs=; b=nhLhkdHwkIsEf4
	UM7Fmj01kffnYWM1MaH0eJ5Z6kJ4ejGkLjt7n2nN+bVH0IeMckH3HM8IpLaRaErzs1dAbxwkN2uRY
	68qwrzGUpJFL9+Sb0imiohJildxM4rO7PCFDdXi97y3GDketj5hQFsoGv6JN7nN0VvvBoYBJlFiBK
	JEvEWnzlECR08SiBhe0fyZBz7hRGvzvmklesD3UkZpg4s2dvvzpuN/OylnLa9102Q52U+FqLTnXfJ
	7ihtzHDDm7VHKpZPMSoMCw0Ek/NPIS3Ua/xPoA14CepGwK7Iq6OV4GoYKPw70/cCxytaJ1gA6wTzG
	Ugt/BOFLDB/VyaEaJ6cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2349-0000000GrwS-1W0z;
	Fri, 26 Sep 2025 07:40:29 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2342-0000000Grnu-3Kla
	for linux-phy@lists.infradead.org;
	Fri, 26 Sep 2025 07:40:25 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250926074019epoutp036863271456b28e1e233bfc29b63be021~oxSWNsd7e1297312973epoutp03I
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 07:40:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250926074019epoutp036863271456b28e1e233bfc29b63be021~oxSWNsd7e1297312973epoutp03I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1758872419;
	bh=cqFvsweeMIydvpkKRbWUDCT5Z9vdCXOgwYUao+S7sbw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ub9dHQf1rIPisddjJW49nGx0PC5pU4jXQaHDXUdBuLk77U0MsnGic7KbuNw2hmL6R
	 bgBFN0tffJ4aa3wLcrYdXPT9QNSGoV0EGyMtAeEdO6ZlFwxSMBnux0tFOv3isEFE6m
	 H7elaL6YXOztmK3u3y4j/E6Ytkv4bBfhHIPUzHXg=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas2p4.samsung.com (KnoxPortal) with ESMTPS id
	20250926074019epcas2p416e087caf4fd9cf6e956961f1cf6d333~oxSVuwDt-2914429144epcas2p4G;
	Fri, 26 Sep 2025 07:40:19 +0000 (GMT)
Received: from epcas2p2.samsung.com (unknown [182.195.36.69]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4cY2YZ0hjmz6B9m9; Fri, 26 Sep
	2025 07:40:18 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
	20250926074017epcas2p18fb2fc616b92dc04ad9e018151c2ba29~oxSUQRHA61723517235epcas2p1N;
	Fri, 26 Sep 2025 07:40:17 +0000 (GMT)
Received: from asswp146.dsn.sec.samsung.com (unknown [10.229.19.146]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250926074017epsmtip2605014d87cb2a679f123ac72d62d40f4~oxSULQqe31191711917epsmtip21;
	Fri, 26 Sep 2025 07:40:17 +0000 (GMT)
From: Sanghoon Bae <sh86.bae@samsung.com>
To: robh@kernel.org, krzk@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
	alim.akhtar@samsung.com, kishon@kernel.org, m.szyprowski@samsung.com,
	jh80.chung@samsung.com, shradha.t@samsung.com
Cc: krzk+dt@kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	sh86.bae@samsung.com
Subject: [PATCH 2/4] dt-bindings: phy: Add PCIe PHY support for
 ExynosAutov920 SoC
Date: Fri, 26 Sep 2025 16:39:17 +0900
Message-ID: <20250926073921.1000866-3-sh86.bae@samsung.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250926073921.1000866-1-sh86.bae@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20250926074017epcas2p18fb2fc616b92dc04ad9e018151c2ba29
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
cpgsPolicy: CPGSC10-234,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250926074017epcas2p18fb2fc616b92dc04ad9e018151c2ba29
References: <20250926073921.1000866-1-sh86.bae@samsung.com>
	<CGME20250926074017epcas2p18fb2fc616b92dc04ad9e018151c2ba29@epcas2p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_004023_269062_05EA0369 
X-CRM114-Status: GOOD (  12.16  )
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

Since the Exynosautov920 SoC uses the Samsung PCIe PHY, add support
for it in the Exynosautov920 PCIe PHY bindings.

The Exynosautov920 SoC includes two PHY instances: one for a 4-lane PHY
and another for a 2-lane PHY. Each PHY can be used by separate
controllers through the bifurcation option. Therefore, from 2 up to 4
PCIe controllers can be supported and connected with this PHY driver.

PCIe lane number is used to distinguish each PHY instance.
This is required since two PHY instances on ExynosAutov920 is not
identical.
On PHY driver code, need to check each instance and different settings.

Signed-off-by: Sanghoon Bae <sh86.bae@samsung.com>
---
 .../bindings/phy/samsung,exynos-pcie-phy.yaml      | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,exynos-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,exynos-pcie-phy.yaml
index 6295472696db..1e8b88d2cd56 100644
--- a/Documentation/devicetree/bindings/phy/samsung,exynos-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,exynos-pcie-phy.yaml
@@ -19,6 +19,7 @@ properties:
       - samsung,exynos5433-pcie-phy
       - tesla,fsd-pcie-phy0
       - tesla,fsd-pcie-phy1
+      - samsung,exynosautov920-pcie-phy
 
   reg:
     minItems: 1
@@ -34,6 +35,10 @@ properties:
     description: phandle for FSYS sysreg interface, used to control
                  sysreg registers bits for PCIe PHY
 
+  num-lanes:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [2, 4]
+
 allOf:
   - if:
       properties:
@@ -42,6 +47,7 @@ allOf:
             enum:
               - tesla,fsd-pcie-phy0
               - tesla,fsd-pcie-phy1
+              - samsung,exynosautov920-pcie-phy
     then:
       properties:
         reg:
@@ -52,6 +58,14 @@ allOf:
       properties:
         reg:
           maxItems: 1
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynosautov920-pcie-phy
+    then:
+      required:
+        - num-lanes
 
 required:
   - "#phy-cells"
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

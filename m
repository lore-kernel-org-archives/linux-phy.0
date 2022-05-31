Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B77DC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 12:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MM4DoI+dzH++74QkM8x1s2OTxVR4ryLT0hOvP2FIPms=; b=p3Rrfzx/tkLa8O
	bttAC6SVbi2g/yeyr674hPJjN5FopUByzPyT1er3+6AYwu1W3VaZLXSNqIQbaBOw3AnSgeGjeH5MY
	/ObaEH7xMZdyrF7s0pWIniMtvgsQj1efcSxR4BycjxJqzHkF2HVnqoctWrqUTXmQTBdPXkRCcX36l
	X8CkYPqai+0Sp+l8Ci5UD5151OEWMU1YNHayfyQOVGsBvwyw3m5aXjruJOnJmKA1uEgy2OOH4/Cxk
	BcR9UmJfGazfGcv2yBl+JEkppuG87z9eIKcuo2MGmnSOdQBnKNNvl1ulWEhZgZKfcV33oJdMsPzJT
	6oxRjMKlgZErPymMB3uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw0rb-00AhMs-Et; Tue, 31 May 2022 12:20:43 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw0qS-00AgtO-Qs
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 12:19:36 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20220531121924epoutp01d12c5281511b9f0e728f950e8b5b26d6~0L9dSO6Xu2409524095epoutp01k
	for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 12:19:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20220531121924epoutp01d12c5281511b9f0e728f950e8b5b26d6~0L9dSO6Xu2409524095epoutp01k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1653999565;
	bh=BGTzFkl+9ZuSWt6gduZRv2Xb9WWqKG0b5iW1d82t38I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hiFFXq75cHe6mVThKLdO74zKnOmXJqxGybXz6EM+VP7X7Ci95yTEMdHXczzLYKbpa
	 g8HAgRT8kuNk0BmIZSkMfpRg/g7eHOt1cF/JSTCuWRDeadTuPLZbjmg+H2KYGeCyxx
	 soMdT0vm3hcKh5PeV0YWoK/1rIq3ryhlpLKkDWzE=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTP id
	20220531121924epcas2p3fe7d26e5a2d153c0d0e39d533af15317~0L9ch68oY2465724657epcas2p3K;
	Tue, 31 May 2022 12:19:24 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.36.97]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4LCBCt5B3Qz4x9Q1; Tue, 31 May
	2022 12:19:22 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
	epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
	E3.47.09694.AC706926; Tue, 31 May 2022 21:19:22 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
	20220531121922epcas2p15861df56f7253265c591a88244520446~0L9axLynX2033520335epcas2p14;
	Tue, 31 May 2022 12:19:22 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220531121922epsmtrp1e9076f647044e919e4456ebc5500bf59~0L9awYczY1304613046epsmtrp1C;
	Tue, 31 May 2022 12:19:22 +0000 (GMT)
X-AuditID: b6c32a48-47fff700000025de-02-629607ca1916
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	F1.E1.11276.AC706926; Tue, 31 May 2022 21:19:22 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20220531121922epsmtip13a35cbb821bbec8cd0ad1a727f692113~0L9alg54v1935019350epsmtip1g;
	Tue, 31 May 2022 12:19:22 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar
	<alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof
	Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, Chanho Park
	<chanho61.park@samsung.com>
Subject: [PATCH 1/4] dt-bindings: phy: samsung,ufs-phy: make pmu-syscon as
 phandle-array
Date: Tue, 31 May 2022 21:19:10 +0900
Message-Id: <20220531121913.48722-2-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220531121913.48722-1-chanho61.park@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHJsWRmVeSWpSXmKPExsWy7bCmhe4p9mlJBhPeKFs8mLeNzeLyfm2L
	+UfOsVpceNrDZtH34iGzxd7XW9ktNj2+xmoxYdU3FovWvUfYLXbeOcHswOWxaVUnm8eda3vY
	PDYvqffo27KK0eP4je1MHp83yQWwRWXbZKQmpqQWKaTmJeenZOal2yp5B8c7x5uaGRjqGlpa
	mCsp5CXmptoqufgE6Lpl5gAdpqRQlphTChQKSCwuVtK3synKLy1JVcjILy6xVUotSMkpMC/Q
	K07MLS7NS9fLSy2xMjQwMDIFKkzIzrjc85y1YCdvxb1Nn5kaGHdxdTFyckgImEhse3CMrYuR
	i0NIYAejxPNDy6GcT4wSy748Z4JwvjFKbG/9ywjT8nPLflaIxF5Gia9rnzJCOB8ZJV41PWID
	qWIT0JXY8vwVWEJEoJ1J4sS9uewgDrPABEaJi5d2MIFUCQtESTy6sh7MZhFQldgy/SlQEQcH
	r4CdxJO1vhDr5CU2zO9lBglzCthLbJlhBxLmFRCUODnzCQuIzQxU0rx1NjPIeAmBTg6Jm9/6
	mUDqJQRcJL4droYYIyzx6vgWdghbSuJlfxuUXSyxdNYnJojeBkaJy9t+sUEkjCVmPWtnBJnD
	LKApsX6XPsRIZYkjt6DW8kl0HP7LDhHmlehoE4JoVJc4sH06C4QtK9E95zMrhO0hcW7lPXZI
	UE1ilOg+dpdpAqPCLCTfzELyzSyExQsYmVcxiqUWFOempxYbFZjAYzg5P3cTIzihannsYJz9
	9oPeIUYmDsZDjBIczEoivCW7piYJ8aYkVlalFuXHF5XmpBYfYjQFhvREZinR5HxgSs8riTc0
	sTQwMTMzNDcyNTBXEuf1StmQKCSQnliSmp2aWpBaBNPHxMEp1cDUl8qfGcGgOf9E7/ZvyXqy
	q7anTFn35rfH9XM28pN8zfSv3KyI3Xfkb3ms3uzzb0XnVx1reVWtUsGZ8Ns784Xi3M9HFqf+
	nd/9N3zG2X0tc/ZmNlY/mxThqHhu5nUt0Rkbv7Hu7Q1un/ay69Xnr0kOuZe/xDrKMvxvWNHV
	reM8QzZbL862Kjh5t0PfShbbm0fcA7Nc51t9WbK+TCzuQUOh6rP0OSWF98qtNgtz9Jw6qGvd
	fvOGu+CKkxF21YFL5jjPCtlX6hTttMIj8NP2OQ9nrqx60Hj0467HwTzBVtZveW2eh742kM08
	srZ0+pPYeo0telclFgcYuz0v+tfk6t6ygjuNuV2TKYfR4vb5/eFKLMUZiYZazEXFiQAih03I
	MQQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrBLMWRmVeSWpSXmKPExsWy7bCSnO4p9mlJBoff81k8mLeNzeLyfm2L
	+UfOsVpceNrDZtH34iGzxd7XW9ktNj2+xmoxYdU3FovWvUfYLXbeOcHswOWxaVUnm8eda3vY
	PDYvqffo27KK0eP4je1MHp83yQWwRXHZpKTmZJalFunbJXBlXO55zlqwk7fi3qbPTA2Mu7i6
	GDk5JARMJH5u2c/axcjFISSwm1HiwptDjBAJWYln73awQ9jCEvdbjkAVvWeUOLbkOlgRm4Cu
	xJbnrxhBEiIC3UwSczb1M4EkmAUmMUr8+RsBYgsLREjse72PFcRmEVCV2DL9KdBUDg5eATuJ
	J2t9IRbIS2yY38sMEuYUsJfYMsMOJCwEVHFlajdYJ6+AoMTJmU9YIKbLSzRvnc08gVFgFpLU
	LCSpBYxMqxglUwuKc9Nziw0LDPNSy/WKE3OLS/PS9ZLzczcxggNfS3MH4/ZVH/QOMTJxMB5i
	lOBgVhLhLdk1NUmINyWxsiq1KD++qDQntfgQozQHi5I474Wuk/FCAumJJanZqakFqUUwWSYO
	TqkGpiCmjCdykafemZvdfvt2Tau2s5b8ZMV9a6M46l53p8nfWPaFh9VhaXyHrufFnwrv3u9+
	lzxng9t1ycwfV5skbfS+R4hw/5FtvWLxxOn1otnVHF95uo7etJ13cecqiZkBhu4ms63Xs10x
	vMGhqpY7q+vw9fSc0EmsB2KzVznEKH4943Jl7+73N1yfTS56U3vycE7bPY5NqWuvGE+xZHM9
	OXlD8nuBTgnunX9LpWddmPJn0aOKG/kNwt2TErd+v7uDU2Fx4xX2C5zPwqyNlf98cha8zSn9
	vvLYtdeavNsjDv7pPyfVtqKtPf3xPO3Za9e9v1xw4i4jWwm3hJaJdqDPqbZtZw6Ird6oxDg9
	wlws/aYSS3FGoqEWc1FxIgBuK3rW6wIAAA==
X-CMS-MailID: 20220531121922epcas2p15861df56f7253265c591a88244520446
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220531121922epcas2p15861df56f7253265c591a88244520446
References: <20220531121913.48722-1-chanho61.park@samsung.com>
	<CGME20220531121922epcas2p15861df56f7253265c591a88244520446@epcas2p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_051933_400438_24A4B510 
X-CRM114-Status: GOOD (  16.30  )
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

To support secondary ufs phy devices, we need to get an offset value
from pmu-syscon.

Signed-off-by: Chanho Park <chanho61.park@samsung.com>
---
 .../devicetree/bindings/phy/samsung,ufs-phy.yaml    | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
index f6ed1a005e7a..80c3ec14375a 100644
--- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
@@ -40,9 +40,14 @@ properties:
       - const: tx0_symbol_clk
 
   samsung,pmu-syscon:
-    $ref: '/schemas/types.yaml#/definitions/phandle'
-    description: phandle for PMU system controller interface, used to
-                 control pmu registers bits for ufs m-phy
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    items:
+      - items:
+        - description: phandle for PMU system controller interface, used to
+                       control pmu registers bits for ufs m-phy
+        - description: offset of pmu control register for ufs m-phy
+    description:
+      can be phandle/offset pair. The offset can be optional.
 
 required:
   - "#phy-cells"
@@ -63,7 +68,7 @@ examples:
         compatible = "samsung,exynos7-ufs-phy";
         reg = <0x15571800 0x240>;
         reg-names = "phy-pma";
-        samsung,pmu-syscon = <&pmu_system_controller>;
+        samsung,pmu-syscon = <&pmu_system_controller 0x720>;
         #phy-cells = <0>;
         clocks = <&clock_fsys1 SCLK_COMBO_PHY_EMBEDDED_26M>,
                  <&clock_fsys1 PHYCLK_UFS20_RX1_SYMBOL_USER>,
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

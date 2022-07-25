Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88A7EC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 25 Jul 2022 00:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=UlcC4Vubu6/Gjs77GfpXdNyMpFqYdDIer9I9HkWnNJY=; b=vONgTD/9IH6IY+
	QMOcDzxVnkod7fL36T5lc/yAcLI1tJff/368kBTBzccQrPG7+b+7txq/YueAZQdaAHyRgcYM0z3u5
	syNjQTJOfgxB+VqYCuznKe2lIPQn24wiPZTfUxn7ZfL8Kc0Q7Dlo1nGwsRekZi68j9Q40hX2kAs9E
	aTe1+diMXEcvAq03qD7yTW37dnYjJH06DKTPf7bdZSx1yrTqvHVZNODO1PUmCEAGQoSqdJIIIFII4
	mTkRwD2NnqXie+nzLV5rh/YaFUDNnf2Hd6IalCwSqPft66cma4uYj3tzMVGI/c7H5HMvwwxcagcp7
	MP0ZchvibllGVFjluZIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFldC-00GP6T-V7; Mon, 25 Jul 2022 00:07:30 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFld3-00GOy0-9E
	for linux-phy@lists.infradead.org; Mon, 25 Jul 2022 00:07:23 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20220725000715epoutp03293097abc725851db09e0199b443d757~E6c5Qc6e83137531375epoutp03D
	for <linux-phy@lists.infradead.org>; Mon, 25 Jul 2022 00:07:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20220725000715epoutp03293097abc725851db09e0199b443d757~E6c5Qc6e83137531375epoutp03D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1658707635;
	bh=uegJKbSHo1ocVWl1bQj+RGC0/44Na/yQZKw7HcG6RI0=;
	h=From:To:Cc:Subject:Date:References:From;
	b=U126mo+97kN5AsNSCa/GchqXFa8orlqyVfHMN+L7v0TxddwJx9EEpdCndbqz+lKJy
	 ZtwPhVpnbaC0YgcaME1qMbh6ixyzKH9OeOTtDUt3rMrogYAj6vVZci4ukN28eXlysO
	 1GjDNX0r5OH/ypXkLOTNotoJSqWt3XqCos9cjI5w=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTP id
	20220725000714epcas2p3ce51bda12f561c6eed8c654f5434c09b~E6c4rj63F2187821878epcas2p34;
	Mon, 25 Jul 2022 00:07:14 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.36.68]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4LrgMk0Tcpz4x9Q8; Mon, 25 Jul
	2022 00:07:14 +0000 (GMT)
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
	epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
	44.6B.09662.1BEDDD26; Mon, 25 Jul 2022 09:07:14 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
	20220725000713epcas2p38d5c9d7ccdd06dd50267b72847cadc18~E6c38mSdo1957219572epcas2p3I;
	Mon, 25 Jul 2022 00:07:13 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220725000713epsmtrp1945a4f67d9c7a62b45b87aad45cd2351~E6c37yoUD2137721377epsmtrp1a;
	Mon, 25 Jul 2022 00:07:13 +0000 (GMT)
X-AuditID: b6c32a48-9f7ff700000025be-da-62dddeb12c32
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	1C.26.08802.1BEDDD26; Mon, 25 Jul 2022 09:07:13 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20220725000713epsmtip2434fe7b72b7009e144b5219f3ec04a2e~E6c3p9AiJ0880108801epsmtip2F;
	Mon, 25 Jul 2022 00:07:13 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring
	<robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
	<kishon@ti.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, devicetree@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org, Chanho Park <chanho61.park@samsung.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RESEND v2] dt-bindings: phy: samsung,ufs-phy: match clock
 items
Date: Mon, 25 Jul 2022 09:02:49 +0900
Message-Id: <20220725000249.30509-1-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKJsWRmVeSWpSXmKPExsWy7bCmue6me3eTDP6fZrR4MG8bm8Xl/doW
	84+cY7W48LSHzaLvxUNmi72vt7JbbHp8jdViwqpvLBYzzu9jsmjde4TdYuedE8wO3B6bVnWy
	edy5tofNY/OSeo++LasYPY7f2M7k8XmTXABbVLZNRmpiSmqRQmpecn5KZl66rZJ3cLxzvKmZ
	gaGuoaWFuZJCXmJuqq2Si0+ArltmDtB1SgpliTmlQKGAxOJiJX07m6L80pJUhYz84hJbpdSC
	lJwC8wK94sTc4tK8dL281BIrQwMDI1OgwoTsjPs/njAW3BetmHa6voGxXaCLkZNDQsBE4sjd
	GcwgtpDADkaJOddVuhi5gOxPjBLL/2xhh3A+M0rcX/SJBaZj4+lHbBCJXYwSl+8eYoJwPgJV
	bZjKCFLFJqArseX5K0aQhIjACkaJt3NvgTnMApOYJG5euc4OUiUsECgx7/JqMJtFQFXiYi/E
	Dl4BO4lFPc9YIfbJS1y/2cYMEReUODnzCVgNM1C8eetsZpChEgJf2SV2blnCCNHgIvFiTR9U
	s7DEq+Nb2CFsKYmX/W1QdrHE0lmfmCCaG4Ce2PaLDSJhLDHrWTvQIA6gDZoS63fpg5gSAsoS
	R25B7eWT6Dj8lx0izCvR0SYE0agucWD7dGgQyUp0z/nMClHiIXHljBCIKSQQK9HV7ziBUX4W
	kl9mIfllFsLWBYzMqxjFUguKc9NTi40KTOBxmpyfu4kRnD61PHYwzn77Qe8QIxMH4yFGCQ5m
	JRHerrTbSUK8KYmVValF+fFFpTmpxYcYTYGhO5FZSjQ5H5jA80riDU0sDUzMzAzNjUwNzJXE
	eb1SNiQKCaQnlqRmp6YWpBbB9DFxcEo1MB0WDdw+19/y4QOvzRvv7e84erJKoWltYsP9Y1Pm
	fe5iSbi8W2fOjrNNHBflHRM90y331Gw5v2DHSoOlJhear89waLQtta+Y9jfG67LShJ8fp+09
	d6wuRVUs9/HThxEb3pSpRJnkm0d490pZhrGWph40z5LPKfux/nL4z+BTtmGzr160mXx29rFz
	zl2Gee8mqSvu1l9xSu5etN3E1W7qN+22H7s57QZrvrq24CrjCNPZU5dVVZ9LPBsvti1hi1i4
	T1SRqDXjzEdBt43sWHLlFp8v1k4xj7BSSLEWPLb0UquMjtwN59UG+X/stvJNmfQpJvPxTHVH
	leNJXDZGx+36/7FKSuS77j7HwWZbmtDEpMRSnJFoqMVcVJwIAPhXY7QoBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrKLMWRmVeSWpSXmKPExsWy7bCSvO7Ge3eTDG6fVbB4MG8bm8Xl/doW
	84+cY7W48LSHzaLvxUNmi72vt7JbbHp8jdViwqpvLBYzzu9jsmjde4TdYuedE8wO3B6bVnWy
	edy5tofNY/OSeo++LasYPY7f2M7k8XmTXABbFJdNSmpOZllqkb5dAlfG/R9PGAvui1ZMO13f
	wNgu0MXIySEhYCKx8fQjti5GLg4hgR2MEtsvrGOCSMhKPHu3gx3CFpa433KEFcQWEnjPKPHl
	nA+IzSagK7Hl+StGEFtEYBWjxPv9niCDmAVmMEn8fXyXGSQhLOAvMfXIU7BmFgFViYu9n1hA
	bF4BO4lFPc9YIRbIS1y/2cYMEReUODnzCVgNM1C8eets5gmMfLOQpGYhSS1gZFrFKJlaUJyb
	nltsWGCUl1quV5yYW1yal66XnJ+7iREc0lpaOxj3rPqgd4iRiYPxEKMEB7OSCG9X2u0kId6U
	xMqq1KL8+KLSnNTiQ4zSHCxK4rwXuk7GCwmkJ5akZqemFqQWwWSZODilGpi2uU54qv6ptzvu
	ZHdHbOqk99dD9l/R5jzcq/mzmOVJwBUlZ/vK3UlhO98F8kRVpztnvpbff3vbb1mWI5VnDwp8
	ZixplLNKseC8PlPTo/KQ4ZGb3EmXjbW+1Gwv7/C1zfnGa+rs2yAtu+9WvjLv9hBTue6JVipd
	6h7zz+3dJZ9gxb/58vZH9hwG58Ke7p28sP3q0g96m85X1UQUMJhVXrv9L6v8/pJNa+O+u+uv
	m5nLX7VjZtetnb0snHKnbvJNLKlawpjMstfr44lvKZd2cdR75bzccWvTK6fnSalmjUIBzj6T
	969SeM7Jlh8fdahWYdqZqlhBZq1zVgd5Jm299WiuRzzXDJdEhR1HylfLLFJiKc5INNRiLipO
	BADVYeTA2AIAAA==
X-CMS-MailID: 20220725000713epcas2p38d5c9d7ccdd06dd50267b72847cadc18
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220725000713epcas2p38d5c9d7ccdd06dd50267b72847cadc18
References: <CGME20220725000713epcas2p38d5c9d7ccdd06dd50267b72847cadc18@epcas2p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220724_170721_670015_1D4370F1 
X-CRM114-Status: GOOD (  11.46  )
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

Below error is detected from dtbs_check. exynos7-ufs-phy is required
symbol clocks otherwise only PLL ref clock is required.

clock-names: ['ref_clk'] is too short

Reported-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Suggested-by: Alim Akhtar <alim.akhtar@samsung.com>
Signed-off-by: Chanho Park <chanho61.park@samsung.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Resend for phy maintainer
- Add Krzysztof's R-B tag

Changes since v1:
- Move allOf: block location after required:
- Remove unnecessary spaces of clock descriptions

 .../bindings/phy/samsung,ufs-phy.yaml         | 47 +++++++++++++++----
 1 file changed, 37 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
index 8da99461e817..346eb7cf29a5 100644
--- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
@@ -27,18 +27,12 @@ properties:
       - const: phy-pma
 
   clocks:
-    items:
-      - description: PLL reference clock
-      - description: symbol clock for input symbol ( rx0-ch0 symbol clock)
-      - description: symbol clock for input symbol ( rx1-ch1 symbol clock)
-      - description: symbol clock for output symbol ( tx0 symbol clock)
+    minItems: 1
+    maxItems: 4
 
   clock-names:
-    items:
-      - const: ref_clk
-      - const: rx1_symbol_clk
-      - const: rx0_symbol_clk
-      - const: tx0_symbol_clk
+    minItems: 1
+    maxItems: 4
 
   samsung,pmu-syscon:
     $ref: '/schemas/types.yaml#/definitions/phandle-array'
@@ -62,6 +56,39 @@ required:
   - clock-names
   - samsung,pmu-syscon
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos7-ufs-phy
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: PLL reference clock
+            - description: symbol clock for input symbol (rx0-ch0 symbol clock)
+            - description: symbol clock for input symbol (rx1-ch1 symbol clock)
+            - description: symbol clock for output symbol (tx0 symbol clock)
+
+        clock-names:
+          items:
+            - const: ref_clk
+            - const: rx1_symbol_clk
+            - const: rx0_symbol_clk
+            - const: tx0_symbol_clk
+
+    else:
+      properties:
+        clocks:
+          items:
+            - description: PLL reference clock
+
+        clock-names:
+          items:
+            - const: ref_clk
+
 additionalProperties: false
 
 examples:
-- 
2.37.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

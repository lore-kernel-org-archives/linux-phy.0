Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D2A4CCA485
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 07:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSLgOQtM0Uv+DeO1JF7LwcUmhxMgMZMQZ92UY6TEEAo=; b=vMQQS+VsAh5cOd
	XFvtvfccDnG1Y/JqGPGjnqD7e+2+9ZHNzJyYuGp6oLL4Bdttc1mX9OAG1Lj4cPhGGSqhfFbFMzRbk
	zmLI2BbMxCAbeODGWJhG1buYPP3XD8q7cK0HIGrQNagvQIx+oJ1mkfdWnFBp0W5+SK3t8yTW2RULm
	aOnt203aq4QvOrmDJFksxOUOy0yFdFfswWnbKxdVF+0AQnuFmxW0P82BKlBVnPTU6f5hdIxVJEzIJ
	NzX9X2tch2iCviRuZfGzsQ0APOBSoNpYQlj5Wx8JI2kIPTwRsnweRVBUKF3nqgFrpchKPpFywf+4H
	QNZ8DwxIfhDZvsZwILSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTfQ-005SPV-8f; Tue, 07 Jun 2022 07:30:20 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTeq-005SCl-6N
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 07:29:49 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20220607072940epoutp03d070bba216cd20c15adfd51fb6cbc1f4~2Rhe4WRu_0967009670epoutp03G
	for <linux-phy@lists.infradead.org>; Tue,  7 Jun 2022 07:29:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20220607072940epoutp03d070bba216cd20c15adfd51fb6cbc1f4~2Rhe4WRu_0967009670epoutp03G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654586980;
	bh=Mrq6OfP6yPWQ0z5aKHyFj01E3CKeWm9uQOPbAQlNB/c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bw25qpBnuiWj5rSANqsywvXt9cppdI7/IfYlFqp0GkGAi3FhNeUn6zGB6x/3InyZx
	 3Nuv8OmhRY4CGRJnquu+aCShHOm4ls32XnGwXFIFaqGeTnM0cAPrOQAi5Bj9Zx3VkZ
	 Jauqw2VWCZXKVGreaPJU2uLGTIXzf8BKMSL605l4=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTP id
	20220607072940epcas2p1456bc03421304c923b96fcc93f387546~2RheXfEaj1900219002epcas2p16;
	Tue,  7 Jun 2022 07:29:40 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.101]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4LHMSL6hxfz4x9QP; Tue,  7 Jun
	2022 07:29:38 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
	epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	D2.3E.09764.26EFE926; Tue,  7 Jun 2022 16:29:38 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
	20220607072938epcas2p1e9047a52882d77423e6f790939186d5b~2RhcUVVJw1461414614epcas2p1b;
	Tue,  7 Jun 2022 07:29:38 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220607072938epsmtrp12c96474531e79cc1617eb8fdd3be71ef~2RhcTkB8X0498404984epsmtrp17;
	Tue,  7 Jun 2022 07:29:38 +0000 (GMT)
X-AuditID: b6c32a46-f75ff70000002624-fd-629efe624e26
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	EA.53.08924.16EFE926; Tue,  7 Jun 2022 16:29:37 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20220607072937epsmtip1335e36c5244f1a4933366c3a586f1f99~2RhcI5X3s0977909779epsmtip1C;
	Tue,  7 Jun 2022 07:29:37 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar
	<alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof
	Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH v4 1/5] dt-bindings: phy: samsung,ufs-phy: make pmu-syscon
 as phandle-array
Date: Tue,  7 Jun 2022 16:29:03 +0900
Message-Id: <20220607072907.127000-2-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220607072907.127000-1-chanho61.park@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKJsWRmVeSWpSXmKPExsWy7bCmhW7Sv3lJBv++aVg8mLeNzeLyfm2L
	+UfOsVpceNrDZtH34iGzxd7XW9ktNj2+xmoxYdU3FosZ5/cxWbTuPcJusfPOCWYHbo9NqzrZ
	PO5c28PmsXlJvUffllWMHsdvbGfy+LxJLoAtKtsmIzUxJbVIITUvOT8lMy/dVsk7ON453tTM
	wFDX0NLCXEkhLzE31VbJxSdA1y0zB+g6JYWyxJxSoFBAYnGxkr6dTVF+aUmqQkZ+cYmtUmpB
	Sk6BeYFecWJucWleul5eaomVoYGBkSlQYUJ2Rt/d6cwFs7grfs5Zx9bA+IWji5GTQ0LARGL5
	rk3MXYxcHEICOxgl9i7+AOV8YpS4eXgNI4TzmVHi6YXFrDAtvxf9Z4VI7GKU2Lp1HhOE85FR
	YtuLjewgVWwCuhJbnr8CaxcRaGeSOHFvLjuIwyywmVHi5IQNzCBVwgKxEpfaJ7OB2CwCqhLT
	121hArF5BewlLn/qZ4HYJy+xYX4vUD0HB6eAg8SS01oQJYISJ2c+ASthBipp3job7HAJgYkc
	Eg3XvkL1ukj8Xn0J6m5hiVfHt7BD2FISL/vboOxiiaWzPjFBNDcwSlze9osNImEsMetZOyPI
	YmYBTYn1u/RBTAkBZYkjt6D28kl0HP7LDhHmlehoE4JoVJc4sH061AWyEt1zPkNd4CHx6tYv
	aPhOZpTY8+sn+wRGhVlI3pmF5J1ZCIsXMDKvYhRLLSjOTU8tNiowgsdxcn7uJkZwetVy28E4
	5e0HvUOMTByMhxglOJiVRHj9J89NEuJNSaysSi3Kjy8qzUktPsRoCgzricxSosn5wASfVxJv
	aGJpYGJmZmhuZGpgriTO65WyIVFIID2xJDU7NbUgtQimj4mDU6qBaeOpXTt/n738JdhEVujh
	oWflU8/sV1+k8KP9VfCzA5pdoZmr37ywklnHc3/NYuZZFQulVXIO6+65njU9b2/ePc0ct2jX
	A1NKHBjnch3NCXh607VX5vvd+V6i3jVbF8eVStsdWuiidrm3KyzQM/Xm9vkCIZODp0wyTGaQ
	WlX+pCFJbn2Ig9Aase/CbyMc/eT+2pkL2OeypS/YZbanxroy5mp0YcmFHzY7edvvFruK6hm9
	6dOZfzOptUuL763hPo1tScyW65PmZyfqaC/w+rxI4durWRnbo3vz3IsjTvi9i+e6edXm/pUv
	S294q2112KGxQ+9OV8cuZtbfk982bV+yq5u1NPevTIDtzwXfJ5QfUWIpzkg01GIuKk4EAPNA
	w+s4BAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHLMWRmVeSWpSXmKPExsWy7bCSnG7iv3lJBl1PrSwezNvGZnF5v7bF
	/CPnWC0uPO1hs+h78ZDZYu/rrewWmx5fY7WYsOobi8WM8/uYLFr3HmG32HnnBLMDt8emVZ1s
	Hneu7WHz2Lyk3qNvyypGj+M3tjN5fN4kF8AWxWWTkpqTWZZapG+XwJXRd3c6c8Es7oqfc9ax
	NTB+4ehi5OSQEDCR+L3oP2sXIxeHkMAORokvJ9awQiRkJZ6928EOYQtL3G85AlX0nlFiT8te
	NpAEm4CuxJbnrxhBEiIC3UwSczb1M4E4zALbGSU+LF3H0sXIwSEsEC3R9scQpIFFQFVi+rot
	TCA2r4C9xOVP/SwQG+QlNszvZQYp5xRwkFhyWgskLARUMuvIZxaIckGJkzOfgNnMQOXNW2cz
	T2AUmIUkNQtJagEj0ypGydSC4tz03GLDAqO81HK94sTc4tK8dL3k/NxNjOAo0NLawbhn1Qe9
	Q4xMHIyHGCU4mJVEeP0nz00S4k1JrKxKLcqPLyrNSS0+xCjNwaIkznuh62S8kEB6Yklqdmpq
	QWoRTJaJg1OqgWm1yr3CD4XxRT3zDlwR3Hfi5J6KiNzZYj0bmW36D5uJrJ1e+z/k9sWDGq8O
	GBdu6N5RrmJ+x+Zh7/pajSux2w6wZ7y3nfayN62pqfwh08VnjWlCZ74nLZjnJ3co5em+tLu+
	Hce2t0/lObIqQjnZVEmDf2fB5cT1knka+pWb9YLz3wmeVdL5sfvHhi2KqVc2Ptpau6az9C3H
	qvWWfe1KljUf7rAHPI8qSdLNzl5tGs4V+iQnYIm5ZIqmQsLqw98nlrV9j9M5ypGjlFny+v/9
	A2uX/v9pzhn5I1d0C1fW7KL2mV//Zh94cOJ04x3uJVHP+la1STUsNmFLtN2g/CC3bWcu1wE+
	kRMz47xbXBaLhSqxFGckGmoxFxUnAgAzHHnj8QIAAA==
X-CMS-MailID: 20220607072938epcas2p1e9047a52882d77423e6f790939186d5b
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220607072938epcas2p1e9047a52882d77423e6f790939186d5b
References: <20220607072907.127000-1-chanho61.park@samsung.com>
	<CGME20220607072938epcas2p1e9047a52882d77423e6f790939186d5b@epcas2p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_002944_615761_9957BCA8 
X-CRM114-Status: GOOD (  13.19  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Chanho Park <chanho61.park@samsung.com>
---
 .../devicetree/bindings/phy/samsung,ufs-phy.yaml   | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
index f6ed1a005e7a..17897a3b5c9e 100644
--- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
@@ -40,9 +40,17 @@ properties:
       - const: tx0_symbol_clk
 
   samsung,pmu-syscon:
-    $ref: '/schemas/types.yaml#/definitions/phandle'
-    description: phandle for PMU system controller interface, used to
-                 control pmu registers bits for ufs m-phy
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    maxItems: 1
+    items:
+      minItems: 1
+      items:
+        - description: phandle for PMU system controller interface, used to
+                       control pmu registers bits for ufs m-phy
+        - description: offset of the pmu control register
+    description:
+      It can be phandle/offset pair. The second cell which can represent an
+      offset is optional.
 
 required:
   - "#phy-cells"
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

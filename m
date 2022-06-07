Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 193A7CCA486
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 07:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2EpYc4lFSkVmvdtURPmVTP4o+6Xjwtoor/vdcSllLY=; b=Qa8RgoaQrNcfYW
	PgC0EXOVGtCBBv17G572q+8nqlWUOy/A3712aaXyofXltE3mU86JTbCJIGIKTkbfOeAe7IsPkiZ3t
	WUOkDCXdU6L9zJ9zvS+vcS65K3bma75S6QJjgOqgNSQk/PKnmfrXjNFYpx6sArOoa9Mfdo9jkRUDg
	CfFzjXkqEAMjo7ZBpAAcIqdQxerVyFn+nPkBGbrxTEMtu1HFv1LqJAiJq7ARJZdK4mooLQKeVhiPo
	TIEHW/qGUQrzeoK/2qR+AUOA9tyszY7P34D0ziM1FZSins/2TWDl/WjucRHt2biMu98w+gLLughjl
	8UrlEe5tMiaw+Ns2M4cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTfQ-005SPq-FY; Tue, 07 Jun 2022 07:30:20 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTeq-005SCk-6N
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 07:29:49 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20220607072940epoutp0338c729091eaaffc656bebd5688289f25~2RherPVPn1127111271epoutp03a
	for <linux-phy@lists.infradead.org>; Tue,  7 Jun 2022 07:29:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20220607072940epoutp0338c729091eaaffc656bebd5688289f25~2RherPVPn1127111271epoutp03a
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654586980;
	bh=tIoO8AGDDmM88UsJzgLNNe5g+xFEMPP6I9m0oOSTECc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=X26NVgubo0Bm/9AZW1vq9dkcVviwTVtT4l8DsYBZtycd2AgK391wdc0xe8KFfDGgs
	 8OsxR50kWG/9wbHXgYSyZceYwiqC0dsDcCbrH1JxLv8brfGPxqjX27Jw4ToTRP3F9O
	 B1JG3ljhtBYm1geBbKqkzFiqLvLGua+co4bafJGo=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTP id
	20220607072940epcas2p140d79b2836cdb072f72ef068e6993bd6~2RheLNBxz1461414614epcas2p1m;
	Tue,  7 Jun 2022 07:29:40 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.99]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4LHMSM0Jddz4x9Pw; Tue,  7 Jun
	2022 07:29:39 +0000 (GMT)
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
	epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	92.CA.10028.26EFE926; Tue,  7 Jun 2022 16:29:38 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
	20220607072938epcas2p104b9af05f4d4b18337df8bb6dab4964b~2RhcopmQu1461414614epcas2p1e;
	Tue,  7 Jun 2022 07:29:38 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220607072938epsmtrp13ce7b44f9d2b27221a7ec73cb9f8627b~2Rhcn4dr80498504985epsmtrp15;
	Tue,  7 Jun 2022 07:29:38 +0000 (GMT)
X-AuditID: b6c32a47-589ff7000000272c-96-629efe62e23a
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	78.77.11276.26EFE926; Tue,  7 Jun 2022 16:29:38 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20220607072938epsmtip164bec50f35376cfa456d3fe789f27e47~2RhcZO6Gy0442304423epsmtip1h;
	Tue,  7 Jun 2022 07:29:38 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar
	<alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof
	Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH v4 5/5] phy: samsung: ufs: support secondary ufs phy
Date: Tue,  7 Jun 2022 16:29:07 +0900
Message-Id: <20220607072907.127000-6-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220607072907.127000-1-chanho61.park@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMJsWRmVeSWpSXmKPExsWy7bCmuW7Sv3lJBju7rC0ezNvGZnF5v7bF
	/CPnWC0uPO1hs+h78ZDZYu/rrewWmx5fY7WYsOobi8WM8/uYLFr3HmG32HnnBLMDt8emVZ1s
	Hneu7WHz2Lyk3qNvyypGj+M3tjN5fN4kF8AWlW2TkZqYklqkkJqXnJ+SmZduq+QdHO8cb2pm
	YKhraGlhrqSQl5ibaqvk4hOg65aZA3SdkkJZYk4pUCggsbhYSd/Opii/tCRVISO/uMRWKbUg
	JafAvECvODG3uDQvXS8vtcTK0MDAyBSoMCE748m7OewF97kq9rd0sDQwTuLsYuTkkBAwkdh3
	cAJrFyMXh5DADkaJi5N3M0M4nxgldnVtZoFwvjFKTJr3H6iMA6zl4BU5iPheRok1v7YzQjgf
	GSVmXZ/ICDKXTUBXYsvzV2AJEYF2JokT9+aygzjMApsZJU5O2MAMUiUs4CLRuGotO4jNIqAq
	0XhsHguIzStgL9F1+wUbxIXyEhvm9zKDrOYUcJBYcloLokRQ4uTMJ2DlzEAlzVtnM0OU93JI
	7G9WgrBdJJbffM0OYQtLvDq+BcqWknjZ3wZlF0ssnfWJCeQ2CYEGRonL235B7TWWmPWsnRFk
	L7OApsT6XfoQ3ytLHLkFtZZPouPwX3aIMK9ER5sQRKO6xIHt01kgbFmJ7jmfWSFsD4kXV7ax
	Q8JqMqPEnZ2NzBMYFWYh+WYWkm9mISxewMi8ilEstaA4Nz212KjAGB7Dyfm5mxjBqVXLfQfj
	jLcf9A4xMnEwHmKU4GBWEuH1nzw3SYg3JbGyKrUoP76oNCe1+BCjKTCoJzJLiSbnA5N7Xkm8
	oYmlgYmZmaG5kamBuZI4r1fKhkQhgfTEktTs1NSC1CKYPiYOTqkGJt31C0+Gd127uftNxa/2
	xp9bzP0qVx59P9sjSevp6g7xR5O/3ptQNzP24b/EEAfuqQeWb9dvn6zyzrFp2eqlhkxzpl34
	cPzJ9GbVL6axjexPfSU6r6rVn5+YrP+8TX2RvXv3XxlnM+193Fb6lVMcVvuwe8T9MHv7fip3
	0LZzNg8nXmNvvfk/6Hqjrc2aOHPl19lXpnicaKw1MtSYwfZFf5LtPMGGM4wMq7/VubFNSnSP
	ff7RN+BX6KLm/ycFm+5WJsz4U/JI/5nWwy0GU12jF15LVS1XOjttVVHuqVTXyR5/8q9sfmJT
	eMh95xr9DxbPYt6teTYlbovy7qj5Mbde1JvfmnTkxO6fa4Re365U2sunxFKckWioxVxUnAgA
	S/4WITYEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrLLMWRmVeSWpSXmKPExsWy7bCSnG7Sv3lJBpNXCFs8mLeNzeLyfm2L
	+UfOsVpceNrDZtH34iGzxd7XW9ktNj2+xmoxYdU3FosZ5/cxWbTuPcJusfPOCWYHbo9NqzrZ
	PO5c28PmsXlJvUffllWMHsdvbGfy+LxJLoAtissmJTUnsyy1SN8ugSvjybs57AX3uSr2t3Sw
	NDBO4uxi5OCQEDCROHhFrouRi0NIYDejxPQtE1i6GDmB4rISz97tYIewhSXutxxhBbGFBN4z
	SlyayQFiswnoSmx5/ooRpFlEoJtJYs6mfiYQh1lgO6PEh6XrwCYJC7hINK5aCzaJRUBVovHY
	PLA4r4C9RNftF2wQG+QlNszvZQa5iFPAQWLJaS2IZfYSs458hioXlDg58wmYzQxU3rx1NvME
	RoFZSFKzkKQWMDKtYpRMLSjOTc8tNiwwzEst1ytOzC0uzUvXS87P3cQIjgEtzR2M21d90DvE
	yMTBeIhRgoNZSYTXf/LcJCHelMTKqtSi/Pii0pzU4kOM0hwsSuK8F7pOxgsJpCeWpGanphak
	FsFkmTg4pRqYdL6vfrFAtmWNcfMaVdb+FVL2t2sqawXvznmbLmw5t2rLwb3c+zU2Rb0Pl0p4
	p31+6aLQxOcPc9j/fa3zL8hPPPDVK/g0074jYQ1KP07lvjm24dDpX3of/nHeMT2us+KgjfuJ
	cjnp9vV2/wyY++Qri1OOXTyTeTCIQdjAvuLfwYZ3j9wW7K2s54xmWrzy8inNTqans7vrpp60
	yQ7fX7f40ATWPZlcJo+4arN/9vnc6V4q8vv9lHNxNx9wP+dJ+Gl/Rb39LWftg6qmqdcKYlbt
	KDsoHvzfcqXNnkXMa+pSZkVa7+rY+u9uqXs/cwd7T8jThQYdPlMfbt63ceN53v8KGg9TL008
	v1r6Ad/ZVEP5O0osxRmJhlrMRcWJAOta/S3wAgAA
X-CMS-MailID: 20220607072938epcas2p104b9af05f4d4b18337df8bb6dab4964b
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220607072938epcas2p104b9af05f4d4b18337df8bb6dab4964b
References: <20220607072907.127000-1-chanho61.park@samsung.com>
	<CGME20220607072938epcas2p104b9af05f4d4b18337df8bb6dab4964b@epcas2p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_002944_606964_E3E918DA 
X-CRM114-Status: GOOD (  15.11  )
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

To support secondary ufs phy device, we need to get an offset for phy
isolation from the syscon DT node. If the first index argument of the
node is existing, we can read the offset value and set it as isol->offset.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Chanho Park <chanho61.park@samsung.com>
---
 drivers/phy/samsung/phy-samsung-ufs.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
index 0c933e364064..206a79c69a6c 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.c
+++ b/drivers/phy/samsung/phy-samsung-ufs.c
@@ -288,6 +288,7 @@ static int samsung_ufs_phy_probe(struct platform_device *pdev)
 	struct phy *gen_phy;
 	struct phy_provider *phy_provider;
 	const struct samsung_ufs_phy_drvdata *drvdata;
+	u32 isol_offset;
 	int err = 0;
 
 	match = of_match_node(samsung_ufs_phy_match, dev->of_node);
@@ -330,6 +331,10 @@ static int samsung_ufs_phy_probe(struct platform_device *pdev)
 	phy->has_symbol_clk = drvdata->has_symbol_clk;
 	memcpy(&phy->isol, &drvdata->isol, sizeof(phy->isol));
 
+	if (!of_property_read_u32_index(dev->of_node, "samsung,pmu-syscon", 1,
+					&isol_offset))
+		phy->isol.offset = isol_offset;
+
 	phy->lane_cnt = PHY_DEF_LANE_CNT;
 
 	phy_set_drvdata(gen_phy, phy);
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

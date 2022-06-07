Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58FC5C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 17:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gHzRhWIb/dRDcXMSQRnbnNLBCvMwgoho6rCGjMGIy+k=; b=NcUcgKMmo4CrZN
	oQftbCWVnirkrvFUm5qZHFS0nKQ0/mNhh3VAroHUuf9HuXMytumHMwEmwth0/I3i/Wp1WPxsm5wQX
	bOS3i0iZ8q7wc+iUCci3b7+WgO2HqMqW8Cs0BJXh907yaxo/IJOZTpImn+J7sZi0VT/5S3MhFEdvK
	vovk+f7EUrYrSnLyUrfQi1nF74dtUvlQzGPQSIs0DQRrkSdhpf0To57bfGOJonlrFSnU8fqK+Cvvk
	z25GOAxmaf/8tiU99/yQope5G/ZbnTqrmzvvMylDgvq6OEFxattdoD7k5AcJQ5yR1aVdNT6UlWS8A
	aLa70Jd9Nk17wZKSZNdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyclJ-008YhU-Kq; Tue, 07 Jun 2022 17:13:01 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyclG-008YfU-NI
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 17:13:00 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220607171256epoutp02074b72c9427c7c2f63144109c70fb598~2Zeu2yA3u0349503495epoutp02a
	for <linux-phy@lists.infradead.org>; Tue,  7 Jun 2022 17:12:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220607171256epoutp02074b72c9427c7c2f63144109c70fb598~2Zeu2yA3u0349503495epoutp02a
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654621976;
	bh=bw0dnRnFhOp/hyNEeOjIOUIosfP7U3oYs375oSGOr0c=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=ALHOsnECqLpPMr0+sHLKb9NSkUHbL2+qfJdfmgdd6bpwOj+nUFUl+oRlAE0p6wVRE
	 EQO45E4dR0GwtVFpXhQEKMeFSqBcUHUhfCQeiZ6JJPKp8pOIDcRC+raaQhT+26MeKw
	 fbSOUje3303y8gjeOLwNGpWOatw12JidBZL+G2pA=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTP id
	20220607171255epcas5p12df538b8b023131aac1d0f9fa09d9c98~2ZeuT8U-72595125951epcas5p1g;
	Tue,  7 Jun 2022 17:12:55 +0000 (GMT)
Received: from epsmges5p1new.samsung.com (unknown [182.195.38.177]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4LHcPJ1dJ5z4x9Ps; Tue,  7 Jun
	2022 17:12:52 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
	epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	F7.E9.10063.4178F926; Wed,  8 Jun 2022 02:12:52 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20220607171251epcas5p15fe34a9e43a05855ee63cec91bded620~2ZeqpsSqw2595225952epcas5p1g;
	Tue,  7 Jun 2022 17:12:51 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220607171251epsmtrp266fb65f35eeffb9c6fbd9a4e49716706~2ZeqoV7l40886008860epsmtrp2Y;
	Tue,  7 Jun 2022 17:12:51 +0000 (GMT)
X-AuditID: b6c32a49-4cbff7000000274f-f6-629f8714c0f6
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	5B.F6.08924.3178F926; Wed,  8 Jun 2022 02:12:51 +0900 (KST)
Received: from alimakhtar03 (unknown [107.122.12.5]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20220607171249epsmtip2eedef61d838661406e495e2ab88f85c6~2ZepHELVm1261312613epsmtip2W;
	Tue,  7 Jun 2022 17:12:49 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Chanho Park'" <chanho61.park@samsung.com>, "'Kishon Vijay Abraham I'"
	<kishon@ti.com>, "'Vinod Koul'" <vkoul@kernel.org>, "'Krzysztof Kozlowski'"
	<krzysztof.kozlowski@linaro.org>, "'Rob Herring'" <robh+dt@kernel.org>,
	"'Krzysztof	Kozlowski'" <krzysztof.kozlowski+dt@linaro.org>
Cc: <devicetree@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
In-Reply-To: <20220607072907.127000-6-chanho61.park@samsung.com>
Subject: RE: [PATCH v4 5/5] phy: samsung: ufs: support secondary ufs phy
Date: Tue, 7 Jun 2022 22:42:48 +0530
Message-ID: <00ab01d87a91$d1af41c0$750dc540$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJ2i5m4q1cxa8jD2OFuvpyrHOG1RgINGfN8AmrYMU6r5EzPUA==
Content-Language: en-us
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFJsWRmVeSWpSXmKPExsWy7bCmhq5I+/wkg3PbWC0u79e2mH/kHKvF
	hac9bBZ9Lx4yW+x9vZXdYtPja6wWE1Z9Y7GYcX4fk0Xr3iPsFjvvnGB24PLYtKqTzePOtT1s
	HpuX1Hv0bVnF6HH8xnYmj8+b5ALYorJtMlITU1KLFFLzkvNTMvPSbZW8g+Od403NDAx1DS0t
	zJUU8hJzU22VXHwCdN0yc4AOU1IoS8wpBQoFJBYXK+nb2RTll5akKmTkF5fYKqUWpOQUmBTo
	FSfmFpfmpevlpZZYGRoYGJkCFSZkZzyd942lYJZgxemzK5gbGL/zdTFyckgImEhMn7WRGcQW
	EtjNKNHwhLeLkQvI/sQo0T1/CSOE85lR4sbOC0wwHUen7WeHSOxilLi5az4zhPOSUeLW3t9g
	VWwCuhI7FrexgdgiAguZJKa1+IDYzAITGCVWfvIGsTkFHCQaOq+D7RYW8JB4sO8tUC8HB4uA
	isSZbRwgYV4BS4k3D28wQtiCEidnPmGBGKMtsWzha2aIgxQkfj5dxgqxykmicf46qBpxiZdH
	j4AdKiGwg0PiwqkzUB+4SDx7vZoFwhaWeHV8CzuELSXx+d1eNpAbJIDuWfRHCiKcIfF2+XpG
	CNte4sCVOSwgJcwCmhLrd+lDrOKT6P39hAmik1eio00IolpVovndVahF0hITu7tZIWwPiRdX
	trFPYFScheSxWUgem4XkgVkIyxYwsqxilEwtKM5NTy02LTDMSy2Hx3Zyfu4mRnCi1fLcwXj3
	wQe9Q4xMHIyHGCU4mJVEeCXD5ycJ8aYkVlalFuXHF5XmpBYfYjQFBvZEZinR5Hxgqs8riTc0
	sTQwMTMzM7E0NjNUEucV+N+YJCSQnliSmp2aWpBaBNPHxMEp1cC0bV/4T1kpfYWwH0n3H+zP
	7EhTsrRmTt77bumJWMYLfDubuVLmnbscxRJxfIFLwoHzwjo33q/5F9ojGrxCzSzyluRTf728
	o/yMTgembvxl/+zX/Rf+j1gMd3YvCL4s88BLZ9PSJzan1uXlph3XsvgwxWGlzuPmcyvPZU5T
	rlG/wOsSvGfmeZHDq04ki1fND9iVIn56Qkjg28C/x1kkz9WcmJo/4x7jq+l161me/bgtrGnf
	xrWy/YOc1PtopqxNPrw3DpWJ/ZQSfrPOgnUN18nfK7bsFLJJV1paH18z/eexl5lfuLVsP685
	3KWnJ8oZMcHun2yOfc0R/oVWm3b/Fzi6bqWg6Z8bWdIXrp2bqBu7X4mlOCPRUIu5qDgRAPLL
	gCw9BAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGIsWRmVeSWpSXmKPExsWy7bCSvK5w+/wkg83zFCwu79e2mH/kHKvF
	hac9bBZ9Lx4yW+x9vZXdYtPja6wWE1Z9Y7GYcX4fk0Xr3iPsFjvvnGB24PLYtKqTzePOtT1s
	HpuX1Hv0bVnF6HH8xnYmj8+b5ALYorhsUlJzMstSi/TtErgyNvXcYyy4I1Ax7/U9lgbGnXxd
	jJwcEgImEken7WfvYuTiEBLYwSjx6HUbC0RCWuL6xgnsELawxMp/z6GKnjNKnLw6iQ0kwSag
	K7FjcRsbSEJEYCmTRMedmcwgDrPAFEaJy1dfgo0SEjjKKHHqHzeIzSngINHQeZ0ZxBYW8JB4
	sO8tUxcjBweLgIrEmW0cIGFeAUuJNw9vMELYghInZz4BG8MsoC3R+7CVEcZetvA1M8R1ChI/
	ny5jBbFFBJwkGuevg6oXl3h59Aj7BEbhWUhGzUIyahaSUbOQtCxgZFnFKJlaUJybnltsWGCU
	l1quV5yYW1yal66XnJ+7iREcdVpaOxj3rPqgd4iRiYPxEKMEB7OSCK9k+PwkId6UxMqq1KL8
	+KLSnNTiQ4zSHCxK4rwXuk7GCwmkJ5akZqemFqQWwWSZODilGphONXx57Bd0WypyW5/YqTeC
	5sonOnZ2PU84drnw4KYpJtxFnM65C09cNfljEzk/fI1O7vb6efJxTYdWdLiqJDGLK+84f3m9
	2vcUQRm+azqenIwK2m+XNKy8tOy67Kl7O+pvH5+5xKnfNvJwQdmWW8FF84R1VvXLsEZpGvaH
	ip/j+jbhsfbFuwpcyc/yGpI+hPEnHA4u37Ew6rnbxF+iNRcdnxkX3el+150ovJ13itfb7XvD
	NxzJe9e07/A03ryp5+c3y70zjJb+eDZc794HX5/PmdNPVV4rmnxFK6b85Qs5Dd9va+Xv1T8p
	2Daj9NWpqf94T2qHnPVWL+sw5HU8bul653fFoqCPx76/ZTJVueCkxFKckWioxVxUnAgAMDkn
	3ykDAAA=
X-CMS-MailID: 20220607171251epcas5p15fe34a9e43a05855ee63cec91bded620
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220607072938epcas2p104b9af05f4d4b18337df8bb6dab4964b
References: <20220607072907.127000-1-chanho61.park@samsung.com>
	<CGME20220607072938epcas2p104b9af05f4d4b18337df8bb6dab4964b@epcas2p1.samsung.com>
	<20220607072907.127000-6-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_101259_161810_4D1B7DC6 
X-CRM114-Status: GOOD (  11.23  )
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



>-----Original Message-----
>From: Chanho Park [mailto:chanho61.park@samsung.com]
>Sent: Tuesday, June 7, 2022 12:59 PM
>To: Kishon Vijay Abraham I <kishon@ti.com>; Vinod Koul
><vkoul@kernel.org>; Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>;
>Alim Akhtar <alim.akhtar@samsung.com>; Rob Herring
><robh+dt@kernel.org>; Krzysztof Kozlowski
><krzysztof.kozlowski+dt@linaro.org>
>Cc: devicetree@vger.kernel.org; linux-phy@lists.infradead.org; linux-
>samsung-soc@vger.kernel.org; linux-arm-kernel@lists.infradead.org; Chanho
>Park <chanho61.park@samsung.com>
>Subject: [PATCH v4 5/5] phy: samsung: ufs: support secondary ufs phy
>
>To support secondary ufs phy device, we need to get an offset for phy
>isolation from the syscon DT node. If the first index argument of the node is
>existing, we can read the offset value and set it as isol->offset.
>
>Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>Signed-off-by: Chanho Park <chanho61.park@samsung.com>
>---
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>


> drivers/phy/samsung/phy-samsung-ufs.c | 5 +++++
> 1 file changed, 5 insertions(+)
>
>diff --git a/drivers/phy/samsung/phy-samsung-ufs.c
>b/drivers/phy/samsung/phy-samsung-ufs.c
>index 0c933e364064..206a79c69a6c 100644
>--- a/drivers/phy/samsung/phy-samsung-ufs.c
>+++ b/drivers/phy/samsung/phy-samsung-ufs.c
>@@ -288,6 +288,7 @@ static int samsung_ufs_phy_probe(struct
>platform_device *pdev)
> 	struct phy *gen_phy;
> 	struct phy_provider *phy_provider;
> 	const struct samsung_ufs_phy_drvdata *drvdata;
>+	u32 isol_offset;
> 	int err = 0;
>
> 	match = of_match_node(samsung_ufs_phy_match, dev->of_node);
>@@ -330,6 +331,10 @@ static int samsung_ufs_phy_probe(struct
>platform_device *pdev)
> 	phy->has_symbol_clk = drvdata->has_symbol_clk;
> 	memcpy(&phy->isol, &drvdata->isol, sizeof(phy->isol));
>
>+	if (!of_property_read_u32_index(dev->of_node, "samsung,pmu-
>syscon", 1,
>+					&isol_offset))
>+		phy->isol.offset = isol_offset;
>+
> 	phy->lane_cnt = PHY_DEF_LANE_CNT;
>
> 	phy_set_drvdata(gen_phy, phy);
>--
>2.36.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

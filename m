Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4485FC43334
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 17:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KDAerqknD1dT0a76qJgHG6fmIfRCaHMqIK9W2W0LRqo=; b=eQw7OaeQqx4Csz
	5ncVadwbz/5VgVDppsKKiAZQPji/YE3rOMjhif38hzfoqaevbdyICpDGNxTUnwvQcjE3ARH/UUElc
	v5tweDhh1G3IxYuZchZBIK9pPl8cW7oDpE/kM9y5hv7fPCiO5gsYu1Qgtc1crp4kDK5ItM2v9acY0
	lBhfSR96W73PV1Yg6/c0yd/uEWcnC4uzbqD9UMASDuhOgqpzUnJjox9tYKfVKASOCx1NG1rx2BuLM
	AwabGSjSz7EHDzdNvJzbcpCzsDnkS6pdxMSkKfUGZc+PayjnMniKWcsfk6+CZkTggfmGjFxHpgToU
	Ugsn0AQBSEGViOs7ALXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nycl0-008YaI-Ky; Tue, 07 Jun 2022 17:12:42 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nycko-008YUs-A0
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 17:12:32 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20220607171225epoutp01508e2fe5a3cec5472f64180471052423~2ZeSfh6st0554205542epoutp01I
	for <linux-phy@lists.infradead.org>; Tue,  7 Jun 2022 17:12:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20220607171225epoutp01508e2fe5a3cec5472f64180471052423~2ZeSfh6st0554205542epoutp01I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654621945;
	bh=AuGrCAzdSuChusVYNDGhOo40tvzI+JKgVLsgVUm4buo=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=rCEInqsvz3H5TjmETWuBVeMwseJCBvo4PShCLLw6lG8gNEqbA7mq1UH784n1pAvUW
	 +w+oIrMkdWjGm9S2gsu7W1PhLP8NRvGTLcNdxmPS3CMMSYpKGH/HXLFzgk7I9+z3MK
	 nSVQ9yRCXgu6QRpluhYdOxF4S7F2uu01ixASlW3Y=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTP id
	20220607171224epcas5p4ff2b4735f91a76aaf2c31278a8551d15~2ZeRLDybu2617726177epcas5p4F;
	Tue,  7 Jun 2022 17:12:24 +0000 (GMT)
Received: from epsmges5p1new.samsung.com (unknown [182.195.38.176]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4LHcNj45mXz4x9Pp; Tue,  7 Jun
	2022 17:12:21 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
	epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	FD.D9.10063.5F68F926; Wed,  8 Jun 2022 02:12:21 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20220607171221epcas5p22eb883006d87c2ab42ab54d0272d04f4~2ZeOTwtfA0577805778epcas5p26;
	Tue,  7 Jun 2022 17:12:21 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220607171221epsmtrp21c4a1e207a8ca206baf80bb13a45c0e3~2ZeOS_ukr0885908859epsmtrp2W;
	Tue,  7 Jun 2022 17:12:21 +0000 (GMT)
X-AuditID: b6c32a49-4b5ff7000000274f-c3-629f86f590a7
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	0A.F6.08924.5F68F926; Wed,  8 Jun 2022 02:12:21 +0900 (KST)
Received: from alimakhtar03 (unknown [107.122.12.5]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20220607171219epsmtip1c36f03009d94367b5c63465bd37308fc~2ZeMuf7ic2818828188epsmtip1x;
	Tue,  7 Jun 2022 17:12:19 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Chanho Park'" <chanho61.park@samsung.com>, "'Kishon Vijay Abraham I'"
	<kishon@ti.com>, "'Vinod Koul'" <vkoul@kernel.org>, "'Krzysztof Kozlowski'"
	<krzysztof.kozlowski@linaro.org>, "'Rob Herring'" <robh+dt@kernel.org>,
	"'Krzysztof	Kozlowski'" <krzysztof.kozlowski+dt@linaro.org>
Cc: <devicetree@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
In-Reply-To: <20220607072907.127000-5-chanho61.park@samsung.com>
Subject: RE: [PATCH v4 4/5] phy: samsung: ufs: remove drvdata from struct
 samsung_ufs_phy
Date: Tue, 7 Jun 2022 22:42:17 +0530
Message-ID: <00aa01d87a91$bf8fab60$3eaf0220$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJ2i5m4q1cxa8jD2OFuvpyrHOG1RgFNj1bYAxRdbDer5PzXMA==
Content-Language: en-us
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrBJsWRmVeSWpSXmKPExsWy7bCmuu7XtvlJBk8uyFlc3q9tMf/IOVaL
	C0972Cz6Xjxkttj7eiu7xabH11gtJqz6xmIx4/w+JovWvUfYLXbeOcHswOWxaVUnm8eda3vY
	PDYvqffo27KK0eP4je1MHp83yQWwRWXbZKQmpqQWKaTmJeenZOal2yp5B8c7x5uaGRjqGlpa
	mCsp5CXmptoqufgE6Lpl5gAdpqRQlphTChQKSCwuVtK3synKLy1JVcjILy6xVUotSMkpMCnQ
	K07MLS7NS9fLSy2xMjQwMDIFKkzIzji44CVjwQuFikuXIhsYJ8l0MXJySAiYSCz+0cvcxcjF
	ISSwm1Gie/lhVgjnE6PEwpNfGSGcz4wSNxs7GGFaNn9+xASR2MUo8epeFxuE85JRYuPCPywg
	VWwCuhI7FrexgdgiAguZJKa1+IDYzAITGCVWfvLuYuTg4BRwkFj+UxHEFBaIlni8TQrEZBFQ
	kdhy3wykmFfAUuLVsfXsELagxMmZT1gghshLbH87hxniHAWJn0+XsUIscpKYOu0eE0SNuMTL
	o0fYQS6TENjBIXH0w1F2iAYXiW8PXzBB2MISr45vgYpLSXx+t5cN5AYJAQ+JRX+kIMIZEm+X
	r4d63V7iwJU5LCAlzAKaEut36UOs4pPo/f2ECaKTV6KjTQiiWlWi+d1VFghbWmJidzcrhO0h
	sXDSTfYJjIqzkDw2C8ljs5A8MAth2QJGllWMkqkFxbnpqcWmBYZ5qeXwuE7Oz93ECE6yWp47
	GO8++KB3iJGJg/EQowQHs5IIr2T4/CQh3pTEyqrUovz4otKc1OJDjKbAwJ7ILCWanA9M83kl
	8YYmlgYmZmZmJpbGZoZK4rwC/xuThATSE0tSs1NTC1KLYPqYODilGpi4XLbppT/epaP0o76i
	xSa5eaW2Y9xa9nm6te/FdpcuUl3hlddTdefRvhmT++JlDzKuqrh22+4S6/EFHK0bG1IPKsz5
	0fq64sSty3IHdW3e/zvDLHHQSv9P1DT97M7HLecKGaomTGNXZNoXfkcofsK9+MJDa4M/15iv
	bK1YeIXl2GUez9rpacK5nJGfklOauGYppqfeKYnNDPzqvilmEVeyveiSL5syrr65Zh702s0h
	TEBq3pSw84djZZ3lrC0zRR/27k2LY0kL2RJ85vdvhVfar/f3nZ3XfnZroffS/AKlta97v7A9
	z86R337BxrRStaJBXi4th6W9vPiMow6X2D6ncp4cdtEsoRPGa0SuKbEUZyQaajEXFScCAEJF
	ooE7BAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCIsWRmVeSWpSXmKPExsWy7bCSnO7XtvlJBiuesltc3q9tMf/IOVaL
	C0972Cz6Xjxkttj7eiu7xabH11gtJqz6xmIx4/w+JovWvUfYLXbeOcHswOWxaVUnm8eda3vY
	PDYvqffo27KK0eP4je1MHp83yQWwRXHZpKTmZJalFunbJXBlHFzwkrHghULFpUuRDYyTZLoY
	OTkkBEwkNn9+xARiCwnsYJTYuDMTIi4tcX3jBHYIW1hi5b/nQDYXUM1zRokDHz+DJdgEdCV2
	LG5jA0mICCxlkui4M5MZxGEWmMIocfnqSxaIlqOMEvN3f2HtYuTg4BRwkFj+UxGkW1ggUmL+
	vV+MIGEWARWJLffNQMK8ApYSr46tZ4ewBSVOznzCAmIzC2hL9D5sZYSw5SW2v53DDHGdgsTP
	p8tYQWwRASeJqdPuMUHUiEu8PHqEfQKj8Cwko2YhGTULyahZSFoWMLKsYpRMLSjOTc8tNiww
	ykst1ytOzC0uzUvXS87P3cQIjjgtrR2Me1Z90DvEyMTBeIhRgoNZSYRXMnx+khBvSmJlVWpR
	fnxRaU5q8SFGaQ4WJXHeC10n44UE0hNLUrNTUwtSi2CyTBycUg1Mmp8mNLLUNX6xVL/84XTj
	B/WKLGfD99dv+jiuvG/19ZTOI3GmLf+v7KvT1JXcsV3B6a5CfZXxfOm3L39mKe4yjVvx2DD8
	pKqL7tokZbvrgZuVHSzkm9zqv4pXe3zY/Gj1nJ790c7nPs+J0mdLnulUmrb5oACr57F7k8Sm
	WxVqP9/cvElBT9O2zf8Sz5vSHUkSG9cvZP48uVAucXro1xUuuY3vjj8L5msMXPzom/sK/7ff
	jpjuCz4/6eIzt6T3IRzXuQ/OZ1LMfXvq3pfoltNfLlc3/Xr32eWX4/1wmZMVa2dZ1xdfKNHa
	dSLh655rJ4T2Hz5xrjLt1Eb2pSr84lcEpzeuYq0Ove3iXH9gmpJwqhJLcUaioRZzUXEiAAyj
	vFAnAwAA
X-CMS-MailID: 20220607171221epcas5p22eb883006d87c2ab42ab54d0272d04f4
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220607072938epcas2p1bb5de39d25c45540c01fa5dfda5bb891
References: <20220607072907.127000-1-chanho61.park@samsung.com>
	<CGME20220607072938epcas2p1bb5de39d25c45540c01fa5dfda5bb891@epcas2p1.samsung.com>
	<20220607072907.127000-5-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_101230_738876_33D0C2A2 
X-CRM114-Status: GOOD (  16.40  )
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
>Subject: [PATCH v4 4/5] phy: samsung: ufs: remove drvdata from struct
>samsung_ufs_phy
>
>To change an offset of pmu_isol, we need to store its data instead of having
>drvdata's pointer. The definition of the pmu_isol structure should be
>extracted from samsung_ufs_phy_drvdata and rename the name with
>samsung_ufs_phy_ prefix.
>
>Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>Signed-off-by: Chanho Park <chanho61.park@samsung.com>
>---

Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>


> drivers/phy/samsung/phy-samsung-ufs.c |  9 +++++----
>drivers/phy/samsung/phy-samsung-ufs.h | 19 +++++++++++--------
> 2 files changed, 16 insertions(+), 12 deletions(-)
>
>diff --git a/drivers/phy/samsung/phy-samsung-ufs.c
>b/drivers/phy/samsung/phy-samsung-ufs.c
>index cd1c02d2cdda..0c933e364064 100644
>--- a/drivers/phy/samsung/phy-samsung-ufs.c
>+++ b/drivers/phy/samsung/phy-samsung-ufs.c
>@@ -207,7 +207,7 @@ static int samsung_ufs_phy_init(struct phy *phy)
> 	ss_phy->lane_cnt = phy->attrs.bus_width;
> 	ss_phy->ufs_phy_state = CFG_PRE_INIT;
>
>-	if (ss_phy->drvdata->has_symbol_clk) {
>+	if (ss_phy->has_symbol_clk) {
> 		ret = samsung_ufs_phy_symbol_clk_init(ss_phy);
> 		if (ret)
> 			dev_err(ss_phy->dev, "failed to set ufs phy symbol
>clocks\n"); @@ -259,7 +259,7 @@ static int samsung_ufs_phy_exit(struct phy
>*phy)
>
> 	clk_disable_unprepare(ss_phy->ref_clk);
>
>-	if (ss_phy->drvdata->has_symbol_clk) {
>+	if (ss_phy->has_symbol_clk) {
> 		clk_disable_unprepare(ss_phy->tx0_symbol_clk);
> 		clk_disable_unprepare(ss_phy->rx0_symbol_clk);
> 		clk_disable_unprepare(ss_phy->rx1_symbol_clk);
>@@ -326,9 +326,10 @@ static int samsung_ufs_phy_probe(struct
>platform_device *pdev)
>
> 	drvdata = match->data;
> 	phy->dev = dev;
>-	phy->drvdata = drvdata;
> 	phy->cfgs = drvdata->cfgs;
>-	phy->isol = &drvdata->isol;
>+	phy->has_symbol_clk = drvdata->has_symbol_clk;
>+	memcpy(&phy->isol, &drvdata->isol, sizeof(phy->isol));
>+
> 	phy->lane_cnt = PHY_DEF_LANE_CNT;
>
> 	phy_set_drvdata(gen_phy, phy);
>diff --git a/drivers/phy/samsung/phy-samsung-ufs.h
>b/drivers/phy/samsung/phy-samsung-ufs.h
>index 5cd919539a3e..854b53bdf347 100644
>--- a/drivers/phy/samsung/phy-samsung-ufs.h
>+++ b/drivers/phy/samsung/phy-samsung-ufs.h
>@@ -101,13 +101,15 @@ struct samsung_ufs_phy_cfg {
> 	u8 id;
> };
>
>+struct samsung_ufs_phy_pmu_isol {
>+	u32 offset;
>+	u32 mask;
>+	u32 en;
>+};
>+
> struct samsung_ufs_phy_drvdata {
> 	const struct samsung_ufs_phy_cfg **cfgs;
>-	struct pmu_isol {
>-		u32 offset;
>-		u32 mask;
>-		u32 en;
>-	} isol;
>+	struct samsung_ufs_phy_pmu_isol isol;
> 	bool has_symbol_clk;
> };
>
>@@ -122,7 +124,8 @@ struct samsung_ufs_phy {
> 	struct clk *rx1_symbol_clk;
> 	const struct samsung_ufs_phy_drvdata *drvdata;
> 	const struct samsung_ufs_phy_cfg * const *cfgs;
>-	const struct pmu_isol *isol;
>+	struct samsung_ufs_phy_pmu_isol isol;
>+	bool has_symbol_clk;
> 	u8 lane_cnt;
> 	int ufs_phy_state;
> 	enum phy_mode mode;
>@@ -136,8 +139,8 @@ static inline struct samsung_ufs_phy
>*get_samsung_ufs_phy(struct phy *phy)  static inline void
>samsung_ufs_phy_ctrl_isol(
> 		struct samsung_ufs_phy *phy, u32 isol)  {
>-	regmap_update_bits(phy->reg_pmu, phy->isol->offset,
>-			   phy->isol->mask, isol ? 0 : phy->isol->en);
>+	regmap_update_bits(phy->reg_pmu, phy->isol.offset,
>+			   phy->isol.mask, isol ? 0 : phy->isol.en);
> }
>
> extern const struct samsung_ufs_phy_drvdata exynos7_ufs_phy;
>--
>2.36.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

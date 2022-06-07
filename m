Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D59CC43334
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 17:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/S8UQd7jDXYmRPbb+SytVI6Ho30f3M2kGgR0Rsyzuk=; b=CU6Wmnn9eIYOiF
	3pNHKYEcwV450Cxphcr97Oquxl+krGx2zdunB4s8ux5+LQ6ggks9ohFSS6Zbc4+3zGFf7rAxm79mB
	uIXLqaHmSDCGVIk2PqJ4DdEXBtxaGjGQv5mGtSHEAFnPi7rqjY6mxNFPH6JX65CRxrW0n/bz3vn9Y
	5DiftgB2dQcN9RU3UxAlQFQUTric6LCiOp7B+b0BhHUuWEZ+i0SVS2wVDO0up6EMYWnlfkXA+tJ7o
	DF1uiuaou2r93wTCmNbJ/tIsnHAotImx/c2kmuH4bQfyh6DiPiyt8i5r3WYr1tZKrHO7x3JJT8UwB
	REPkv3yDvSEXUbNYnZEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nycgu-008XYs-Bl; Tue, 07 Jun 2022 17:08:28 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nycgq-008XXC-Nl
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 17:08:27 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220607170813epoutp024622d76ced56efb3173680df6dba78a3~2Zanp2Bdp0349503495epoutp02H
	for <linux-phy@lists.infradead.org>; Tue,  7 Jun 2022 17:08:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220607170813epoutp024622d76ced56efb3173680df6dba78a3~2Zanp2Bdp0349503495epoutp02H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654621693;
	bh=2PoVpUPEyTutMZxXuSNEqRgVo4Iqln//JqN+F4j2apw=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=m1YTrd7nbz5OvVpHKEE5CiHihA3PRYeeF5CnSOS1TvJa0rdBbnFWPTKhywaqxfKGx
	 XcM+1j+fHhuG9hAjH3QbDlJzB/+4uKTDzJENnOL4og7GzW3sxSpwSH99DA4DyD40hL
	 ZQz72oaHBQ6+8W+Du1C219+qFs59dHHqPM6lA1fA=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTP id
	20220607170812epcas5p40f9cc2ca9bd3b437102af28a4907818d~2ZamX4jfT1805918059epcas5p4m;
	Tue,  7 Jun 2022 17:08:12 +0000 (GMT)
Received: from epsmges5p1new.samsung.com (unknown [182.195.38.180]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4LHcHs1ykvz4x9Pp; Tue,  7 Jun
	2022 17:08:09 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
	epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	23.89.10063.9F58F926; Wed,  8 Jun 2022 02:08:09 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20220607170808epcas5p37a7a58921bc2c804ba84b4dedfac779f~2Zai4SfGt1312313123epcas5p3G;
	Tue,  7 Jun 2022 17:08:08 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220607170808epsmtrp1e084461163b12f832b3d6fca6bb2e616~2Zai3HslW2137221372epsmtrp18;
	Tue,  7 Jun 2022 17:08:08 +0000 (GMT)
X-AuditID: b6c32a49-4b5ff7000000274f-0b-629f85f90342
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	CE.BA.11276.8F58F926; Wed,  8 Jun 2022 02:08:08 +0900 (KST)
Received: from alimakhtar03 (unknown [107.122.12.5]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20220607170806epsmtip12de158f4e6f211188713a7961e01ad51~2ZahUG8kS2262422624epsmtip1-;
	Tue,  7 Jun 2022 17:08:06 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Chanho Park'" <chanho61.park@samsung.com>, "'Kishon Vijay Abraham I'"
	<kishon@ti.com>, "'Vinod Koul'" <vkoul@kernel.org>, "'Krzysztof Kozlowski'"
	<krzysztof.kozlowski@linaro.org>, "'Rob Herring'" <robh+dt@kernel.org>,
	"'Krzysztof	Kozlowski'" <krzysztof.kozlowski+dt@linaro.org>
Cc: <devicetree@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
In-Reply-To: <20220607072907.127000-3-chanho61.park@samsung.com>
Subject: RE: [PATCH v4 2/5] phy: samsung: ufs: rename cfg to cfgs for
 clarification
Date: Tue, 7 Jun 2022 22:38:05 +0530
Message-ID: <00a801d87a91$28d6ec10$7a84c430$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJ2i5m4q1cxa8jD2OFuvpyrHOG1RgHRq7q5ARilyfWr8Lhd8A==
Content-Language: en-us
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNJsWRmVeSWpSXmKPExsWy7bCmpu7P1vlJBitbeC0u79e2mH/kHKvF
	hac9bBZ9Lx4yW+x9vZXdYtPja6wWE1Z9Y7GYcX4fk0Xr3iPsFjvvnGB24PLYtKqTzePOtT1s
	HpuX1Hv0bVnF6HH8xnYmj8+b5ALYorJtMlITU1KLFFLzkvNTMvPSbZW8g+Od403NDAx1DS0t
	zJUU8hJzU22VXHwCdN0yc4AOU1IoS8wpBQoFJBYXK+nb2RTll5akKmTkF5fYKqUWpOQUmBTo
	FSfmFpfmpevlpZZYGRoYGJkCFSZkZ8z438Va8EKxYv+ud6wNjDtkuxg5OSQETCTenfzG2MXI
	xSEksJtR4saznWwQzidGiXPf/7KBVAkJfGOUmHNGEqZj7bEtUEV7GSWmTFzOBOG8ZJRon/Ie
	rINNQFdix+I2MFtEYCGTxLQWHxCbWWACo8TKT94gNqeAg8SRj33sILawQKjE9m1bwWwWARWJ
	pR/fgNm8ApYSJ9ZMZYawBSVOznzCAjFHW2LZwtfMEBcpSPx8uowVYpeTxJtZPxkhasQlXh49
	wg5ynITAFg6JCx8/MUI0uEgsaX3KBGELS7w6voUdwpaSeNnfBmRzANkeEov+SEGEMyTeLl8P
	1WovceDKHBaQEmYBTYn1u/QhVvFJ9P5+wgTRySvR0SYEUa0q0fzuKguELS0xsbubFcL2kLj1
	dBvzBEbFWUgem4XksVlIHpiFsGwBI8sqRsnUguLc9NRi0wLDvNRyeHQn5+duYgSnWi3PHYx3
	H3zQO8TIxMF4iFGCg1lJhFcyfH6SEG9KYmVValF+fFFpTmrxIUZTYGhPZJYSTc4HJvu8knhD
	E0sDEzMzMxNLYzNDJXFegf+NSUIC6YklqdmpqQWpRTB9TBycUg1MK1YErGq+HdXbFDffsWXn
	/QnfFc/l/rxaci9c7dAZ3YL5Z+/u/7A02n9DQWsmSy17f3BYiV7RuxtNikybzyobzX+tsyfM
	82OorOJnxVUqwtlHdiZtubTaTr5YbIG/gnKQB1+30A47ybZQF0t1zqNKXtGH98dbRszUz31V
	W+ZwopYjQvbkxn89Vh4h7+Q6swJ1DyxTvX/s1SuDX67qKySm2s52nOd3c6tf9bZJm8VqVoa5
	sDRalU258v1wRd/aNdI1gv87dm9nid4Rvua+3bQANcvXC+8nLlo+9eZKeX/V43u2WsQKFml6
	dR4smVdgIem0kGOLlFFvsFJ+xlw5vzK1T7IneE/uWWwn8PnrsxlKLMUZiYZazEXFiQDI/6dT
	PgQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsWy7bCSnO6P1vlJBmc7BSwu79e2mH/kHKvF
	hac9bBZ9Lx4yW+x9vZXdYtPja6wWE1Z9Y7GYcX4fk0Xr3iPsFjvvnGB24PLYtKqTzePOtT1s
	HpuX1Hv0bVnF6HH8xnYmj8+b5ALYorhsUlJzMstSi/TtErgy7m2/xVrwVKHi6sST7A2M22W6
	GDk5JARMJNYe28LWxcjFISSwm1Fi/6peRoiEtMT1jRPYIWxhiZX/nrNDFD1nlHg66QobSIJN
	QFdix+I2sG4RgaVMEh13ZjKDOMwCUxglLl99yQJSJSRwlFFi8wInEJtTwEHiyMc+sLHCAsES
	j+deA5vEIqAisfTjG7A4r4ClxIk1U5khbEGJkzOfgM1hFtCW6H3YyghjL1v4mhniPAWJn0+X
	sYLYIgJOEm9m/YSqEZd4efQI+wRG4VlIRs1CMmoWklGzkLQsYGRZxSiZWlCcm55bbFhgmJda
	rlecmFtcmpeul5yfu4kRHHdamjsYt6/6oHeIkYmD8RCjBAezkgivZPj8JCHelMTKqtSi/Pii
	0pzU4kOM0hwsSuK8F7pOxgsJpCeWpGanphakFsFkmTg4pRqYmJ9tUr+TeWNxxbGshLjDj+On
	N5vysnxv79i+/l23jFznhMIPdssElvGeNkn2TXv/tk84mO/5Pf07wjKJZ48dSJ3IIOrC/0w0
	KUVx3crzjRf4tH5scMhwX7f5Lwsr8ynNpVOcvn7XCzIP/MF7yc/11s2GZsknsgsaMuT+uFYH
	Pw3P+rk83lvdZfZF2aU2AXF8JRumHvc9KfPgjNOU7Ivvtk+befLGv+8piXfudAk6TPqfyGN9
	K8KmKpFl7+G8z9Eiln92fZv9TU+PWbH/4dNHUvOMGV9t9Eu1tJ0xQUxb9jbn0o8yHtqxwd/P
	cCXciJa7HLXazPLebfFFj3nNYlreVkulRGrVzzqx0L0ywuCOEktxRqKhFnNRcSIACVyHQyoD
	AAA=
X-CMS-MailID: 20220607170808epcas5p37a7a58921bc2c804ba84b4dedfac779f
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220607072938epcas2p2bdb46daf95668223a07431433d91868f
References: <20220607072907.127000-1-chanho61.park@samsung.com>
	<CGME20220607072938epcas2p2bdb46daf95668223a07431433d91868f@epcas2p2.samsung.com>
	<20220607072907.127000-3-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_100825_322504_B8E2C4BD 
X-CRM114-Status: GOOD (  11.61  )
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
>Subject: [PATCH v4 2/5] phy: samsung: ufs: rename cfg to cfgs for clarification
>
>Rename **cfg to **cfgs to clarify the naming.
>
>Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>Signed-off-by: Chanho Park <chanho61.park@samsung.com>
>---

Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

> drivers/phy/samsung/phy-exynos7-ufs.c      | 2 +-
> drivers/phy/samsung/phy-exynosautov9-ufs.c | 2 +-
> drivers/phy/samsung/phy-samsung-ufs.c      | 4 ++--
> drivers/phy/samsung/phy-samsung-ufs.h      | 4 ++--
> 4 files changed, 6 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/phy/samsung/phy-exynos7-ufs.c
>b/drivers/phy/samsung/phy-exynos7-ufs.c
>index 7c9008e163db..d1e9d0ae5c1d 100644
>--- a/drivers/phy/samsung/phy-exynos7-ufs.c
>+++ b/drivers/phy/samsung/phy-exynos7-ufs.c
>@@ -67,7 +67,7 @@ static const struct samsung_ufs_phy_cfg
>*exynos7_ufs_phy_cfgs[CFG_TAG_MAX] = {  };
>
> const struct samsung_ufs_phy_drvdata exynos7_ufs_phy = {
>-	.cfg = exynos7_ufs_phy_cfgs,
>+	.cfgs = exynos7_ufs_phy_cfgs,
> 	.isol = {
> 		.offset = EXYNOS7_EMBEDDED_COMBO_PHY_CTRL,
> 		.mask = EXYNOS7_EMBEDDED_COMBO_PHY_CTRL_MASK,
>diff --git a/drivers/phy/samsung/phy-exynosautov9-ufs.c
>b/drivers/phy/samsung/phy-exynosautov9-ufs.c
>index d043dfdb598a..fa4d2983eec6 100644
>--- a/drivers/phy/samsung/phy-exynosautov9-ufs.c
>+++ b/drivers/phy/samsung/phy-exynosautov9-ufs.c
>@@ -57,7 +57,7 @@ static const struct samsung_ufs_phy_cfg
>*exynosautov9_ufs_phy_cfgs[CFG_TAG_MAX]
> };
>
> const struct samsung_ufs_phy_drvdata exynosautov9_ufs_phy = {
>-	.cfg = exynosautov9_ufs_phy_cfgs,
>+	.cfgs = exynosautov9_ufs_phy_cfgs,
> 	.isol = {
> 		.offset = EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CTRL,
> 		.mask =
>EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CTRL_MASK,
>diff --git a/drivers/phy/samsung/phy-samsung-ufs.c
>b/drivers/phy/samsung/phy-samsung-ufs.c
>index 602ddef259eb..ed272631e8aa 100644
>--- a/drivers/phy/samsung/phy-samsung-ufs.c
>+++ b/drivers/phy/samsung/phy-samsung-ufs.c
>@@ -75,7 +75,7 @@ static int samsung_ufs_phy_wait_for_lock_acq(struct
>phy *phy)  static int samsung_ufs_phy_calibrate(struct phy *phy)  {
> 	struct samsung_ufs_phy *ufs_phy = get_samsung_ufs_phy(phy);
>-	struct samsung_ufs_phy_cfg **cfgs = ufs_phy->cfg;
>+	struct samsung_ufs_phy_cfg **cfgs = ufs_phy->cfgs;
> 	const struct samsung_ufs_phy_cfg *cfg;
> 	int err = 0;
> 	int i;
>@@ -327,7 +327,7 @@ static int samsung_ufs_phy_probe(struct
>platform_device *pdev)
> 	drvdata = match->data;
> 	phy->dev = dev;
> 	phy->drvdata = drvdata;
>-	phy->cfg = (struct samsung_ufs_phy_cfg **)drvdata->cfg;
>+	phy->cfgs = (struct samsung_ufs_phy_cfg **)drvdata->cfgs;
> 	phy->isol = &drvdata->isol;
> 	phy->lane_cnt = PHY_DEF_LANE_CNT;
>
>diff --git a/drivers/phy/samsung/phy-samsung-ufs.h
>b/drivers/phy/samsung/phy-samsung-ufs.h
>index 91a0e9f94f98..1788b356cf56 100644
>--- a/drivers/phy/samsung/phy-samsung-ufs.h
>+++ b/drivers/phy/samsung/phy-samsung-ufs.h
>@@ -102,7 +102,7 @@ struct samsung_ufs_phy_cfg {  };
>
> struct samsung_ufs_phy_drvdata {
>-	const struct samsung_ufs_phy_cfg **cfg;
>+	const struct samsung_ufs_phy_cfg **cfgs;
> 	struct pmu_isol {
> 		u32 offset;
> 		u32 mask;
>@@ -121,7 +121,7 @@ struct samsung_ufs_phy {
> 	struct clk *rx0_symbol_clk;
> 	struct clk *rx1_symbol_clk;
> 	const struct samsung_ufs_phy_drvdata *drvdata;
>-	struct samsung_ufs_phy_cfg **cfg;
>+	struct samsung_ufs_phy_cfg **cfgs;
> 	const struct pmu_isol *isol;
> 	u8 lane_cnt;
> 	int ufs_phy_state;
>--
>2.36.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

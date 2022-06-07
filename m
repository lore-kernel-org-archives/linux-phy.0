Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96113C43334
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 17:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zB78NbG0o1As7IDNnLTl9w23SF6RqArMUAcXx2BURYo=; b=0PIIN5WS2UwgZT
	JjI8q3ipnEW8lpsLJcmRTMDVcGmG87CDETzRl4xVxL4wt5AY29sj5QDS0VmdnxJzPSJZRGVZxmHxb
	kBlpLqfuE9ahSxu3OwZGQ97dsebhrwe8SlCnRpsE/JRMTm3j9ctH1c02EVXKLEbXpM+/tjczJkJBd
	mSwOr3d64ZIETfUgYfiBAGV80Wn0olR6VA/5YZEI1fP4sjDj0HFIhu09IyQuCRmQXrmO7as/A0NNC
	IDIBzYOROxgnxM4xLNe4LmUadqm4rMT/vog7W9b5ZH9/JaqWoE0vcDHXo7ByJMX7xnE3dG+R5mTtB
	uE4kGqvIgSMv9umnGxBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nychh-008XhL-SU; Tue, 07 Jun 2022 17:09:17 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nychc-008Xbg-Gp
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 17:09:16 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20220607170851epoutp03fb4a80916bae10a54ed4393cb36ce3f8~2ZbKzjjsR0118701187epoutp03J
	for <linux-phy@lists.infradead.org>; Tue,  7 Jun 2022 17:08:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20220607170851epoutp03fb4a80916bae10a54ed4393cb36ce3f8~2ZbKzjjsR0118701187epoutp03J
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654621731;
	bh=mYga23Gx8rf0zWOC6GImrO86F75RdGz/KnshQQ/odbo=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=evF6GXAolIgBL773K3YArbBqQQ+Rb/GqQAXci8C8SDe6qn1pKcZgWofByeg9z4TeK
	 wK5nyfDglrtpO+9cETEEXsQPcHg1VelzpsQPOT7ZN8x98O2KD3FOXMwajs3oYTkyGP
	 Qzrc0kQaktrLni1JEb+Ith4mAIh+FMlA2XMsjGHc=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTP id
	20220607170850epcas5p16502bcc15d5e937b6f1090dd5742ea79~2ZbKWRr1n1777517775epcas5p13;
	Tue,  7 Jun 2022 17:08:50 +0000 (GMT)
Received: from epsmges5p2new.samsung.com (unknown [182.195.38.183]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4LHcJc1VwVz4x9Pp; Tue,  7 Jun
	2022 17:08:48 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
	epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
	07.8F.09827.0268F926; Wed,  8 Jun 2022 02:08:48 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20220607170846epcas5p368ccc1cc50e1e508ae85de648a2eded5~2ZbGtQ5HA0863108631epcas5p3k;
	Tue,  7 Jun 2022 17:08:46 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220607170846epsmtrp2c8015b9a7715ca31d1f534b989a6b274~2ZbGsXojI0702807028epsmtrp21;
	Tue,  7 Jun 2022 17:08:46 +0000 (GMT)
X-AuditID: b6c32a4a-b51ff70000002663-a5-629f86203456
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	C5.E6.08924.E168F926; Wed,  8 Jun 2022 02:08:46 +0900 (KST)
Received: from alimakhtar03 (unknown [107.122.12.5]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20220607170845epsmtip28ac651b71e8278972dea283d2890523a~2ZbFJl92Z0563805638epsmtip2X;
	Tue,  7 Jun 2022 17:08:45 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Chanho Park'" <chanho61.park@samsung.com>, "'Kishon Vijay Abraham I'"
	<kishon@ti.com>, "'Vinod Koul'" <vkoul@kernel.org>, "'Krzysztof Kozlowski'"
	<krzysztof.kozlowski@linaro.org>, "'Rob Herring'" <robh+dt@kernel.org>,
	"'Krzysztof	Kozlowski'" <krzysztof.kozlowski+dt@linaro.org>
Cc: <devicetree@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
In-Reply-To: <20220607072907.127000-4-chanho61.park@samsung.com>
Subject: RE: [PATCH v4 3/5] phy: samsung: ufs: constify samsung_ufs_phy_cfg
Date: Tue, 7 Jun 2022 22:38:44 +0530
Message-ID: <00a901d87a91$3fc71d50$bf5557f0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJ2i5m4q1cxa8jD2OFuvpyrHOG1RgI8fgAxAgguoPqr5eXRgA==
Content-Language: en-us
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJJsWRmVeSWpSXmKPExsWy7bCmhq5C2/wkgweb2S0u79e2mH/kHKvF
	hac9bBZ9Lx4yW+x9vZXdYtPja6wWE1Z9Y7GYcX4fk0Xr3iPsFjvvnGB24PLYtKqTzePOtT1s
	HpuX1Hv0bVnF6HH8xnYmj8+b5ALYorJtMlITU1KLFFLzkvNTMvPSbZW8g+Od403NDAx1DS0t
	zJUU8hJzU22VXHwCdN0yc4AOU1IoS8wpBQoFJBYXK+nb2RTll5akKmTkF5fYKqUWpOQUmBTo
	FSfmFpfmpevlpZZYGRoYGJkCFSZkZxy6Z1fwV7ji5vVLjA2MawS7GDk4JARMJDbu8+li5OIQ
	EtjNKHH24n4mCOcTo8TnzvVsEM5nRokts1pYuxg5wTrOzJgLldjFKLG6eREbSEJI4CWjROs3
	ORCbTUBXYsfiNrC4iMBCJolpLT4gNrPABEaJlZ+8QWxOAQeJhSu/MYPYwgLeEtcfzGICsVkE
	VCS+LPzKCGLzClhKnPt3jQ3CFpQ4OfMJC8QceYntb+cwQxykIPHz6TJWiF1OEg82HYSqEZd4
	efQIO8ihEgI7OCReHPzLAtHgIrH60WRGCFtY4tXxLewQtpTE53d72SDh4iGx6I8URDhD4u3y
	9VDl9hIHrsxhASlhFtCUWL9LH2IVn0Tv7ydMEJ28Eh1tQhDVqhLN765CLZWWmNjdDQ1CD4lV
	X/4wT2BUnIXksVlIHpuF5IFZCMsWMLKsYpRMLSjOTU8tNi0wyksth0d2cn7uJkZwmtXy2sH4
	8MEHvUOMTByMhxglOJiVRHglw+cnCfGmJFZWpRblxxeV5qQWH2I0BYb2RGYp0eR8YKLPK4k3
	NLE0MDEzMzOxNDYzVBLnFfjfmCQkkJ5YkpqdmlqQWgTTx8TBKdXAlCLiHCx4wuDkhOzXPy0X
	yplezQ64wbBY02rWjTWLHx2eWfKLzcfDw/SPlIhyo4+JoaO2qaiSyMba1bPUb170fJ7axBB5
	2Eo3u5BpqvfkFzpS5S+0G9eVuG2e2xqou2mO61efREWbnhme7783mS+ySPssVP97+ZzzTZma
	+7ZaModqe63wur+zJbtLxzz12tG8rsI3n1Xy90uFbdRdlbldS+El/+VVUdILv+bXhmoyi0TP
	/WzDLVu+q7X31ZIZLz4zTa23PPOdyXTLb9aMtx6/OMxydha2pa9pXiQe5ZFZk5Tz8Ufuj5SN
	Ou+3Nnjvkdul9lInv+Zx/MFf5key/25i6XzxSCondo7n9e3eGZxKLMUZiYZazEXFiQC5Vmh8
	PAQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGIsWRmVeSWpSXmKPExsWy7bCSvK5c2/wkg0PTdC0u79e2mH/kHKvF
	hac9bBZ9Lx4yW+x9vZXdYtPja6wWE1Z9Y7GYcX4fk0Xr3iPsFjvvnGB24PLYtKqTzePOtT1s
	HpuX1Hv0bVnF6HH8xnYmj8+b5ALYorhsUlJzMstSi/TtErgyDt2zK/grXHHz+iXGBsY1gl2M
	nBwSAiYSZ2bMZeti5OIQEtjBKHF09QNWiIS0xPWNE9ghbGGJlf+es0MUPWeUOLhwKwtIgk1A
	V2LH4jawbhGBpUwSHXdmMoM4zAJTGCUuX30JViUkcJRRovWfAYjNKeAgsXDlN2YQW1jAW+L6
	g1lMIDaLgIrEl4VfGUFsXgFLiXP/rrFB2IISJ2c+AZvDLKAt0fuwlRHClpfY/nYOM8R5ChI/
	ny4DO1tEwEniwaaDUPXiEi+PHmGfwCg8C8moWUhGzUIyahaSlgWMLKsYJVMLinPTc4sNC4zy
	Usv1ihNzi0vz0vWS83M3MYKjTktrB+OeVR/0DjEycTAeYpTgYFYS4ZUMn58kxJuSWFmVWpQf
	X1Sak1p8iFGag0VJnPdC18l4IYH0xJLU7NTUgtQimCwTB6dUA9OFQGH3c5s2FpYVvprZ0ckr
	eHmz5oErN54fOrNlytfrARLp1e/PJTbnOKU8ON2utXdH7wo2n2xTjvVzOKW/Pqqckio56czB
	4BleaskzVzzROP5VqepEa8wWleaWCvGAe8u/1of9Tox2nMf0abGqwHSR/u9Nn8ONb+RMa7hq
	Jzv1U7voz2lb1j86ylnLZMnVP3nWxITLRfINlQekmpx/Osrrrinw+fVQRfFXxe6w+GaR70s9
	rR1fxn8K6igM3XXsqNPGvZ9+B8XcWT7LSV2K91oWb87Nz1+b4hIZeHLz9jQLLwlc+vHz05pV
	JZk3Pu3hzD8iZDGv9LOV41Xrhb3bnv76sObIVvPq3wsqWryN9+9UYinOSDTUYi4qTgQAjA1n
	0ikDAAA=
X-CMS-MailID: 20220607170846epcas5p368ccc1cc50e1e508ae85de648a2eded5
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220607072938epcas2p4aa59fc2826fe0563bc1f8f68301e2bb4
References: <20220607072907.127000-1-chanho61.park@samsung.com>
	<CGME20220607072938epcas2p4aa59fc2826fe0563bc1f8f68301e2bb4@epcas2p4.samsung.com>
	<20220607072907.127000-4-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_100912_917169_BBF5B324 
X-CRM114-Status: GOOD (  12.95  )
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
>Subject: [PATCH v4 3/5] phy: samsung: ufs: constify samsung_ufs_phy_cfg
>
>Put const qualifier of samsung_ufs_phy_cfg pointer because they will not be
>changed from drvdata.
>
>Signed-off-by: Chanho Park <chanho61.park@samsung.com>
>---
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

> drivers/phy/samsung/phy-samsung-ufs.c | 4 ++--  drivers/phy/samsung/phy-
>samsung-ufs.h | 2 +-
> 2 files changed, 3 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/phy/samsung/phy-samsung-ufs.c
>b/drivers/phy/samsung/phy-samsung-ufs.c
>index ed272631e8aa..cd1c02d2cdda 100644
>--- a/drivers/phy/samsung/phy-samsung-ufs.c
>+++ b/drivers/phy/samsung/phy-samsung-ufs.c
>@@ -75,7 +75,7 @@ static int samsung_ufs_phy_wait_for_lock_acq(struct
>phy *phy)  static int samsung_ufs_phy_calibrate(struct phy *phy)  {
> 	struct samsung_ufs_phy *ufs_phy = get_samsung_ufs_phy(phy);
>-	struct samsung_ufs_phy_cfg **cfgs = ufs_phy->cfgs;
>+	const struct samsung_ufs_phy_cfg * const *cfgs = ufs_phy->cfgs;
> 	const struct samsung_ufs_phy_cfg *cfg;
> 	int err = 0;
> 	int i;
>@@ -327,7 +327,7 @@ static int samsung_ufs_phy_probe(struct
>platform_device *pdev)
> 	drvdata = match->data;
> 	phy->dev = dev;
> 	phy->drvdata = drvdata;
>-	phy->cfgs = (struct samsung_ufs_phy_cfg **)drvdata->cfgs;
>+	phy->cfgs = drvdata->cfgs;
> 	phy->isol = &drvdata->isol;
> 	phy->lane_cnt = PHY_DEF_LANE_CNT;
>
>diff --git a/drivers/phy/samsung/phy-samsung-ufs.h
>b/drivers/phy/samsung/phy-samsung-ufs.h
>index 1788b356cf56..5cd919539a3e 100644
>--- a/drivers/phy/samsung/phy-samsung-ufs.h
>+++ b/drivers/phy/samsung/phy-samsung-ufs.h
>@@ -121,7 +121,7 @@ struct samsung_ufs_phy {
> 	struct clk *rx0_symbol_clk;
> 	struct clk *rx1_symbol_clk;
> 	const struct samsung_ufs_phy_drvdata *drvdata;
>-	struct samsung_ufs_phy_cfg **cfgs;
>+	const struct samsung_ufs_phy_cfg * const *cfgs;
> 	const struct pmu_isol *isol;
> 	u8 lane_cnt;
> 	int ufs_phy_state;
>--
>2.36.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

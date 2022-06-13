Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED213C43334
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jun 2022 07:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fa9kAAl8gOnuq/4TT1Cw89g9Lh0oWOEY7RZnD1aq/mY=; b=KCw9b3JgWX6fIF
	ocgxHy1gj4jxbTXeQW4I/CuOyBsLcXDSqZ8wJ/UpxQVgF/Dy2QtE6pxYLJEfUmts00okMRM5G+Wpg
	QT04YjSxLzFiic70DCq/yWidU9qm4xvRNp5g4J8+CnreI36blpoqrzPCPXFm738IDj+zao8l6omlH
	JNqlH/QL++CVuchkEihqNYAgW/vA9eY3VNmxutl9h+ejflK//0ZD9HOyfAtDinGFGrsMKA7Z33hGB
	8LhLJjq9w9AXAx/fYjMETMLrcGHMJ/t7Ye9+f4fma50HVpNaoyZ62wqpMm2a523pgM8xn/Ybs0Qh6
	v1RN5d7dfBG7X9cAkHEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0e7Q-001rvW-AT; Mon, 13 Jun 2022 07:04:12 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0e7N-001rsP-Iu
	for linux-phy@lists.infradead.org; Mon, 13 Jun 2022 07:04:11 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20220613070405epoutp01d1da5fd8022f9df7dab95de3e8901028~4HC2M7_YS1214812148epoutp015
	for <linux-phy@lists.infradead.org>; Mon, 13 Jun 2022 07:04:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20220613070405epoutp01d1da5fd8022f9df7dab95de3e8901028~4HC2M7_YS1214812148epoutp015
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1655103845;
	bh=8NiwtcWaxGiC6LZgT1L9vQIzHjBFiLvfl95/FJ2lf3E=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=Lt5bA4mGBwKMqf/VA+6UTKffahYSEZHIvly2RLa7Ag2hxzvPTztA2OBtz5tTw/bPa
	 Ju0h2F/9upajFVoyxIm1lvTePZokgIbwZl8eUorQmeENUOUDp7CM5cJqh6OxUdIjAC
	 6bxpbEJZYpTfncATqYvYDpgqPONaFGrtex20MgP8=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20220613070404epcas2p2b56670dab2c4b5cde47959f6c1b234e0~4HC1lHno52921529215epcas2p2_;
	Mon, 13 Jun 2022 07:04:04 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.91]) by
	epsnrtp4.localdomain (Postfix) with ESMTP id 4LM2c36D1mz4x9QC; Mon, 13 Jun
	2022 07:04:03 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
	epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	D4.F1.09764.361E6A26; Mon, 13 Jun 2022 16:04:03 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
	20220613070403epcas2p14f4750b5cbdbec2bd8f194bef37489cd~4HC0bHycZ2344723447epcas2p1R;
	Mon, 13 Jun 2022 07:04:03 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220613070403epsmtrp2f5083441dd13cc22eb722edc03b2e3c3~4HC0aK8721379013790epsmtrp2f;
	Mon, 13 Jun 2022 07:04:03 +0000 (GMT)
X-AuditID: b6c32a46-f8bff70000002624-21-62a6e1638c5a
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	E6.31.08924.261E6A26; Mon, 13 Jun 2022 16:04:02 +0900 (KST)
Received: from KORCO082417 (unknown [10.229.8.121]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20220613070402epsmtip11c1115e16ddc2c5675b008653fdda0e3~4HC0M-Tne2248222482epsmtip1U;
	Mon, 13 Jun 2022 07:04:02 +0000 (GMT)
From: "Chanho Park" <chanho61.park@samsung.com>
To: "'Alim Akhtar'" <alim.akhtar@samsung.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<linux-scsi@vger.kernel.org>, <linux-phy@lists.infradead.org>
Cc: <devicetree@vger.kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <vkoul@kernel.org>,
	<avri.altman@wdc.com>, <bvanassche@acm.org>, <martin.petersen@oracle.com>,
	<pankaj.dubey@samsung.com>, "'Bharat	Uppal'" <bharat.uppal@samsung.com>
In-Reply-To: <20220610104119.66401-3-alim.akhtar@samsung.com>
Subject: RE: [PATCH v4 2/6] phy: samsung-ufs: move cdr offset to drvdata
Date: Mon, 13 Jun 2022 16:04:02 +0900
Message-ID: <000101d87ef3$c3849b70$4a8dd250$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQEGezFsbNu8B074Ncmz/1JauiaDCQGC/b7jAa3HWsmu12h1YA==
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrOJsWRmVeSWpSXmKPExsWy7bCmhW7yw2VJBjO+GVg8mLeNzeLlz6ts
	FtdeXmC3mPbhJ7PF/CPnWC36Xjxkttj0+BqrxeVdc9gsJqz6xmLRfX0Hm8Xy4/+YLBZt/cJu
	0br3CLvFzjsnmB34PC5f8fbYtKqTzePOtT1sHpuX1Ht8fHqLxaNvyypGj8+b5DzaD3QzBXBE
	ZdtkpCampBYppOYl56dk5qXbKnkHxzvHm5oZGOoaWlqYKynkJeam2iq5+AToumXmAJ2tpFCW
	mFMKFApILC5W0rezKcovLUlVyMgvLrFVSi1IySkwL9ArTswtLs1L18tLLbEyNDAwMgUqTMjO
	+LN9PXPBJIWKBw/nMjUwbpbuYuTkkBAwkXi87DgTiC0ksINR4uNelS5GLiD7E6PE28nnmCCc
	z4wSu+Z1ssJ0TLrzGSqxi1Fiws2/UO0vGCVOXSsFsdkE9CVedmxjBSkSARn7ecUnFhCHWaCT
	SaL7yAWwDk4BW4mdH9Yzg9jCAh4SvxY+B7NZBFQlmn7sZgexeQUsJZZ/2coMYQtKnJz5hAXE
	ZhbQlli28DUzxEkKEj+fLgPaxgG0zUmifTczRImIxOzONmaQvRICNzgkNnTMgnrBRWJ29zU2
	CFtY4tXxLewQtpTE53d7oeLFEktnfWKCaG5glLi87RdUwlhi1rN2RpBlzAKaEut36YOYEgLK
	EkduQZ3GJ9Fx+C87RJhXoqNNCKJRXeLA9uksELasRPecz6wTGJVmIXlsFpLHZiH5YBbCrgWM
	LKsYxVILinPTU4uNCozgkZ2cn7uJEZyitdx2ME55+0HvECMTB+MhRgkOZiUR3skXlyUJ8aYk
	VlalFuXHF5XmpBYfYjQFBvVEZinR5HxglsgriTc0sTQwMTMzNDcyNTBXEuf1StmQKCSQnliS
	mp2aWpBaBNPHxMEp1cDkP0Fi5duq3innZPPWXAnoNwzuLdzdFWufPPvpx4cmPKvORIU/2XBS
	K+sZ67K7z127fr+c9N2QXd1BP+rSqup5069pfFZtv31dd4IKX5C32qWPN5rjq6RTD1dE+c12
	fXkqw7l2qoMM132byDV/YjaL7JtxKF/w0TLn6eU77/9wvx2UWxel1XSxPjwiJ3FSjhH/cf5l
	Xf7X29rO+b1Z7NNybkVU7LvIta1vY35w7DuXXmh24Y59Z3lm8FWho358uz45TzwttXkdr/Lp
	yB8Mp7Zemtb1siHgxdEsh1cHldndjJwkPnGstGo0X9paE3nm+IVv5SX2bxs/HZrXfSWAJ3/R
	9MPrMybNvP7T+S/rp/JjSizFGYmGWsxFxYkAqRl2xloEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEIsWRmVeSWpSXmKPExsWy7bCSnG7yw2VJBseTLB7M28Zm8fLnVTaL
	ay8vsFtM+/CT2WL+kXOsFn0vHjJbbHp8jdXi8q45bBYTVn1jsei+voPNYvnxf0wWi7Z+Ybdo
	3XuE3WLnnRPMDnwel694e2xa1cnmcefaHjaPzUvqPT4+vcXi0bdlFaPH501yHu0HupkCOKK4
	bFJSczLLUov07RK4MjatZy3YKF/R/VyvgfGMVBcjJ4eEgInEpDufmboYuTiEBHYwSjy82sYE
	kZCVePZuBzuELSxxv+UIK0TRM0aJWUcmMoMk2AT0JV52bANLiAjsYZRom3eKHcRhFpjMJDGp
	4SsLRMt+RokTy04wgrRwCthK7PywHqxdWMBD4tfC52A2i4CqRNOP3WD7eAUsJZZ/2coMYQtK
	nJz5hAXEZhbQlnh68ymcvWzha2aI+xQkfj5dBnQGB9AZThLtu5khSkQkZne2MU9gFJ6FZNIs
	JJNmIZk0C0nLAkaWVYySqQXFuem5xYYFRnmp5XrFibnFpXnpesn5uZsYwdGqpbWDcc+qD3qH
	GJk4GA8xSnAwK4nwTr64LEmINyWxsiq1KD++qDQntfgQozQHi5I474Wuk/FCAumJJanZqakF
	qUUwWSYOTqkGplilJTdlha/UWVR4bDUXO/GS59wE7YlBQl5lNoz8MoxGdpPkFz2bekngTdtV
	60dF6+6pPe81tJR/Lejm+K4rcub8LDbVlxZm0dWdTnITAirfTa2Oyj1y4pCfKOOsc29XqjJZ
	r+Z60SP5Kf2icp/HSgvGZf+dDPeEhfhP03T18/jS8z/12namUNXsHQnmDdxtv0Wq2VfW2GXe
	qmsUmJN2dEXJvMuLw7cbmLY/lWO+sjq+e0H2jGPfLVJ4pjz50mX79/RMt6AJolyZDytcHxVN
	tJlgJtoedmoWw8ynTzpO8gWHHdT7VbZERb/+dL2H44ukw/3XNpwtOhEdV9GwYs5h2VfPlP4u
	drO9FJ68aIOKEktxRqKhFnNRcSIAVOCBc0UDAAA=
X-CMS-MailID: 20220613070403epcas2p14f4750b5cbdbec2bd8f194bef37489cd
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220610104346epcas5p4f59c073d15b3cd8fbc99de03d9cd1c41
References: <20220610104119.66401-1-alim.akhtar@samsung.com>
	<CGME20220610104346epcas5p4f59c073d15b3cd8fbc99de03d9cd1c41@epcas5p4.samsung.com>
	<20220610104119.66401-3-alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_000410_156708_FFA6FB08 
X-CRM114-Status: GOOD (  20.58  )
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

> Subject: [PATCH v4 2/6] phy: samsung-ufs: move cdr offset to drvdata
> 
> Move CDR lock offset to drv data so that it can be extended for other SoCs
> which are having CDR lock at different register offset.
> 
> Signed-off-by: Bharat Uppal <bharat.uppal@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> Reviewed-by: Chanho Park <chanho61.park@samsung.com>

- Reviewed-by: Chanho Park <chanho61.park@samsung.com>

> ---
>  drivers/phy/samsung/phy-exynos7-ufs.c      | 3 +++
>  drivers/phy/samsung/phy-exynosautov9-ufs.c | 2 ++
>  drivers/phy/samsung/phy-samsung-ufs.c      | 4 +++-
>  drivers/phy/samsung/phy-samsung-ufs.h      | 2 +-
>  4 files changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/samsung/phy-exynos7-ufs.c
> b/drivers/phy/samsung/phy-exynos7-ufs.c
> index d1e9d0ae5c1d..72854336f59d 100644
> --- a/drivers/phy/samsung/phy-exynos7-ufs.c
> +++ b/drivers/phy/samsung/phy-exynos7-ufs.c
> @@ -11,6 +11,8 @@
>  #define EXYNOS7_EMBEDDED_COMBO_PHY_CTRL_MASK	0x1
>  #define EXYNOS7_EMBEDDED_COMBO_PHY_CTRL_EN	BIT(0)
> 
> +#define EXYNOS7_EMBEDDED_COMBO_PHY_CDR_LOCK_STATUS	0x5e
> +
>  /* Calibration for phy initialization */  static const struct
> samsung_ufs_phy_cfg exynos7_pre_init_cfg[] = {
>  	PHY_COMN_REG_CFG(0x00f, 0xfa, PWR_MODE_ANY), @@ -74,4 +76,5 @@
> const struct samsung_ufs_phy_drvdata exynos7_ufs_phy = {
>  		.en = EXYNOS7_EMBEDDED_COMBO_PHY_CTRL_EN,
>  	},
>  	.has_symbol_clk = 1,
> +	.cdr_lock_status_offset =
> EXYNOS7_EMBEDDED_COMBO_PHY_CDR_LOCK_STATUS,
>  };
> diff --git a/drivers/phy/samsung/phy-exynosautov9-ufs.c
> b/drivers/phy/samsung/phy-exynosautov9-ufs.c
> index fa4d2983eec6..2b256070d657 100644
> --- a/drivers/phy/samsung/phy-exynosautov9-ufs.c
> +++ b/drivers/phy/samsung/phy-exynosautov9-ufs.c
> @@ -10,6 +10,7 @@
>  #define EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CTRL		0x728
>  #define EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CTRL_MASK	0x1
>  #define EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CTRL_EN		BIT(0)
> +#define EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CDR_LOCK_STATUS	0x5e
> 
>  #define PHY_TRSV_REG_CFG_AUTOV9(o, v, d) \
>  	PHY_TRSV_REG_CFG_OFFSET(o, v, d, 0x50) @@ -64,4 +65,5 @@ const
> struct samsung_ufs_phy_drvdata exynosautov9_ufs_phy = {
>  		.en = EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CTRL_EN,
>  	},
>  	.has_symbol_clk = 0,
> +	.cdr_lock_status_offset =
> +EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CDR_LOCK_STATUS,
>  };
> diff --git a/drivers/phy/samsung/phy-samsung-ufs.c
> b/drivers/phy/samsung/phy-samsung-ufs.c
> index 206a79c69a6c..8cec7652b459 100644
> --- a/drivers/phy/samsung/phy-samsung-ufs.c
> +++ b/drivers/phy/samsung/phy-samsung-ufs.c
> @@ -63,7 +63,8 @@ static int samsung_ufs_phy_wait_for_lock_acq(struct phy
> *phy)
>  	}
> 
>  	err = readl_poll_timeout(
> -			ufs_phy->reg_pma + PHY_APB_ADDR(PHY_CDR_LOCK_STATUS),
> +			ufs_phy->reg_pma +
> +			PHY_APB_ADDR(ufs_phy->drvdata->cdr_lock_status_offset),
>  			val, (val & PHY_CDR_LOCK_BIT), sleep_us, timeout_us);
>  	if (err)
>  		dev_err(ufs_phy->dev,
> @@ -327,6 +328,7 @@ static int samsung_ufs_phy_probe(struct
> platform_device *pdev)
> 
>  	drvdata = match->data;
>  	phy->dev = dev;
> +	phy->drvdata = drvdata;

This can be reversing changes of below patch.
https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/commit/?h=next&id=f86c1d0a58b1f63a176f537e2f6851be49c20ad4

By suggestion of Krzysztof, I removed drvdata assignment to samsung_ufs_phy struct and moved has_symbol_clk from drvdata to samsung_ufs_phy struct.
However, I forgot to remove drvdata from samsung_ufs_phy struct...
Anyway, you want to get back the drvdata, you may need to add a preceding patch with reconsideration of has_symbol_clk to the drvdata again.
Otherwise, you can simply put cdr_lock_status_offset to the samsung_ufs_phy struct and assign the data from drvdata same as has_symbol_clk and isol.

Best Regards,
Chanho Park


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

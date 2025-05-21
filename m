Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF9CAC2D0CD
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 08:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BED8xIEFzgH7cBd1IPvqM7mHlBsKsTp7d9ZFz5VkQ84=; b=ToZzHxUmeymS+x
	X5+K+EfXgj1Ma0aQdvgZWyhnPcGPBekuZazq2YbEARW9LiD69R1KTWUzLU1ktAqrX66t6/UWtQaGA
	WOurv/fz31sQJLxw6n2Ga5EL9EJD/cpGTGEQGs2mq5eSzmC+qri3np6jc+rPunHGJFEaWvUzCJRVh
	/+FuJqEZasF96nPy782Q6upplt+WCQ5gnoP8WWBQFbrm0gibzezoe8IQueRK++sj0HHKDIK3fmkBp
	hx/DmKDgobB0355e0KKSKtOdQBtR3ONZt6KO2Xw2E1rP9BosTNxEuY0kisIonb6hNL2WxXCjLCVnE
	shIM1P6OOdaEdVvfTtdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHepe-0000000F9ym-2WKk;
	Wed, 21 May 2025 08:29:46 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHels-0000000F9Vw-3ESP
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 08:25:55 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250521082550epoutp0382b69ac40ff23c47b4096f2b1e6ab2ee~BfVjU0Joa1962019620epoutp03X
	for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 08:25:50 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250521082550epoutp0382b69ac40ff23c47b4096f2b1e6ab2ee~BfVjU0Joa1962019620epoutp03X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1747815950;
	bh=nr0SojgBW0OyzBwMwWFbDN2/zZUC1sT9ka++LQzqMy8=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=J9VYmDAJKHkzuBvc0uHlVyG40M353HlrY9REJJjbZFy2SD+sO7i4Xj7QlIho3xFEd
	 VkB15xExVOOCxwm1m8egGDGCGX1XlkDvXhLBj49O9sGBlFOcwkLL1ZwICgJe35Wbok
	 rZweN/NXY+DAFEigUYwwTS8caxK7j2uecpK1udk8=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250521082550epcas5p197100e59ef919a5bc5322deec4caa768~BfVinuYnb0385703857epcas5p1U;
	Wed, 21 May 2025 08:25:50 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.177]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4b2Pd81Z7Vz2SSKX; Wed, 21 May
	2025 08:25:48 +0000 (GMT)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20250521065627epcas5p43c4100703f434187d146723b22782306~BeHf4rgFN0693706937epcas5p44;
	Wed, 21 May 2025 06:56:27 +0000 (GMT)
Received: from epsmgmcp1.samsung.com (unknown [182.195.42.82]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20250521065627epsmtrp14d29acdc4c72a3f5c61c1bf9623ffaf7~BeHf1eldQ1385313853epsmtrp1N;
	Wed, 21 May 2025 06:56:27 +0000 (GMT)
X-AuditID: b6c32a52-f0cb424000004c16-1a-682d791a824d
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgmcp1.samsung.com (Symantec Messaging Gateway) with SMTP id
	12.D5.19478.A197D286; Wed, 21 May 2025 15:56:26 +0900 (KST)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250521065623epsmtip20511b2deb72e652ab87ae28f432ef8aa~BeHchivwD2753527535epsmtip2c;
	Wed, 21 May 2025 06:56:23 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Neil Armstrong'" <neil.armstrong@linaro.org>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<andre.draszik@linaro.org>, <peter.griffin@linaro.org>,
	<kauschluss@disroot.org>, <m.szyprowski@samsung.com>,
	<s.nawrocki@samsung.com>
Cc: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <rosa.pila@samsung.com>,
	<dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <a5c1a064-d760-4140-9e78-d74823b400a8@linaro.org>
Subject: RE: [PATCH v2 2/2] phy: exyons5-usbdrd: support HS phy for
 ExynosAutov920
Date: Wed, 21 May 2025 12:26:22 +0530
Message-ID: <000101dbca1d$78ca5570$6a5f0050$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIiRnTfgkV106HBI/lpdza94uXQvgIU2wPiAQ+Sme8BD11JvrMuDYog
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA02RfUhTURiHO/fe3V1Hi+vUOlk0WfTdZmbkKUyyKFYRhJCEIbn0spWbjk2l
	gqiIPpSoZaXzlqkYs2alqamJZW0TNG3WjKVlU9S5rCjKpa101lUK/3vOe36/hxdeChe9IEKp
	Q2kZjC5NoZaQAqLWKhFLQ49KVWv876JQ381aEtV8rCbQ3cd2DLnqTXxUZLPzkLOrhI/G/R0k
	aj4ziaNh1kWiqgEnD3U23CCRwTxKIGPHEwzds73no44POTz09dFbgCqNfgJNNtbzkdfXhyPr
	53M8ZCv7hqFHPS345rny1vvVmLzKnE3Ke5yNpLz61gn5xRozkI9ULdpDJgiiUxj1oSxGFx6T
	JFB9HfPytb+lRwZLs/GT4M6SHEBRkF4HmywJOSCAEtF1AHoqZBxDeiHsz3vAm+YgeMfv4ecA
	wd+MB0C/eQhwXZKOgoX3l3HzYPo1BkuHXYB74LQVg9+vssR0YwxAV8svjFMF0DGwsW+S4DiI
	joP5dhefY4JeAivO5vE4q5DeALsLgrmxkA6ErQWDU3GcXgXd3e7/bCr5hE9vFwZ9btPUpsH0
	dmgZPY9PZ+bBZt8F3ACC2BkqdoaKnaFiZ1SKAWEGIYxWr1FqkrURMr1Co89MU8qS0zVVYOri
	K+PqgaliQmYBGAUsAFK4JFiYeHu1SiRMURw9xujSD+gy1YzeAhZQhGSecLE6O0VEKxUZTCrD
	aBndv1+MCgg9ibHHP8JvZaGpHTvFI1J5Ya4g35HY8DbWEr+OemNmuk9k9Xd1jrzP37uvtjMj
	LMnBznm59eGpgcqiAejYnDBfGf+UV+ZUh1WOh18T+XiSX2KbcqD0QXnuUHNi25Zty3uVl0vq
	YiLb8Nm2XebR2PJUje86nh6yz+MyuV+Ju+qjVaL1nca63V62qf3HqWFZrrfocHhE7Lgx8NIt
	fezesQJrwqx2Qns4t63FWDIysbRuv71vo2CZ4fuNeM/5A0ldX4S60+7oCWfQpsEaBbv1WGGv
	XW6Iag90/f5S3GohmhxHHNXeNv+VhhU77oHoZ8/Fi3xNL/dYfx6UGiIz8tbm90gkhF6liFiJ
	6/SKP2hl+9hgAwAA
X-CMS-MailID: 20250521065627epcas5p43c4100703f434187d146723b22782306
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250516101803epcas5p2d9403d89d840dcad88a03d437a48aceb
References: <20250516102650.2144487-1-pritam.sutar@samsung.com>
	<CGME20250516101803epcas5p2d9403d89d840dcad88a03d437a48aceb@epcas5p2.samsung.com>
	<20250516102650.2144487-3-pritam.sutar@samsung.com>
	<a5c1a064-d760-4140-9e78-d74823b400a8@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_012553_134582_805ABE27 
X-CRM114-Status: GOOD (  29.64  )
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

Hi Neil,

Thank you for reviewing the patches.

> -----Original Message-----
> From: neil.armstrong@linaro.org <neil.armstrong@linaro.org>
> Sent: 20 May 2025 01:10 PM
> To: Pritam Manohar Sutar <pritam.sutar@samsung.com>; vkoul@kernel.org;
> kishon@kernel.org; robh@kernel.org; krzk+dt@kernel.org;
> conor+dt@kernel.org; alim.akhtar@samsung.com; andre.draszik@linaro.org;
> peter.griffin@linaro.org; kauschluss@disroot.org;
> m.szyprowski@samsung.com; s.nawrocki@samsung.com
> Cc: linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-samsung-
> soc@vger.kernel.org; rosa.pila@samsung.com; dev.tailor@samsung.com;
> faraz.ata@samsung.com; muhammed.ali@samsung.com;
> selvarasu.g@samsung.com
> Subject: Re: [PATCH v2 2/2] phy: exyons5-usbdrd: support HS phy for
> ExynosAutov920
> 
> On 16/05/2025 12:26, Pritam Manohar Sutar wrote:
> > This SoC has a single USB 3.1 DRD combo phy and three USB2.0 DRD HS
> > phy controllers those only support the UTMI+ interface.
> >
> > Support only UTMI+ for this SoC which is very similar to what the
> > existing Exynos850 supports.
> >
> > The combo phy supports both UTMI+ (HS) and PIPE3 (SS) and is out of
> > scope of this commit.
> >
> > Add required change in phy driver to support HS phy for this SoC.
> >
> > Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> > ---
> >   drivers/phy/samsung/phy-exynos5-usbdrd.c | 85
> ++++++++++++++++++++++++
> >   1 file changed, 85 insertions(+)
> >
> > diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c
> > b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> > index 634c4310c660..b440b56c6595 100644
> > --- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
> > +++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> > @@ -177,6 +177,9 @@
> >   #define HSPHYPLLTUNE_PLL_P_TUNE			GENMASK(3, 0)
> >
> >   /* Exynos850: USB DRD PHY registers */
> > +#define EXYNOSAUTOv920_DRD_CTRL_VER		0x00
> > +#define CTRL_VER_MAJOR_VERSION			GENMASK(31, 24)
> > +
> >   #define EXYNOS850_DRD_LINKCTRL			0x04
> >   #define LINKCTRL_FORCE_RXELECIDLE		BIT(18)
> >   #define LINKCTRL_FORCE_PHYSTATUS		BIT(17)
> > @@ -1772,6 +1775,10 @@ static const char * const
> exynos5_regulator_names[] = {
> >   	"vbus", "vbus-boost",
> >   };
> >
> > +static const char * const exynosautov920_clk_names[] = {
> > +	"ext_xtal",
> > +};
> > +
> >   static const struct exynos5_usbdrd_phy_drvdata exynos5420_usbdrd_phy = {
> >   	.phy_cfg		= phy_cfg_exynos5,
> >   	.phy_ops		= &exynos5_usbdrd_phy_ops,
> > @@ -1847,6 +1854,81 @@ static const struct exynos5_usbdrd_phy_drvdata
> exynos850_usbdrd_phy = {
> >   	.n_regulators		= ARRAY_SIZE(exynos5_regulator_names),
> >   };
> >
> > +static void exynosautov920_usbdrd_utmi_init(struct exynos5_usbdrd_phy
> > +*phy_drd) {
> > +	u32 version;
> > +
> > +	version = readl(phy_drd->reg_phy +
> EXYNOSAUTOv920_DRD_CTRL_VER);
> > +	dev_info(phy_drd->dev, "usbphy: version:0x%x\n", version);
> 
> Please do not add mode info to boot log, use dev_dbg instead.

Will replace dev_info by dev_dbg.

> 
> > +
> > +	if (FIELD_GET(CTRL_VER_MAJOR_VERSION, version) == 0x3)
> > +		/* utmi init for exynosautov920 HS phy */
> > +		exynos850_usbdrd_utmi_init(phy_drd);
> > +}
> > +
> > +static int exynosautov920_usbdrd_phy_init(struct phy *phy) {
> > +	struct phy_usb_instance *inst = phy_get_drvdata(phy);
> > +	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
> > +	int ret = 0;
> > +
> > +	ret = clk_bulk_prepare_enable(phy_drd->drv_data->n_clks, phy_drd-
> >clks);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* UTMI or PIPE3 specific init */
> > +	inst->phy_cfg->phy_init(phy_drd);
> > +
> > +	clk_bulk_disable_unprepare(phy_drd->drv_data->n_clks,
> > +phy_drd->clks);
> > +
> > +	return 0;
> > +}
> > +
> > +static void exynosautov920_v3p1_phy_dis(struct phy *phy) {
> > +	struct phy_usb_instance *inst = phy_get_drvdata(phy);
> > +	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
> > +	void __iomem *reg_phy = phy_drd->reg_phy;
> > +	u32 version;
> > +
> > +	version = readl(reg_phy + EXYNOSAUTOv920_DRD_CTRL_VER);
> > +
> > +	if (FIELD_GET(CTRL_VER_MAJOR_VERSION, version) == 0x3)
> > +		exynos850_usbdrd_phy_exit(phy);
> > +}
> > +
> > +static int exynosautov920_usbdrd_phy_exit(struct phy *phy) {
> > +	struct phy_usb_instance *inst = phy_get_drvdata(phy);
> > +
> > +	if (inst->phy_cfg->id == EXYNOS5_DRDPHY_UTMI)
> > +		exynosautov920_v3p1_phy_dis(phy);
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct phy_ops exynosautov920_usbdrd_phy_ops = {
> > +	.init		= exynosautov920_usbdrd_phy_init,
> > +	.exit		= exynosautov920_usbdrd_phy_exit,
> 
> <snip>
> 
> > +		.id		= EXYNOS5_DRDPHY_UTMI,
> > +		.phy_init	= exynosautov920_usbdrd_utmi_init,
> 
> <snip>
> 
> > +	}, {
> > +		.compatible = "samsung,exynosautov920-usb31drd-phy",
> > +		.data = &exynosautov920_usb31drd_phy
> 
> All those new ops are only called when matching this compatible, it it really
> necessary to check the version ? is there "samsung,exynosautov920-usb31drd-
> phy" PHYs with version different from 3 in the wild ?
> 

This SoC has a single USB 3.1 DRD combo phy of version v400 (major : minor versions) and three USB2.0
DRD phy v303 (major : minor versions) controllers those only support the UTMI+ interface. Currently, 
supporting only v303 phys in this patch-set, and planning v400 phy later (soon). 

Yes, there's v400 phy version that is different from v303 phy. Hence, phy version check is needed to support both the phys for same compatible.

> Neil
> 
> >   	},
> >   	{ },
> >   };


Thank you,
Pritam


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

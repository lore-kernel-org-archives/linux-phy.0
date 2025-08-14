Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 771E1CA0EE9
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 15:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/oAVYe0/fWcjERxOgmlapBiMtbm0ezBrQrLuPW9q+k=; b=NTceYtJeY3DEBL
	It5+Szd963p8Bwl8wvQdJVbwU/vs4sCODuSnGC6H0RgUdN+zj6DkhHfUH/5UhWjWZBGbxIppUxeoX
	4xe6qms3HhO9rRu3mErH+MUmd4YKVY5h9md24EePzF/TXHhunKz6mazZcZ+3bcm0+KSl+iWweCrth
	TD+kwM0J7ftIf+oqAu0HSzE2uIO+VdTF8BzpxYeCcDe4AiXOWH8Hzfes6uP6cKny0WJfVH70bz3EZ
	F2bgSwPVUHMiXm1PrOk/c6eGpdqa4sQtfWcz/8CqLWnfly++Ci3LmPf5w3xWQLQRJwNH28QhwatE/
	IN8AmS0zLHTmck+v5pDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umZh3-0000000HOhE-0dIT;
	Thu, 14 Aug 2025 15:16:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umY0m-0000000H3KS-27kD
	for linux-phy@bombadil.infradead.org;
	Thu, 14 Aug 2025 13:28:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=References:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:In-Reply-To:Cc
	:To:From:Sender:Reply-To:Content-ID:Content-Description;
	bh=L3ufGPnyrW0N3UVpr3/riCJH1PQGRtTjLIlg9Lbrstg=; b=ZDthPNcVcG7d8HgY/nOMJnnxeT
	3krYcPelCSZgUO4GU3BembX+kGf6XPWkgEiggu5q1blJamC8FCTmmm9c4p62NosE29uCEmVnm1qBa
	3urYtid1cl7QggdjWyFVzBYpwChXxXwpSmyKUlY42psyRo1GkCwGs5zQWbPYjOkry60vVRUzJuv4e
	WjXgBuIL+KGZMQjlu0+knjvNB5cYzuMX2DHSb64/nSOpkOQsYRnhN0iFs7bllVlB8NQcAk0+n3+Mf
	6Ym0bBcDggS5RTD1JS0FStP+0bgQx7InuVqnDJb1DudGQ9qzn3BgLVO4whQLoGBJwquTe916E+Ryo
	HuMdI3lw==;
Received: from mailout4.samsung.com ([203.254.224.34])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umY0g-0000000GP9F-3OGO
	for linux-phy@lists.infradead.org;
	Thu, 14 Aug 2025 13:28:55 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20250814132839epoutp045e80623b407f6c8be8908ad09fd3a6a4~bpTM-kO4K0273302733epoutp04D
	for <linux-phy@lists.infradead.org>; Thu, 14 Aug 2025 13:28:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20250814132839epoutp045e80623b407f6c8be8908ad09fd3a6a4~bpTM-kO4K0273302733epoutp04D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1755178119;
	bh=L3ufGPnyrW0N3UVpr3/riCJH1PQGRtTjLIlg9Lbrstg=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=ZzRxVVY5/wPdoVLxiMHEU5kpHumoK0S66oxLoNIMT+d4vhRsTLFh2Z+Ce+MWHDkOG
	 LfhHE3VzzpQXqt+UWdVLNcSatvUVQVOcNZ4Qp7RPX1fWDait/49tMsZ/J7ivfIBZFf
	 UNYY6UXvJ8rL0Fkt/Zonw5Ue59gdHqCKjTkPjq/I=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250814132838epcas5p3c3693b0f5672407d67efe160b31fcc0c~bpTMXiWWT1937819378epcas5p3c;
	Thu, 14 Aug 2025 13:28:38 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.92]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4c2mKK6nlKz6B9m7; Thu, 14 Aug
	2025 13:28:37 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20250814132606epcas5p1cdf8e1a97f5abe9d71dcd1b425a07648~bpQ_QWk6L2554225542epcas5p1n;
	Thu, 14 Aug 2025 13:26:06 +0000 (GMT)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250814132602epsmtip1c22abee846ffe43383ffacb28125aafe~bpQ7V3wRg3173831738epsmtip1Y;
	Thu, 14 Aug 2025 13:26:02 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Vinod Koul'" <vkoul@kernel.org>
Cc: <kishon@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<andre.draszik@linaro.org>, <peter.griffin@linaro.org>,
	<kauschluss@disroot.org>, <ivo.ivanov.ivanov1@gmail.com>,
	<igor.belwon@mentallysanemainliners.org>, <m.szyprowski@samsung.com>,
	<s.nawrocki@samsung.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.org>,
	<rosa.pila@samsung.com>, <dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <aJtMdHcidETZyiIp@vaman>
Subject: RE: [PATCH v5 2/6] phy: exynos5-usbdrd: support HS phy for
 ExynosAutov920
Date: Thu, 14 Aug 2025 18:56:01 +0530
Message-ID: <02f101dc0d1e$fd018ef0$f704acd0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJ+ZgWj3OwstM5ZbwFL0KmcSzrOlQIGOcp3ARbD4UABdmTpTbL41iug
Content-Language: en-in
X-CMS-MailID: 20250814132606epcas5p1cdf8e1a97f5abe9d71dcd1b425a07648
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250805114310epcas5p459aa232884d22501f5fefe42f239fecc
References: <20250805115216.3798121-1-pritam.sutar@samsung.com>
	<CGME20250805114310epcas5p459aa232884d22501f5fefe42f239fecc@epcas5p4.samsung.com>
	<20250805115216.3798121-3-pritam.sutar@samsung.com> <aJtMdHcidETZyiIp@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_142851_662085_77234122 
X-CRM114-Status: GOOD (  20.14  )
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

Hi Vinod, 

> -----Original Message-----
> From: Vinod Koul <vkoul@kernel.org>
> Sent: 12 August 2025 07:45 PM
> To: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> Cc: kishon@kernel.org; robh@kernel.org; krzk+dt@kernel.org;
> conor+dt@kernel.org; alim.akhtar@samsung.com; andre.draszik@linaro.org;
> peter.griffin@linaro.org; kauschluss@disroot.org;
> ivo.ivanov.ivanov1@gmail.com; igor.belwon@mentallysanemainliners.org;
> m.szyprowski@samsung.com; s.nawrocki@samsung.com; linux-
> phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> samsung-soc@vger.kernel.org; rosa.pila@samsung.com;
> dev.tailor@samsung.com; faraz.ata@samsung.com;
> muhammed.ali@samsung.com; selvarasu.g@samsung.com
> Subject: Re: [PATCH v5 2/6] phy: exynos5-usbdrd: support HS phy for
> ExynosAutov920
> 
> On 05-08-25, 17:22, Pritam Manohar Sutar wrote:
> > Enable UTMI+ phy support for this SoC which is very similar to what
> > the existing Exynos850 supports.
> >
> > Add required change in phy driver to support HS phy for this SoC.
> >
> > Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> > ---
> >  drivers/phy/samsung/phy-exynos5-usbdrd.c    | 123
> ++++++++++++++++++++
> >  include/linux/soc/samsung/exynos-regs-pmu.h |   2 +
> >  2 files changed, 125 insertions(+)
> >
> > diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c
> > b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> > index dd660ebe8045..5400dd23e500 100644
> > --- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
> > +++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
> > @@ -2054,6 +2054,126 @@ static const struct
> exynos5_usbdrd_phy_drvdata exynos990_usbdrd_phy = {
> >  	.n_regulators		= ARRAY_SIZE(exynos5_regulator_names),
> >  };
> >
> > +static int exynosautov920_usbdrd_phy_init(struct phy *phy) {
> > +	struct phy_usb_instance *inst = phy_get_drvdata(phy);
> > +	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
> > +	int ret;
> > +
> > +	ret = clk_bulk_prepare_enable(phy_drd->drv_data->n_clks,
> phy_drd->clks);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* Bypass PHY isol */
> > +	inst->phy_cfg->phy_isol(inst, false);
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
> > +static int exynosautov920_usbdrd_phy_exit(struct phy *phy) {
> > +	struct phy_usb_instance *inst = phy_get_drvdata(phy);
> > +	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
> > +	int ret = 0;
> 
> Superfluous init..
> 
> > +
> > +	ret = clk_bulk_prepare_enable(phy_drd->drv_data->n_clks,
> phy_drd->clks);
> > +	if (ret)
> > +		return ret;
> > +
> > +	exynos850_usbdrd_phy_exit(phy);
> > +
> > +	/* enable PHY isol */
> > +	inst->phy_cfg->phy_isol(inst, true);
> > +
> > +	clk_bulk_disable_unprepare(phy_drd->drv_data->n_clks,
> > +phy_drd->clks);
> > +
> > +	return 0;
> > +}
> > +
> > +static int exynosautov920_usbdrd_phy_power_on(struct phy *phy) {
> > +	int ret;
> > +	struct phy_usb_instance *inst = phy_get_drvdata(phy);
> > +	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
> 
> Reverse chrsitmas tree pls
> 
> --
> ~Vinod

Will address these comments in next version of the patch-set (v6).

Thank you.

Regards,
Pritam



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

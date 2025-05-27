Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9F36C5AE59
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 05:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/eeGG6L85zn/lQWEgAS89dPVqqbpcnTURESxEADkl0M=; b=Gnt712yaUqQDFl
	TbekC9JzyxDQEBgrcnMSHYGfK3P9a7OL4V/RB4zA2zrgYO3fJ+qHClzW5vb8x2QdhUhR936dW1u25
	2ANRoZ/FAanLZNPgXII0PBTa+s+T42ui7j4rpZFeih/EKMszHravwFUtQum/Ym8O/UBOpzrKdlNdX
	19C2Kn4dErw+nuzTi5IH9aJQKPs/H5oT6uGSshcOIJSeP9cN+d6KO8WD6SCcKHVWvRZr3sAV4eM+k
	R2Tg2G7rXOT2TG5VD78OEBhuUM968Y2QXbGgi9VicLJ3iKlD2mKcjO6Mwnc4C+F/o8XZBLLHWjdhY
	m4vbb9vyaDcj/G9PA2PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK917-0000000CBqf-1sXs;
	Wed, 28 May 2025 05:07:53 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK8n6-0000000CAAR-13W4
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 04:53:26 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20250528045322epoutp02b75fa87ae03808a2c9a2bbd849f9dcde~Dl9CeTYSG2391423914epoutp02K
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 04:53:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20250528045322epoutp02b75fa87ae03808a2c9a2bbd849f9dcde~Dl9CeTYSG2391423914epoutp02K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1748408002;
	bh=0DlBYAgEzt9uc9jY7f+q2m1ViLi1AyD0CUt4F5l7nEs=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=BOTopS4MlYz1jKjJKA7WE7HcNW8sgjWl1pwLDKmumuWizIJw/CpDSBQlOKTtz6Tg9
	 iZF4NRLsYXp34PZCqNljlUgQWxjK61PmoE/qLlldcAY8WT15JvELP3rfRgbPes8xEh
	 AS5lzMyLbwUWkagJUd/7UoLzSPHaieglw6cbaAvU=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20250528045322epcas5p207f0f54638956dd28eb310e57bc0dde2~Dl9CA7nGT3262532625epcas5p2t;
	Wed, 28 May 2025 04:53:22 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.178]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4b6cZm4qCNz2SSKs; Wed, 28 May
	2025 04:53:20 +0000 (GMT)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250527104517epcas5p2714a19318a97aae43e8a5c70e83d4ce2~DXHA6Jtmy1647516475epcas5p2q;
	Tue, 27 May 2025 10:45:17 +0000 (GMT)
Received: from epsmgmcp1.samsung.com (unknown [182.195.42.82]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20250527104517epsmtrp2588b808e7facbaffcd6f3c90a8cc520e~DXHA5WQdg3063930639epsmtrp2U;
	Tue, 27 May 2025 10:45:17 +0000 (GMT)
X-AuditID: b6c32a52-41dfa70000004c16-e4-683597bd760b
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgmcp1.samsung.com (Symantec Messaging Gateway) with SMTP id
	01.28.19478.DB795386; Tue, 27 May 2025 19:45:17 +0900 (KST)
Received: from FDSFTE462 (unknown [107.122.81.248]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250527104514epsmtip15b038718e08c7388a725cd551e415f1e~DXG_F3TSl0476404764epsmtip10;
	Tue, 27 May 2025 10:45:14 +0000 (GMT)
From: "Shradha Todi" <shradha.t@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
Cc: <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.or>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<manivannan.sadhasivam@linaro.org>, <lpieralisi@kernel.org>, <kw@linux.com>,
	<robh@kernel.org>, <bhelgaas@google.com>, <jingoohan1@gmail.com>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <arnd@arndb.de>,
	<m.szyprowski@samsung.com>, <jh80.chung@samsung.com>
In-Reply-To: <20250521-certain-quoll-from-vega-11885b@kuoka>
Subject: RE: [PATCH 08/10] phy: exynos: Add PCIe PHY support for FSD SoC
Date: Tue, 27 May 2025 16:15:13 +0530
Message-ID: <0e2701dbcef4$6f5f24d0$4e1d6e70$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKa2HaEso6x90WQFKmaYw3pYxuT6gHscA4TApjo2xABu7x/m7I2Furw
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrLIsWRmVeSWpSXmKPExsWy7bCSnO7e6aYZBs9eCFo8mLeNzeLvpGPs
	FkuaMizW7D3HZDH/yDlWixu/2lgtVnyZyW5xtPU/s8XLWffYLM6f38Bu0dDzm9Vi0+NrrBaX
	d81hszg77zibxYRV31gszn5fwGTR8qeFxWLtkbvsFndbOlkt/u/ZwW6x884JZgdRj9+/JjF6
	7Jx1l91jwaZSj02rOtk87lzbw+bx5Mp0Jo/NS+o9+rasYvQ48nU6i8fnTXIBXFFcNimpOZll
	qUX6dglcGZM/vWYq+Bpb0bD6NFsD40G/LkZODgkBE4lVUyazdDFycQgJbGeUuHB0MSNEQlLi
	88V1TBC2sMTKf8/ZIYqeMUrs7O1kAUmwCehIPLnyhxnEFhHQldh8YzlYEbPAdhaJM0sfMkJ0
	vGaUWPi4H2wsp4CNxIyGY2BjhQU8JLY1LACLswioSnw+cZQVxOYVsJT4d3EBlC0ocXLmE7Bt
	zALaEr0PWxlh7GULXzNDnKcg8fPpMlaIK9wkph+5wQpRIy5x9GcP8wRG4VlIRs1CMmoWklGz
	kLQsYGRZxSiaWlCcm56bXGCoV5yYW1yal66XnJ+7iRGcArSCdjAuW/9X7xAjEwfjIUYJDmYl
	Ed5tE0wyhHhTEiurUovy44tKc1KLDzFKc7AoifMq53SmCAmkJ5akZqemFqQWwWSZODilGpgW
	3NjwvUr6U3yfzcvPWdPsV0b5BL9Tb9fa5N/ZXnKU+9T+hP99a+3k1891eqOpKOXJ1LBfQWXn
	sRtPjif7m54/kPJEwn3p9g+X9cPrv1vGxO1hlp83RyF9A9ukdt47WW9SA1c2X6m6/6ZkTn3G
	A/WFtx+f3Wz84J9I7LcCy79Hdli+jzE9P3e3dal6/b0jjPFONbV6Nc2n88+wxRw5rbG4O2Oi
	Y+wkbdsj8+dJSLi8fSBYU9RcOFHzuanGH0P/hfkrDRKN5KoLY6ffmiOTI947Y+PhqZ/4ttis
	XT9txVOPr/yXm2S/1cseYz9+TDq1YPMRTX/5DW5Cb5xu90itDuFVfpjZpmKW/a6jvKtJqEyJ
	pTgj0VCLuag4EQC/ATkXcAMAAA==
X-CMS-MailID: 20250527104517epcas5p2714a19318a97aae43e8a5c70e83d4ce2
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250518193256epcas5p442e9549fd8fd810522f960df74c22e34
References: <20250518193152.63476-1-shradha.t@samsung.com>
	<CGME20250518193256epcas5p442e9549fd8fd810522f960df74c22e34@epcas5p4.samsung.com>
	<20250518193152.63476-9-shradha.t@samsung.com>
	<20250521-certain-quoll-from-vega-11885b@kuoka>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_215324_615546_13DECBDB 
X-CRM114-Status: GOOD (  23.15  )
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



> -----Original Message-----
> From: Krzysztof Kozlowski <krzk@kernel.org>
> Sent: 21 May 2025 15:11
> To: Shradha Todi <shradha.t@samsung.com>
> Cc: linux-pci@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-samsung-soc@vger.kernel.or;
> linux-kernel@vger.kernel.org; linux-phy@lists.infradead.org; manivannan.sadhasivam@linaro.org; lpieralisi@kernel.org;
> kw@linux.com; robh@kernel.org; bhelgaas@google.com; jingoohan1@gmail.com; krzk+dt@kernel.org; conor+dt@kernel.org;
> alim.akhtar@samsung.com; vkoul@kernel.org; kishon@kernel.org; arnd@arndb.de; m.szyprowski@samsung.com;
> jh80.chung@samsung.com
> Subject: Re: [PATCH 08/10] phy: exynos: Add PCIe PHY support for FSD SoC
> 
> On Mon, May 19, 2025 at 01:01:50AM GMT, Shradha Todi wrote:
> > Add PCIe PHY support for Tesla FSD SoC.
> >
> > Signed-off-by: Shradha Todi <shradha.t@samsung.com>
> > ---
> >  drivers/phy/samsung/phy-exynos-pcie.c | 357
> > +++++++++++++++++++++++++-
> >  1 file changed, 356 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/phy/samsung/phy-exynos-pcie.c
> > b/drivers/phy/samsung/phy-exynos-pcie.c
> > index 53c9230c2907..0e4c00c1121e 100644
> > --- a/drivers/phy/samsung/phy-exynos-pcie.c
> > +++ b/drivers/phy/samsung/phy-exynos-pcie.c
> > @@ -34,11 +34,121 @@
> >  /* PMU PCIE PHY isolation control */
> >  #define EXYNOS5433_PMU_PCIE_PHY_OFFSET		0x730
> >
> > +/* FSD: PCIe PHY common registers */
> > +#define FSD_PCIE_PHY_TRSV_CMN_REG03	0x000c
> > +#define FSD_PCIE_PHY_TRSV_CMN_REG01E	0x0078
> > +#define FSD_PCIE_PHY_TRSV_CMN_REG02D	0x00b4
> > +#define FSD_PCIE_PHY_TRSV_CMN_REG031	0x00c4
> > +#define FSD_PCIE_PHY_TRSV_CMN_REG036	0x00d8
> > +#define FSD_PCIE_PHY_TRSV_CMN_REG05F	0x017c
> > +#define FSD_PCIE_PHY_TRSV_CMN_REG060	0x0180
> > +#define FSD_PCIE_PHY_TRSV_CMN_REG062	0x0188
> > +#define FSD_PCIE_PHY_TRSV_CMN_REG061	0x0184
> > +#define FSD_PCIE_PHY_AGG_BIF_RESET	0x0200
> > +#define FSD_PCIE_PHY_AGG_BIF_CLOCK	0x0208
> > +#define FSD_PCIE_PHY_CMN_RESET		0x0228
> > +
> > +/* FSD: PCIe PHY lane registers */
> > +#define FSD_PCIE_PHY_LANE_OFFSET	0x400
> > +#define FSD_PCIE_PHY_TRSV_REG001_LN_N	0x404
> > +#define FSD_PCIE_PHY_TRSV_REG002_LN_N	0x408
> > +#define FSD_PCIE_PHY_TRSV_REG005_LN_N	0x414
> > +#define FSD_PCIE_PHY_TRSV_REG006_LN_N	0x418
> > +#define FSD_PCIE_PHY_TRSV_REG007_LN_N	0x41c
> > +#define FSD_PCIE_PHY_TRSV_REG009_LN_N	0x424
> > +#define FSD_PCIE_PHY_TRSV_REG00A_LN_N	0x428
> > +#define FSD_PCIE_PHY_TRSV_REG00C_LN_N	0x430
> > +#define FSD_PCIE_PHY_TRSV_REG012_LN_N	0x448
> > +#define FSD_PCIE_PHY_TRSV_REG013_LN_N	0x44c
> > +#define FSD_PCIE_PHY_TRSV_REG014_LN_N	0x450
> > +#define FSD_PCIE_PHY_TRSV_REG015_LN_N	0x454
> > +#define FSD_PCIE_PHY_TRSV_REG016_LN_N	0x458
> > +#define FSD_PCIE_PHY_TRSV_REG018_LN_N	0x460
> > +#define FSD_PCIE_PHY_TRSV_REG020_LN_N	0x480
> > +#define FSD_PCIE_PHY_TRSV_REG026_LN_N	0x498
> > +#define FSD_PCIE_PHY_TRSV_REG029_LN_N	0x4a4
> > +#define FSD_PCIE_PHY_TRSV_REG031_LN_N	0x4c4
> > +#define FSD_PCIE_PHY_TRSV_REG036_LN_N	0x4d8
> > +#define FSD_PCIE_PHY_TRSV_REG039_LN_N	0x4e4
> > +#define FSD_PCIE_PHY_TRSV_REG03B_LN_N	0x4ec
> > +#define FSD_PCIE_PHY_TRSV_REG03C_LN_N	0x4f0
> > +#define FSD_PCIE_PHY_TRSV_REG03E_LN_N	0x4f8
> > +#define FSD_PCIE_PHY_TRSV_REG03F_LN_N	0x4fc
> > +#define FSD_PCIE_PHY_TRSV_REG043_LN_N	0x50c
> > +#define FSD_PCIE_PHY_TRSV_REG044_LN_N	0x510
> > +#define FSD_PCIE_PHY_TRSV_REG046_LN_N	0x518
> > +#define FSD_PCIE_PHY_TRSV_REG048_LN_N	0x520
> > +#define FSD_PCIE_PHY_TRSV_REG049_LN_N	0x524
> > +#define FSD_PCIE_PHY_TRSV_REG04E_LN_N	0x538
> > +#define FSD_PCIE_PHY_TRSV_REG052_LN_N	0x548
> > +#define FSD_PCIE_PHY_TRSV_REG068_LN_N	0x5a0
> > +#define FSD_PCIE_PHY_TRSV_REG069_LN_N	0x5a4
> > +#define FSD_PCIE_PHY_TRSV_REG06A_LN_N	0x5a8
> > +#define FSD_PCIE_PHY_TRSV_REG06B_LN_N	0x5ac
> > +#define FSD_PCIE_PHY_TRSV_REG07B_LN_N	0x5ec
> > +#define FSD_PCIE_PHY_TRSV_REG083_LN_N	0x60c
> > +#define FSD_PCIE_PHY_TRSV_REG084_LN_N	0x610
> > +#define FSD_PCIE_PHY_TRSV_REG086_LN_N	0x618
> > +#define FSD_PCIE_PHY_TRSV_REG087_LN_N	0x61c
> > +#define FSD_PCIE_PHY_TRSV_REG08B_LN_N	0x62c
> > +#define FSD_PCIE_PHY_TRSV_REG09C_LN_N	0x670
> > +#define FSD_PCIE_PHY_TRSV_REG09D_LN_N	0x674
> > +#define FSD_PCIE_PHY_TRSV_REG09E_LN_N	0x678
> > +#define FSD_PCIE_PHY_TRSV_REG09F_LN_N	0x67c
> > +#define FSD_PCIE_PHY_TRSV_REG0A2_LN_N	0x688
> > +#define FSD_PCIE_PHY_TRSV_REG0A4_LN_N	0x690
> > +#define FSD_PCIE_PHY_TRSV_REG0CE_LN_N	0x738
> > +#define FSD_PCIE_PHY_TRSV_REG0FC_LN_N	0x7f0
> > +#define FSD_PCIE_PHY_TRSV_REG0FD_LN_N	0x7f4
> > +#define FSD_PCIE_PHY_TRSV_REG0FE_LN_N	0x7f8
> > +#define FSD_PCIE_PHY_TRSV_REG0CE_LN_1	0xb38
> > +#define FSD_PCIE_PHY_TRSV_REG0CE_LN_2	0xf38
> > +#define FSD_PCIE_PHY_TRSV_REG0CE_LN_3	0x1338
> > +
> > +/* FSD: PCIe PCS registers */
> > +#define FSD_PCIE_PCS_BRF_0		0x0004
> > +#define FSD_PCIE_PCS_BRF_1		0x0804
> > +#define FSD_PCIE_PCS_CLK		0x0180
> > +
> > +/* FSD: PCIe SYSREG registers */
> > +#define FSD_PCIE_SYSREG_PHY_0_CON_MASK			0x3ff
> > +#define FSD_PCIE_SYSREG_PHY_0_CON			0x042C
> > +#define FSD_PCIE_SYSREG_PHY_0_REF_SEL_MASK		0x3
> > +#define FSD_PCIE_SYSREG_PHY_0_REF_SEL			(0x2 << 0)
> > +#define FSD_PCIE_SYSREG_PHY_0_SSC_EN_MASK		0x8
> > +#define FSD_PCIE_SYSREG_PHY_0_SSC_EN			BIT(3)
> > +#define FSD_PCIE_SYSREG_PHY_0_AUX_EN_MASK		0x10
> > +#define FSD_PCIE_SYSREG_PHY_0_AUX_EN			BIT(4)
> > +#define FSD_PCIE_SYSREG_PHY_0_CMN_RSTN_MASK		0x100
> > +#define FSD_PCIE_SYSREG_PHY_0_CMN_RSTN			BIT(8)
> > +#define FSD_PCIE_SYSREG_PHY_0_INIT_RSTN_MASK		0x200
> > +#define FSD_PCIE_SYSREG_PHY_0_INIT_RSTN			BIT(9)
> > +
> > +#define FSD_PCIE_SYSREG_PHY_1_CON_MASK			0x1ff
> > +#define FSD_PCIE_SYSREG_PHY_1_CON			0x0500
> > +#define FSD_PCIE_SYSREG_PHY_1_REF_SEL_MASK		0x30
> > +#define FSD_PCIE_SYSREG_PHY_1_REF_SEL			(0x2 << 4)
> > +#define FSD_PCIE_SYSREG_PHY_1_SSC_EN_MASK		0x80
> > +#define FSD_PCIE_SYSREG_PHY_1_SSC_EN			BIT(7)
> > +#define FSD_PCIE_SYSREG_PHY_1_AUX_EN_MASK		0x1
> > +#define FSD_PCIE_SYSREG_PHY_1_AUX_EN			BIT(0)
> > +#define FSD_PCIE_SYSREG_PHY_1_CMN_RSTN_MASK		0x2
> > +#define FSD_PCIE_SYSREG_PHY_1_CMN_RSTN			BIT(1)
> > +#define FSD_PCIE_SYSREG_PHY_1_INIT_RSTN_MASK		0x8
> > +#define FSD_PCIE_SYSREG_PHY_1_INIT_RSTN			BIT(3)
> > +
> >  /* For Exynos pcie phy */
> >  struct exynos_pcie_phy {
> >  	void __iomem *base;
> > +	void __iomem *pcs_base;
> >  	struct regmap *pmureg;
> >  	struct regmap *fsysreg;
> > +	int phy_id;
> > +	const struct samsung_drv_data *drv_data; };
> > +
> > +struct samsung_drv_data {
> > +	const struct phy_ops *phy_ops;
> >  };
> >
> >  static void exynos_pcie_phy_writel(void __iomem *base, u32 val, u32
> > offset) @@ -133,9 +243,244 @@ static const struct phy_ops exynos5433_phy_ops = {
> >  	.owner		= THIS_MODULE,
> >  };
> >
> > +struct fsd_pcie_phy_pdata {
> > +	u32 phy_con_mask;
> > +	u32 phy_con;
> > +	u32 phy_ref_sel_mask;
> > +	u32 phy_ref_sel;
> > +	u32 phy_ssc_en_mask;
> > +	u32 phy_ssc_en;
> > +	u32 phy_aux_en_mask;
> > +	u32 phy_aux_en;
> > +	u32 phy_cmn_rstn_mask;
> > +	u32 phy_cmn_rstn;
> > +	u32 phy_init_rstn_mask;
> > +	u32 phy_init_rstn;
> > +	u32 num_lanes;
> > +	u32 lane_offset;
> > +};
> > +
> > +struct fsd_pcie_phy_pdata fsd_phy_con[] = {
> > +	{
> 
> Why this is global and RW?
> 
> > +	.phy_con		= FSD_PCIE_SYSREG_PHY_0_CON,
> > +	.phy_con_mask		= FSD_PCIE_SYSREG_PHY_0_CON_MASK,
> > +	.phy_ref_sel_mask	= FSD_PCIE_SYSREG_PHY_0_REF_SEL_MASK,
> > +	.phy_ref_sel		= FSD_PCIE_SYSREG_PHY_0_REF_SEL,
> > +	.phy_ssc_en_mask	= FSD_PCIE_SYSREG_PHY_0_SSC_EN_MASK,
> > +	.phy_ssc_en		= FSD_PCIE_SYSREG_PHY_0_SSC_EN,
> > +	.phy_aux_en_mask	= FSD_PCIE_SYSREG_PHY_0_AUX_EN_MASK,
> > +	.phy_aux_en		= FSD_PCIE_SYSREG_PHY_0_AUX_EN,
> > +	.phy_cmn_rstn_mask	= FSD_PCIE_SYSREG_PHY_0_CMN_RSTN_MASK,
> > +	.phy_cmn_rstn		= FSD_PCIE_SYSREG_PHY_0_CMN_RSTN,
> > +	.phy_init_rstn_mask	= FSD_PCIE_SYSREG_PHY_0_INIT_RSTN_MASK,
> > +	.phy_init_rstn		= FSD_PCIE_SYSREG_PHY_0_INIT_RSTN,
> > +	.num_lanes		= 0x4,
> > +	.lane_offset		= FSD_PCIE_PHY_LANE_OFFSET,
> > +	},
> > +	{
> > +	.phy_con		= FSD_PCIE_SYSREG_PHY_1_CON,
> > +	.phy_con_mask		= FSD_PCIE_SYSREG_PHY_1_CON_MASK,
> > +	.phy_ref_sel_mask	= FSD_PCIE_SYSREG_PHY_1_REF_SEL_MASK,
> > +	.phy_ref_sel		= FSD_PCIE_SYSREG_PHY_1_REF_SEL,
> > +	.phy_ssc_en_mask	= FSD_PCIE_SYSREG_PHY_1_SSC_EN_MASK,
> > +	.phy_ssc_en		= FSD_PCIE_SYSREG_PHY_1_SSC_EN,
> > +	.phy_aux_en_mask	= FSD_PCIE_SYSREG_PHY_1_AUX_EN_MASK,
> > +	.phy_aux_en		= FSD_PCIE_SYSREG_PHY_1_AUX_EN,
> > +	.phy_cmn_rstn_mask	= FSD_PCIE_SYSREG_PHY_1_CMN_RSTN_MASK,
> > +	.phy_cmn_rstn		= FSD_PCIE_SYSREG_PHY_1_CMN_RSTN,
> > +	.phy_init_rstn_mask	= FSD_PCIE_SYSREG_PHY_1_INIT_RSTN_MASK,
> > +	.phy_init_rstn		= FSD_PCIE_SYSREG_PHY_1_INIT_RSTN,
> > +	.num_lanes		= 0x4,
> > +	.lane_offset		= FSD_PCIE_PHY_LANE_OFFSET,
> > +	},
> > +	{ },
> > +};
> > +
> > +struct fsd_pcie_phy_setting {
> > +	u32 addr;
> > +	u32 val;
> > +	bool is_cmn_reg;
> > +};
> > +
> > +struct fsd_pcie_phy_setting fsd_pcie_phy0_setting[] = {
> 
> No. This is poor coding, please do first extensive internal reviews.
> 
> Please run standard kernel tools for static analysis, like coccinelle, smatch and sparse, and fix reported warnings. Also please check for
> warnings when building with W=1 for gcc and clang. Most of these commands (checks or W=1 build) can build specific targets, like
> some directory, to narrow the scope to only your code. The code here looks like it needs a fix. Feel free to get in touch if the warning
> is not clear.
> 

Will run all these tools and fix where required

> ...
> 
> > @@ -146,11 +491,18 @@ static int exynos_pcie_phy_probe(struct platform_device *pdev)
> >  	struct exynos_pcie_phy *exynos_phy;
> >  	struct phy *generic_phy;
> >  	struct phy_provider *phy_provider;
> > +	const struct samsung_drv_data *drv_data;
> > +
> > +	drv_data = of_device_get_match_data(dev);
> > +	if (!drv_data)
> > +		return -ENODEV;
> >
> >  	exynos_phy = devm_kzalloc(dev, sizeof(*exynos_phy), GFP_KERNEL);
> >  	if (!exynos_phy)
> >  		return -ENOMEM;
> >
> > +	exynos_phy->drv_data = drv_data;
> > +
> >  	exynos_phy->base = devm_platform_ioremap_resource(pdev, 0);
> >  	if (IS_ERR(exynos_phy->base))
> >  		return PTR_ERR(exynos_phy->base);
> > @@ -169,12 +521,15 @@ static int exynos_pcie_phy_probe(struct platform_device *pdev)
> >  		return PTR_ERR(exynos_phy->fsysreg);
> >  	}
> >
> > -	generic_phy = devm_phy_create(dev, dev->of_node, &exynos5433_phy_ops);
> > +	generic_phy = devm_phy_create(dev, dev->of_node, drv_data->phy_ops);
> >  	if (IS_ERR(generic_phy)) {
> >  		dev_err(dev, "failed to create PHY\n");
> >  		return PTR_ERR(generic_phy);
> >  	}
> >
> > +	exynos_phy->pcs_base = devm_platform_ioremap_resource(pdev, 1);
> > +	exynos_phy->phy_id = of_alias_get_id(dev->of_node, "pciephy");
> 
> Where did you document aliases?
> 

Will add it to dt bindings.

> Anyway, all this looks because you have completely buggy way of handling MMIO via syscon. That's a no-go. Use proper address
> ranges assigned to ddevices. If you ever need to use syscon, you should pass the offset as argument - just like other devices are
> doing.
> 

Alias is used for 2 reasons.
1. Each of the 2 PHYs in FSD have different initializing sequence due to channel length, etc. We need the alias to select the init sequence accordingly
2. The syscon offset can be passed via DT but the bit field also varies according to instance. (common reset is bit 8 in PHY0 and bit 1 in PHY1).

I could read the sysreg offset from DT and based on the offset value, decide which instance it is. Would that be okay?

> Best regards,
> Krzysztof



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

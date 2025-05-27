Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E18B1C5B543
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 04:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mmzx+eZTtg36Auk9QcA4bLvLKbAte05WjjTUr176dDE=; b=CATGuSXZ6xRkzC
	Qw7RDfMUEJhOR+RFPIQavTWhGJzvyyZ2y9/1KzRZ0yEKbc9oz3/SRA9DIGPkKn4ukBduxK9dIsQ5S
	DwckEf4KwHrl7aYlY3b/8ktxeh4QYnVwZlN/467hZsFXGgW33ciidylYhTMHlkckZNb98yc+fra09
	mWZet2oDXzImS26gPR4si0rihowF92/rcW4REpthQyuBWhlAvEppiO0tmL5BGEDiI1AL0TTUa0jgY
	vYVxs6Zat5HIv98faDsQu4OfU2/oNZ44J+AltO9CYgE0jv8RqTnXvupHEU0XeI7mEFULaJXiAh+OY
	9vymMtBgCFs4i348Xohw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK8oZ-0000000CAW0-2lUY;
	Wed, 28 May 2025 04:54:55 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK8mU-0000000C9xW-0ohF
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 04:52:47 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250528045242epoutp0387794da40c8e939adde0912fc124b73d~Dl8dQABFo0983809838epoutp03W
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 04:52:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250528045242epoutp0387794da40c8e939adde0912fc124b73d~Dl8dQABFo0983809838epoutp03W
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1748407962;
	bh=CpJi0DSdc8dIsYa+b64OvkXko3fy1foTQb/+TMkf3OA=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=lt9e8aJE8HsX82p9RbW1nuIMveca7gKS+/Ox3cwpUxVUj5jEHj6Cr9H8N7aCHRHch
	 A1MYskp+2LQS3hDcttVejbmiDug0FSHJaK66qHq+M2jWrxM3qPeRbdk8AJMWjD/AOK
	 4wzGPpRGB66j7rwWTNQkTzvZvf+HTuPt1gBGBmZ0=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250528045241epcas5p3b7f062602d38eacf4ce8c19257c74051~Dl8cnOR-q1435314353epcas5p3o;
	Wed, 28 May 2025 04:52:41 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.175]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4b6cZ03Yjlz6B9mF; Wed, 28 May
	2025 04:52:40 +0000 (GMT)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20250527104254epcas5p11947ea65ca36866e7363957073d27818~DXE7lv0F60375303753epcas5p18;
	Tue, 27 May 2025 10:42:54 +0000 (GMT)
Received: from epsmgmc1p1new.samsung.com (unknown [182.195.42.40]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20250527104254epsmtrp2b405d43162c971dde8bdfc6c73906f39~DXE7k1nCp2958329583epsmtrp2g;
	Tue, 27 May 2025 10:42:54 +0000 (GMT)
X-AuditID: b6c32a28-460ee70000001e8a-ad-6835972ee911
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgmc1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	3E.56.07818.E2795386; Tue, 27 May 2025 19:42:54 +0900 (KST)
Received: from FDSFTE462 (unknown [107.122.81.248]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250527104251epsmtip2d2313c036b88ac81a5ecae899abbf461~DXE4otpEE3030930309epsmtip2S;
	Tue, 27 May 2025 10:42:50 +0000 (GMT)
From: "Shradha Todi" <shradha.t@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
Cc: <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.or>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<manivannan.sadhasivam@linaro.org>, <lpieralisi@kernel.org>, <kw@linux.com>,
	<robh@kernel.org>, <bhelgaas@google.com>, <jingoohan1@gmail.com>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <arnd@arndb.de>,
	<m.szyprowski@samsung.com>, <jh80.chung@samsung.com>, "'Hrishikesh Dileep'"
	<hrishikesh.d@samsung.com>
In-Reply-To: <20250521-mysterious-mole-of-priority-8a5f4d@kuoka>
Subject: RE: [PATCH 03/10] PCI: exynos: Reorder MACROs to maintain
 consistency
Date: Tue, 27 May 2025 16:12:46 +0530
Message-ID: <0e2201dbcef4$1a0f8b50$4e2ea1f0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKa2HaEso6x90WQFKmaYw3pYxuT6gLOqAk9AnIkbNUB3kJT77Iu0NZA
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMIsWRmVeSWpSXmKPExsWy7bCSvK7edNMMg3VfOC0ezNvGZvF30jF2
	iyVNGRZr9p5jsph/5Byrxc2zu9ktbvxqY7VY8WUmu8XR1v/MFi9n3WOzOH9+A7tFQ89vVotN
	j6+xWlzeNYfN4uy842wWE1Z9Y7E4+30Bk0XLnxYWi7VH7rJb3G3pZLX4v2cHu8XOOyeYHcQ8
	fv+axOixc9Zddo8Fm0o9Nq3qZPO4c20Pm8eTK9OZPDYvqffo27KK0ePI1+ksHp83yQVwRXHZ
	pKTmZJalFunbJXBlbN/nXHBBrKL99HT2BsYpwl2MnBwSAiYSi+csZOli5OIQEtjNKHFy7llW
	iISkxOeL65ggbGGJlf+es0MUPWOU+H56LliCTUBH4smVP8wgtoiArsTmG8vBipgFXrNIPDtz
	nxmi4z2jxJM3+9hBqjgFHCRanj8B2sfBISzgJzF1qgaIySKgKtFwFGwmr4ClxMEp+xghbEGJ
	kzNBqjmBZmpL9D5sZYSw5SW2v53DDHGcgsTPp8tYIW5wk1jR/QOqXlzi6M8e5gmMwrOQjJqF
	ZNQsJKNmIWlZwMiyilEytaA4Nz032bDAMC+1XK84Mbe4NC9dLzk/dxMjOB1oaexgfPetSf8Q
	IxMH4yFGCQ5mJRHebRNMMoR4UxIrq1KL8uOLSnNSiw8xSnOwKInzrjSMSBcSSE8sSc1OTS1I
	LYLJMnFwSjUwqfuVBV/hZZbX2NK9R6FEIfeQwdnc5VEb4jZvS3+xO/DA+v5DyfHNm1KWzdjz
	WntP4SGRgpzfOzcwfZ2kWbuo+epP30M/bvQ+ingTqSF85YGXpduVn9OVEuZqrf6ykT0/2mqS
	5lTbfh8W1pJnL1X9jHecOZ5f5H/81LXrcsue3wt89cHJtnxTbb6TyfSpG6wvCMY5syb6/7x2
	jSFyteVCI6+XQae0D7Lk1RwJvZ8x5eybc4t/SZh+WX6l7f6rOZEHGKUWX95XMNvgEY9T3TEV
	CVEFuesT2Cs/nl36S+RteD+PwLWGBDmenYfv7ljy2zb7qMJ7hxb9/c85DZxc1dReP/PbcLjO
	OopH13lztYydsBJLcUaioRZzUXEiABRYaWt2AwAA
X-CMS-MailID: 20250527104254epcas5p11947ea65ca36866e7363957073d27818
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250518193235epcas5p4f0bcf581b583a3acf493a20191ad2b00
References: <20250518193152.63476-1-shradha.t@samsung.com>
	<CGME20250518193235epcas5p4f0bcf581b583a3acf493a20191ad2b00@epcas5p4.samsung.com>
	<20250518193152.63476-4-shradha.t@samsung.com>
	<20250521-mysterious-mole-of-priority-8a5f4d@kuoka>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_215246_552747_9F87EC42 
X-CRM114-Status: GOOD (  20.23  )
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
> Sent: 21 May 2025 15:16
> To: Shradha Todi <shradha.t@samsung.com>
> Cc: linux-pci@vger.kernel.org; devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-samsung-soc@vger.kernel.or;
> linux-kernel@vger.kernel.org; linux-phy@lists.infradead.org; manivannan.sadhasivam@linaro.org; lpieralisi@kernel.org;
> kw@linux.com; robh@kernel.org; bhelgaas@google.com; jingoohan1@gmail.com; krzk+dt@kernel.org; conor+dt@kernel.org;
> alim.akhtar@samsung.com; vkoul@kernel.org; kishon@kernel.org; arnd@arndb.de; m.szyprowski@samsung.com;
> jh80.chung@samsung.com; Hrishikesh Dileep <hrishikesh.d@samsung.com>
> Subject: Re: [PATCH 03/10] PCI: exynos: Reorder MACROs to maintain consistency
> 
> On Mon, May 19, 2025 at 01:01:45AM GMT, Shradha Todi wrote:
> > Exynos PCI file follows MACRO definition order where register offset
> > is defined in ascending order and each bit field within the offset is
> > defined right after offset definition. Some MACROs are out of order
> > and so reorder those MACROs to maintain consistency.
> >
> > Suggested-by: Hrishikesh Dileep <hrishikesh.d@samsung.com>
> > Signed-off-by: Shradha Todi <shradha.t@samsung.com>
> > ---
> >  drivers/pci/controller/dwc/pci-exynos.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/pci/controller/dwc/pci-exynos.c
> > b/drivers/pci/controller/dwc/pci-exynos.c
> > index 990aaa16b132..286f4987d56f 100644
> > --- a/drivers/pci/controller/dwc/pci-exynos.c
> > +++ b/drivers/pci/controller/dwc/pci-exynos.c
> > @@ -27,11 +27,11 @@
> >
> >  /* PCIe ELBI registers */
> >  #define EXYNOS_PCIE_IRQ_PULSE			0x000
> > +#define EXYNOS_PCIE_IRQ_EN_PULSE		0x00c
> >  #define EXYNOS_IRQ_INTA_ASSERT			BIT(0)
> >  #define EXYNOS_IRQ_INTB_ASSERT			BIT(2)
> >  #define EXYNOS_IRQ_INTC_ASSERT			BIT(4)
> >  #define EXYNOS_IRQ_INTD_ASSERT			BIT(6)
> > -#define EXYNOS_PCIE_IRQ_EN_PULSE		0x00c
> >  #define EXYNOS_PCIE_IRQ_EN_LEVEL		0x010
> >  #define EXYNOS_PCIE_IRQ_EN_SPECIAL		0x014
> >  #define EXYNOS_PCIE_SW_WAKE			0x018
> > @@ -42,12 +42,12 @@
> >  #define EXYNOS_PCIE_NONSTICKY_RESET		0x024
> >  #define EXYNOS_PCIE_APP_INIT_RESET		0x028
> >  #define EXYNOS_PCIE_APP_LTSSM_ENABLE		0x02c
> > +#define EXYNOS_PCIE_ELBI_LTSSM_ENABLE		0x1
> >  #define EXYNOS_PCIE_ELBI_RDLH_LINKUP		0x074
> >  #define EXYNOS_PCIE_ELBI_XMLH_LINKUP		BIT(4)
> > -#define EXYNOS_PCIE_ELBI_LTSSM_ENABLE		0x1
> >  #define EXYNOS_PCIE_ELBI_SLV_AWMISC		0x11c
> >  #define EXYNOS_PCIE_ELBI_SLV_ARMISC		0x120
> > -#define EXYNOS_PCIE_ELBI_SLV_DBI_ENABLE	BIT(21)
> > +#define EXYNOS_PCIE_ELBI_SLV_DBI_ENABLE		BIT(21)
> 
> What changed here? Why you cannot fix indentation while renaming?
> 

Will squash the indentation change along with rename

> Best regards,
> Krzysztof



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

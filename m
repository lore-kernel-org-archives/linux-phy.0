Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1F7FC433F5
	for <linux-phy@archiver.kernel.org>; Sat, 26 Mar 2022 01:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:CC:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2e/mraBL3BF+MV/rns8hY/k5soxG0POOiKLslzW6Fw0=; b=MTchu27EOtQ3Bm
	NZC5TDm1VmOOQIkfoQDsU8Q92S6KQXQoFLgopCQqikEJBOacJxBbpK5/JUnPajSwIZHjMs0k1U6kE
	5UCv2GYMiKgXtTUGREwl99eMg2IEv784DprWih/PAHNC4Rt1u37Gu8YT1EMFFkvkGdoHdIeKCo0QD
	SjwjxN+rAJIIG8jSoXNBqIrrqCjzUGVFctPwNR/QjEMnIvWLE3eVKHq/0M50cdF461xc8k08jd8Gh
	9AW/ncqH9fa811roCImOKDduA5LCLI28tq5l0D48Z1uQI+/LTNe+dJGsLjUh30eYnlEvRuks7mKiS
	69AX/mo80DEYwsnCjfdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXvfk-003Z9j-5Z; Sat, 26 Mar 2022 01:56:56 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXvfW-003Z7p-Tb; Sat, 26 Mar 2022 01:56:45 +0000
X-UUID: b3ebf3290af542e0bf1be8c4d66e867b-20220325
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Qdw5mwaNaKmHkuIDHCxo7IRBUT//54pEDa6FB7filGA=; 
 b=eDsPc5JY8rubMBc3Ij6szVRZoZrZDdiSz0uIhytiQVAn2XxdbHXw0PCh7RmsuT50RwSDP9/beJeaueHD5Inez+bTUV10RKcocdMc2aDglELJq8T/pUSMCrjS0rWabI+VSYu34MnBSKjitf5AUcis8edo94NKDv4YsOPB2UaBVMI=;
X-UUID: b3ebf3290af542e0bf1be8c4d66e867b-20220325
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jianjun.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
 with ESMTP id 2083630221; Fri, 25 Mar 2022 18:56:37 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 25 Mar 2022 18:56:35 -0700
Received: from mtkcas11.mediatek.inc (172.21.101.40) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.792.3; 
 Sat, 26 Mar 2022 09:56:27 +0800
Received: from mhfsdcap04 (10.17.3.154) by mtkcas11.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 26 Mar 2022 09:56:26 +0800
Message-ID: <2ceb84aec51252cfb254525900480cc380fc2c03.camel@mediatek.com>
Subject: Re: [PATCH v4 2/2] phy: mediatek: Add PCIe PHY driver
From: Jianjun Wang <jianjun.wang@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Kishon Vijay Abraham I
 <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, "Chen-Yu
 Tsai" <wenst@chromium.org>, Krzysztof Kozlowski <krzk@kernel.org>
CC: Wei-Shun Chang <weishunc@google.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <rex-bc.chen@mediatek.com>,
 <randy.wu@mediatek.com>, <jieyy.yang@mediatek.com>,
 <chuanjia.liu@mediatek.com>, <qizhong.cheng@mediatek.com>,
 <jian.yang@mediatek.com>
Date: Sat, 26 Mar 2022 09:56:26 +0800
In-Reply-To: <be06e57d-302e-e641-a134-c45ea89a6a6b@collabora.com>
References: <20220323065608.27426-1-jianjun.wang@mediatek.com>
 <20220323065608.27426-3-jianjun.wang@mediatek.com>
 <be06e57d-302e-e641-a134-c45ea89a6a6b@collabora.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_185644_388634_83EDECD8 
X-CRM114-Status: GOOD (  18.93  )
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

On Fri, 2022-03-25 at 15:15 +0100, AngeloGioacchino Del Regno wrote:
> Il 23/03/22 07:56, Jianjun Wang ha scritto:
> > Add PCIe GEN3 PHY driver support on MediaTek chipsets.
> > 
> > Signed-off-by: Jianjun Wang <jianjun.wang@mediatek.com>
> > ---
> >   drivers/phy/mediatek/Kconfig        |  11 ++
> >   drivers/phy/mediatek/Makefile       |   1 +
> >   drivers/phy/mediatek/phy-mtk-pcie.c | 272
> > ++++++++++++++++++++++++++++
> >   3 files changed, 284 insertions(+)
> >   create mode 100644 drivers/phy/mediatek/phy-mtk-pcie.c
> > 
> 
> ..snip..
> 
> > diff --git a/drivers/phy/mediatek/phy-mtk-pcie.c
> > b/drivers/phy/mediatek/phy-mtk-pcie.c
> > new file mode 100644
> > index 000000000000..44a2ad8d324e
> > --- /dev/null
> > +++ b/drivers/phy/mediatek/phy-mtk-pcie.c
> > @@ -0,0 +1,272 @@
> 
> ..snip..
> 
> > +/**
> > + * struct mtk_pcie_phy - PCIe phy driver main structure
> > + * @dev: pointer to device
> > + * @phy: pointer to generic phy
> > + * @sif_base: IO mapped register base address of system interface
> > + * @data: pointer to SoC dependent data
> > + * @sw_efuse_en: software eFuse enable status
> > + * @efuse_glb_intr: internal resistor selection of TX bias current
> > data
> > + * @efuse: pointer to eFues data for each lane
> 
> Oops! There's a typo! "eFues" => "eFuse"
> 
> After fixing this typo,
> 
> Reviewed-by: AngeloGioacchino Del Regno <
> angelogioacchino.delregno@collabora.com>

Thanks!

> 
> P.S.: Many thanks for the kerneldoc documentation!!!!
> 
> > + */
> > +struct mtk_pcie_phy {
> > +	struct device *dev;
> > +	struct phy *phy;
> > +	void __iomem *sif_base;
> > +	const struct mtk_pcie_phy_data *data;
> > +
> > +	bool sw_efuse_en;
> > +	u32 efuse_glb_intr;
> > +	struct mtk_pcie_lane_efuse *efuse;
> > +};
> 
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 646BFC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 08:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:CC:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IkQ48X15mDFlQVoQzIvX7JHzt8ThdmfImRLPhjw5OUg=; b=LZ/iOfRgjvAuLR
	MKyjgrd1geE0jEzINc0yZA178shrf5Up36RghO2hA3luJu0F+B6hnSoLDzYCTK6SvAxsuSgdrdwLt
	6On1T5zS6uTfkpWxkV9rdZ7WURCkmreZxEIvPXKZCKfv9PXDUryAPvPKNU8o6qUtc7WMQ014mzQbJ
	wfaagViRVqPmNkNQLQGESs6nDez5y/7ZOl1aAP+lxQf/5uflryuLdCtzVr2834HluO5spw/XK+bOn
	JDBtExA90tmPRNXdiVJKE2HLnQTUR2qIS8xkjMIe5Pdtm2ATkqYrWXQXTIgmscYtMl2x3L9FBpfy3
	Bano/PtKAUgXzEGg2JDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o66W2-005En1-B2; Tue, 28 Jun 2022 08:24:10 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o66Ru-005CgP-DG; Tue, 28 Jun 2022 08:19:56 +0000
X-UUID: 95f692fe3d8a4da58203d4288d8d3e3f-20220628
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID; bh=xU7QE9xsJQx9Qz2iPrK6TRetQaJpLDQiwCYJOKUwq5c=;
	b=cnBARmfWbmAcvrdihDh1SxswtF3i4ggbXLvP6KkJy/pwjeu8d0p4qAcgmlR/rssmBiMV91p7NEeGBzoWnCFuFY6xXIChlQ6xsOcU39vtQTKRUPdVjGmShfIhIvuVnJNbFThT0kRXDaOUXgm0KO7AlGHKRZkMwglSYSvFt7iqPpA=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.7,REQID:cbc1d79b-30ec-4b64-b5e3-692a7f675024,OB:0,LO
	B:0,IP:0,URL:5,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,RULE:Release_Ham,ACTI
	ON:release,TS:5
X-CID-META: VersionHash:87442a2,CLOUDID:b712d762-0b3f-4b2c-b3a6-ed5c044366a0,C
	OID:IGNORED,Recheck:0,SF:nil,TC:nil,Content:0,EDM:-3,IP:nil,URL:1,File:nil
	,QS:nil,BEC:nil,COL:0
X-UUID: 95f692fe3d8a4da58203d4288d8d3e3f-20220628
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 790976983; Tue, 28 Jun 2022 01:19:44 -0700
Received: from mtkcas11.mediatek.inc (172.21.101.40) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.2.792.15; Tue, 28 Jun 2022 16:19:32 +0800
Received: from mhfsdcap04 (10.17.3.154) by mtkcas11.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 28 Jun 2022 16:19:31 +0800
Message-ID: <4dbbdd1f5886f72d5603ea45fd24602087ac01fc.camel@mediatek.com>
Subject: Re: [PATCH v10 2/2] phy: mediatek: Add PCIe PHY driver
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Jianjun Wang <jianjun.wang@mediatek.com>, Kishon Vijay Abraham I
	<kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring
	<robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, "Chen-Yu
 Tsai" <wenst@chromium.org>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Krzysztof Kozlowski
	<krzk@kernel.org>
CC: Wei-Shun Chang <weishunc@google.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <rex-bc.chen@mediatek.com>,
	<randy.wu@mediatek.com>, <jieyy.yang@mediatek.com>,
	<chuanjia.liu@mediatek.com>, <qizhong.cheng@mediatek.com>,
	<jian.yang@mediatek.com>
Date: Tue, 28 Jun 2022 16:19:31 +0800
In-Reply-To: <20220617070246.20142-3-jianjun.wang@mediatek.com>
References: <20220617070246.20142-1-jianjun.wang@mediatek.com>
	 <20220617070246.20142-3-jianjun.wang@mediatek.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_011954_594972_15E2520F 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
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

On Fri, 2022-06-17 at 15:02 +0800, Jianjun Wang wrote:
> Add PCIe GEN3 PHY driver support on MediaTek chipsets.
> 
> Signed-off-by: Jianjun Wang <jianjun.wang@mediatek.com>
> ---
>  drivers/phy/mediatek/Kconfig        |  11 ++
>  drivers/phy/mediatek/Makefile       |   1 +
>  drivers/phy/mediatek/phy-mtk-pcie.c | 267
> ++++++++++++++++++++++++++++
>  3 files changed, 279 insertions(+)
>  create mode 100644 drivers/phy/mediatek/phy-mtk-pcie.c
> 
Reviewed-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Thanks
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

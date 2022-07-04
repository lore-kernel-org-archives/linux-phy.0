Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4822C433EF
	for <linux-phy@archiver.kernel.org>; Mon,  4 Jul 2022 07:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:CC:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MdA7+WXERxXvd89F7EGmPLGpRjEqi51RlnISv3ix1WY=; b=CsP8K56SdHiyG3
	gPvYfoXZjoniDiPXZ85gwSk3k5oxZxWYbf49moAAsRCx7ZQMfIjf0qxeHWwJ4bh6ORDgketGPtahU
	rpGPJOwFFC3JKmzKeKLVfM8o7H1XnwMVnVnzMXbO6puFU6vmTZkbh06nBc37qvsO3B8MQlFsSiFS/
	IkKGJW1xz8mMMU0wihnLp+JmH2zmKr8+rOzoeeWWlg0Nc4iRUMeIjKMvsLTeCrr/Qbh3H/U0YjC6o
	j+yf+AUSCvXiwzOB4ao02aQ5xPvPKL5WVGC+4lQYbgusX1nDHZqsQ7eSJ/JtzMNRIKci1FBVAKWz0
	sp8mIFuV9EQK+aJMnqKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8Gto-005r32-6K; Mon, 04 Jul 2022 07:53:40 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8Gtk-005r0K-0T; Mon, 04 Jul 2022 07:53:38 +0000
X-UUID: 672c553628e149c2854320ca41dd620b-20220704
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID; bh=5Zp0wkX0HDhXeldC/3PpTd3funpHUh49reOH1i8TQEw=;
	b=dhTZ3zoVnEdqhpOBh/HVh5Iq0lrc+hN5la2kBbqQsWVkvQvk5HTkyFejGNAPKm6qjgcaGVVV63QpCpLnydQdlOx0K43ZrFmQeWvkWXKtE5WwXVlsM2UWjMNc4G8MHZNzVktJR8iWMrBHfY0AkCkOQx4d6eRqYcz6xzperATNtDU=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.8,REQID:f7f53703-0c6e-4a53-8c27-41d0efecf3cb,OB:0,LO
	B:0,IP:0,URL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,RULE:Release_Ham,ACT
	ION:release,TS:-5
X-CID-META: VersionHash:0f94e32,CLOUDID:15c789d6-5d6d-4eaf-a635-828a3ee48b7c,C
	OID:IGNORED,Recheck:0,SF:nil,TC:nil,Content:0,EDM:-3,IP:nil,URL:0,File:nil
	,QS:nil,BEC:nil,COL:0
X-UUID: 672c553628e149c2854320ca41dd620b-20220704
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <jianjun.wang@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 920322840; Mon, 04 Jul 2022 00:53:23 -0700
Received: from mtkcas11.mediatek.inc (172.21.101.40) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.2.792.15; Mon, 4 Jul 2022 15:32:50 +0800
Received: from mhfsdcap04 (10.17.3.154) by mtkcas11.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 4 Jul 2022 15:32:49 +0800
Message-ID: <10de0f13ef5a8423760f13c5a3649ca334e6392b.camel@mediatek.com>
Subject: Re: [PATCH v10 0/2] phy: mediatek: Add PCIe PHY driver
From: Jianjun Wang <jianjun.wang@mediatek.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Kishon Vijay Abraham I
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
Date: Mon, 4 Jul 2022 15:32:49 +0800
In-Reply-To: <20220617070246.20142-1-jianjun.wang@mediatek.com>
References: <20220617070246.20142-1-jianjun.wang@mediatek.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_005336_102929_04FB97F6 
X-CRM114-Status: GOOD (  20.10  )
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

Hello Maintainers,

Gentle ping for this patch series, if there is anything I can do to get
these patches merged, please let me know.

Thanks.

On Fri, 2022-06-17 at 15:02 +0800, Jianjun Wang wrote:
> These series patches add support for PCIe PHY driver on MediaTek
> chipsets.
> 
> Changes in v10:
> 1. Sort the order in Kconfig and Makefile.
> 
> Changes in v9:
> 1. Check if the return value is -ENOMEM when reading efuse data
> fails.
> 
> Changes in v8:
> 1. Use "device_property_present()" to increase human readability;
> 2. Use "GPL" as recommended in commit bf7fbeeae6db ("module: Cure
>    the MODULE_LICENSE "GPL" vs. "GPL v2" bogosity").
> 
> Changes in v7:
> 1. Add bitfield.h header to fix the build error on non-arm64
> platforms.
> 
> Changes in v6:
> 1. Remove unnecessary header files;
> 2. Use FILELD_PREP in bitfield.h to set value.
> 
> Changes in v5:
> 1. Fix typo in kerneldoc: "eFues" => "eFuse".
> 
> Changes in v4:
> 1. Fix no return when calling dev_err_probe.
> 
> Changes in v3:
> 1. Add introductions for structure members;
> 2. Add SoC dependent data;
> 3. Dynamically allocate efuse data;
> 4. Check return value if it's an -EPROBE_DEFER.
> 
> Changes in v2:
> 1. Add specific compatible name;
> 2. Read NVMEM data at probe time;
> 3. Fix typos.
> 
> Jianjun Wang (2):
>   dt-bindings: phy: mediatek: Add YAML schema for PCIe PHY
>   phy: mediatek: Add PCIe PHY driver
> 
>  .../bindings/phy/mediatek,pcie-phy.yaml       |  75 +++++
>  drivers/phy/mediatek/Kconfig                  |  11 +
>  drivers/phy/mediatek/Makefile                 |   1 +
>  drivers/phy/mediatek/phy-mtk-pcie.c           | 267
> ++++++++++++++++++
>  4 files changed, 354 insertions(+)
>  create mode 100644
> Documentation/devicetree/bindings/phy/mediatek,pcie-phy.yaml
>  create mode 100644 drivers/phy/mediatek/phy-mtk-pcie.c
> 
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

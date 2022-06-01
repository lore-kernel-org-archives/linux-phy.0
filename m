Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05EE5C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jun 2022 02:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:CC:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bmwxc6/pNzSPbd2g7MtUBdFRv6CqEobt8hFaFzY8Y9w=; b=Es0AsWh/tffz0L
	4Gc3tXxhcGGiZEVCTYgKcC+p002tpDb3SDGdoKgTLk0qP4var9GsyzKBNMoOn9BAevqDkwJQrbGnB
	fIQStm2/XuSe+QVfDNBB3NsRBx7BzhpWqWu11ateLkMM+JwoKDROD6ScCpHZSg5naqGI0QkDXCOab
	xMYoduZ2bXU6FqpPKetklw96YvghKUJV2vNCm2LDbZYPCRv/MNM0ie0Ga4QwAMeoOQdnltt0oyPrW
	3XvbSuDvmDU28nJ18oLSPjAW0Vtavb5Kuy5l/lWXRu0cWHd2IEkgS+hPPgS6jK6QLIDLOxcyuDYD2
	dFL+omUe/bxdfG3BPXsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwDz9-00DO1F-DQ; Wed, 01 Jun 2022 02:21:23 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwDz5-00DNys-Bw; Wed, 01 Jun 2022 02:21:22 +0000
X-UUID: 6a803eccca5449edb1252896e7bec313-20220531
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID; bh=s0+w3mhQJa79UoSWNoQlloUKNGfiYdWyzxVs2zqiVPI=;
	b=ara7Ykf4FPetOUwE+hJF3WYsiFCht7ulijSLJMkCrAunG7+BEntrFfDwu9qHXSjZBu/RWWiWp2lq06Wk7ue3R6klAQMjUyVwSBNTL8E0teYIrxtkBrjaa5Zq8MR4niKP29AeX6tIdOcA478fAGBNNoxSIUec3V5MdhK5nrltCoY=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.5,REQID:6266dc8b-2c6c-41de-b549-a0a99bdebb02,OB:0,LO
	B:0,IP:0,URL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,RULE:Release_Ham,ACT
	ION:release,TS:-5
X-CID-META: VersionHash:2a19b09,CLOUDID:98660f8a-32d7-4fc0-b2ef-8776ac194f8f,C
	OID:IGNORED,Recheck:0,SF:nil,TC:nil,Content:0,EDM:-3,IP:nil,URL:0,File:nil
	,QS:0,BEC:nil
X-UUID: 6a803eccca5449edb1252896e7bec313-20220531
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
	(envelope-from <jianjun.wang@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 496260256; Tue, 31 May 2022 19:21:05 -0700
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 31 May 2022 19:21:03 -0700
Received: from mtkmbs11n1.mediatek.inc (172.21.101.186) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 1 Jun 2022 10:21:01 +0800
Received: from mhfsdcap04 (10.17.3.154) by mtkmbs11n1.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.2.792.3 via Frontend
 Transport; Wed, 1 Jun 2022 10:21:00 +0800
Message-ID: <96f7cc90171bb6e088ce0ed88e10ad14f06a98bb.camel@mediatek.com>
Subject: Re: [PATCH v9 0/2] phy: mediatek: Add PCIe PHY driver
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
Date: Wed, 1 Jun 2022 10:21:00 +0800
In-Reply-To: <20220520064920.27313-1-jianjun.wang@mediatek.com>
References: <20220520064920.27313-1-jianjun.wang@mediatek.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_192119_459509_FA9E602B 
X-CRM114-Status: GOOD (  19.60  )
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

On Fri, 2022-05-20 at 14:49 +0800, Jianjun Wang wrote:
> These series patches add support for PCIe PHY driver on MediaTek
> chipsets.
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

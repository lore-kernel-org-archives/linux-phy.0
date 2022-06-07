Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBA1FC43334
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 03:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:CC:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t6zG8OcZGlPn8ptO6sIjCw/gIea23oe4Oskn7RINaQM=; b=p9M2v5iCEoZYyJ
	fauRbGBVDdCAxoh7uOKeLyHzWUKeCP1WSDRUv8FSuNSajZQQguCARTao7IYTaVHVqC4U0/cW2Ej2O
	W1Stm8MsET2bQhqCCHWjniTGwUVNeKcv5lIgEXASxKkuGEOi/Vfn7aYQ1sZnusfnGgl4VXm+2h4Ad
	TGI6iKTxLxw4m6GW2tbAQu5tZH4E6Cfli+v43c6cyEOA7jJuQB0ReDfW3tCdzVkorJYcEf+MpB40Y
	UBc/Gevz13XZsMwx8h21/2trpFmER+w/NCeIhaQreR79XMD3/XofGwPhRbmQ1+O33N0/MoBOmoKTG
	PR+N0CX8nvu9YuB+al1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyPcQ-004JPP-2X; Tue, 07 Jun 2022 03:10:58 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyPcC-004JFu-NL; Tue, 07 Jun 2022 03:10:46 +0000
X-UUID: 792b91d8a3184916bc3aebf91f6ab105-20220606
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.5,REQID:1f0dfd3e-10c4-4dae-a4f7-44088d1f1e38,OB:0,LO
	B:0,IP:0,URL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,RULE:Release_Ham,ACTI
	ON:release,TS:0
X-CID-META: VersionHash:2a19b09,CLOUDID:ff97dde4-2ba2-4dc1-b6c5-11feb6c769e0,C
	OID:IGNORED,Recheck:0,SF:nil,TC:nil,Content:0,EDM:-3,IP:nil,URL:1,File:nil
	,QS:0,BEC:nil
X-UUID: 792b91d8a3184916bc3aebf91f6ab105-20220606
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
	(envelope-from <rex-bc.chen@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1693286894; Mon, 06 Jun 2022 20:10:39 -0700
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 6 Jun 2022 20:10:38 -0700
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Tue, 7 Jun 2022 11:10:35 +0800
Received: from mtksdccf07 (172.21.84.99) by mtkmbs11n1.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.2.792.3 via Frontend
 Transport; Tue, 7 Jun 2022 11:10:35 +0800
Message-ID: <f971913e22a29b77df3a0eb3da3ea8d40a3b1be6.camel@mediatek.com>
Subject: Re: [PATCH v10 05/21] video/hdmi: Add audio_infoframe packing for DP
From: Rex-BC Chen <rex-bc.chen@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Guillaume Ranquet <granquet@baylibre.com>, Chun-Kuang Hu
	<chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, "David
 Airlie" <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring
	<robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, Matthias Brugger
	<matthias.bgg@gmail.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, "Kishon
 Vijay Abraham I" <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, "Helge
 Deller" <deller@gmx.de>, CK Hu <ck.hu@mediatek.com>, Jitao shi
	<jitao.shi@mediatek.com>
CC: Markus Schneider-Pargmann <msp@baylibre.com>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-phy@lists.infradead.org>,
	<linux-fbdev@vger.kernel.org>
Date: Tue, 7 Jun 2022 11:10:35 +0800
In-Reply-To: <7ae7e42c-9225-2ff2-f167-8235ab4cadc3@collabora.com>
References: <20220523104758.29531-1-granquet@baylibre.com>
	 <20220523104758.29531-6-granquet@baylibre.com>
	 <7ae7e42c-9225-2ff2-f167-8235ab4cadc3@collabora.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_201044_818058_ABDC6FC1 
X-CRM114-Status: GOOD (  20.76  )
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

On Wed, 2022-05-25 at 14:32 +0200, AngeloGioacchino Del Regno wrote:
> Il 23/05/22 12:47, Guillaume Ranquet ha scritto:
> > From: Markus Schneider-Pargmann <msp@baylibre.com>
> > 
> > Similar to HDMI, DP uses audio infoframes as well which are
> > structured
> > very similar to the HDMI ones.
> > 
> > This patch adds a helper function to pack the HDMI audio infoframe
> > for
> > DP, called hdmi_audio_infoframe_pack_for_dp().
> > hdmi_audio_infoframe_pack_only() is split into two parts. One of
> > them
> > packs the payload only and can be used for HDMI and DP.
> > 
> > Also constify the frame parameter in hdmi_audio_infoframe_check()
> > as
> > it is passed to hdmi_audio_infoframe_check_only() which expects a
> > const.
> > 
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> > ---
> >   drivers/video/hdmi.c           | 82 ++++++++++++++++++++++++++---
> > -----
> >   include/drm/dp/drm_dp_helper.h |  2 +
> 
> this has been moved... again... this time it's
> include/drm/display/drm_dp_helper.h
> 

Hello Angelo,

yes, I will rebase on 5.19-rc1 and fix this in next version.

BRs,
Bo-Chen
> >   include/linux/hdmi.h           |  7 ++-
> >   3 files changed, 71 insertions(+), 20 deletions(-)
> > 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

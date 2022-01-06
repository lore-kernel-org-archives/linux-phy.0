Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DACEEC433EF
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jan 2022 08:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:CC:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GeMCUsBPES4puywUWEqDSXybB2Bf5ufrIV3MBo4mO0o=; b=e8dBcfD8GzKT92
	8tqEjEtnZHYVHl7WlQ+86iMpt3lSalZlIarcS/PwtiHoc/8S9rfpx3v+rxR9ke+RUnvhFtUPbqjXG
	p4FPfjMmiY+I+lC/eyMEpmPs5cT8dmNB9iD1+fBto9lEqZQS7GB694V6fzrgDL13zD1Vdh3si0nZ8
	BOUXPgYbwk9IRPJHE2Xrrq5JMmuS/yJc7N618dxF1SqR8C1bc7H5NrfqTH3Azy2D65UZugkkI+NIG
	OaxebAm6NEzuQqbJccFBxEVOW71SOyZ4dM+8Sl0z+s6W+zceB15jIQrRr/d6i97iU1a+IbovN0Kca
	kUwpG5z361cRKF1+9zvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5NrY-00GyJt-AA; Thu, 06 Jan 2022 08:11:08 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5NrQ-00GyGj-0j; Thu, 06 Jan 2022 08:11:01 +0000
X-UUID: 94f573e8ca8242a3bb1f6f987086d783-20220106
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=pD7RKnWVkUHTMW63+bUz3k07jQsKhrgFVJF6FpMWdnc=; 
 b=dC1DrR2TVCMWcER/o49yecxmfOglyjwR0yxiNa0cFfSAHUZhbsXIplPLN1kCauKcBkJfh6JMesLzb9dqJBijteWoIs2qJaRa47Lq4QUo0joD8fVcGsey7PejuyrXZpMh873qNkJDIER6R5laINCVNtwYRhCAr4UB5QR9nC7iTek=;
X-UUID: 94f573e8ca8242a3bb1f6f987086d783-20220106
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
 with ESMTP id 1759673978; Thu, 06 Jan 2022 01:08:23 -0700
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 6 Jan 2022 00:08:22 -0800
Received: from mtkcas11.mediatek.inc (172.21.101.40) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 6 Jan 2022 16:08:21 +0800
Received: from mhfsdcap04 (10.17.3.154) by mtkcas11.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 6 Jan 2022 16:08:20 +0800
Message-ID: <f53b48c05d38c75c1e02ca5189ed19a36d13bd44.camel@mediatek.com>
Subject: Re: [PATCH v2 3/5] phy: mediatek: add helpers to update bits of
 registers
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Vinod Koul <vkoul@kernel.org>
CC: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Eddie Hung <eddie.hung@mediatek.com>
Date: Thu, 6 Jan 2022 16:08:20 +0800
In-Reply-To: <821f9e8b-cf35-2e53-e64f-c19e7bde957b@collabora.com>
References: <20211218082802.5256-1-chunfeng.yun@mediatek.com>
 <20211218082802.5256-3-chunfeng.yun@mediatek.com>
 <047803b9-d09f-d4f8-a674-317cc19dd055@collabora.com>
 <75b2773d1d170f42bae0774dbc58d1458cb25502.camel@mediatek.com>
 <821f9e8b-cf35-2e53-e64f-c19e7bde957b@collabora.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220106_001100_106136_5C4B5A77 
X-CRM114-Status: GOOD (  33.33  )
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

On Mon, 2022-01-03 at 09:59 +0100, AngeloGioacchino Del Regno wrote:
> Il 30/12/21 03:06, Chunfeng Yun ha scritto:
> > On Fri, 2021-12-24 at 11:10 +0100, AngeloGioacchino Del Regno
> > wrote:
> > > Il 18/12/21 09:28, Chunfeng Yun ha scritto:
> > > > Add three helpers mtk_phy_clear/set/update_bits() for registers
> > > > operation
> > > > 
> > > > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > > > ---
> > > > v2: new patch, add register access helpers,
> > > >       Add updatel() macro suggested by Vinod, here add more
> > > > ones
> > > > instead.
> > > > ---
> > > >    drivers/phy/mediatek/phy-mtk-io.h | 38
> > > > +++++++++++++++++++++++++++++++
> > > >    1 file changed, 38 insertions(+)
> > > >    create mode 100644 drivers/phy/mediatek/phy-mtk-io.h
> > > > 
> > > > diff --git a/drivers/phy/mediatek/phy-mtk-io.h
> > > > b/drivers/phy/mediatek/phy-mtk-io.h
> > > > new file mode 100644
> > > > index 000000000000..500fcdab165d
> > > > --- /dev/null
> > > > +++ b/drivers/phy/mediatek/phy-mtk-io.h
> > > > @@ -0,0 +1,38 @@
> > > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > > +/*
> > > > + * Copyright (C) 2021 MediaTek Inc.
> > > > + *
> > > > + * Author: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > > > + */
> > > > +
> > > > +#ifndef __PHY_MTK_H__
> > > > +#define __PHY_MTK_H__
> > > > +
> > > > +#include <linux/io.h>
> > > > +
> > > > +static inline void mtk_phy_clear_bits(void __iomem *reg, u32
> > > > bits)
> > > > +{
> > > > +	u32 tmp = readl(reg);
> > > > +
> > > > +	tmp &= ~bits;
> > > > +	writel(tmp, reg);
> > > > +}
> > > > +
> > > > +static inline void mtk_phy_set_bits(void __iomem *reg, u32
> > > > bits)
> > > > +{
> > > > +	u32 tmp = readl(reg);
> > > > +
> > > > +	tmp |= bits;
> > > > +	writel(tmp, reg);
> > > > +}
> > > > +
> > > > +static inline void mtk_phy_update_bits(void __iomem *reg, u32
> > > > mask, u32 val)
> > > > +{
> > > > +	u32 tmp = readl(reg);
> > > > +
> > > > +	tmp &= ~mask;
> > > > +	tmp |= val & mask;
> > > > +	writel(tmp, reg);
> > > > +}
> > > > +
> > > > +#endif
> > > > 
> > > 
> > > These helpers are almost exactly duplicating what
> > > regmap_update_bits() is doing.
> > > I appreciate the effort to stop open-coding the same sequences
> > > over
> > > and over by
> > > adding such helper functions,
> > 
> > I agree with you.
> > > but I think that the proper way of doing what you
> > > are proposing is not to add custom functions but rather reuse
> > > what
> > > the Linux APIs
> > > give you.
> > 
> > I also like to use common APIs ASAP, but not found suitable ones.
> > This may be a problem, I found that some similar custom helps
> > already
> > added under phy fold.
> > 
> > > 
> > > What about doing a conversion to use regmap on this driver?
> > 
> > No, we don't use regmap here, these registers are monopolized by t-
> > phy,
> > it's not syscon.
> > 
> > 
> 
> Hello,
> 
> The regmap API allows this kind of usage, registers don't necessarily
> have
> to be part of a syscon.
I'm sorry, I don't want to make it more complex

> 
> Regards,
> - Angelo
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

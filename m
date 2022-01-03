Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52E98C433F5
	for <linux-phy@archiver.kernel.org>; Mon,  3 Jan 2022 08:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DHiwH1UULhevTQOt6+1T5PuE0pnoOopza3bptA1+KzA=; b=gRnWMQTqmAyH1wTZo86gOLOOzH
	/cVSdG7kV1oQxQURgyDkg9FQhPDbhqxBhckKTGi7rHTnmRr1ARUPtsY6EqKMXMlL13rShLVBaXKaN
	x/865yyMRv0rIizc+nwJ9BjeC1do3fWFfUoesSuQbKpaK+bCcG23qTBrDJ6iHDPpHK7UoPXBYJQRY
	U/834tSqmRMBRgv/SoO2LFq9sR+vl6PvpmViAGQCV4MhrH117xb83wEEqPSnlkBQ1ZtcdA2FuFmme
	QSWAemtwJPCCVmluDstJIb1oNkMaKoUQgzKu5aCE9jZR9oPA6xf+pLI04AqCeM0C5zWYwhqArzI+l
	lJMf99zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4JBc-008cdp-On; Mon, 03 Jan 2022 08:59:24 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4JBP-008ccD-QC; Mon, 03 Jan 2022 08:59:13 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: kholk11) with ESMTPSA id 8A5071F41EBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1641200347;
 bh=Lg7ar1sN11ciL2DcpoXXF8T+6ylIewLjLgr41Thyq3Y=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=YKOtWIbxd0k61NxswnNEpxj+h1HzxuK9la2Q+nvHl2NikBMjv+8ZCdlxSr5bepYGH
 rmO7GB93XpTKJiOc55M2foj8gXDaQ9oLaCGMHJ7ncNMF2FlIc7jeBq7UBm8BTt7acd
 5qWncBGtpDuiHtuAD6oBA/yWfyfjX9EEh+FOBJ7Fz3OwzZUTRH1JbmsEGFHLq+E7W9
 sgvyn/PymuRs79ZAzKf53YXkO23qjQY8uDi6RMxXjm04gNySExylW9iq7XNDpdZd0M
 ULOLdg3gHfjACKvWBNOKtxIDJ/XA6Qs0CsfVpidOYylnH89u/S+rJqJWYrF6B3tzbq
 tUPGLHYuglTLA==
Subject: Re: [PATCH v2 3/5] phy: mediatek: add helpers to update bits of
 registers
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eddie Hung <eddie.hung@mediatek.com>
References: <20211218082802.5256-1-chunfeng.yun@mediatek.com>
 <20211218082802.5256-3-chunfeng.yun@mediatek.com>
 <047803b9-d09f-d4f8-a674-317cc19dd055@collabora.com>
 <75b2773d1d170f42bae0774dbc58d1458cb25502.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Message-ID: <821f9e8b-cf35-2e53-e64f-c19e7bde957b@collabora.com>
Date: Mon, 3 Jan 2022 09:59:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <75b2773d1d170f42bae0774dbc58d1458cb25502.camel@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_005912_046839_B1881DC8 
X-CRM114-Status: GOOD (  20.17  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Il 30/12/21 03:06, Chunfeng Yun ha scritto:
> On Fri, 2021-12-24 at 11:10 +0100, AngeloGioacchino Del Regno wrote:
>> Il 18/12/21 09:28, Chunfeng Yun ha scritto:
>>> Add three helpers mtk_phy_clear/set/update_bits() for registers
>>> operation
>>>
>>> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
>>> ---
>>> v2: new patch, add register access helpers,
>>>       Add updatel() macro suggested by Vinod, here add more ones
>>> instead.
>>> ---
>>>    drivers/phy/mediatek/phy-mtk-io.h | 38
>>> +++++++++++++++++++++++++++++++
>>>    1 file changed, 38 insertions(+)
>>>    create mode 100644 drivers/phy/mediatek/phy-mtk-io.h
>>>
>>> diff --git a/drivers/phy/mediatek/phy-mtk-io.h
>>> b/drivers/phy/mediatek/phy-mtk-io.h
>>> new file mode 100644
>>> index 000000000000..500fcdab165d
>>> --- /dev/null
>>> +++ b/drivers/phy/mediatek/phy-mtk-io.h
>>> @@ -0,0 +1,38 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>> +/*
>>> + * Copyright (C) 2021 MediaTek Inc.
>>> + *
>>> + * Author: Chunfeng Yun <chunfeng.yun@mediatek.com>
>>> + */
>>> +
>>> +#ifndef __PHY_MTK_H__
>>> +#define __PHY_MTK_H__
>>> +
>>> +#include <linux/io.h>
>>> +
>>> +static inline void mtk_phy_clear_bits(void __iomem *reg, u32 bits)
>>> +{
>>> +	u32 tmp = readl(reg);
>>> +
>>> +	tmp &= ~bits;
>>> +	writel(tmp, reg);
>>> +}
>>> +
>>> +static inline void mtk_phy_set_bits(void __iomem *reg, u32 bits)
>>> +{
>>> +	u32 tmp = readl(reg);
>>> +
>>> +	tmp |= bits;
>>> +	writel(tmp, reg);
>>> +}
>>> +
>>> +static inline void mtk_phy_update_bits(void __iomem *reg, u32
>>> mask, u32 val)
>>> +{
>>> +	u32 tmp = readl(reg);
>>> +
>>> +	tmp &= ~mask;
>>> +	tmp |= val & mask;
>>> +	writel(tmp, reg);
>>> +}
>>> +
>>> +#endif
>>>
>>
>> These helpers are almost exactly duplicating what
>> regmap_update_bits() is doing.
>> I appreciate the effort to stop open-coding the same sequences over
>> and over by
>> adding such helper functions,
> I agree with you.
>> but I think that the proper way of doing what you
>> are proposing is not to add custom functions but rather reuse what
>> the Linux APIs
>> give you.
> I also like to use common APIs ASAP, but not found suitable ones.
> This may be a problem, I found that some similar custom helps already
> added under phy fold.
> 
>>
>> What about doing a conversion to use regmap on this driver?
> No, we don't use regmap here, these registers are monopolized by t-phy,
> it's not syscon.
> 
> 

Hello,

The regmap API allows this kind of usage, registers don't necessarily have
to be part of a syscon.

Regards,
- Angelo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

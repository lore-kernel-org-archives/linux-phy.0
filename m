Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 313E3C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 13:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zR9lcFi2Q1BhU5EhgHa1Y3qJOsm1Bv+fv+ZhNnmk0yg=; b=kMzi76j2NR6e9Fa74ZqacrU+FN
	Zj876HUBiH1Q4H4VJ0qD6n/TZ/+3gnetIPsVpv25LSYdE1NYV3ufqnZDjYrPd5I4Fca+Kt4vxO6WL
	mv4Z0wR0HWS+5zobc0N+4/+elKaN9WzSfRNEYi+uay/AE5I8qtiSnesfqDbQZpHBglWwey7eEKoTf
	FEszUcptVxWOQfcwQZnQUc8x7Sv3PoLL//5Xqd7H4HJhDUQS3EUVfFZY/tX8qQ9VukdtVmpkdSPmJ
	2xLk1GvzvbNUTEtcxKyG0Qmr+DAf0fHevf7MUPBMS+j6/Dzg1G6nj1FfRxZ5U5BMNALpYJlx0Jshb
	iNI6OApA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odAng-00Axp5-JL; Tue, 27 Sep 2022 13:39:04 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odAnQ-00Axek-Lh
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 13:38:49 +0000
Received: by mail-pj1-x102c.google.com with SMTP id v10-20020a17090a634a00b00205e48cf845so414955pjs.4
        for <linux-phy@lists.infradead.org>; Tue, 27 Sep 2022 06:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:from:to:cc:subject:date;
        bh=kcqezBbHJffozFbEyx9wjhl1YSdIHaVumsP0lVEuZtQ=;
        b=zu0LDMWaZ2IiyJWen0shu8EVhyMeZSD0OIiKtU1o5V962A7jwSkPn4CMMQ0vz96Vth
         tmuzCaRlrru7doTeuXHFqIBlelgapdbTo80FoYEtNoYoaEZL+RORowAW5TQG758voXAB
         /qK4nyJaMel2BpXPOS+vQr8yEpETmpuh9xmFJL3bbdiLCPx3mFskJioDlySfvlYLDiz+
         5l4LD9rzPtofDwJzV7W1kwC3nRoiXAq20n8O9pp9eXpfcWtVB3QDe/+q+6K/KnMeAnfw
         i0uPy9j1+kZk4vpNwuHSzu0wEoCWjqtwlybaZfNOtus5P9tVWa7xP7C9GRMIprbloz4T
         aSVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:x-gm-message-state:from:to:cc:subject:date;
        bh=kcqezBbHJffozFbEyx9wjhl1YSdIHaVumsP0lVEuZtQ=;
        b=oTGbdjXzzWqkExKmrLgKHus949cGetK6jpqZ+q8atNJuZClHeQ+yx0VO74UYsjYyhg
         6F4ykDXCZhUf+iBWYuAoXQmdq0vkwjLi2msuuML6oqXRgIQCF4x4ca2VR5SQ5b3x2R0h
         /u2mVp3+KtKwSKmPfm3tMhxYt027ISobWTYWizkn4ceho0yzScfg86eGvgHbuVfM6xy5
         6XUQu5qc58cQ4Ti9Xzz7nNer6/u1wW3KOy+Eb9ZUocwUiPPd2zqlzc4CJG1Lql++63YH
         yewGHFDNJgSGDyuf/KP7ofET2qjD3bA5oo4rIu2cw0P+LotVuasR1u8h9ZFyJJLP/MtP
         fpdw==
X-Gm-Message-State: ACrzQf3f40gAZxTxk5lLWJZvj7lVEYjMjS2XgP2mL6opF5EQ6D91Z3th
	FsDeXzrCh55FD11TD/DB0cDA4y4ORxzZ0jCg11bT+Q==
X-Google-Smtp-Source: AMsMyM5rGXrkhuQrQe7LgcjEDdTHK+6y7t6lOaHNCTQ9hNJXjzQRFavvC9zWHs1/i1ytYfodZBY430bKtOUYXAKndGU=
X-Received: by 2002:a17:90b:2643:b0:205:bd0d:bdff with SMTP id
 pa3-20020a17090b264300b00205bd0dbdffmr4550660pjb.99.1664285925438; Tue, 27
 Sep 2022 06:38:45 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 27 Sep 2022 06:38:44 -0700
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v1-0-4844816c9808@baylibre.com> <20220919-v1-16-4844816c9808@baylibre.com>
 <11592bcd-eec7-7cc0-86c6-8f440b6af447@linaro.org>
In-Reply-To: <11592bcd-eec7-7cc0-86c6-8f440b6af447@linaro.org>
MIME-Version: 1.0
Date: Tue, 27 Sep 2022 06:38:44 -0700
Message-ID: <CABnWg9twi6inBOeLY=BOQ+o_CwbSW=L49_A+9VMy0L6vbokhXg@mail.gmail.com>
Subject: Re: [PATCH v1 16/17] drm/mediatek: dpi: Add mt8195 hdmi to DPI driver
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>, Rob Herring <robh+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Daniel Vetter <daniel@ffwll.ch>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
	Jitao shi <jitao.shi@mediatek.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Mattijs Korpershoek <mkorpershoek@baylibre.com>, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_063848_718367_199B9360 
X-CRM114-Status: UNSURE (   8.06  )
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

On Thu, 22 Sep 2022 09:22, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>On 19/09/2022 18:56, Guillaume Ranquet wrote:
>> Add the DPI1 hdmi path support in mtk dpi driver
>>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>>
>> diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
>> index 630a4e301ef6..91212b7610e8 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_dpi.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
>> @@ -15,7 +15,10 @@
>>  #include <linux/of_graph.h>
>>  #include <linux/pinctrl/consumer.h>
>>  #include <linux/platform_device.h>
>> +#include <linux/reset.h>
>>  #include <linux/types.h>
>> +#include <linux/regmap.h>
>> +#include <linux/mfd/syscon.h>
>
>Why do you need these headers in this patch?
>
>Best regards,
>Krzysztof
>

reset is used for reset_control but regmap and syscon are not used.
Those are leftover from a previous iteration of the patch, will drop
these in V2.

Thx,
Guillaume.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

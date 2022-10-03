Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E652DC433F5
	for <linux-phy@archiver.kernel.org>; Mon,  3 Oct 2022 15:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NPSaytQ41625nWacdPccGEjJy97A3zswqS8nfRsCm18=; b=eVe4djv50RfbHkw7TEm+x9mupk
	XtfvXZMCdO7HxM9G+kKg3LeIvWtAzw2qJXkoQ2MfL0RqX6jdR25dFmfiUFKtvHi+2AQlNdIouYS4e
	CzO9oCQp9AteIMIbX7KAiDAjPhZGShvKK9W5bxz+KxKXmfmB5R6B/UoqiZW01NnsxhIHYt2DSGk26
	Yh8O1DwKoKyi+Oq1b22ND0LS7J8XydLaI6Xx0jndlQIRCR2O6XX81abFTWbik7Lo7XCJFxHAqrCGQ
	zMJ6ahdAV5jiYjW5+cIgm8lNMl1KQONoT1wvlTWRiYvLCvvxBXcJIpBJKRkDUI9/GqYM5NIad36sx
	y2He6tFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofNOG-006Sje-AZ; Mon, 03 Oct 2022 15:29:56 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofNO2-006Sdz-80
	for linux-phy@lists.infradead.org; Mon, 03 Oct 2022 15:29:45 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 70so10190917pjo.4
        for <linux-phy@lists.infradead.org>; Mon, 03 Oct 2022 08:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:from:to:cc:subject:date;
        bh=BuEmPyN4Ez4NmzzutnovdwGSEF1vNe6R6TiRpHW5ogY=;
        b=faryKYuRlup1uNl841W9tCsnXKY4x5ZzddcOLsdf9HkC6Bzo24TLmqkXIRjeolgwQ0
         uVnITeO5OeSznTxdOXLjya60IB11c2j9MAUPdCKbidhkfkEvpXdE+JKkOxObngvaMZ34
         YQ52qsWDGO9ZLcU4KgbMShdKMGgc4RGVjpSgkdbTzHE2GjrWygu3wygkpENNPhlESvp0
         y9fw6suGV2xOkH7lz62ZnfHklPnDTChe4P3JzhwayXA4BdsYg/7iJclyFl/JhkLgIhLj
         lJxHANwUI/go2VxU7IzU6jQR9FR3g59ID9r9gsFpVg4q0OChrT7Dtkg4IV3dgGbRSAD3
         mRYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:x-gm-message-state:from:to:cc:subject:date;
        bh=BuEmPyN4Ez4NmzzutnovdwGSEF1vNe6R6TiRpHW5ogY=;
        b=rdXJmmIKSbh7Q3xSlbv5RSe53y21/PJqQwklA5QtqzcEyAhQe34wZh3LwQ22/MkBDD
         6MFGy4+q4fIdXuhqVaViU9Ika+NWmF0KyLG3WPDdj2wDq2RPLjyR3zMPcIOOSuei1cVv
         6+EyaWTz5dtM5kJqv5AEKg0X0RWJp7ThrNuA/V/MJGsolceGZwXp1XufXCkDXcYvVi3c
         TeOCl5k6g69gu+bFMBr9YAdTx6xWiJ8eu/KjZhzu0IOg17VUWUwolKN/r7nIg8RqWAW7
         EvEYfNyXMfNFEfY2VEGet8HD1bbZ6ZPNl11Anb9vpFJtNkvKdQuu6sp72yUQa5/RvOfo
         Hv4w==
X-Gm-Message-State: ACrzQf0K4bpbwVtmvRBtntA+YrH568yb7JaZyJ1sN8Ivq8BiviIkU/D3
	tRvRAhNH+sK/RyVY2RErSbzD/2W0ftD1ma6FGJ2+aA==
X-Google-Smtp-Source: AMsMyM44/4lmkJnwlFZ4jkHjH1tzKco6W1np3dHDWnE8gN2xk1BxjeMb6W4Zs9wA7u4Wlvz1r9guvdbO7Gov4Hza580=
X-Received: by 2002:a17:902:f710:b0:178:a692:b1f7 with SMTP id
 h16-20020a170902f71000b00178a692b1f7mr23009123plo.112.1664810976929; Mon, 03
 Oct 2022 08:29:36 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 3 Oct 2022 17:29:36 +0200
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v1-0-4844816c9808@baylibre.com> <20220919-v1-17-4844816c9808@baylibre.com>
 <a0a3c427-c851-ae5d-4010-e94740bf9f6e@linaro.org> <CABnWg9s3N_Ua9g0S3x0uj8PN4FtOX6DO+zQcBzGFqoLTL1J24A@mail.gmail.com>
 <bc64b69d-3d65-f5ca-a688-2ad1a055ba4b@linaro.org>
In-Reply-To: <bc64b69d-3d65-f5ca-a688-2ad1a055ba4b@linaro.org>
MIME-Version: 1.0
Date: Mon, 3 Oct 2022 17:29:36 +0200
Message-ID: <CABnWg9sJFBAXi1bu_yHDppFOmg=H=G7QTn9Bzqkr-t7qm5vUFw@mail.gmail.com>
Subject: Re: [PATCH v1 17/17] drm/mediatek: Add mt8195-dpi support to drm_drv
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>, Rob Herring <robh+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Daniel Vetter <daniel@ffwll.ch>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
	Jitao shi <jitao.shi@mediatek.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Mattijs Korpershoek <mkorpershoek@baylibre.com>, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221003_082942_289947_EE6BF849 
X-CRM114-Status: GOOD (  12.34  )
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

On Tue, 27 Sep 2022 16:28, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>On 27/09/2022 15:04, Guillaume Ranquet wrote:
>> On Thu, 22 Sep 2022 09:20, Krzysztof Kozlowski
>> <krzysztof.kozlowski@linaro.org> wrote:
>>> On 19/09/2022 18:56, Guillaume Ranquet wrote:
>>>> Add dpi support to enable the HDMI path.
>>>>
>>>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>>>>
>>>> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>>>> index 72049a530ae1..27f029ca760b 100644
>>>> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>>>> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>>>> @@ -820,6 +820,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
>>>>  	  .data = (void *)MTK_DPI },
>>>>  	{ .compatible = "mediatek,mt8192-dpi",
>>>>  	  .data = (void *)MTK_DPI },
>>>> +	{ .compatible = "mediatek,mt8195-dpi",
>>>> +	  .data = (void *)MTK_DPI },
>>>
>>> It's compatible with the others. You don't need more compatibles.
>>
>> Hi Krzysztof,
>>
>> It's a bit confusing, because this compatible is used in both
>> mtk_drm_drv.c and in mtk_dpi.c
>>
>> Albeit it's entirely the same thing regarding the mtk_drm_drv module,
>> it's pretty different
>> regarding the mtk_dpi module.
>
>Sure, but this does not explain why do you need these entries here in
>mtk_drm_drv.
>
>Best regards,
>Krzysztof
>

Hi Krzysztof,

Sorry for the late answer.
The mtk_drm_drv is the component master of the full mediatek drm stack.

it "binds" all of the crtc/dpi/ovl/mutex/merge... components of the stack.

That mtk_ddp_comp_dt_ids array is iterated over to find all of the components
from the device tree.

Hope this clarifies things?

Thx,
Guillaume.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75619C43219
	for <linux-phy@archiver.kernel.org>; Wed,  5 Oct 2022 09:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yJa7IlyQf93+QAbFNtsaZh/yglx2aI40EEI9k25CNLw=; b=Yvqf0WArkTyi3aykLcFw/YRwh+
	vbB4sgk+b5BIdGY7anAae6k+wYh4DjNFmB6qqu+DDCiFdLcPWt3rWt1RHvXyagK8/xezrlht2jDLB
	LPDg52poJ4R1O6Bq+l/QFHW/gHIkZZspQOk2e9GGLYHbmccQEBlKegwR6LCVMz0r/y84qGtVSjgbq
	BWhkWO+XfQBR9cRlGkCcJUw5lM21Fj6qr6ciBBdXQfNB4ozGWR+7HTD3X1lewW3rXSrzEeon6KV/M
	DOZwMd30KwV3UknHQ8iEP/dQrBz0e7ZgJO4QuLdEVdWaABxDBJ+LIH8OjQEK9U0k/Fy3MuIfPhThq
	Ulm97fxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og0nK-00DMla-Nn; Wed, 05 Oct 2022 09:34:26 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og0nG-00DMjK-Kz
	for linux-phy@lists.infradead.org; Wed, 05 Oct 2022 09:34:25 +0000
Received: by mail-pg1-x52c.google.com with SMTP id a23so7137572pgi.10
        for <linux-phy@lists.infradead.org>; Wed, 05 Oct 2022 02:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:from:to:cc:subject:date;
        bh=W6Rjad9w9ZpkRZmKm2QHPWW580vRhPpczFar+LESCVo=;
        b=iZI1Iyire6ZTuwbvd8W4RiiM4TT6TG8gcGVBXW3TsEr/KEeNlhMBXvnYSyExvSwn3a
         p3ISPPu43kYjGGdL+XauTnffdEe5ijgj1m+vEor7sGOVi8FmZ4gak2VFB8dRHKrsDZFm
         8hZQFhkbsyuLe+kUIi3QSkf9kRPTFqsSCVMtolYS8EOYfoS/GK8TkSWwnxS+FFKm9yat
         XpIbghx5Sk12glXdcpeuYkmzht2zDqYos1e4+xuCFYhiDKk2k0G0DU59L8lru2htuZE+
         GkJlscyAYFiO0/giotTXb8RpUDhKgqlD9Nwv/Fy/XLME4SN5KyZMbguwqExPbfAUYEE6
         neCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:x-gm-message-state:from:to:cc:subject:date;
        bh=W6Rjad9w9ZpkRZmKm2QHPWW580vRhPpczFar+LESCVo=;
        b=RV4nTUANI01YDCuhapeG6kVAlgcZLO7cMCMyi12Pzr2HnPV5GZkPkgILZs5KX7u4gb
         LpGirv+PJWXjVlM07WUlor7KcuM2nnGVYy0aR6o4bbOERO14cxcfvq06L/Gf9kjYKzIq
         Ku+WTVzvsXjcNqJpQWvuD0DNeuIo6Anmn77IBFMf0ty1+ChMSPLf4zL9/AlvU1zglSzh
         VvAkIsnp+1k7yLIIrtG6nRyYxskU69y8UGe7i6cIIUH2RLfhioqlxSyupnDE+SQHdHbn
         RdM4Ojk7vNuwNgu/cknt0vGf91N71FUd0UlgwhpxZU5TFQnkqtdUm88S4bBdqF2ShpsU
         XJMw==
X-Gm-Message-State: ACrzQf2+InagsvZAhiFl7Bvy5vj9MqSURkMp7XvZrR/X+RLAAw74d3BK
	ajEPTAKfHN8gFWEKiItrKo5p+7xf0HvX+ch++yp+3w==
X-Google-Smtp-Source: AMsMyM7IEMQ8VuBpLr4M/FXXnQHnzRBpA7qrWywzLLp9eOB5FOQsqJXreoP7ZvOaT2OaBEB8mfOoaLfZ0CauXaSBTac=
X-Received: by 2002:aa7:83cd:0:b0:560:21ea:bb21 with SMTP id
 j13-20020aa783cd000000b0056021eabb21mr19326276pfn.1.1664962460150; Wed, 05
 Oct 2022 02:34:20 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 5 Oct 2022 02:34:19 -0700
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v1-0-4844816c9808@baylibre.com> <20220919-v1-17-4844816c9808@baylibre.com>
 <a0a3c427-c851-ae5d-4010-e94740bf9f6e@linaro.org> <CABnWg9s3N_Ua9g0S3x0uj8PN4FtOX6DO+zQcBzGFqoLTL1J24A@mail.gmail.com>
 <bc64b69d-3d65-f5ca-a688-2ad1a055ba4b@linaro.org> <CABnWg9sJFBAXi1bu_yHDppFOmg=H=G7QTn9Bzqkr-t7qm5vUFw@mail.gmail.com>
 <db1abf9d-ba40-f71c-0d37-c3912ac1bd8e@linaro.org> <CABnWg9vOHWpdLPAFdXAG3GNgsxpbzgh2gTq_tm72Tk2uR54LaQ@mail.gmail.com>
 <49daae86-e922-9a17-ebed-2a33a5eeb18e@linaro.org>
In-Reply-To: <49daae86-e922-9a17-ebed-2a33a5eeb18e@linaro.org>
MIME-Version: 1.0
Date: Wed, 5 Oct 2022 02:34:19 -0700
Message-ID: <CABnWg9sPuJQQOmLGDSgE86NCRh_3GqWZ0dFAs_J2PO9HCVbExQ@mail.gmail.com>
Subject: Re: [PATCH v1 17/17] drm/mediatek: Add mt8195-dpi support to drm_drv
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Kishon Vijay Abraham I <kishon@ti.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>, Rob Herring <robh+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Daniel Vetter <daniel@ffwll.ch>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
	Jitao shi <jitao.shi@mediatek.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Mattijs Korpershoek <mkorpershoek@baylibre.com>, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_023422_926886_8B512E0B 
X-CRM114-Status: GOOD (  19.23  )
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

On Tue, 04 Oct 2022 17:05, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>On 04/10/2022 13:55, Guillaume Ranquet wrote:
>>> No. You said what the code is doing. I think I understand this. You
>>> still do not need more compatibles. Your sentence did not clarify it
>>> because it did not answer at all to question "why". Why do you need it?
>>>
>>> Sorry, the change looks not correct.
>>>
>>> Best regards,
>>> Krzysztof
>>>
>>
>> I need a new compatible to adress the specifics of mt8195 in the mtk_dpi driver,
>> the change is in this series with:
>> [PATCH v1 16/17] drm/mediatek: dpi: Add mt8195 hdmi to DPI driver [1]
>
>But you do not have specifics of mt8195. I wrote it in the beginning.
>
>>
>> I then need to add that compatible to the "list" here in mtk_drm_drv.
>
>No, you do not... I checked the driver and there is no single need... or
>convince me you need.
>
>> I don't see a way around this unless I rewrite the way mtk_drm_drv works?
>
>Why rewrite? You have all compatibles in place.
>
>>
>> Maybe if I declare a new compatible that is generic to all mediatek
>> dpi variants?
>
>You were asked to use fallback. Don't create some fake fallbacks. Use
>existing ones.
>
>> and have all the dts specify the node with both the generic dpi and
>> the specific compatible?
>>
>> dpi@xxx {
>> 	compatible = "mediatek,dpi", "mediatek,mt8195-dpi";
>
>I don't know what's this but certainly looks odd. Some wild-card
>compatible in front (not fallback) and none are documented.
>
>> 	...
>> }
>>
>> Then I can "collapse" all the dpi related nodes in mtk_drm_drv under
>> "mediatek,dpi" ?
>>
>> I guess would have to do the change for all other components that are needed in
>> mtk_drm_drv (mmsys, aal, ccor, color, dither, dsc, gamma, mutex...).
>>
>> That's the only trivial way I can think of implementing this with the
>> current status
>> of the mtk_drm stack.
>>
>> Do you have any other ideas in mind?
>
>Use fallback of compatible device. That's the common pattern.
>Everywhere, Mediatek as well.
>

I'm unsure about what a "fallback of compatible device" is.
But from what I can gather, you'd have me write the dts as:

dpi@xxx {
	compatible = "mediatek,mt8195-dpi", "mediatek,mt2701-dpi";
	...
}

so that the mtk_dpi driver will use the specific mt8195 dpi config and
the mtk_drm driver will fallback to mt2701 to find the compatible it needs.

Would you like me to use this pattern for all the other compatibles declared
in the mtk_ddp_comp_ids array in separate patches?

Thx,
Guillaume.

>Best regards,
>Krzysztof
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AA16C433FE
	for <linux-phy@archiver.kernel.org>; Tue,  4 Oct 2022 10:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CmS4tWQ8fGRi24ifkUJmVQxnfCuBHrdNQiTpLF+5VEk=; b=Xjaj1T8XAzeo7r
	6kMlRD33LsuRP7nM6nJuE9uz1ZFlGnY3HieSd/o936U4gM1VYcWxxHqBSrYZcTu6UX8ycQRoVua24
	vdYScXAkE3A/FzblPAu+RJurFMlHHe3gEW/BBht0q6RQAchFtR+YwjFZv/cuwsGwdJWwmbiIOiA8n
	Nu2CtOkfKiKP6LJlr8Hi12Su/IHI7vxeALxCTXth06gr+MnJFF/e3bQvS0TKAWPOUsism/9Pt/Zfm
	OOu6/0Hzp+JoflTM3lf1G9DbCSoxmFMcevsDLIN3Pv5kZo+X1hmKaoNvrfoMwMt//RiREUuH4Uc4q
	1ETAHGe8LkUZKnur4Mqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1offUN-009Pou-VP; Tue, 04 Oct 2022 10:49:27 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1offUB-009PkA-Aj
	for linux-phy@lists.infradead.org; Tue, 04 Oct 2022 10:49:16 +0000
Received: by mail-lj1-x233.google.com with SMTP id q16so729825ljh.4
        for <linux-phy@lists.infradead.org>; Tue, 04 Oct 2022 03:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=c5k6ZNI6sRUrczxfcsYS/c25P0zEUbDCEvkzt7XYe8g=;
        b=G3EHcKhnNoAjSMx/ocs4bY3RbE16aUdmufD3yRS9x3AiIWwFIVmiUyH3IVcGQfEBOA
         SOXUyuEBtDpV89NZXv+7EWvp+cd9xsdD3xaSL0A57S0b5UUssTcLrnH/kmLHFJ60Xc7N
         XSjN9c2UgwOuylWXLVt5dyUsQRJVUcbWdrqKpB+VBc8MoQRapE8TS2VFk88zVXHjcx5W
         ThHuO2bdbBT1tx225065qEGDNcPrs/gmls6CQhP19fQ4spldz5EkBKGEBhS4kZbNfvn0
         p+MgX0Mr3qJro8BJAMpJ+eC4hlNypUoBGetW4VCEaEzVZIjCq1NKFEaDWSCi8I6/7qPT
         afdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=c5k6ZNI6sRUrczxfcsYS/c25P0zEUbDCEvkzt7XYe8g=;
        b=vZXpxgk2C3u5PFvN03V0ldiEMmx3OoQqfByFuFWbaqyreXyF5YpKgp5M8CF7HFStK5
         CpSPzI2ESmi74mOM3ffkOXgln2WexvolhUQg5SmDmccXskFLLGaIoIROhPEmrB1WiNhH
         /3e0jOYBdk/veQ3YQNmxFYGDEcD4xuF/vQk3/urHZh7owv3wyxIQDKNZuMJnhwCxL9nm
         aTpvHcPtiAjLNxyzvegN996p+nM3l9mUzXzum0POJRtL/TG1zZUJ41YBGWxr6EbIvzMB
         Rj6FM90Ec6Jx62gP1a6SEiWbjPMgFMBiHBLOFGpbOAE6vbTEpCekhJIA2jDMX87FptkS
         3syQ==
X-Gm-Message-State: ACrzQf21NiXY4ZqgaztiW90pWI5BeVxpCceIjRvnkqxmbo+vTL+4QvLi
	UdgbpwD1Eawf4Rj51IdQRRf/9w==
X-Google-Smtp-Source: AMsMyM46dEzBBMohqQM+6j/OIqQeD7GRLhgNru1yX5N6Xlq3dupGTB8jWnZAA/XhAo1mPgS/lyXmiQ==
X-Received: by 2002:a2e:9d88:0:b0:26a:95c1:218f with SMTP id c8-20020a2e9d88000000b0026a95c1218fmr7776212ljj.223.1664880552796;
        Tue, 04 Oct 2022 03:49:12 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 2-20020ac24842000000b0048b3926351bsm1869697lfy.56.2022.10.04.03.49.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Oct 2022 03:49:12 -0700 (PDT)
Message-ID: <db1abf9d-ba40-f71c-0d37-c3912ac1bd8e@linaro.org>
Date: Tue, 4 Oct 2022 12:49:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v1 17/17] drm/mediatek: Add mt8195-dpi support to drm_drv
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mattijs Korpershoek
 <mkorpershoek@baylibre.com>, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20220919-v1-0-4844816c9808@baylibre.com>
 <20220919-v1-17-4844816c9808@baylibre.com>
 <a0a3c427-c851-ae5d-4010-e94740bf9f6e@linaro.org>
 <CABnWg9s3N_Ua9g0S3x0uj8PN4FtOX6DO+zQcBzGFqoLTL1J24A@mail.gmail.com>
 <bc64b69d-3d65-f5ca-a688-2ad1a055ba4b@linaro.org>
 <CABnWg9sJFBAXi1bu_yHDppFOmg=H=G7QTn9Bzqkr-t7qm5vUFw@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CABnWg9sJFBAXi1bu_yHDppFOmg=H=G7QTn9Bzqkr-t7qm5vUFw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_034915_382052_3F28AC44 
X-CRM114-Status: GOOD (  19.24  )
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

On 03/10/2022 17:29, Guillaume Ranquet wrote:
> On Tue, 27 Sep 2022 16:28, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>> On 27/09/2022 15:04, Guillaume Ranquet wrote:
>>> On Thu, 22 Sep 2022 09:20, Krzysztof Kozlowski
>>> <krzysztof.kozlowski@linaro.org> wrote:
>>>> On 19/09/2022 18:56, Guillaume Ranquet wrote:
>>>>> Add dpi support to enable the HDMI path.
>>>>>
>>>>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>>>>>
>>>>> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>>>>> index 72049a530ae1..27f029ca760b 100644
>>>>> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>>>>> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>>>>> @@ -820,6 +820,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
>>>>>  	  .data = (void *)MTK_DPI },
>>>>>  	{ .compatible = "mediatek,mt8192-dpi",
>>>>>  	  .data = (void *)MTK_DPI },
>>>>> +	{ .compatible = "mediatek,mt8195-dpi",
>>>>> +	  .data = (void *)MTK_DPI },
>>>>
>>>> It's compatible with the others. You don't need more compatibles.
>>>
>>> Hi Krzysztof,
>>>
>>> It's a bit confusing, because this compatible is used in both
>>> mtk_drm_drv.c and in mtk_dpi.c
>>>
>>> Albeit it's entirely the same thing regarding the mtk_drm_drv module,
>>> it's pretty different
>>> regarding the mtk_dpi module.
>>
>> Sure, but this does not explain why do you need these entries here in
>> mtk_drm_drv.
>>
>> Best regards,
>> Krzysztof
>>
> 
> Hi Krzysztof,
> 
> Sorry for the late answer.
> The mtk_drm_drv is the component master of the full mediatek drm stack.
> 
> it "binds" all of the crtc/dpi/ovl/mutex/merge... components of the stack.
> 
> That mtk_ddp_comp_dt_ids array is iterated over to find all of the components
> from the device tree.

No. You said what the code is doing. I think I understand this. You
still do not need more compatibles. Your sentence did not clarify it
because it did not answer at all to question "why". Why do you need it?

Sorry, the change looks not correct.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

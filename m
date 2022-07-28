Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D58A0C04A68
	for <linux-phy@archiver.kernel.org>; Thu, 28 Jul 2022 14:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r5QPAjLZ8b+5tslk9d5ZTaxZtI67/7ysSEHVvTwc2Zg=; b=k59ZvCealsEvXd
	D9YIm2J9+XfIqRyT5ZK1ePDcJUATpN6H2i2xb4HA5Ys/LVmzLqJ+UwX73WmFP2fuHS21rbn3/WMQ1
	hp1lovalnWs3gg05u8BD5z7TD+waIV1eAqL71ioDsSXOykMWkMjxhbS0yDwkH3cqKAgNA2b9NfMwA
	FAB+o0RV7Y7hlA01f7JiSyaCGl4hEOHKNHnczStrr4Vy1p92o4r7Slyg1AaYsrlbXV5luT4rRc3bP
	rhoQ0u1HPS57ai3o0tZ4lbY0IIfd8+f1VHnyHr4ZhnBWCqVHkmKVMvkZTavZpyqDiWBhR0goocCMt
	6NR3Ka+x0rtsCnZV3BjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oH4DL-009ztr-SQ; Thu, 28 Jul 2022 14:10:11 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oH4DH-009zqP-6E
	for linux-phy@lists.infradead.org; Thu, 28 Jul 2022 14:10:08 +0000
Received: by mail-lf1-x129.google.com with SMTP id z25so3052904lfr.2
        for <linux-phy@lists.infradead.org>; Thu, 28 Jul 2022 07:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=3ZkQISkEyAXqDJZYEpQ7KC461gTyV9M43PYYTAdpW9k=;
        b=l1GF1944v4xfZOTAoyVPjRU1bI2U5o/dI5UtIc8ezqvZnf6NLuoQyXXO9lBdy/HzQ1
         +dPIJxPqqSzNPc8VsHoSd6/JlGb5zLyq4cNxNqpiXrik6qjLpqMutKXPbBF2uuYzniUG
         6uJShkWKsE4I29ZHjuhSpvH8rOew62e96DMQULj+zuFjt8FCGTlm4om7Uc7AiAOiidKo
         yWpb65M38LA7CyzuIhyA8nDHIsLZNdvpiFE+V/SdsEdF2l56AfxXsuCavlsOL4mKLLra
         F9eAhGM+agB1gTsE4kNekk0xY3vYAwuPTxec0hl0f+cn0zIY3KzN1Lj+8+ZGOYzaiidl
         WYyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3ZkQISkEyAXqDJZYEpQ7KC461gTyV9M43PYYTAdpW9k=;
        b=jPhSkMkpY4VaSaZ+tgMjig/stU+caovA3QtFDYnngZeO8UV7TXh3ZG7oZnhNh3e+rU
         gkZ4ao8Yf+jLQByF2ZfWCM+eRvkDLFcfsraaRP+/CYUbPhIgrgCKn6Bo+4pQWM+koW3l
         PBAFU7lwRFfyihrJaSpe22Mio8/9uO+EjBCihsPFR3XIQE2SPvPvG1jWu+6mfLGqTlNu
         FaewP1WtSrCRycC5piM9yXtc7MeYYE73BxQ0hTLw0QiGXseK/SDQVjzOfDBwQ36caspW
         xnTiLqLP/lOREhZDJAzyQHoUpu79Zt1qs2HG6mg3sG7PwjESkx3gI7B1VFKko6bHdXhO
         8DbA==
X-Gm-Message-State: AJIora9YiCJmAji+JGIr8ZC19+q0IA622nQ7luldrYic2An6pPnnd/HH
	l2NWiWROU+6a3qOfthD9+Yw9Qw==
X-Google-Smtp-Source: AGRyM1s6eMkW7RadgIwnMhQWUiqP2h73XK4fRJOfJ7MByx2t3fVD6PR8bOn5QnF0b3ef0tJyASGPUQ==
X-Received: by 2002:a05:6512:151c:b0:48a:9763:5d29 with SMTP id bq28-20020a056512151c00b0048a97635d29mr6347878lfb.79.1659017403706;
        Thu, 28 Jul 2022 07:10:03 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id e13-20020a05651236cd00b0048a727ac440sm220929lfs.45.2022.07.28.07.10.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 07:10:03 -0700 (PDT)
Message-ID: <84923720-30a6-1a49-48f6-96e078a46743@linaro.org>
Date: Thu, 28 Jul 2022 16:10:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 3/3] dt-bindings: phy: add definition for MSM8960
Content-Language: en-US
To: Shinjo Park <peremen@gmail.com>
Cc: David Heidelberg <david@ixit.cz>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220728111740.30595-1-peremen@gmail.com>
 <aef9bae5-b72b-d520-a8e5-8f6a838775eb@linaro.org>
 <CAAs2AW7A4RfxAaKPsmJjA1s7s5_rnM2O4XAAFC=7x1Npttg5rQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAAs2AW7A4RfxAaKPsmJjA1s7s5_rnM2O4XAAFC=7x1Npttg5rQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220728_071007_307745_0FEF7AD8 
X-CRM114-Status: GOOD (  21.91  )
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

On 28/07/2022 15:54, Shinjo Park wrote:
> Hello Krzysztof,
> 
> Sorry for any confusion during my first patch submission.
> 
> PATCH 1:
>>> Change the reference of sleep_clk to the same as qcom-apq8064.dtsi.
>>
>> You add label, not change something.
> 
>>> - sleep_clk {
> 
>>> + sleep_clk: sleep_clk {
> 
>>
> 
>> Since you touch the line, make the device node sleep-clk (device node
> 
>> names should not have underscores) and mention this in commit msg.
> 
> 
> I can change the line into "sleep_clk: sleep-clk". And the commit message
> would be "Change the device node of sleep_clk to sleep-clk and add a
> label"? Another problem is that in the same .dtsi file there are other
> device nodes containing underscores (cxo_board, pxo_board). Should I also
> change these in the patch?
> 
> PATCH 2:
>>> +                     phy-names = "usb-phy";
>>> +                     status = "disabled";
>>
>> status is the last property.
>>
>>> +                     #reset-cells = <1>;
> 
> I can move #reset-cells one line up and make the status last line. On the
> other hand, the same definition is also used in
> arch/arm/boot/dts/qcom-apq8064.dtsi (also the clock definition mentioned in
> PATCH 1). Shall I include another patch for that file in the next revision
> of this patch series?


Yes, you can rename them in other patch as well.

> 
> PATH 3:
>> 1. Thread your submissions.
> 
> Shall I use this thread for all follow-ups for my first and second patch?

No. One patchset, one thread.

https://elixir.bootlin.com/linux/v5.19-rc5/source/Documentation/process/5.Posting.rst

> 
>> 2. Use subject prefix matching the file.
> 
> If I understood correctly, then this should be "dt-bindings: phy:
> qcom,usb-hs-phy:"?

Yes.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

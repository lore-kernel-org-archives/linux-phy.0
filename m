Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64C33C54EE9
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 12:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DmHTEujruUlwreOEEmN6fYm9kXQPv6F3kbjxl/YAo20=; b=bc9lMizBCcqcde
	2Z4rWVD91tTeHkrh3yzERL4njXTk0oqL5y0beccgIfINPiU9vqny3PhfXCNBdbgl4T5lSsaxH4PY9
	BJApi10046P1Ljcj3sqwROKUYeK++YfMn36Jsdi3m1rYmuaFMGnBektEq/Aq36EJ8z2LtveIltttn
	J35Wmm/x2tNpVwyg3J6oDywD9WIXj1ticM/WQrZzX0n88mJZWms3Z4rRWJSjK2CkpEQpVHxplqicT
	csat4hcq/5BRX9aM4jxSbQDKkHTwJcmdyCB5qIEFvMBoGt5c9RaLYe6UMVl/3R45FORkZeY4d8wkW
	UYDBIV5dDeB+jd0sZciA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLfu-00FTkZ-Qi; Thu, 22 Sep 2022 12:51:30 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLfY-00FTYq-04
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 12:51:09 +0000
Received: by mail-lj1-x233.google.com with SMTP id s10so10863002ljp.5
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 05:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Sea27jK2pOb0ADt+U+OOXz14ad+JYjdidyw5ceH+6tY=;
        b=bEQc5o4c96kL003lNdFFNF/PheTKYPzGOx1XlLuWx4uUt3ZZ8u82nZSviwPUHfH2xv
         bUDvPw5aOQbeDKQmaq1CoRgZsOnIg2YGfJh8cvDV5F9+JLKSUyn50zDSIBxJOcnrj4PR
         A/jflBtwfF7dKCfnIUVH8sg+arNoqIgkz9k9j9ZFaFWktQEtF1ZrBOG6ExeV2+xa5sCd
         gIaN+jPceaw/AtbWvWGSXMYZ/VYa/BVnHTn4+MNDa2/tr3mx3BIFfKkZZCFjQpef8XiE
         zuMwWdRrzBII8cLpO+PWCCMW0r7uAoqveKC5p2LZphYcvpAG3bcSeCk7PVaftA5tgi0M
         8RZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Sea27jK2pOb0ADt+U+OOXz14ad+JYjdidyw5ceH+6tY=;
        b=qpFmF76qaOxVUjocNHrpl0jeBfM5B6TuRNKEtM1D3SASbGuCT08lIli2JoC5rgNTSE
         vNlcr38yj17zp2V1tsTsrsQEmXzeIhAC7flH2LIGPS4Pi+ws2sEAYX/b5HRavgNPv8Fk
         tVGIOlPYZI3nozBqrKf5yd+l5rDZMPkmrTnZvnpjQc8IQBSOvy4PQLXAmKYRw0od4ALN
         L/O79GBeTPeylOcF6RaIy0NZ6P5G761XdmH1pE3RIaC4KCKky8HSz6nUmPTi40ovpU6Q
         8Wo9jaTzsX7IhbpGp8S8//XhYI0TqQPUJMzv/sLH9zd9X0kEiSI5l25XZecjM7WhIjAK
         DBHg==
X-Gm-Message-State: ACrzQf3ih5ZJ39XK/pSCshHfx3ovPVNc7Dv+PZ82qxGxpwf6CI6ffJBN
	7xxK3m21oqj8m9q1v1wj1TUbkg==
X-Google-Smtp-Source: AMsMyM7SDptjdpkW7tuuttAy0kYzK4MBmIe60uRZtol4i0HW5ltX1B+Cjzu/BNFNwE3TBkr+rbuBQA==
X-Received: by 2002:a2e:1458:0:b0:26c:3b83:e039 with SMTP id 24-20020a2e1458000000b0026c3b83e039mr1098450lju.484.1663851062438;
        Thu, 22 Sep 2022 05:51:02 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v12-20020ac258ec000000b0049496608d58sm925362lfo.155.2022.09.22.05.51.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 05:51:01 -0700 (PDT)
Message-ID: <6b24be8f-94d7-6973-6f35-18cb15fc8cd4@linaro.org>
Date: Thu, 22 Sep 2022 14:51:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v1 01/17] dt-bindings: clk: mediatek: Add MT8195 DPI
 clocks
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Bo-Chen Chen <rex-bc.chen@mediatek.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mattijs Korpershoek
 <mkorpershoek@baylibre.com>, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20220919-v1-0-4844816c9808@baylibre.com>
 <20220919-v1-1-4844816c9808@baylibre.com>
 <d01e4a03-1d6d-9616-45ca-1c927f2d8237@linaro.org>
 <CABnWg9uZ=FrumgUzyUoUiS6T51nZTEf5JZ-1KF0-Ra9Ood5ufA@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CABnWg9uZ=FrumgUzyUoUiS6T51nZTEf5JZ-1KF0-Ra9Ood5ufA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_055108_049425_4A1C35D8 
X-CRM114-Status: GOOD (  14.72  )
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

On 22/09/2022 14:45, Guillaume Ranquet wrote:
> On Thu, 22 Sep 2022 09:11, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>> On 19/09/2022 18:55, Guillaume Ranquet wrote:
>>> From: Pablo Sun <pablo.sun@mediatek.com>
>>>
>>> Expand dt-bindings slot for VDOSYS1 of MT8195.
>>> This clock is required by the DPI1 hardware
>>> and is a downstream of the HDMI pixel clock.
>>>
>>> Signed-off-by: Pablo Sun <pablo.sun@mediatek.com>
>>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>>> Reviewed-by: Mattijs Korpershoek <mkorpershoek@baylibre.com>
>>>
>>
>> Looks like broken patch.
>>
>> Best regards,
>> Krzysztof
>>
> 
> Hi Bo-Chen and Krzysztof,
> I've sent the patches using the rather new b4 prep/send commands.
> 
> Though it produces valid patches, it's using `git show --format=email`
> to produce the patches, which lacks a diffstat.
> 
> My understanding is that the diffstat is considered to be comments and thus
> are not necessary to produce a valid patch.
> 
> I've reported the issue on the tools mailing list [1], I'm looking at providing
> a fix.
> 
> I'll be extra careful at the patch format for V2.

Thanks for explanation! Probably your patches are perfectly fine and
should apply, although I must admit diffstat is often useful.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

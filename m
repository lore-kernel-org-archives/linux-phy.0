Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3629FC433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 16:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=odiUyR7Uj3/VOvzQNiUmKRsfuCYJYjHquKkkRzj5PIk=; b=Jkd6ASdRpqRd9I
	6dUQ2ILRO6PGFGSgcQFTOxSSVgulHfQhNlQIVsY2oYW6lbAe6KqUzmen4RYXXFRVXwaNwKgwA6Jwy
	jJD9IU/2jFs++PmQHhi+pMu94JEeW2uOAvG29khxN+V6nIX/n8zu3XeL+i+QlfkI6Yp4pkaOZeRDd
	4si5sfYnrYbYsWobC1puEJm6IyvGhR/zjh+djrFyjNN7DpWO3ofCSow8xiAU/iyqZAPcgknqrMqj4
	S3dLe3234z6m6Oz3KzOsmpI/8dIz3UaQn+vYuAVxh2E4BbbgwrWWZu/tnq7uZHr1DjAqJvGSYcleJ
	/S9MWH4k3s9som38kcIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oucl5-002u9A-7E; Mon, 14 Nov 2022 16:56:31 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oucl2-002u4v-58
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 16:56:29 +0000
Received: by mail-lf1-x12e.google.com with SMTP id g12so20325068lfh.3
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 08:56:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y58GC68qONNsMENmg/gVzchuwfipMrSIXXvNyA3gkbg=;
        b=erS66v2Lwbd/Bxw+cRVGXpnK35dtxrMBXRB+gqK+ylQztNcHOO9KdsKrDgfgjZcEX+
         ouaZTMB5YfsbyHkyDGm6jELbRu5So6/39tYq+IF6XHddJfI5TTmJ4z6iAg8DVsHMGfl0
         HaJS/gZBtc22idWiPmbWpoymiy/5C7d267VVNe/NDMKjydsr3ooRdpDux5wD1rFsajuf
         7siXOYyiajlxTPPIFiuXXDqe/6sddtRVNlm3w3MN/yBBk+Bcfsh4/TSgWH0yt5p50G56
         2ymTpYLIj7UDHMugg/DMFidpg2JVq3pWUw/KNzYlaCzSBmeDP7NsY+xy/0oLaJSQmZxz
         U4vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y58GC68qONNsMENmg/gVzchuwfipMrSIXXvNyA3gkbg=;
        b=JSNf2CtVBc8oSVK/faKpvhvVjYNmeRJ8dN8G6MeHx4avtnokODtiWg+kteFkY1hShz
         dllT5jrlIA/SFI3u2FP5fHMpocXPg5Go9Se8wVqrL9kXIkzQZoPJ3W4fbqsLIGJIa4/G
         PTWOMfkNuar0zPRzoyd+3/LcA7uS8x6HUR8Tb1Zj8GxFN/DZNWlgTnSbwlNIfeNl5vZH
         huXwHOR99G6FuqvcGqQ0bu00La9vGIuTtdxJmbDfXUZ+7pVqjHkFME57ZFqHon5/bXrm
         3DiLjFmIaA+OhVSNZdlzYStY66gci4jQIFNqgoLNgDbcg4Val24RZ7V0tfd2HLQpJqGf
         8sDQ==
X-Gm-Message-State: ANoB5pneWQ3kKczUmmrEWXSt9cEa4wHTCdrl8r78YCuU29wcwHWKemrM
	TXjgHgvtLS4vyW9uFICrut4SwA==
X-Google-Smtp-Source: AA0mqf6nd4/xXmES0TovIm34CZ9x5BlOLPTUbu60+ZDPXCjvtXdVhANJep/PDnB+Ud+HWFXHnhLUzQ==
X-Received: by 2002:a05:6512:3414:b0:4a2:2b23:f17f with SMTP id i20-20020a056512341400b004a22b23f17fmr4121950lfr.688.1668444983295;
        Mon, 14 Nov 2022 08:56:23 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id q3-20020a19f203000000b00493014c3d7csm1882169lfh.309.2022.11.14.08.56.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 08:56:22 -0800 (PST)
Message-ID: <8420c342-9dce-aea7-8d1e-f141e0c1ebb5@linaro.org>
Date: Mon, 14 Nov 2022 17:56:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 02/14] dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp
 bindings
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-3-johan+linaro@kernel.org>
 <a22888cd-34cb-3453-0dc2-096da208564c@linaro.org>
 <Y3JCVzJ74YsfcDz4@hovoldconsulting.com>
 <de3a426a-03e8-ed15-a9a1-bb300e776e5f@linaro.org>
 <Y3JOO0kNnaNhnW3K@hovoldconsulting.com>
 <02725b78-04ad-8f4a-25c2-9cdaa1e37ab7@linaro.org>
 <Y3JthM1jC2vH1Kn+@hovoldconsulting.com>
 <efd412d0-7411-8b0b-4700-9e183a592048@linaro.org>
 <Y3JxZ+yFMLZkwNBi@hovoldconsulting.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y3JxZ+yFMLZkwNBi@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_085628_230419_C3D46E7F 
X-CRM114-Status: GOOD (  18.34  )
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

On 14/11/2022 17:48, Johan Hovold wrote:
> On Mon, Nov 14, 2022 at 05:39:26PM +0100, Krzysztof Kozlowski wrote:
>> On 14/11/2022 17:32, Johan Hovold wrote:
> 
>>> Fair enough, I'll drop it. But there doesn't seem to be a good way to
>>> describe the indexes currently and most bindings simply ignore to do so.
>>>
>>> So what is the preference then? Just leave things undocumented, listing
>>> indexes in a free-text 'description', or adding a free-text reference to
>>> a binding header file and using those define names in a free-text
>>> 'description'?
>>
>> Either 2 or 3. Several bindings for small number of constants choose
>> option 2.
> 
> Ok, we have three now, but USB4 will bump this to ten or so.

Then probably header file is the way to go.

>  
>>> And if going with the last option, does this mean that every SoC and PHY
>>> type needs its own header for those three clocks or so to avoid having
>>> a common dumping ground header file where indexes will not necessarily
>>> be 0-based and consecutive.
>>
>> phy-qcom-qmp-combo.c has one qcom_qmp_dp_clks_hw_get(), so why would you
>> have many of header files?
> 
> We don't know what kind of clock outputs later revisions of these PHYs
> will have. The only way to guarantee 0-based consecutive indexes appears
> to be to use per-SoC defines (e.g. as for the GCC bindings).

Which is also fine. I don't understand still why it is a problem - even
if you have multiple files, one for each SoC/phy. If USB4 brings here 10
more clocks and other SoCs/phys might bring many more options, then what
else can you do? Grow the binding file with big text-based mapping of
IDs? It's not a viable solution. Header or headers is the only
maintainable way for such cases.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

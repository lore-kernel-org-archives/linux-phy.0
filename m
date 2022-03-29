Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F25B2C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 29 Mar 2022 11:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PXESFbPOSQXdQ29RNfRTBWgiWXISF0356nlxSNqKdLI=; b=SU4aAdFkIgrNd+
	of2MG2IhXITnbXR2REWmIFz9iTYjW26vSUTVtmV1ngpq+WBo45x1REaYgsZWZBNIwziIkyzlBsbQf
	xHIPaGG/K3h4cyumS/bumW5tZuHqbGYSnwNbZJBiIN90fgSVSN6XB6EqJP22DlZLb9BAO0tgv4btc
	M59v8zm+rhX84YaBSp8SK7wpVdlEdKegw9TmeHzOFa5LSzOrjUPsLwuczZQL8wgpgidcaZie6o6Bd
	2BRi0NuGI2U6mPjaGXoGC5/oBBywiQ+vto/mqolnvI6peOBMU3/9AQBsQteOVTVRWCYW5yxSJsLwB
	vn/6qErmE82sfND/i6ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZAJQ-00C2lX-64; Tue, 29 Mar 2022 11:47:00 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZAHs-00C27V-Jd
 for linux-phy@lists.infradead.org; Tue, 29 Mar 2022 11:45:32 +0000
Received: by mail-ej1-x631.google.com with SMTP id bg10so34554842ejb.4
 for <linux-phy@lists.infradead.org>; Tue, 29 Mar 2022 04:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=j1x0lkzEnz6Ag44boIJpxEzXaCp1e5GyDI+ZSQvxZtE=;
 b=J38b0s4L1M9EoJm3AoZIhtKKxJc5xiO3PZs9l7XK4JKx+6X0mIIS+yQF/WSkclBfoD
 /tNa2dX49JQAdTDdCmS+yvySa0CNgsm0Xu+Wp/ViSqaUA2hJ2gt8rV2+CjmES1qeqaGE
 w9SdDucCp94NRMpHBdOHefy0Vbp01P5h2pe5wQ09Xfv5MmaPLeXURIwuQ7vIJesy3b2Z
 KDUhJt52NB486vqv+LInhLiTKq3joUmbAQdd7K5MUnFC7asMPxQWJK+zIUSw1G5CQZBH
 tNYXAANyVGBirRKEu5z/sUEzPKxwSzCN8Jhp91p9IPDZYdufjQe7FmyVgxqEQQD7GfAR
 LFcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=j1x0lkzEnz6Ag44boIJpxEzXaCp1e5GyDI+ZSQvxZtE=;
 b=L0smIDkURpK43vFovYJmjbXLbh1xV3KcFVhlkei32MuWHgOmeYfRkJjG6sihf5KQh1
 7C9oAlOx8FRQDC4kQTXVGo3wo8y02JVGf3ERrt6ZX3O5+/QFYzIuWnOQBZzmd183BlTx
 VY5OEfHxske9DTNuSiZN0h1NyyabDntryx9nqqHYUW+++teRIgVeZrnlVtdlVjPjrKHZ
 sBD8sj2q4PLMyUh+HrCf00M2YwTawyRHdU9bMlL8vRWnqfccG8BRCPhDTM/Xe16ftyGg
 vcOL4ojO0jiq7+m7Rs0Yj97/5NrSum3qNYfFug/8LbW2AZ2xrZP+P8ZJBF/k5uFsinyl
 Dc3A==
X-Gm-Message-State: AOAM533ruFMkTQIqiI237Ee78a33o1+QxC5SHEgVQ0cbKYlvMddcShUj
 X0OUszf9R4sTqYYkgRSbOhQq6A==
X-Google-Smtp-Source: ABdhPJxo/IibVl8TCMJ3rirN0I5mcKTdxml5fi0IRvVtodGPnTfjiczC0H5+KUVS1X1GtE9CD0kVYA==
X-Received: by 2002:a17:906:66cb:b0:6cf:e4f7:9504 with SMTP id
 k11-20020a17090666cb00b006cfe4f79504mr34474024ejp.142.1648554322817; 
 Tue, 29 Mar 2022 04:45:22 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 jg15-20020a170907970f00b006e0466dcc42sm6991145ejc.134.2022.03.29.04.45.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Mar 2022 04:45:22 -0700 (PDT)
Message-ID: <1ff5682f-3f59-8635-631f-d648e604044f@linaro.org>
Date: Tue, 29 Mar 2022 13:45:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 3/3] dt-bindings: phy: uniphier-ahci: Fix missing
 reset-names
Content-Language: en-US
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1648433152-23126-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1648433152-23126-4-git-send-email-hayashi.kunihiko@socionext.com>
 <2e0be70f-f800-e3f8-363e-6598468fa091@linaro.org>
 <54a88acd-49ed-01f6-4108-b74bc653a612@socionext.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <54a88acd-49ed-01f6-4108-b74bc653a612@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_044524_757105_3D93CEA4 
X-CRM114-Status: GOOD (  20.04  )
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

On 29/03/2022 12:55, Kunihiko Hayashi wrote:
> Hi Krzysztof,
> 
> Thank you for reviewing.
> 
> On 2022/03/29 3:58, Krzysztof Kozlowski wrote:
>> On 28/03/2022 04:05, Kunihiko Hayashi wrote:
>>> Add missing "phy" reset-names to fix the following warning:
>>>
>>>    uniphier-pro4-ace.dtb: ahci-phy@10: resets: [[26, 28], [26, 12], [26,
>>> 30], [36, 0], [36, 1], [36, 2]] is too long
>>>        From schema:
>>> Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>>>    uniphier-pro4-ace.dtb: ahci-phy@10: reset-names: 'oneOf' conditional
>>> failed, one must be fixed:
>>>        ['link', 'gio', 'phy', 'pm', 'tx', 'rx'] is too long
>>>        From schema:
>>> Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>>
>> There is no ahci-phy in current sources...
> 
> Oops, I'm going to add ahci controller to the existing devicetree,
> but not yet. I shouldn't write the future warning in the commit message,
> so I'll fix it.
> 
>>>
>>> Fixes: 34f92b67621f ("dt-bindings: phy: uniphier-ahci: Add bindings for
>>> Pro4 SoC")
>>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>>> ---
>>>   .../devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml   | 3 ++-
>>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>>> b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>>> index 3b400a85b44a..14f7579e7daa 100644
>>> ---
>>> a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>>> +++
>>> b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>>> @@ -43,13 +43,14 @@ properties:
>>>
>>>     resets:
>>>       minItems: 2
>>> -    maxItems: 5
>>> +    maxItems: 6
>>>
>>>     reset-names:
>>>       oneOf:
>>
>> As a separate commit, this oneOf should be converted into allOf:if:then:
>> cases which will enforce the resets per compatible.
>>
>> Can you do that as well?
> 
> Ok, I've found some examples using "allOf:if:them:" cases,
> so I'll try to convert it with another commit.
> 

For an example, you can take a look at (linux-next):
Documentation/devicetree/bindings/clock/samsung,exynos7885-clock.yaml

and clocks/clock-names properties.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

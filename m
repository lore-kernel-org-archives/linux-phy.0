Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF76DC05027
	for <linux-phy@archiver.kernel.org>; Tue, 14 Mar 2023 19:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=55qjoCsLHHkKcVJ1MbgjZXIY0OOotguwVZMmSMuq4ro=; b=n5CN1NsgTKapOF
	oPr5WP0KIKibkJUvVcMWkM9sLQH4hqlHMQiTmJsL3xhU6ouYzn4drLDu09hpmCdhhCwSup+2D1h1D
	6APwE9h7H4GWxSiaf/ZVqfNxi/cvSva5TSZzzOcB7SZkKatevxvmqp3Tq4cH5PwhrwTm5XFnQZV4H
	7qKWmW+u7sNa/IfSSU24hAPaWb+BlV+kp3DYoPjSgNRKuqtR7MJQmCb7Kq7lJ54TjgRjNTT6ucTh5
	zV5fwcIpcLD0qqKQodTsf9Ddx8umrTP1pfATj/OJPGD7ItVYvRP7Wd9MTSqivnpPpNc0FFn+MMR1d
	5mArE5yNwKMWjQEaZwiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcAb6-00BN3f-0x;
	Tue, 14 Mar 2023 19:46:12 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcAaw-00BN1f-35
	for linux-phy@lists.infradead.org;
	Tue, 14 Mar 2023 19:46:10 +0000
Received: by mail-ed1-x52d.google.com with SMTP id da10so66771171edb.3
        for <linux-phy@lists.infradead.org>; Tue, 14 Mar 2023 12:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678823160;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XhnhusYpso9h8+/nIXY/oJLXEHrnKb2XiVlsQ9b08H4=;
        b=ONDiRQagLTVyvzhrwFbGYhO7MweGA6aPWx0XzV66MsRpmOqC6Koe729Wn1HCEVWNFQ
         D3o27iD9GCWZfCNB4KhCIsODlMZxTigsYuoteSZOS9Y7p11mUUaRrQkvKBvltukPpzuR
         YwCcPUUdHntD26Vgi/eXntOrEzlV/zygRL/d/wkxClarxgzUrqu3sWTkkYcHVspsILbB
         SN36+f4tzy7P6L/PCVmwVJ3s6mm8+I4nLQ4z+4q9fzE6weT6jOG+/nwCjMV7AAEJdvVD
         rBzagmtkh6wwMMixWUcbRj32wjyYdywdmT0HdUzyUQWa7C4uGFnVNmvmVH9wGDf434Tw
         iD6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678823160;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XhnhusYpso9h8+/nIXY/oJLXEHrnKb2XiVlsQ9b08H4=;
        b=tTE90d8GhkALcyeAd6fwZBq6UCqgHYegFH+mC4unAZ99nsYa/gIm4685gRqW//V0vW
         FiCOOktoiGzh+Oy6Cxk7wUwUsb0utyT0sfBXDIQxNjS2D88hGhGuaMWbdORIJPJuDgdi
         wanbGdIz2lYCbOJXd+nyGLbsI8Ot8m8CjyBstWWel14ItxwTeOCPlA3qW1cnw5evZs9p
         LN2LNYBwk4qgwmLAaUigwnkg4d2Zdo8qu1alT+07a/xIhGdiofqsn2PltSEVCs295RSp
         gN1LAFHmsB9//c3CGtehzNiEcXZuBcmrL1cH08h0tPg1MhsDhlQJjQmDBwIF9w9zW8CT
         zRCQ==
X-Gm-Message-State: AO0yUKXwEY1A2B7A68iuuHK/hdtF/nYIABijkwgWNHs3SS6iqIKcbxj7
	qb2M6j0ldqQAFYAX+4jSM+rz0w==
X-Google-Smtp-Source: AK7set8dJIX6MG0tfCB9Nt2ztaf3oOfZDw/JWQK995BqtVEHbWKwofAbRL4CvEuHlmwte2N8XPGQCA==
X-Received: by 2002:a17:906:32d4:b0:878:7f6e:38a7 with SMTP id k20-20020a17090632d400b008787f6e38a7mr3667050ejk.44.1678823160567;
        Tue, 14 Mar 2023 12:46:00 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:642b:87c2:1efc:c8af? ([2a02:810d:15c0:828:642b:87c2:1efc:c8af])
        by smtp.gmail.com with ESMTPSA id hb12-20020a170907160c00b008d9ddd2da88sm1533268ejc.6.2023.03.14.12.45.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 12:46:00 -0700 (PDT)
Message-ID: <a7fbaea5-927a-e4e8-d990-66b53d586d47@linaro.org>
Date: Tue, 14 Mar 2023 20:45:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v11 03/13] dt-bindings: Convert gpio-mmio to yaml
To: Sean Anderson <sean.anderson@seco.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Camelia Alexandra Groza <camelia.groza@nxp.com>,
 Madalin Bucur <madalin.bucur@nxp.com>, Bagas Sanjaya <bagasdotme@gmail.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, linuxppc-dev@lists.ozlabs.org,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, =?UTF-8?Q?Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 Jonas Gorski <jonas.gorski@gmail.com>, linux-gpio@vger.kernel.org
References: <20230313161138.3598068-1-sean.anderson@seco.com>
 <20230313161138.3598068-4-sean.anderson@seco.com>
 <684eb04d-aeaa-07e1-34d6-783e85e379f0@linaro.org>
 <3c19e6d2-4df2-6187-36d5-98ceef07235a@seco.com>
 <ad56ca5e-03f7-5e3d-6547-91c64fdb08d3@linaro.org>
 <7c7311ad-fbdf-3c7e-dab5-28a562fb7e8d@seco.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7c7311ad-fbdf-3c7e-dab5-28a562fb7e8d@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_124602_998411_4DE6FAD1 
X-CRM114-Status: GOOD (  13.90  )
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

On 14/03/2023 19:50, Sean Anderson wrote:
> On 3/14/23 14:32, Krzysztof Kozlowski wrote:
>> On 14/03/2023 19:09, Sean Anderson wrote:
>>> On 3/14/23 13:56, Krzysztof Kozlowski wrote:
>>>> On 13/03/2023 17:11, Sean Anderson wrote:
>>>> +  reg-names:
>>>>> +    minItems: 1
>>>>> +    maxItems: 5
>>>>> +    items:
>>>>> +      enum:
>>>>
>>>> Why this is in any order? Other bindings were here specific, your 'reg'
>>>> is also specific/fixed.
>>>
>>> Some devicetrees have dirout first, and other have dat first. There is no
>>> mandatory order, and some registers can be included or left out as is
>>> convenient to the devicetree author.
>>>
>>> reg is not specific/fixed either. It is just done that way for
>>> convenience (and to match the names here).
>>
>> The items have order and usually we require strict order from DTS,
>> unless there is a reason. If there is no reason, use fixed order and
>> then fix the DTS.
> 
> The items do not have order. That is the whole point of having a
> separate names property. The DTs are not "broken" for taking advantage
> of a longstanding feature. There is no advantage to rewriting them to
> use a fixed order, especially when there is no precedent. This is just
> an area where json schema cannot completely validate devicetrees.

I don't understand "there is no precedent". There is - we rewrite
hundreds of DTS. Just look at mine and other people commits. The
reg-names are helper and entries were always expected to be ordered. On
the other hand if different devices use different order, then it cannot
be changed obviously (as the order is fixed).

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77BAEC54EAA
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 16:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4MpA0KYYP0YGaqsJaCDAfnDII9lPpAaG5bS2lCua45k=; b=oqjTDkLUxjkY8J
	rn9RbwZGeHA07r0YoaxZjX17kK2VGlrRBtZP5Id9ubSzAhCyMCs7pUyA9vurxMFxQ0J8KboLt7WxF
	nwjASItW1Yl6mU4jODsNER5H50zXtf2i5YieSoL+oQZcc09OEaJgxXQBDmNPejMldonqn6ieUEP4K
	OViPL2QQ9aTLt7QmbfHCNx4TDEjqlmUGBKFoAzAIAyPo0wmU18/iGwAplkegKwxGZqKhXN3U4wIEs
	DBQNKYS+IB6vip5La6R+UD6l9EN9HD8H36s0wD+oyntTqPdpCN9cE1UdX9euXfOcBi3EVrrMVt99+
	oM923v9XUT8eDsiact2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLRms-00Fl32-T4; Fri, 27 Jan 2023 16:41:14 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLRmp-00Fl1t-UD
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 16:41:13 +0000
Received: by mail-wm1-x335.google.com with SMTP id m16-20020a05600c3b1000b003dc4050c94aso1080242wms.4
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 08:41:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QPTLAfBem8mtkfVwVTNDx60U15RuMcp3dwLzsVvyzDo=;
        b=QD9NvE+UGIkiNiazx9lO8r/37MxQac1JOfi9Z2KZF7v38RZ7prhqxckpZtEoG9c6Wm
         AZNJOXCUv+RG3yU5HPga028/r0ml/w7lHFeV8J/cQzWl4t4lBBBypMg+mLTLNUWX8vPN
         IqAMrm0pDKgwkkxi8uW3F8wLfzLBQhUL4Gb3KP/Cl/tF1P2jI+HVTJYetrvA2sPD7Rzt
         VVHFc4JxMO6k/IujHA1xrEbih6D70fUvoc4EJkMTUrkagSNMAZ1OAyUyL1r3OMBEsgkM
         ttU8ZBDX/NlmkZgB8YB0KO4KpbwbJ7f1DdwClTzm2GaCrE/aS1r/WCV2CdR+8usr/f+x
         IsXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QPTLAfBem8mtkfVwVTNDx60U15RuMcp3dwLzsVvyzDo=;
        b=0FuP76zq82bIn8mPDjjm2LdmQFcKGo2N6eIcmetZGBHaCl4glEs1iM2+dCN0z0Kph5
         C8+sfpjqhHAzDWXhlg02FPyAXgPIMoFOoWYA9wQEvPULZve7LlWP2i5Bc0VedwX6g5mu
         OQmSuO/FwYp2zyQcRwaY+kR/GspgfUmCG6yrY5aIIA56OhGB8u9ageBvxjUUc5G/Cwt3
         yBbebNsjpoB4zpbGuJ7C3CCa2fa3GV0o6zdM4ZMYXw30Zr0dQ083XYmKDyiV4LukPyQ2
         IYz3Vit6CW5IUXhL6gtCkNW6h8eclf5Xzc3fQxi76hs7IKw2uITlNQsaYM3cGd0rIYLk
         b4dw==
X-Gm-Message-State: AFqh2kqVilXq9ZvcxTyCUSCilfZw9FntFfBw6tjRtOoxczW0x9rVdKdY
	gf3gHtU3jK9RTwAe30o2Or09yw==
X-Google-Smtp-Source: AMrXdXvpTlskISiXIz63zCo5frc4zDQHnrmnnE8j0WWxaXqqFSFUfPkasP/5CcopaEa+UL6M7xsYRA==
X-Received: by 2002:a05:600c:1c8b:b0:3db:fe:f84e with SMTP id k11-20020a05600c1c8b00b003db00fef84emr39328237wms.1.1674837670367;
        Fri, 27 Jan 2023 08:41:10 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id z4-20020a5d44c4000000b002bfcc9d9607sm3370040wrr.68.2023.01.27.08.41.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 08:41:09 -0800 (PST)
Message-ID: <8da6b154-f799-4a33-d455-f42e30ad8940@linaro.org>
Date: Fri, 27 Jan 2023 17:41:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v9 07/10] arm64: dts: ls1046ardb: Add serdes bindings
Content-Language: en-US
To: Sean Anderson <sean.anderson@seco.com>, Shawn Guo <shawnguo@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Camelia Alexandra Groza <camelia.groza@nxp.com>,
 Madalin Bucur <madalin.bucur@nxp.com>, Bagas Sanjaya <bagasdotme@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Li Yang <leoyang.li@nxp.com>
References: <20221230000139.2846763-1-sean.anderson@seco.com>
 <20221230000139.2846763-8-sean.anderson@seco.com>
 <20230125234335.GC20713@T480> <8074f0be-8a70-a937-49f2-123e0bfc6218@seco.com>
 <20230127075248.GL20713@T480> <20a9070f-9673-2f51-97df-68e78c37d894@seco.com>
 <a3c3603f-7401-aeb2-4b58-86c3ca778c6c@linaro.org>
 <6ad9bc2a-910a-357c-fd7a-cf4ffe13ddb0@seco.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6ad9bc2a-910a-357c-fd7a-cf4ffe13ddb0@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_084112_013098_EF1DA198 
X-CRM114-Status: GOOD (  18.70  )
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

On 27/01/2023 17:22, Sean Anderson wrote:
> On 1/27/23 11:15, Krzysztof Kozlowski wrote:
>> On 27/01/2023 17:11, Sean Anderson wrote:
>>>>>>>
>>>>>>>  .../boot/dts/freescale/fsl-ls1046a-rdb.dts    | 112 ++++++++++++++++++
>>>>>>>  drivers/phy/freescale/Kconfig                 |   1 +
>>>>>>
>>>>>> The phy driver Kconfig change shouldn't be part of this patch.
>>>>>
>>>>> I put it here for bisectability, since this is the point where we need
>>>>> to enable it. But I can do this in a separate patch if you want.
>>>>
>>>> From DT ABI perspective, it's already broken anyway if you need to change
>>>> kernel and DT atomically.
>>>
>>> AIUI new kernels must work with old device trees, but new device trees need not
>>> work with old kernels. So a change like this is fine, since the kernel won't
>>> touch the serdes if it isn't supplied.
>>
>> You used the argument "bisectability". If the patchset is not
>> bisectable, the ABI is broken.
> 
> Well, because Shawn wants it in a separate patch I am just going to enable
> the driver by default on Layerscape before adding the device nodes. That way we have
> 
> 1. Base state, driver not enabled and node is disabled
> 2. Driver enabled but not used because the node is disabled
> 3. Driver enabled and bound to node
> 
> So there is never a case where the node is bound but the driver isn't enabled
> (which would cause the ethernet drivers to fail to probe).

Then there is no bisectability issues and the Kconfig patch should have
been squashed here... Mentioning bisectability and that squash just
confuses.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

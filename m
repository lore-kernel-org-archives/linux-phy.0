Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EA22C43334
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 07:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wG0bP4fpgLg7iQKZOT0M+8Ue2vgzmJsu1fWDlzIF6J4=; b=sx7Qzy2lmD0YP7
	4KSke/5X78fcDZerzHBOjr+vj+ree+kuFLfTlXyi8PG3IkzPvshriCCS8aonZVCREFeVlYeYrTmHh
	JmbbH7l8NzzfBDIqB9iTeuOY0Qe8ZwfwNklI3v3jcmTysvDaPCPP2TaK6Vi9oZh8tSl9AGB089A1t
	3jkdxycNq+Vsvwi7jpEP0u/PynboPUjFsqoC0/OQBm87PGRcq69XGcLyuko7AgT/8G5G0/ZRBW5YI
	lUgVmB00c8VsvAM+9T+8BsyvdUFsoww6x3A88aM3AJkCJyfcTIUDia7RlX0viLSrNAI0XW3153uLJ
	nlc42uhC/o2kB0m93lyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Y4K-003yn0-0f; Tue, 21 Jun 2022 07:13:00 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Y45-003ydP-MW
	for linux-phy@lists.infradead.org; Tue, 21 Jun 2022 07:12:47 +0000
Received: by mail-ed1-x536.google.com with SMTP id fd6so15316589edb.5
        for <linux-phy@lists.infradead.org>; Tue, 21 Jun 2022 00:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=rZJJbO9tmvN3skIIZSoGEawfNisxmFvqIY3afbWNk0k=;
        b=x2XlL1khCI/cWLpErGp+GFQadkpgwCUNIt+y1cFMvLTJ8QTD7icTnugWki3Lf7ie0f
         CzpfEy2ptqM4Or39eOzCVLWFUbbJ2PC9H0+mGo9O0onCHMRUuPsb3WAeSPuJruh0qEHI
         hqvnIxLIflrU6ZD/ACM33uG6PKa2OeNCvg6GXPKN3zkTWRDrNdF9rOWDhcki1S8gcNaQ
         Q1z1S5ftZ1jeXv98c1WhlbFXcXrCnDbSkd7cVLYa9sLp7OyywI19eVDbBck+Xtr+lToJ
         hPC69Xik8O4j6WZJgBESUKybjciq3r2LktSTdr4j8UhSCxkdLptWhSOGA+Po/D8cl8tM
         umDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=rZJJbO9tmvN3skIIZSoGEawfNisxmFvqIY3afbWNk0k=;
        b=RETOovgZ/uRF1exC0ENrfptFuDaowh7at7rBh/3tk099MQpBz4b0YoAbuNHsu+5oq8
         QL7fokqkvc8KqH7yQEDkRtxJScPDzxkQnyTXCxexGcyxOFOdqIyti7/84QV8iUswS7Bd
         PWxsEvutBkT37Tprlh72iEarRvV3lTIAppZFpOU4PMqctPTDq2/3IE+ZlGx1uTtyXXCJ
         27FgEU1+RFzqjp7+1st6VrSnWiv8fxYAn0hXy3lMWOFaUscm7UB2KO9sBM9zN/5FxfPZ
         kUxcqrweJ6dVi27f0sOStUIWV+iIGX5HCpldGg0ttYqbCXIrcgkXwWox9nl9y8uotWFv
         ptbA==
X-Gm-Message-State: AJIora/SIVzQYwX/yLGcLJLkw9AyVW7wpo3lvPAEXmglv5je0VZWFQPs
	gLxV9dpWylGFLOTPS75yvxaBTQ==
X-Google-Smtp-Source: AGRyM1vrygzsyf1XkfWBidpFgjIUaEYcyGJLiMBB9DaYIq+y5D3cEOQOG47m6jnRBlKuRDUEajM72Q==
X-Received: by 2002:aa7:c1c7:0:b0:435:5cb2:c202 with SMTP id d7-20020aa7c1c7000000b004355cb2c202mr27028883edp.10.1655795553854;
        Tue, 21 Jun 2022 00:12:33 -0700 (PDT)
Received: from [192.168.0.216] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id e16-20020a170906315000b0071cef6c53aesm6096627eje.0.2022.06.21.00.12.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jun 2022 00:12:33 -0700 (PDT)
Message-ID: <1c2bbc12-0aa5-6d2a-c701-577ce70f7502@linaro.org>
Date: Tue, 21 Jun 2022 09:12:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH net-next 01/28] dt-bindings: phy: Add QorIQ SerDes binding
Content-Language: en-US
To: Sean Anderson <sean.anderson@seco.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Madalin Bucur <madalin.bucur@nxp.com>, netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Paolo Abeni <pabeni@redhat.com>, Russell King <linux@armlinux.org.uk>,
 Eric Dumazet <edumazet@google.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>
References: <20220617203312.3799646-1-sean.anderson@seco.com>
 <20220617203312.3799646-2-sean.anderson@seco.com>
 <110c4a4b-8007-1826-ee27-02eaedd22d8f@linaro.org>
 <535a0389-6c97-523d-382f-e54d69d3907e@seco.com>
 <d79239ce-3959-15f8-7121-478fc6d432e4@linaro.org>
 <e6ed314d-290f-ace5-b0ff-01a9a2edca88@seco.com>
 <16684442-35d4-df51-d9f7-4de36d7cf6fd@linaro.org>
 <50fa16ce-ac24-8e4c-5d81-0218535cd05c@seco.com>
 <e922714b-29c7-0f41-9e5c-9a0aef9fb5de@linaro.org>
 <5d724f49-71c4-96ad-b756-06b5683fa112@seco.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5d724f49-71c4-96ad-b756-06b5683fa112@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_001245_848638_6348D931 
X-CRM114-Status: GOOD (  18.28  )
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

On 20/06/2022 20:51, Sean Anderson wrote:
> On 6/20/22 2:21 PM, Krzysztof Kozlowski wrote:
>>>>> - samsung_usb2_phy_config in drivers/phy/samsung/
>>>>
>>>> This one is a good example - where do you see there compatibles with
>>>> arbitrary numbers attached?
>>>
>>> samsung_usb2_phy_of_match in drivers/phy/samsung/phy-samsung-usb2.c
>>>
>>> There is a different compatible for each SoC variant. Each compatible selects a struct
>>> containing
>>>
>>> - A list of phys, each with custom power on and off functions
>>> - A function which converts a rate to an arbitrary value to program into a register
>>>
>>> This is further documented in Documentation/driver-api/phy/samsung-usb2.rst
>>
>> Exactly, please follow this approach. Compatible is per different
>> device, e.g. different SoC variant. Of course you could have different
>> devices on same SoC, but "1" and "2" are not different devices.
> 
> (in this case they are)

In a meaning of descriptive compatible - it's not.

>>>
>>> - For some SerDes on the same SoC, these fields are reserved
>>
>> That all sounds like quite different devices, which indeed usually is
>> described with different compatibles. Still "xxx-1" and "xxx-2" are not
>> valid compatibles. You need to come with some more reasonable name
>> describing them. Maybe the block has revision or different model/vendor.
> 
> There is none AFAIK. Maybe someone from NXP can comment (since there are many
> undocumented registers).

Maybe it's also possible to invent some reasonable name based on
protocols supported? If nothing comes then please add a one-liner
comment explaining logic behind 1/2 suffix.

>>> The compatibles suggested were "fsl,ls1046-serdes-1" and -2. As noted above, these are separate
>>> devices which, while having many similarities, have different register layouts and protocol
>>> support. They are *not* 100% compatible with each other. Would you require that clock drivers
>>> for different SoCs use the same compatibles just because they had the same registers, even though
>>> the clocks themselves had different functions and hierarchy?
>>
>> You miss the point. Clock controllers on same SoC have different names
>> used in compatibles. We do not describe them as "vendor,aa-clk-1" and
>> "vendor,aa-clk-2".
>>
>> Come with proper naming and entire discussion might be not valid
>> (although with not perfect naming Rob might come with questions). I
>> cannot propose the name because I don't know these hardware blocks and I
>> do not have access to datasheet.
>>
>> Other way, if any reasonable naming is not possible, could be also to
>> describe the meaning of "-1" suffix, e.g. that it does not mean some
>> index but a variant from specification.
> 
> The documentation refers to these devices as "SerDes1", "SerDes2", etc.
> 
> Wold you prefer something like
> 
> serdes0: phy@1ea0000 {
> 	compatible = "fsl,ls1046a-serdes";
> 	variant = <0>;
> };

No, it's the same problem, just embeds compatible in different property.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AAE0C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 14 Mar 2022 08:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fncotUdwQfn3vD8ZBQ3aMz5ICzXkGtCNoG6ENqzT6Mk=; b=DivHNaLvGCI/aj
	EEpLTb/k49bc9N9z6A7ZIy3ZGkdWzClxFkGcJzxCOVKciEDdZl7CR57xJuJMlxiKJtwFVwQA1lCOv
	i3x9DuqzmtYrj2rMFSVvSzs+KZ5zg8neHUP2Xx9TRIJkO1D+CzEbii9PCtqR7kL93gqbthCVPlwr2
	/Bw61SCLrRiFJ5g5JR9ihU4bhej7BOkwjMBJlOLYIP7/aylokuzgqBY+YtLmfvekPN5zXcziSyhgC
	Ec2hTSlHb6x2ST81ochem/es01ye8fNQrEatBbmP5AyHV3V8tAnk+Omao3GwjmrHjvYebTUXctKHV
	qWLvQZ7Q+u2+Z5bvOu3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTgEV-004Y8q-4P; Mon, 14 Mar 2022 08:39:15 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTgBT-004Wrb-OF
 for linux-phy@lists.infradead.org; Mon, 14 Mar 2022 08:36:11 +0000
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 8EB1A3F4BE
 for <linux-phy@lists.infradead.org>; Mon, 14 Mar 2022 08:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1647246965;
 bh=eKjUtd7ByB5BRtEYaGOQ6lKKOtW7nvc1QYzmEKc7RCs=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=P+i4epapW0od3nVrJed4wQwW8DkwOtnnJiauN+RJRoXnFc3SqO7GSEvQfPx2MAOLW
 NOp1OJda3JpMldAoVVfYCA26cliQ5cZ/O/LJbQ00KfTsyd+ym4Xp2FleRdiVeAauEs
 sICEcenK4yUUnJg0HwPWlf9blQLFeDA/etnbogY4a7hV/cO16FMS6Z9Mn4/Kb3DOHC
 oCva5oFdGCLa0GMrFEfTG+tkkswHRw2Ma3w6QrXbzUHHRR9KisscbtBoYAgXr9qUNK
 YC2eKpsn1qHDb6pH6nfSXu2ugSuFMW3uC8ClnT3voiLRKGjygdUv03Tuf6ecEVG9u3
 irtVxWPvIoPBQ==
Received: by mail-ed1-f70.google.com with SMTP id
 11-20020a50874b000000b004186b7c1252so2467851edv.3
 for <linux-phy@lists.infradead.org>; Mon, 14 Mar 2022 01:36:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=eKjUtd7ByB5BRtEYaGOQ6lKKOtW7nvc1QYzmEKc7RCs=;
 b=St5xqyh5FJluSczD1buiQr9groIrPS3fAvsPmZGiYlJ61kq3k+mYsUqyrka/CJ6NDl
 UK59pwEzOinnOy+djSu313kAVwI6Jy21ZHCl3Gixpwyt0otJTGElroHP5iOZIn0ECQJ1
 bjP6Pe4bVXW15/BQb7TrdPvYCguPOpLucuTQ1xA1zzp+13IL75jU3/+NK49cqo8boXPR
 tZvqGR8QPZBRFfEzT9YBWrO5gSRXaIaGJfsY0hj+gM835//tCGh21iJYbaIvpSu7DAWC
 s6ynxuK2X1hVGr9NlnvLClc2JgeZ4qOrdIBfzCkx6I+T/Mzkc0xYN5LCtbRI8j2V7wW8
 /HsQ==
X-Gm-Message-State: AOAM532E5xVTzKUbSQfLUBYk7kqfO/w9cASQqTH95aoui4TdsI0anRTj
 ALENb2VLFuZ0uwgBsdQdZod+BjSIDW54aTCn8uKEcvelZvnVREDLJiHNNhSaYyAwo+MmZb0Yw1W
 t4ksXJYcDpLSBbvLZi53gh3jgWPAnwfRUDq0oCxQv6e4=
X-Received: by 2002:aa7:dbd6:0:b0:408:4a31:97a5 with SMTP id
 v22-20020aa7dbd6000000b004084a3197a5mr19814958edt.186.1647246964837; 
 Mon, 14 Mar 2022 01:36:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyZkFoJYS5BSY8Z5fUfZgL7U2bI7mlWLX45AeUH2LOa4L1NioNNryVlI/34QqHMTfIflzb2bw==
X-Received: by 2002:aa7:dbd6:0:b0:408:4a31:97a5 with SMTP id
 v22-20020aa7dbd6000000b004084a3197a5mr19814933edt.186.1647246964581; 
 Mon, 14 Mar 2022 01:36:04 -0700 (PDT)
Received: from [192.168.0.152] (xdsl-188-155-174-239.adslplus.ch.
 [188.155.174.239]) by smtp.googlemail.com with ESMTPSA id
 qt22-20020a170906ecf600b006da6ef9b820sm6500282ejb.112.2022.03.14.01.36.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Mar 2022 01:36:04 -0700 (PDT)
Message-ID: <c88396f4-4cfe-d375-1dcd-b34a6496cb06@canonical.com>
Date: Mon, 14 Mar 2022 09:36:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom, usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
To: Pavan Kondeti <quic_pkondeti@quicinc.com>
Cc: Sandeep Maheswaram <quic_c_sanm@quicinc.com>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <wcheng@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Doug Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, quic_ppratap@quicinc.com,
 quic_kriskura@quicinc.com
References: <1646288011-32242-1-git-send-email-quic_c_sanm@quicinc.com>
 <1646288011-32242-2-git-send-email-quic_c_sanm@quicinc.com>
 <b793195b-1d3d-63b2-19d2-72ae2aec8c0f@canonical.com>
 <20220314032952.GA27561@hu-pkondeti-hyd.qualcomm.com>
 <f1621a67-a0ff-f111-c4da-9401924e7f4a@canonical.com>
 <20220314081613.GA28402@hu-pkondeti-hyd.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220314081613.GA28402@hu-pkondeti-hyd.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_013608_122305_34194F05 
X-CRM114-Status: GOOD (  30.25  )
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

On 14/03/2022 09:16, Pavan Kondeti wrote:
> Hi Krzysztof,
> 
> On Mon, Mar 14, 2022 at 08:39:57AM +0100, Krzysztof Kozlowski wrote:
>> On 14/03/2022 04:29, Pavan Kondeti wrote:
>>> Hi Krzysztof,
>>>
>>> On Thu, Mar 03, 2022 at 04:59:22PM +0100, Krzysztof Kozlowski wrote:
>>>> On 03/03/2022 07:13, Sandeep Maheswaram wrote:
>>>>> Add device tree bindings for SNPS phy tuning parameters.
>>>>>
>>>>> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
>>>>> ---
>>>>>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 125 +++++++++++++++++++++
>>>>>  1 file changed, 125 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>>>>> index 0dfe691..227c097 100644
>>>>> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>>>>> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>>>>> @@ -50,6 +50,131 @@ properties:
>>>>>    vdda33-supply:
>>>>>      description: phandle to the regulator 3.3V supply node.
>>>>>  
>>>>> +  qcom,hs-disconnect:
>>>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>>>> +    description:
>>>>> +      This adjusts the voltage level for the threshold used to
>>>>> +      detect a disconnect event at the host. Possible values are.
>>>>
>>>> ':', instead of full stop.
>>>>
>>>>> +      7 -> +21.56%
>>>>> +      6 -> +17.43%
>>>>> +      5 -> +13.32%
>>>>> +      4 -> +9.73%
>>>>> +      3 -> +6.3
>>>>> +      2 -> +3.17%
>>>>> +      1 -> 0, Design default%
>>>>
>>>> Use "default:" instead. Here and in other places.
>>>>
>>>>> +      0 -> -2.72%
>>>>
>>>> In current form this should be an enum... but actually current form is
>>>> wrong. You should not store register values in DT. What if next version
>>>> of hardware has a different meaning of these values?
>>>>
>>>> Instead, you should store here meaningful values, not register values.
>>>>
>>>
>>> Thanks for the feedback.
>>>
>>> The values in % really makes the tuning easy. People look at the eye diagram
>>> and decided whether to increase/decrease the margin. The absolute values
>>> may not be that useful. All we need is an "adjustment" here. The databook
>>> it self does not give any absolute values.
>>>
>>> I agree to the "enum" suggestion which we have been following for the
>>> qusb2 driver already. 
>>>
>>> The values have not changed in the last 5 years for this hardware block, so
>>> defining enums for the % values would be really helpful. 
>>
>> I did not say you cannot store here percentages. Quite opposite - store
>> here the percentages. Just do not store register value. No. Please read
>> my comment again - meaningful values are needed.
>>
> 
> IIUC, you are asking us to come up with a meaningful values to encode the
> percentage values. However, all the % increments are not linear, so we can't
> come up with {min, max} scheme. Lets take an example of hostdisconnect
> threshold.
> 
> As per the data book,
> 
> +      7 -> +21.56%
> +      6 -> +17.43%
> +      5 -> +13.32%
> +      4 -> +9.73%
> +      3 -> +6.3
> +      2 -> +3.17%
> +      1 -> 0, Design default%
> +      0 -> -2.72%
> 
> so how do we give meaningful values here? Does the below scheme make sense
> to you?

By "meaningful value" I mean something which has a understandable
meaning to reader of this code or to hardware designer. For example
percentage values or some units (ms, ns, Hz, mA, mV). The value used in
register is not meaningful in that way to us because it has a meaning
only to the hardware block. Storing register values is more difficult to
read later, non-portable and non-scalable.

> 
> #define QCOM_SNPS_FEMTO_HS_DISCONNECT_NEG_2P72	(-272)
> #define QCOM_SNPS_FEMTO_HS_DISCONNECT_DEFAULT	0
> #define QCOM_SNPS_FEMTO_HS_DISCONNECT_3P17	317
> #define QCOM_SNPS_FEMTO_HS_DISCONNECT_6P3	63

This is some define in driver, does not look related to bindings.

> In the driver, we have a mapping (which can be per SoC if required in future)
> that takes these values and convert to the correct values for a given
> register.

You focus on driver but I am talking here only about bindings.

What could be the meaningful value? Percentage could work. You have
there a negative value, so I wonder what type of percentage is it? What
is the formula?

Your defines above look absolute, so maybe encode there absolute uV value?

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

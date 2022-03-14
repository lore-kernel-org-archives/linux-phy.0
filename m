Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5D98C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 14 Mar 2022 07:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VVGPQyrLqpSeVhLnYgSUjKVZd4tb/0+qss3AP6koF+o=; b=VPRawjbNOJZV9u
	PkSWvmZCzSQr7FgVRYv//bOz/UEY5penHpQY8Rm9ud0HptVxr0Gl5+KrZPtmd11YpU1DXhoWSXf77
	9sD5Ns71R9pu6panZNiamEQ52x8ay660B7dy7jVc+W/KVR89Atx9hoqgs/jqZ0u/Ru5EyHRH5nSdj
	8sVp50CGO5T8x64NB6oq5fUArUGRCrclLcMnGnpPPfg0o37/zCXoCGkyelylOurHSKphTpDy/bC59
	OYdzUBmMkFsP2UhTM66oKW7QonWBxcDa1j07DX2ClG6RYqqVjXytG1bfv1oS8czy2lrNvgfLvOz0p
	X1uDUEanROyWAs5psxpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTfMC-004Bxk-9s; Mon, 14 Mar 2022 07:43:08 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTfJI-004ABR-SX
 for linux-phy@lists.infradead.org; Mon, 14 Mar 2022 07:40:10 +0000
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E9AF43F799
 for <linux-phy@lists.infradead.org>; Mon, 14 Mar 2022 07:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1647243599;
 bh=vL1DMH5mB/xA+saWf/LfgxjeoWUu89778nGRlXG7H8w=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=vkY7UYn1VpZTlc13OexejzxRcJidxHuxZcYSCIZ4rBkwIbfCp8W9Fac8zeH0+qf09
 6VJoXdx2kmR8pW4jbpRvJv7iKl3vRn4bd7WfeI3/me2fYQLYbgKRowSaVQ7eC1QwMu
 lxLbzxvBKv2N2/awX6biWzqNC16Mc5pUKNMyTiFKt0c+IoerTtbP+L6AO0w5qYPokD
 vw10JRygSHFbvLT/u9WmbBFzNhpj04hUslDEiysAZirg2UZzwzHWkHTPxzv0xqdWzf
 EeKitifd7BLZ5i78cJsJKLTPS+JM6/4XkKLwXmiBt/16ebLOWtMF8XXeA2sUqX4ofc
 Czpbrj+937VkQ==
Received: by mail-ej1-f71.google.com with SMTP id
 gz16-20020a170907a05000b006db8b2baa10so5105789ejc.1
 for <linux-phy@lists.infradead.org>; Mon, 14 Mar 2022 00:39:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=vL1DMH5mB/xA+saWf/LfgxjeoWUu89778nGRlXG7H8w=;
 b=78Dinu6qbwF4jGD73SDX7YlcdV3OtEv5M4aRarptVyhOZ+FyzBJT0tIO7cmh9YRHxB
 d+Iqp6zc1cUgpFAsMJ3CHqzaq9joaml/t+n3JJaU9lQQUygI+RrVdUE/saTTlIqt3knq
 9MrpGlYVhqsdj2Q3WRFrRPuBB5l8jUgxwwqo9O8Rn0slPqrU+u3tgYKr1EsE7KNoVNZ2
 ieJvykgfzaOHMkG8AfvU+atZqVfbJCR+i7zch5yjaBt0f4csRMwi47pYogaBTWQGKdij
 fwyI6JROCukUvmWhtgrFyCUCR5aXtxKXr0I+bkaD3MKD0eKBCouzkj3zjg6P7mM3BCgq
 Z/QQ==
X-Gm-Message-State: AOAM532Frz6B//v9lWRAaCXBjYAbnERXvj0NNd9uFsU6U7FPxx4o1d9B
 obn4faOmjcRzCALn6a76AF6CNk4018oVQ5fxqYJIDBB42+biqeoUGesgSO4d5m9oK9KSEpmNVZo
 ckdjWvWhau5niVAWF9YAzy5sv1mIkf7g7vNhJ5L0MJZM=
X-Received: by 2002:a17:907:96a0:b0:6db:a7d5:166a with SMTP id
 hd32-20020a17090796a000b006dba7d5166amr11292887ejc.725.1647243599458; 
 Mon, 14 Mar 2022 00:39:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyPxGLGvg6NYB7X0d8qa+t78Eu3+toeF4mQVyTiq0YuLnZWWKsaPeVCabDXp2g1VLgogEky+A==
X-Received: by 2002:a17:907:96a0:b0:6db:a7d5:166a with SMTP id
 hd32-20020a17090796a000b006dba7d5166amr11292864ejc.725.1647243599250; 
 Mon, 14 Mar 2022 00:39:59 -0700 (PDT)
Received: from [192.168.0.152] (xdsl-188-155-174-239.adslplus.ch.
 [188.155.174.239]) by smtp.googlemail.com with ESMTPSA id
 a102-20020a509eef000000b0041614c8f79asm7552126edf.88.2022.03.14.00.39.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Mar 2022 00:39:58 -0700 (PDT)
Message-ID: <f1621a67-a0ff-f111-c4da-9401924e7f4a@canonical.com>
Date: Mon, 14 Mar 2022 08:39:57 +0100
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
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220314032952.GA27561@hu-pkondeti-hyd.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_004009_132843_22300026 
X-CRM114-Status: GOOD (  22.77  )
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

On 14/03/2022 04:29, Pavan Kondeti wrote:
> Hi Krzysztof,
> 
> On Thu, Mar 03, 2022 at 04:59:22PM +0100, Krzysztof Kozlowski wrote:
>> On 03/03/2022 07:13, Sandeep Maheswaram wrote:
>>> Add device tree bindings for SNPS phy tuning parameters.
>>>
>>> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
>>> ---
>>>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 125 +++++++++++++++++++++
>>>  1 file changed, 125 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>>> index 0dfe691..227c097 100644
>>> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
>>> @@ -50,6 +50,131 @@ properties:
>>>    vdda33-supply:
>>>      description: phandle to the regulator 3.3V supply node.
>>>  
>>> +  qcom,hs-disconnect:
>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>> +    description:
>>> +      This adjusts the voltage level for the threshold used to
>>> +      detect a disconnect event at the host. Possible values are.
>>
>> ':', instead of full stop.
>>
>>> +      7 -> +21.56%
>>> +      6 -> +17.43%
>>> +      5 -> +13.32%
>>> +      4 -> +9.73%
>>> +      3 -> +6.3
>>> +      2 -> +3.17%
>>> +      1 -> 0, Design default%
>>
>> Use "default:" instead. Here and in other places.
>>
>>> +      0 -> -2.72%
>>
>> In current form this should be an enum... but actually current form is
>> wrong. You should not store register values in DT. What if next version
>> of hardware has a different meaning of these values?
>>
>> Instead, you should store here meaningful values, not register values.
>>
> 
> Thanks for the feedback.
> 
> The values in % really makes the tuning easy. People look at the eye diagram
> and decided whether to increase/decrease the margin. The absolute values
> may not be that useful. All we need is an "adjustment" here. The databook
> it self does not give any absolute values.
> 
> I agree to the "enum" suggestion which we have been following for the
> qusb2 driver already. 
> 
> The values have not changed in the last 5 years for this hardware block, so
> defining enums for the % values would be really helpful. 

I did not say you cannot store here percentages. Quite opposite - store
here the percentages. Just do not store register value. No. Please read
my comment again - meaningful values are needed.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

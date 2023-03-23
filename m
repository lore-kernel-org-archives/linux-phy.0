Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7FFBC6FD1D
	for <linux-phy@archiver.kernel.org>; Thu, 23 Mar 2023 06:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fOEhJwvJTgasldVfRIt3zqLbOsmIcdxME6i7sH9S91E=; b=QPjwOxSFfthAR4
	4ALiXa0OOkvP17Pgu0mn2Mq2wAACert629N8XzYgjTWq2QJJC8D9vrjWruoEp4BVv8lNO0fIykaU2
	UT4pFZL8NzXdhz+kpVyFxXx/RJEsQzIOQi/gvMp6YX2Hf5J/yWB56t9Vb1djBHNNaw4qZnRX/rXZr
	yHVphziwHaeSuENgIzozkFsD4zz157uK4CwkZzggxMyZ/yzszQRTkkNmpsp9jDyYdk6uxvXz8jy5f
	isDdVdpbqNvpyd+qR/DnvhT7tt9K/LPqxLjwB/hojeu0ys8PImI/MTS2UFECNpBRISxlFL/Lvt6oB
	DL+LH879FsarO5ONFXxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfEep-0011Vr-0x;
	Thu, 23 Mar 2023 06:42:43 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfEem-0011V6-2X
	for linux-phy@lists.infradead.org;
	Thu, 23 Mar 2023 06:42:42 +0000
Received: by mail-ed1-x529.google.com with SMTP id i5so35348339eda.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Mar 2023 23:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679553759;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8N/XaeLLwIkdvDZKm8o78DXnGxcOUGR0NMOEEQz35z0=;
        b=lDxcvr5ATCpedu3VGnpb8banpvgsvL4WHvd3fdqEdDJDsZqHDcg7SCHK7jD3qBRH0Z
         3HZQvHnKMh+aweQcSYtBE7N/T+2qRPPNQ2KoND9LUsWyY+UL9e7xS+Ts0rZUocfTpOwA
         FkBt8c5WRvUCArdZpRQ7hePy/qmHZARcvgqEsZpUJZFTprDnMS316yoqY1gVWx0j4jY2
         ciR/wP0ABBT71+u6PwJsujNBXS2VUfFL9IWABhqrMsWho6sUaXQv7bAHM36a9+YF7+Bq
         N6uE4wU5DM9P22SquidRpNNCkjRIG86OMQQfhkL8xvSSjOGWHnxSkMehQWLNTgXvZVpG
         8meA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679553759;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8N/XaeLLwIkdvDZKm8o78DXnGxcOUGR0NMOEEQz35z0=;
        b=GparpTENCaoOHf8yI+AE/R3QIgTZIsujkM2tZn941CcxpXfozLUisUXPLzVRc2keLg
         reIYXfR/L8+i705/GQfx+aLRerdx1vQ8JT92NAoBd5I8hoIMcogT3d7pdXgDUK/m6S8X
         F/im3FeH4PW3LGMjvo4saRQg398icXgKpZykDMtBqLhbFH+Lio7/9NFDoJO0On8Fe0zC
         qhuT1ahS/pHAyVovSrQzqfuEyG0yaNsP7heQtj1nQsrwcZ61gJTGHOUEkvf3wKEkbYcw
         NFk4pxCQJlp0RQ+ucTYpMf3i1f3RTOm9p8/2ZWuYgLNPzMurFA5eGSukAnKk53+Yc0Tb
         qJYg==
X-Gm-Message-State: AO0yUKVH+X4oD9WneKU0+bzKKIppD/i+pAeNEQzgGw37lveV2WSJi8zE
	gNmKoezc2++kKXhbkeGItbZP9Q==
X-Google-Smtp-Source: AK7set+yg1lsxvSZGJlZeaAPDUcWbsIyd9m6BF2xr2YnwB6qRVho+nRzalX5J6ERkOZevu0PVgHs2A==
X-Received: by 2002:a17:906:804e:b0:8af:4120:63a8 with SMTP id x14-20020a170906804e00b008af412063a8mr9388515ejw.68.1679553759082;
        Wed, 22 Mar 2023 23:42:39 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a665:ed1e:3966:c991? ([2a02:810d:15c0:828:a665:ed1e:3966:c991])
        by smtp.gmail.com with ESMTPSA id z1-20020a1709064e0100b00931baabe36csm8146329eju.63.2023.03.22.23.42.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 23:42:38 -0700 (PDT)
Message-ID: <a8c3f324-0231-2180-8464-a3bfc663f743@linaro.org>
Date: Thu, 23 Mar 2023 07:42:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 2/8] dt-bindings: phy: qcom,qmp-usb: Add IPQ9574 USB3
 PHY
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
 vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-clk@vger.kernel.org
References: <cover.1679479634.git.quic_varada@quicinc.com>
 <e34d8eddc1dda8bb0ff840a7dd18ca4dd6c62d22.1679479634.git.quic_varada@quicinc.com>
 <c52a329d-8683-de82-9b55-209b99ac36c0@linaro.org>
 <20230323063705.GA19800@varda-linux.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230323063705.GA19800@varda-linux.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_234240_828907_C9DE9482 
X-CRM114-Status: GOOD (  15.16  )
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

On 23/03/2023 07:37, Varadarajan Narayanan wrote:
> On Wed, Mar 22, 2023 at 10:52:44PM +0100, Krzysztof Kozlowski wrote:
>> On 22/03/2023 11:44, Varadarajan Narayanan wrote:
>>> Add dt-bindings for USB3 PHY found on Qualcomm IPQ9574
>>>
>>> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
>>>
>>> ---
>>>  Changes in v2:
>>> 	- Updated sections missed in previous patch
>>> ---
>>>  .../bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml    | 22 ++++++++++++++++++++++
>>>  1 file changed, 22 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
>>> index e81a382..beae44c 100644
>>> --- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
>>> @@ -21,6 +21,7 @@ properties:
>>>      enum:
>>>        - qcom,ipq6018-qmp-usb3-phy
>>>        - qcom,ipq8074-qmp-usb3-phy
>>> +      - qcom,ipq9574-qmp-usb3-phy
>>>        - qcom,msm8996-qmp-usb3-phy
>>>        - qcom,msm8998-qmp-usb3-phy
>>>        - qcom,qcm2290-qmp-usb3-phy
>>> @@ -204,6 +205,27 @@ allOf:
>>>          compatible:
>>>            contains:
>>>              enum:
>>> +              - qcom,ipq9574-qmp-usb3-phy
>>> +    then:
>>> +      properties:
>>> +        clocks:
>>> +          maxItems: 2
>>
>> toplevel defines minItems as 3, so are you sure this works? Did you test it?
> 
> Yes, this is tested. Able to do I/O.

Bindings do not impact on whether you can or can not do IO, so I meant
tested as DTS is compliant with bindings. I assume it was not, so please
test bindings and DTS before sending new version.
see Documentation/devicetree/bindings/writing-schema.rst for instructions

> We only have 2 items. Is it ok change the minItems to 2?

Yes, because you must update top level (and maybe other) constraints to
correct ones. Just test the code...


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

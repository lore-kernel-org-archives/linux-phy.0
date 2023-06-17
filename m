Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 869DEEB64DB
	for <linux-phy@archiver.kernel.org>; Sat, 17 Jun 2023 08:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MFBxyOyRZyGZZFPrEYn7tJdKQgv7VETcLEyCpSZOT2M=; b=IYziFDPqjdtSMV
	ZK8bcGPSzpORFmNLt8hKObn2lYjPQIjgPdIX7/i5XVpeUo4kSgpgfMTkqcseEfybXay+9BitKLZeo
	HFRxv9QdeWZD768LF0LcO3xhvEabtmQFdAxdmcN7mcomJ9im7WmdYmV0fMjVwTlfqm1mKornxdGcK
	8uMWipCyBapqDEBFPNp5nGeD/JTLFGMYDoQJc2BYrOt7Cd97pmGPTdOutJQq6Z2/GM0wmoq+qbz6y
	342m5SpKB1q73zsmKMsJGmaHZwu4BQ0M0S0hm0UYVr5sq2Rt+C3el8T2ha9A61vtVnQnq3PBmkfJv
	AcKVU7EsmwkyNRqpd9dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qARc4-00379E-0X;
	Sat, 17 Jun 2023 08:48:52 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qARbz-00378E-23
	for linux-phy@lists.infradead.org;
	Sat, 17 Jun 2023 08:48:49 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-51a2661614cso2199441a12.2
        for <linux-phy@lists.infradead.org>; Sat, 17 Jun 2023 01:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686991725; x=1689583725;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9v9IMhMYANhGUwezLEP1LlL4XT7NdaZ2AILcbGscvfs=;
        b=f7b42c9PMsOBSkpJ9BbkAwiJsfDUkyVlZ+S2LGTmtnk6tvWWjubyHvGU8ecZu3PFT1
         ApXo/v+Fl6S3V+ooOvBsn256Cv49dnEKkb072m4AuIavr8BWkheII2u6lx0s3ccSFAma
         zM5k3myH9oM9k2luWy//WuZQZZ+ai5bpgGC6GYyVwqIXPX8Ypsz6WkCufOVTeFtbq3UI
         HHLwW8EAk7R/hkqnNgtXIz+vLMqVyTVy9KfjexhVtTG5bDAwh5D1be3NqMRRfFS6JMgJ
         Ffx5Hyb6uVS4Mzojv2NrMbt83IzXNmdbgXErrtsI7Gd2E3cmaux63uScJlPRY0tLcYVj
         jUgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686991725; x=1689583725;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9v9IMhMYANhGUwezLEP1LlL4XT7NdaZ2AILcbGscvfs=;
        b=EMegtIQUr5V4klKrnv6M10ZMPOqm25myuQYuubr99JhpM2yL2PmctLp7aozuR6J4W7
         /l8MUmuBAKe7mtzIgAkihGs/Muiwonr7MhUxGw90yxtSLX1qGYrn9PdQZuG9GNlCFaaF
         Ak7tpeejcxkVk45V5X+RDsaL/to/EFXqzN6h746WS6nJWkeqjKIGcJEWjQOYQ1xyxnbU
         QTK8cfGJtW1/R9YqMJy7fquF69iPPWvgoURCfoszJ0+DVcXXm5OcbMEj+jaom4ZIICoG
         RcnLO4wRhWW7WAfbXkKzehsPB1/+7c2KUBpatS0Ko0hMDgk9Msd0I86sIgcsSQcWRKF/
         rMgA==
X-Gm-Message-State: AC+VfDxdbCH0mBV0pwW7W2g5XTpDtofElrxwJyzjuH9LvqLr48IRK9Mv
	g5cDQPiYT+Zy18NkiDzaGsV1fw==
X-Google-Smtp-Source: ACHHUZ7Kpo4IrOBQWBZ6pUx87P+qfVIKZIR9we2zLQmk/Rued5SQQmn3eIdab16cMTZ1bsaToXLkLw==
X-Received: by 2002:a17:906:da87:b0:982:870f:9e8f with SMTP id xh7-20020a170906da8700b00982870f9e8fmr3843576ejb.62.1686991725276;
        Sat, 17 Jun 2023 01:48:45 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id c21-20020a170906341500b00985bdb7dd5fsm1965918ejb.201.2023.06.17.01.48.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jun 2023 01:48:44 -0700 (PDT)
Message-ID: <aca54f67-cc09-ff4f-93ca-6973d153db2c@linaro.org>
Date: Sat, 17 Jun 2023 10:48:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 2/9] dt-bindings: phy: qcom,m31: Document qcom,m31 USB phy
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
 vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
 arnd@arndb.de, geert+renesas@glider.be, neil.armstrong@linaro.org,
 nfraprado@collabora.com, broonie@kernel.org, rafal@milecki.pl,
 quic_srichara@quicinc.com, quic_varada@quicinc.org, quic_wcheng@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
References: <cover.1686126439.git.quic_varada@quicinc.com>
 <14f60578e2935c0844537eab162af3afa52ffe39.1686126439.git.quic_varada@quicinc.com>
 <98960024-7dbc-91a3-75de-90b529637916@linaro.org>
 <20230615052746.GB22186@varda-linux.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230615052746.GB22186@varda-linux.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_014847_701578_0BB1E8DB 
X-CRM114-Status: GOOD (  17.56  )
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

On 15/06/2023 07:27, Varadarajan Narayanan wrote:
>>> +          - enum:
>>> +              - qcom,m31-usb-hsphy
>>
>> I am confused what's this. If m31 is coming from some IP block provider,
>> then you are using wrong vendor prefix.
>> https://www.m31tech.com/download_file/M31_USB.pdf
>>
>>
>>> +              - qcom,ipq5332-m31-usb-hsphy
>>
>> This confuses me even more. IPQ m31?
> 
> Will change this to m31,usb-hsphy and m31,ipq5332-usb-hsphy respectively.
> Will that be acceptable?

m31,ipq5332 seems wrong, as m31 did not create ipq5332. Does the m31
device have some name/version/model? If it is not really known, then I
would just propose to go with qcom,ipq5332-usb-hsphy.

Skip generic compatible ("usb-hsphy") entirely.

And then we have... existing bindings qcom,usb-hs-phy.yaml. Don't create
something similar with difference in the hyphen. Just use device
specific compatible thus device specific filename.

> 
>>> +
>>> +  reg:
>>> +    description:
>>> +      Offset and length of the M31 PHY register set
>>
>> Drop description, obvious.
> 
> Ok.
> 
>>> +    maxItems: 2
>>> +
>>> +  reg-names:
>>> +    items:
>>> +      - const: m31usb_phy_base
>>> +      - const: qscratch_base
>>
>> Drop "_base" from both.
> 
> Ok. Will drop qscratch_base. This is in the controller space.
> Should not come here.

Then drop reg-names entirely.

> 
>>> +
>>> +  phy_type:
>>> +    oneOf:
>>> +      - items:
>>> +          - enum:
>>> +              - utmi
>>> +              - ulpi
>>
>> This does not belong to phy, but to USB node.
> 
> This is used by the driver to set a bit during phy init. Hence
> have it as a replication of the USB node's entry. If this is not
> permissible, is there some way to get this from the USB node,
> or any other alternative mechanism?

Shouldn't USB controller choose what type of PHY type it wants?

> 
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
>>> +    hs_m31phy_0: hs_m31phy@5b00 {
>>
>> Node names should be generic. See also explanation and list of examples
>> in DT specification:
>> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
>>
>> Also, no underscores in node names.
> 
> Will change this as usbphy0:hs_m31phy@7b000

This does not solve my comments. I did not write "label" but "node name".

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

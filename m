Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 267A8C5475B
	for <linux-phy@archiver.kernel.org>; Wed,  6 Mar 2024 07:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krq+j/Ip0TEy9UQUzZsGwBk2oS+eDIhAoZZ9wqVOzAI=; b=RsvKUn8DgoOEIH
	ta0MN5CFxcEWPzfCxh/70rYPwj2yCIsluX/TUTNITli8fadZid/ucQDNwlgiKvgxjoNvvMGq/+q8x
	V/Z60sBu9mnz700fg3MqZPI2AyXDGweVgLGYd+8pZ8IF7voQiuumGzC8g5zbuQj1rpTaqOIfOZuXY
	+Vlkmx4trOhr0Um6DUsvpVL3g7wc8L7C9w8xaixAVaBqPZoGgIoAtCjlH45L6qQB16KVEgdJqhtqS
	SeIQGlshnPwh6NuEbj9PVT57A4Ceo4ajWT3PqBBNhkP1OieNj91vsDqaZBUEpZUlz9vIApMvAj76j
	akUNR0X013H0Pj0ecIMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhlKi-0000000GdS4-3RBt;
	Wed, 06 Mar 2024 07:04:56 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhlKg-0000000GdRd-1pN3
	for linux-phy@lists.infradead.org;
	Wed, 06 Mar 2024 07:04:56 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a45bb2a9c20so30005966b.0
        for <linux-phy@lists.infradead.org>; Tue, 05 Mar 2024 23:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709708692; x=1710313492; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f6rPzTQb/zYSyfTD4qmFp61CQrHKbdmvC0n6DjYmcOQ=;
        b=GigJxkjnO0MWvSPR9Qgi1++6++x6BXYLWDdvVaI/JVTpC1jmpDc+2hczYuVB9W9YoM
         rSAjum8gHj4ExdFMCU9iE28n9oFxu4GlwGC8pqbamUiNrigh31ku52vAnnDySb7NbTX+
         Q3KUI7XlSQ+o1MiqyuRZqXtvqL4xg7ixZnfYokc5rZV28I+q8BfLf9pwGlsYudg22wVv
         D5exZ8zT7QfjrZQpw+PF1Yv78fkpf+qPf2s/ZILR9c47aI+llSNozBo9sBtgEjkQYLBr
         IutVGeC4rgPH1ddPUOElw7hLZ0q9jWEbDlNNpkRYQFlf4S77ob60lltIaMGb7DBhPgrT
         J9lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709708692; x=1710313492;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f6rPzTQb/zYSyfTD4qmFp61CQrHKbdmvC0n6DjYmcOQ=;
        b=e/J5CEfjqAZYMZrCC4gcwTs/q/HO7vF4YtMTqmS3/GC8DPenKxYti7/ssnkaxsbJCH
         oP/sERreXkbYAIR4QBycyPWmYe30Yt/u0rdlgjm9MPvW7XdvaIUjqfdiVPNKqwXTTTS1
         Nf0KBwO3h9VsFa+EL1Wmxl6Ch0oZM3B49ZeNdZ55wU49kh729Iufy7aFJJfBUwGsNyaj
         8BQDFIZI+UJTSBhTwk7OdXC4ECguMGk0IWKxDVvoahskXvI18EynCoHqE481P0WvegL+
         P8RofoziCojDxc6w+r2aNKoQyiootNn2G+DVcet57xZPJfmun8oJJJMQKhQnIEKOq2gy
         tE3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWHwigU07mQd2cCCjsblrvyxhNtbaONUp/bVIsNJWeqDfFB3UYII1r5naR7tOT6X9ILD6+5SSBiYu715WW1itQF3rL4AsJg+Y/TpR3m0Q==
X-Gm-Message-State: AOJu0YzSxGTiBHm1ZbLwCj1hHUpuSbZlOAZLux8w9MTfgkZVcL+9COCM
	776ClTwCAnukX2XiXKfcuX/oQzi/aEandTzzfgSVUsq7DFYyEPEg/ohrB2RqyzM=
X-Google-Smtp-Source: AGHT+IGCXqeCFGSn+udBEqZtQ2TfpnhXI+hFzNCKDlhN/HxgXKglHMZD0L8XY7qi1m5JeAP9qB/1Vw==
X-Received: by 2002:a17:906:394c:b0:a44:e3d:68a8 with SMTP id g12-20020a170906394c00b00a440e3d68a8mr10243754eje.45.1709708692418;
        Tue, 05 Mar 2024 23:04:52 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id g7-20020a17090670c700b00a45ad52d510sm1128717ejk.139.2024.03.05.23.04.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Mar 2024 23:04:51 -0800 (PST)
Message-ID: <f2b9a9f1-0ede-4c01-9bef-ee497b3191a6@linaro.org>
Date: Wed, 6 Mar 2024 08:04:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 0/3] Enable firmware-managed USB resources on Qcom targets
Content-Language: en-US
To: Sriram Dash <quic_sriramd@quicinc.com>, andersson@kernel.org,
 konrad.dybcio@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, quic_wcheng@quicinc.com,
 Thinh.Nguyen@synopsys.com, p.zabel@pengutronix.de,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, quic_psodagud@quicinc.com,
 quic_nkela@quicinc.com, manivannan.sadhasivam@linaro.org,
 ulf.hansson@linaro.org, sudeep.holla@arm.com, quic_shazhuss@quicinc.com
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
 <4d2501a7-d56d-4736-95d7-41556166859b@linaro.org>
 <1a47c20a-abda-4493-a8f0-ff7b4e144d9c@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <1a47c20a-abda-4493-a8f0-ff7b4e144d9c@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_230454_564508_4665656E 
X-CRM114-Status: GOOD (  14.03  )
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

On 05/03/2024 19:04, Sriram Dash wrote:
> On 3/5/2024 10:42 PM, Krzysztof Kozlowski wrote:
>> On 05/03/2024 17:57, Sriram Dash wrote:
>>> Some target systems allow multiple resources to be managed by firmware.
>>
>> Which? Why this is so vague...
>>
> 
> SA8775 will be using it as pilot. Will include the target name.
> 
>>> On these targets, tasks related to clocks, regulators, resets, and
>>> interconnects can be delegated to the firmware, while the remaining
>>> responsibilities are handled by Linux.
>>>
>>> To support the management of partial resources in Linux and leave the rest
>>> to firmware, multiple power domains are introduced. Each power domain can
>>> manage one or more resources, depending on the specific use case.
>>>
>>> These power domains handle SCMI calls to the firmware, enabling the
>>> activation and deactivation of firmware-managed resources.
>>>
>>> The driver is responsible for managing multiple power domains and
>>> linking them to consumers as needed. Incase there is only single
>>> power domain, it is considered to be a standard GDSC hooked on to
>>> the qcom dt node which is read and assigned to device structure
>>> (by genpd framework) before the driver probe even begins.
>>
>> This will break the ABI. Sorry, come with an ABI stable solution.
>>
> 
> The plan is to include multiple power-domains and fw-managed
> property or similar in the device tree and fw-managed property
> will be deciding if we need some resource management offloaded
> to firmware. So, OS is always in control here. The decision
> making will be done in the drivers. Also, there will be no
> separate vendor hooks.

This does not answer ABI breakage. Also, I don't have a clue what are
"vendor hooks".

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

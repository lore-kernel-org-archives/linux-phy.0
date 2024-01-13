Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73DF6C4707B
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 14:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jSdMIXhArK7K6S4C3y9KKOcXhqGSBYuEebCI3WqjDe8=; b=XhjSdVQ7sKAtHf
	ed6D9x/LckW//wZYmtL7wgjE4jpeuMYOZ6xpGtMNU8xqyk9dLi4K7RQP44W8Sdycil6CruEYSykwN
	bkdhd3X/6Cv+MXLHSNphSIuTw0zPRmSURQE1BnS6GfcJJEQ6Bc7kLpn38uZGGuWCksYTUsil62Rv2
	fm83Jb/7e/FhQNYz0qXzgBaekiXJJqjJHWOk2W5R+uYkvcmv47kf+Y5h/g25Qh2kCZInO4usfRs9P
	PonDG2PsnDx+upr2OuXuxVXJrmydNHpJ7PmkebYdvL6KoERLDJ37QtjcvyhJoT7EOLf55AfEIbPth
	jbZH67d0RC074rsb7V8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOfJx-005Fyq-3B;
	Sat, 13 Jan 2024 14:49:13 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOfJr-005Fxd-2C
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 14:49:12 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a28cc85e6b5so877954066b.1
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 06:49:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705157341; x=1705762141; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fgnakmxn1JjWO2jtB4gPrdw1IguBzIfKLNtH54kDoA0=;
        b=bFpNmHrZuosoJALrNYBwqtYkqRXKh2Yz0vyIlT1Szlixuu9bffsAlA5h/2U07Bb0LF
         ZckHOoKIP9DJ13Dk2d/OXiv9NIDyCeK/Uygyx6GeXFjeD9ORWBEVn9MmA0aU9+9RTN3F
         8KLZaob4xxcxMU1vGeCuh3SruwaYvKNrv+2Rygcc0KbAGFVfDy02b736doppLqo8JjlC
         IJ5gEa/pC0yujTiXXxBkjullBmHoHnpjLLrZLjzasnSkzzTZbIkD9XiyFDPtSbuvkn3n
         L+U7i5fBvWgYw5J6HIV7RgkSh3pc+0pCaN+vO1gRXGgAR5ikSKTidoBWjnEQ1+LmpU7e
         JHMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705157341; x=1705762141;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fgnakmxn1JjWO2jtB4gPrdw1IguBzIfKLNtH54kDoA0=;
        b=j7rw3qlv+Xl+Pee3aZQZ+3NVXT43Szr8wU11rxC+FRo5R13aj2VmKmXr7Rm84WreKl
         Sr2hBVKUAQmnAeuYBuu2W79ghIGaiWvI4GDUy4GH4lqz3bneLLAFA4+V4Iz3zQJknPv4
         X+mMPQ8sDd6nzwXw/SPP8Wf01OmpqqxU8wfQ1LQjIE9Vd6P4HSx69qcWXUJjJUamvBSL
         PBEMRmTpQI7RwUjP6iWklF/WjxeJBUrpVqMmp9u5R4jzecPyO2KR7aNiw9UmTdpD0+Ep
         5f4VYVeIq+8Tn0zluk/lxBfHYgcz1baJ5Yz0r3dkI3XRfTwxbTxVd+yGmCA/bqPteR06
         QlRw==
X-Gm-Message-State: AOJu0YyltCYYEQBZiO7BfMCwvSkydEl0TCDWAte1jtBLecpnLYlBfP8D
	pV2VZh/emVgF08CChMXmNr+fwf6V6ZVEaw==
X-Google-Smtp-Source: AGHT+IFhadScNI3VamFqdSD9giKVOpdAKZCTwgNK/O/5p3BHKj0sntt5VWwmzbXTgL8Gqpk1f3K8cw==
X-Received: by 2002:a17:907:3c09:b0:a28:f771:7343 with SMTP id gh9-20020a1709073c0900b00a28f7717343mr767400ejc.139.1705157341052;
        Sat, 13 Jan 2024 06:49:01 -0800 (PST)
Received: from [192.168.174.25] (178235179017.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.17])
        by smtp.gmail.com with ESMTPSA id w26-20020a17090652da00b00a1c7b20e9e6sm2927363ejn.32.2024.01.13.06.48.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Jan 2024 06:49:00 -0800 (PST)
Message-ID: <7032da8e-dd34-4dce-abdd-c6e32c55753e@linaro.org>
Date: Sat, 13 Jan 2024 15:48:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/13] phy: qcom: qmp-usb: split USB-C PHY driver
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
 <20240113-pmi632-typec-v1-7-de7dfd459353@linaro.org>
 <f6ec016e-7319-42a7-8ca3-06f21a7ab6e5@linaro.org>
 <CAA8EJppOR3z4n4ws_3S9KiCFmHhzPsBiEjWw5Bgy4o+F4deT9w@mail.gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <CAA8EJppOR3z4n4ws_3S9KiCFmHhzPsBiEjWw5Bgy4o+F4deT9w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_064907_785353_5F018451 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
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

On 13.01.2024 15:15, Dmitry Baryshkov wrote:
> On Sat, 13 Jan 2024 at 12:42, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>
>> On 13.01.2024 06:42, Dmitry Baryshkov wrote:
>>> In preparation to adding Type-C handling for MSM8998, QCM2290 and SM6115
>>> platforms, create new QMP USB-C PHY driver by splitting mentioned
>>> platforms to a separate file. In future it will also be extended with
>>> support for the DisplayPort handling. It will also be reused later for
>>> such platforms as SDM660, SM6125, SM6150.
>>>
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> ---
>>
>> [...]
>>
>>
>>> +#include "phy-qcom-qmp.h"
>>> +#include "phy-qcom-qmp-pcs-misc-v3.h"
>>> +
>>> +/* QPHY_SW_RESET bit */
>>> +#define SW_RESET                             BIT(0)
>>> +/* QPHY_POWER_DOWN_CONTROL */
>>> +#define SW_PWRDN                             BIT(0)
>>
>> Most / all of these defines could probably live in a header file.
> 
> For this (and several other comments), see
> https://lore.kernel.org/linux-arm-msm/20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org/

So, I'd assume the plan is to land these two series in parallel and
then submit a cleanup to this one? Sounds ok then!

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

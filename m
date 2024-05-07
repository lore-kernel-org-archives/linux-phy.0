Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1999FC10F1A
	for <linux-phy@archiver.kernel.org>; Tue,  7 May 2024 13:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8YxSTk2qijglcRYfY3ClbVTwIaF8lFt3eE+ACv4Bfo=; b=f1SMki9onoJguw
	86lltnUw6TTOP/ccgiVHog+E4ANB7zikeLNpKPT56cX+Wu6s1DqhgqL4QNJa4RVPYcMCLFsPe9CHk
	esOHObOjP/1f6J3R6BlF8o3GYIKbAcV0cKaX9x0s5HA10lKWf1dynaii3MKm3Dvb4VROOPVCMARWR
	fujmDi4HYs8Q2rsPLowkN8a/PCBOoqyq+vg0Y6YJac5DD0FVoLvnJCN7PsdYRt9ncafYZeKHN56d3
	xxSgFlTNhkUUTDhw0V+GlVj0aLrR5pnOKuryag3oQL9vnouQCtgqRcT4Pz146wi8C2HglKO1G8OnO
	BFSfZ6LN0i4AulQvuFbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4L4l-0000000BIgS-2d7e;
	Tue, 07 May 2024 13:41:47 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4L4j-0000000BIeM-0zC8
	for linux-phy@lists.infradead.org;
	Tue, 07 May 2024 13:41:46 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2e3efa18e6aso6845131fa.0
        for <linux-phy@lists.infradead.org>; Tue, 07 May 2024 06:41:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715089302; x=1715694102; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eBYWPKKxIxo8aRFjjK9T2hA9r6Tr0Rm6zJjBWqA8aQQ=;
        b=B0ZU7JZ7qh7J6J+DJTnA/+Hi8ej3KN8UmSzm1r34z+y1X/dJg70aDyYt2oa0mvJ0Cb
         MfDt9e2Z+uHJpyULI8gbEnHdlFrbN2NqOhrqkmH3pI8xfOhsjsNfZ7gYv/7M7btz9ZnI
         NlfXCIaKor73Ss4anPtutH+giV8KZTTufsF+eIvyIPQKIMJlxQldaYrbTcefHtoE6lSt
         DsLpp5vTV10TjJT6hrchrbC20j/dDFTWL1bC4uF/nLhcQTNsIipBTO3IINtRb6Q2zaN/
         ie9+dZEIZRq+fdoI5Cp+ftZ8NQc5eqlbDby2EwaXMVdjoFWOrhY8vLFTFuRZkbM85eDD
         PmZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715089302; x=1715694102;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eBYWPKKxIxo8aRFjjK9T2hA9r6Tr0Rm6zJjBWqA8aQQ=;
        b=NaPgqpFsiACNvuGNFPd+SXHmUx2e0NC7NmD34eB9P9ynAp6mSuD4cK/wyD8McZ2zd2
         i1SNzZSbJYO1TnASCEw3lwCz3zCt9Y3Mz/bNDVqnRceWLG9yPqyh/+aPE8qpRa/kEdTx
         FG0BxW/3LlxG0CvI/kK+9MNUW9gBD0peXGtLkG+UQEy+ct8AwmmFTs0IAf5lHtR2+Vep
         vANecVm9z5dDgnLK0fPk6kAM8Xf41SY+Abj4AKUR/MK1r7OECM9rACWgFozbK8jV6mYJ
         obZE/TMTnw/V1QYLsBbMPwM+H+aONE6vKi1OY0gP+bqrZqEIL2a3wUsMpGHPxeAdt/b1
         p9/A==
X-Forwarded-Encrypted: i=1; AJvYcCXI34IWJg7s9rIa0/F0e80CTN5Zszc1Mq1W3PyXJfz0Bj0yzFvdhoRgV2FSqSTRnhkuGNlCIIlccsrpUVar+EWnzcnjIjJurw9kuTPyQw==
X-Gm-Message-State: AOJu0Yz4EMGRWFPqRk6yMXVC+9T9Zo4TFHn/LCr+4iEkRefhnwh75zeV
	+B9N4EfZY6LoxzZZ8vsaWqd/9OSISt0ZUowWRpWaWuvReab/7A+b2rDtg6iP4SU=
X-Google-Smtp-Source: AGHT+IFhusLgGPzXhOPfN0j+8HODL1lRzxw67tVfNgxWdHZALf7v7+cLKSB0NTJACUQLd+5spu3LXw==
X-Received: by 2002:a2e:7d0e:0:b0:2e1:eb38:d4b4 with SMTP id 38308e7fff4ca-2e3d9cb3781mr7358371fa.21.1715089301860;
        Tue, 07 May 2024 06:41:41 -0700 (PDT)
Received: from ?IPV6:2a00:f41:c0d:408:fa88:abdb:17c2:cf24? ([2a00:f41:c0d:408:fa88:abdb:17c2:cf24])
        by smtp.gmail.com with ESMTPSA id i16-20020a2e8650000000b002e15aec44fesm2054159ljj.96.2024.05.07.06.41.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 May 2024 06:41:41 -0700 (PDT)
Message-ID: <163a0c01-8f9f-48e6-89dc-2b702e755622@linaro.org>
Date: Tue, 7 May 2024 15:41:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom-snps-femto-v2: Add load and voltage setting for
 LDO's used
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Udipto Goswami <quic_ugoswami@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240502123312.31083-1-quic_ugoswami@quicinc.com>
 <CAA8EJppeQTadmny=hcs4xCQDXHwXEBHXjeecvZCUVcSXmwBTgg@mail.gmail.com>
 <90a5b641-af5b-4640-b2ad-85dbbab523bf@linaro.org>
 <CAA8EJpoWWXvJabcVqp+YSa8arQbLPC=v+XkvPZe6nwH7aaKnfQ@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAA8EJpoWWXvJabcVqp+YSa8arQbLPC=v+XkvPZe6nwH7aaKnfQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_064145_319981_E7E132CD 
X-CRM114-Status: GOOD (  14.80  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 5/7/24 13:55, Dmitry Baryshkov wrote:
> On Tue, 7 May 2024 at 14:43, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>
>>
>>
>> On 5/2/24 15:12, Dmitry Baryshkov wrote:
>>> On Thu, 2 May 2024 at 15:33, Udipto Goswami <quic_ugoswami@quicinc.com> wrote:
>>>>
>>>> The Femto phy depends on 0.88/ 1.8/ 3.3V regulators for its operation.
>>>> If one of the regulators is not voted to the required minimum voltage
>>>> for phy to operate, then High speed mode of operation will fail.
>>>>
>>>> On certain targets like (qcm6490_rb3gen2) where the minimum voltage
>>>> of the regulator is lower than the operating voltage of the phy.
>>>> If not voted properly, the phy supply would be limited to the min value
>>>> of the LDO thereby rendering the phy non-operational.
>>>>
>>>> The current implementation of the regulators in the Femto PHY is not
>>>> setting the load and voltage for each LDO. The appropriate voltages and
>>>> loads required for the PHY to operate should be set.
>>>
>>> Please move min/max voltages to the DTS. There is no need to set them
>>> from the driver.
>>>
>>> Also, is there any reason why you can't use `regulator-initial-mode =
>>> <RPMH_REGULATOR_MODE_HPM>;` like other boards do?
>>
>> The point is to aggregate the values and switch to HPM if a threshold is
>> crossed (or stay in LPM otherwise)
> 
> I see that other boards use regulator-initial-mode for the USB PHY
> regulators. Are we going to change all of them too?

Not sure about initial mode yet.

> Also note, that while the combo QMP driver sets the loads, the pure
> USB QMP PHY driver doesn't set the loads. This way we can end up with
> the undervolted PHY.

Sounds like something to fix, then

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

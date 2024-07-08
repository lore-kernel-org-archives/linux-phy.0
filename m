Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0830C3DA42
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jul 2024 11:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1cetNxWkWNohzQr/LsQPv6Fu6n42O6EwVU2LpShmmdw=; b=4fDAlFpiO+SaJo
	JK13a8bNnCWrqrZ+t6yIqNqanLL2CQo/BFa/es2DKL/nsTYBpYRhNLRCLtHH8281VX9r/al0VBZZd
	xwLy9izlnK6Ft6BkYUv3RjihKqW742ThPcnvZRNF6r5RjlF7VIz36wz7DFl+WcIycUEItUUB7Tndg
	utif+p7Sbu/RM0/ojXBSxz5fDdHUaIluFXASPFWHw7R+2IWSQ8yp22wU1E2/reQFLHCVMYit2xsZO
	Eqcws+l43hs68BjburILaEDSsaihsRfNBi1CEY41RguetS9FaomXyDaDYmi8lgfo4EX+l3tjNp9Mx
	eT2ONPWo+Kg3HL3L3jCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQmDF-00000003X4L-1vm1;
	Mon, 08 Jul 2024 11:07:17 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQmDB-00000003X3S-1Mvc
	for linux-phy@lists.infradead.org;
	Mon, 08 Jul 2024 11:07:15 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-367ab50a07aso1856091f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 08 Jul 2024 04:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1720436831; x=1721041631; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dcsI0Fp4d0lizbnZrWTDYuNRxhLlQN9hrnJVHrPEMm0=;
        b=PNQ2wDzo0Nb9okEBO+9U1VLUrPl4FOi8mZYtBcv9UNHHUbyiAjKfeUzf5wlQ48f6rS
         0wdOXGhOcvkdOBj9u3E3rDMrTe/HPp0EOLYsZvCnR9cNzA8+O1/Z3pcaC2JNPvuqcu4O
         fVNy/xu9nRGsYX6pWteaafRyTkjVdayoa93hTq6bo0IA5eJKZjFJ25dV7M2zbuK5bdDP
         y8aAj3r7brp5faUAzvTDXxrk9MrMsD3KRT2DTMcc21zbeBiWLDUAsTQR+bqW8RFIOU7J
         pgJwPFQ64eoP225oP6gDVxM5y9QBOBvWHRW/F2Xz40+4TU6vBvDvlmjx5AxAtG+ivwBy
         3rsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720436831; x=1721041631;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dcsI0Fp4d0lizbnZrWTDYuNRxhLlQN9hrnJVHrPEMm0=;
        b=jw4laaWkPEGI4ChQfW3F427sIqcZsdtLA8hdiBp72AnWNw1YAAFWL9lPLX/zeSgpBV
         VCm3bHql6ofMRNjxODv09RO0xIgp4bLZUYklOU5oJkGG0e+JECdg+t4MknAdISIg4KAc
         cNzrbmDzJ8cPZ/D45+EIry4WKOribErlca2iqLWnWEdaAcVIGlR0UPQtha/iUUBkwmKr
         NRynu4eKquRF0n9jgWcgTJSnpG8IoysqxnMXRdCEp69rfJfhb+O3mmS3qWmeucyeVTWp
         KGJfBeSBhdaLWA/qzc6mnTPCoud7E+6LWuI9idUfCvBm8LmQmAuwyT/Gt/nMY5aqcRg+
         B4RA==
X-Forwarded-Encrypted: i=1; AJvYcCXsV5wiz1CahmmeFfCMpB1lmNVq9+TXU8DctZD7ETa6M0KRa2o+7byq/KrD5WfHPLJXETJc997q+WNAV39Gw3RMKM7H8FVoOIAEBcc/Sg==
X-Gm-Message-State: AOJu0Yz0iR+MunSpap4BbQDw0WKCNJgxLOtukk5NnDXLg1iyJxfo0XQH
	fTBVEFlzDk5D0I8y6wMK1TlOtio/xu54hp6R02O8D8s7rChaDfjMs0rniKugBu0=
X-Google-Smtp-Source: AGHT+IEKYdET8KfBw3aNCJckmIjDHRgLhPCL/RlwhYnD8BvFqsYWoobXZB0e3p/fZkpFRo2ReXBUAg==
X-Received: by 2002:adf:f548:0:b0:366:ec2c:8648 with SMTP id ffacd0b85a97d-3679dd66b0emr7705422f8f.43.1720436830645;
        Mon, 08 Jul 2024 04:07:10 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3679ac6d60dsm10918074f8f.39.2024.07.08.04.07.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jul 2024 04:07:10 -0700 (PDT)
Message-ID: <2d21db63-4371-45b4-ab24-9a725c29e09a@freebox.fr>
Date: Mon, 8 Jul 2024 13:07:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/msm: add msm8998 hdmi phy/pll support
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar
 <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-phy@lists.infradead.org,
 Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>
References: <20240704-hdmi-phy-v2-1-a7f5af202cb5@freebox.fr>
 <5lbtymde3plfiqkvnd2lrjzxhengmsw242uqapnzpvfd5jrm25@x2ik2h6vrdxm>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <5lbtymde3plfiqkvnd2lrjzxhengmsw242uqapnzpvfd5jrm25@x2ik2h6vrdxm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_040713_611780_E948A6E6 
X-CRM114-Status: GOOD (  16.04  )
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

On 05/07/2024 16:34, Dmitry Baryshkov wrote:

> On Thu, Jul 04, 2024 at 06:45:36PM GMT, Marc Gonzalez wrote:
>
>> From: Arnaud Vrac <avrac@freebox.fr>
>>
>> Ported from the downstream driver.
> 
> Please write some sensible commit message.

Here's an attempt at expanding the commit message:

"""
This code adds support for the HDMI PHY block in the MSM8998.
It is a copy & paste of the vendor driver downstream:
https://git.codelinaro.org/clo/la/kernel/msm-4.4/-/blob/caf_migration/kernel.lnx.4.4.r38-rel/drivers/clk/msm/mdss/mdss-hdmi-pll-8998.c
"""


>>  drivers/gpu/drm/msm/Makefile                   |   1 +
>>  drivers/gpu/drm/msm/hdmi/hdmi.c                |   1 +
>>  drivers/gpu/drm/msm/hdmi/hdmi.h                |   8 +
>>  drivers/gpu/drm/msm/hdmi/hdmi_phy.c            |   5 +
>>  drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c       | 789 +++++++++++++++++++++++++
>>  drivers/gpu/drm/msm/registers/display/hdmi.xml |  89 +++
>>  6 files changed, 893 insertions(+)
> 
> - Missing changelog

- Rebase onto v6.10
- Move drivers/gpu/drm/msm/hdmi/hdmi.xml.h to drivers/gpu/drm/msm/registers/display/hdmi.xml
- Add copyright attribution
- Remove all dead/debug/temporary code

> - Missing a pointer to bindings. Ideally bindings should come together with the driver.

"qcom,hdmi-phy-8998" is defined in "HDMI TX support in msm8998" series (Acked by Rob Herring & Vinod Koul)

> I'm not going to check the math, but it looks pretty close to what we
> have for msm8996.

What is the consequence of this?


>> +static const char * const hdmi_phy_8998_reg_names[] = {
>> +	"vdda-pll",
>> +	"vdda-phy",
> 
> Unless you have a strong reason to, please use vcca and vddio here, so
> that we don't have unnecessary conditionals in schema.

The vendor code uses vddio & vcca for msm8996;
vdda-pll & vdda-phy for msm8998.

Which is vcca? Which is vddio?

https://git.codelinaro.org/clo/la/kernel/msm-4.4/-/blob/caf_migration/kernel.lnx.4.4.r38-rel/arch/arm/boot/dts/qcom/msm8996-mdss-pll.dtsi
https://git.codelinaro.org/clo/la/kernel/msm-4.4/-/blob/caf_migration/kernel.lnx.4.4.r38-rel/arch/arm/boot/dts/qcom/msm8998-mdss-pll.dtsi#L121-172

Regards


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

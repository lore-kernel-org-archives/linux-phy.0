Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C293C4167B
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 10:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lbWoQapbuDiHaNxa4kjrRsRuIko/Z1JWSUJCMifp2Eg=; b=x2TQqbuQ1mCBlN
	iy16tZ560R8xA++G2rvrnDlq2WpGx/srh4GRzLtTEiyp7ETUuLLQIChxqu7NpWwserSzWhITbvD4R
	c+64aKmEs1lz2pgfPcSpjOfyPl61ZNjA6cF2+qF1wtEHNzkYshdisMPHQhnrupz9jqy0dKf8hmo5e
	IqP3ewtwSmMDdvwvp1VXrJyen4B5MrFIsdj/dPM2dE02dvn6Tt1GKZQZSEEV68hDw70KX6N/T/MTl
	XE2M2HuRNNRZrNvbROmaYLQgDSMfRBMb/KwZbWSAEmBCSDrQ0VMTL9xajIjuU/35RebgafOfApABt
	z67a6JxMv5B6rTDoYQjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBC0Z-00CW4B-08;
	Thu, 07 Dec 2023 10:53:31 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBC0W-00CW3U-18
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 10:53:29 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40b5155e154so9874305e9.3
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 02:53:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701946404; x=1702551204; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HpGhDHfjbYJdmNSdrByuPS2eLFJA5tXn0JMYp6tJZL8=;
        b=zAfxZdSUczKsCUja9asxgDAyos5xcLgSKSZ6B7rPgmxYXeQbIiGP0jK6wEOYtMTCBD
         puMi8xLT5k/m1QnYu8XmBO6NvVP2wV/zHIFu3xDwxeCDhWtxrE/9mu9y/ankzOSiB607
         uNFCveGsGHTFZvftukR2uYm/Z0Vbrj0WGFF+2xO7Zc/BAeku6BXxsK3dvvrc3ex3HZtU
         +QAw8p7++9tr5QmipgqsBK3y1cLy0umbXPSawsN17QmAoDkLzTJO9vrcoqEgmWd8DrvQ
         5lQ5Z883XZ2wfIKT0QCK3aFSg2lPBS5J+2vTBSUuSrZwfCdnqxTZqfKba+g1KG1gydnF
         0jgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701946404; x=1702551204;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HpGhDHfjbYJdmNSdrByuPS2eLFJA5tXn0JMYp6tJZL8=;
        b=fP1IboLVUH1FY2m0gYBI83UFyEOKa71RH/9D+Y+FmHwgZNUj85eepNUgXRs7UfjD3T
         kcVwNK/bH+queaMPhcI5WHWk//XwAYTJ2Q+qXBFi3OTrmfSleEfljAt1BiIIwFhBX5Zw
         uJuQkUxDMNY13Wa+JjQf1AF99uD0OgOb6B+rlCAdRgW2SCDbgFkb4zy2sUYxm7K64ycb
         QS4KZeOUNTa2+DrtXMT0m9WYX07N7MjK3J7T4/t/w2XChQUgNMz0ydzRE3npdcLfVUOi
         eEoxUmkzQ9ozS/sHqqf12wZyA7/OCU40/hP6/iEGyXASJJMklbfg0h0Icj3x8O/6SBXr
         XKhQ==
X-Gm-Message-State: AOJu0YyRPLFKg3czhg99ZgaV4we0cUvrmf6fSUHoVB1tmwtRn1iTKGp0
	cE4FAKUgqoTDJePf+R+NLyZIaQ==
X-Google-Smtp-Source: AGHT+IE7bnM/WbB4xjPTysNxcDMEOoOW+DgKcUPFyZss2qPbfLz9tN/fmOii/w9Lk5KUxSxxXznWfQ==
X-Received: by 2002:a05:600c:2147:b0:40b:5876:6d8f with SMTP id v7-20020a05600c214700b0040b58766d8fmr1432657wml.20.1701946404261;
        Thu, 07 Dec 2023 02:53:24 -0800 (PST)
Received: from [10.66.66.2] (9.ip-51-91-159.eu. [51.91.159.9])
        by smtp.gmail.com with ESMTPSA id p1-20020a05600c1d8100b0040b47c69d08sm1601599wms.18.2023.12.07.02.53.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Dec 2023 02:53:23 -0800 (PST)
Message-ID: <40cc122e-e5a4-4fba-8b54-2f44d0095406@linaro.org>
Date: Thu, 7 Dec 2023 11:53:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
 quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
 quic_skananth@quicinc.com, quic_vpernami@quicinc.com, quic_parass@quicinc.com
References: <20231127-refclk_always_on-v3-1-26d969fa8f1d@quicinc.com>
 <78815f1b-7390-40de-8afd-ac71806f4051@linaro.org>
 <24fae40a-453b-b14c-923f-88758a246aa7@quicinc.com>
 <20231201060716.GJ4009@thinkpad>
 <166d307e-7d1b-48b5-90db-9b6df01d87c2@linaro.org>
 <20231201111033.GL4009@thinkpad>
 <f844cd1e-7e4f-4836-bc9a-2e1ed13f064f@linaro.org>
 <20231201123054.GM4009@thinkpad>
 <3a7376aa-18a2-41cb-a4c9-680e735ce75b@linaro.org>
 <c66a93fb-2729-4a86-a2db-f4692f6d0857@linaro.org>
 <20231206130746.GC12802@thinkpad>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231206130746.GC12802@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_025328_388811_5D339EA9 
X-CRM114-Status: GOOD (  14.65  )
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



On 12/6/23 14:07, Manivannan Sadhasivam wrote:
> On Fri, Dec 01, 2023 at 10:29:11PM +0100, Konrad Dybcio wrote:
>> On 1.12.2023 14:25, Krzysztof Kozlowski wrote:
>>> On 01/12/2023 13:30, Manivannan Sadhasivam wrote:
>>>>> What I said before:
>>>>> "Again, third time (once from Bjorn, once from Dmitry), rephrase
>>>>> property name and description to describe the hardware issue. I see
>>>>> description improved, but not the property name. Again in the end of
>>>>> description you say what Linux should do. Bindings do not describe Linux
>>>>> OS."
>>>>>
>>>>
>>>> You didn't answer my question:
>>>>
>>>> "I see a plenty of properties similar to this one instructing the OS to keep some
>>>> resource ON to workaround hardware issues. So they are all wrong?"
>>>
>>> They are not the best, but it all depends on the individual case.
>>>
>>>>
>>>> If you say they are wrong, why are they approved in the first place?
>>> Because we don't have time to keep digging what the driver is doing and
>>> what is claimed in DT. Some people don't even CC us on the driver.
>> Not sure if I asked this before, but can this not be set in the config
>> struct inside the driver?
>>
> 
> This cannot be the default config for any platform as keeping refclk always on
> will have some power penalty. Only if the hardware (EP or board design) has any
> issue, we can turn on this option.
So, if I'm reading this right, this concerns some but not all
8280 boards?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

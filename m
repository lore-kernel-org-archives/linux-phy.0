Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 590DFC4167D
	for <linux-phy@archiver.kernel.org>; Tue,  7 Nov 2023 21:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/sxByuJUFF+/Vtk1Q29gHfpHQ51Hsgnpy6J8lXAAn20=; b=2ZuIe7SZLRYPsE
	0EY7anaLf5YMdGx/Fb8QDgQQDWQWKPsx5kkyQZQNvO2G5emSIvDsElDLvOpduJWWDUc8ihI4lB3+G
	fSrHrVkPsOAJlMxbQUou5ytyGKWgodU2kfHklohV9e29rs8FUfjAhx7rLrkpQLE6me2O/sZobfUWm
	mLhCY++dxlpbJ1y1en1uPWm0AXB7Tx1U508l7ZGEW0Pgy6XnzgqCfg8B011bk4M/l7reE/UvmnOKx
	+5XYSuzsPoCgiQNWzMlTFDygiKbbVbLGY8yV5l+xQ0sLguX4xHM00gPidrgBsoMslKlu/vWn6gyl3
	7zUIooAdpw51du4kS3Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0U2R-002TrD-2r;
	Tue, 07 Nov 2023 21:55:11 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0U2P-002Tpv-0w
	for linux-phy@lists.infradead.org;
	Tue, 07 Nov 2023 21:55:10 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5094cb3a036so7862026e87.2
        for <linux-phy@lists.infradead.org>; Tue, 07 Nov 2023 13:55:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699394104; x=1699998904; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=is3uec+Gjolh358pkRprV7sJtX7HVQmPCXm7wrHL1HE=;
        b=tj5vRvPbOLqkW/rB+yXCLfhai9F7wYhpAZ/cZfzjfnmUBIpvY36vvrgGKxSgggJyTa
         Gy+N2UNs5uK9/1NK0esP1GqzyOuVmoHcckNoMa+XZVRRc9hisDhhPwizdM1of4fbZuZ4
         AqjOWe4uuOwqyFWc8mrCqsf4VtQCRR6rQ655koVAm/QlCeAlVAR0Epyh2agYXAx/6/Cq
         7JzdykOjnCk8ER1E8M3cYDVSRu4dBQ9BLJhmfYEziDEdgegpSsPi67KsQboSxaptmcT0
         NifGfPl29Qh+01uOeZ1oYm2gNnFsmKQAh0UZ6gOuEGGiBEh2D28W4Y06R99OjQte/pEh
         LpBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699394104; x=1699998904;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=is3uec+Gjolh358pkRprV7sJtX7HVQmPCXm7wrHL1HE=;
        b=NcXW+vAD9HkkGdqnH4Y1EfiARMwi1XSNjAQD9crcQPuAzKlGwv7C0Fc2hd2jPm0OQ5
         K5XXD9KJw1KZuUGjCTZP0ahPM+r7lruyRtn2Cuj3t0v22S1u06mwEok2z9/cLJePs8GS
         WnySkfQKBkhw9uBr47EkSCHLt4S738+PsN6B4bVSwDXGWi66FN7ViuSjLzk5sRHtHoOX
         jPd4qmk62fOZ6syKOuuBGYoKmfCClTzrKdbqfCTZp1DDHsjyf6CvcXQfob9xMosvi4mf
         kfQ+6xIRO1gsmi6Qtb4/R1/xRocO0wLuVM1AvWFeZSMXxwpordAAPlkrnFg5gjno5B10
         t82w==
X-Gm-Message-State: AOJu0YwQCQpUWKJ3Ho8fsnzldEZtWFRq/CX69GbffBW1Tp4xExtfT/tU
	8yEa00EP7VpOecoY5aDf38pbyg==
X-Google-Smtp-Source: AGHT+IEGa1Ik4BCcscA0WV4B7tpiUI0SnhrwmsDWsJnGx8HU27IkFvRL8BZQ8rU9z91pUDgpcDUeBQ==
X-Received: by 2002:a19:675b:0:b0:503:26bc:b08f with SMTP id e27-20020a19675b000000b0050326bcb08fmr24875055lfj.24.1699394103973;
        Tue, 07 Nov 2023 13:55:03 -0800 (PST)
Received: from [172.30.205.109] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id h24-20020a197018000000b00507c7ae32cesm462967lfc.192.2023.11.07.13.55.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Nov 2023 13:55:03 -0800 (PST)
Message-ID: <19f32f8e-dfe2-410b-9a4d-80e24a888d65@linaro.org>
Date: Tue, 7 Nov 2023 22:54:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: sa8775p: Add ep pcie1 controller
 node
Content-Language: en-US
To: Andrew Halaney <ahalaney@redhat.com>,
 Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, mani@kernel.org,
 robh+dt@kernel.org, quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
 dmitry.baryshkov@linaro.org, robh@kernel.org, quic_krichai@quicinc.com,
 quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
 quic_schintav@quicinc.com, quic_shijjose@quicinc.com,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <1699362294-15558-1-git-send-email-quic_msarkar@quicinc.com>
 <1699362294-15558-3-git-send-email-quic_msarkar@quicinc.com>
 <i3yum3wbko33jwn7tfbcflpcxe5k5j5ituhyxtucx6gk2bs3gz@7ncewfmepnai>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <i3yum3wbko33jwn7tfbcflpcxe5k5j5ituhyxtucx6gk2bs3gz@7ncewfmepnai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_135509_364766_121BC5A3 
X-CRM114-Status: GOOD (  14.19  )
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



On 11/7/23 19:37, Andrew Halaney wrote:
> On Tue, Nov 07, 2023 at 06:34:53PM +0530, Mrinmay Sarkar wrote:
>> Add ep pcie dtsi node for pcie1 controller found on sa8775p platform.
>> It supports gen4 and x4 link width. Limiting the speed to Gen3 due to
>> stability issues.
> 
> I wouldn't mind a bit more information on what "stability" issues
> entails! I'm a sucker for details in a commit message.
Yep, giving us a bit more than "doesnt work" may help us help you!


>> +
>> +		interrupts = <GIC_SPI 518 IRQ_TYPE_LEVEL_HIGH>,
>> +					 <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>,
>> +					 <GIC_SPI 474 IRQ_TYPE_LEVEL_HIGH>;
Looks like the indentation is off?

>> +
>> +		interrupt-names = "global", "doorbell", "dma";
>> +
>> +		interconnects = <&pcie_anoc MASTER_PCIE_1 0 &mc_virt SLAVE_EBI1 0>,
>> +				<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_PCIE_1 0>;
> 
> I keep seeing Konrad requesting that we use the #define instead of a raw
> number 0, i.e. something like QCOM_ICC_TAG_ALWAYS (although if I'm
> reading that correctly QCOM_ICC_TAG_ALWAYS doesn't evaluate to 0, so
> make sure you pick the appropriate one).
No it doesn't, but if you look at the code, tag being non-existent
assigns QCOM_ICC_TAG_ALWAYS which is a workaround for DTBs from back
when interconnect tags were not a thing

> 
>> +		interconnect-names = "pcie-mem", "cpu-pcie";
> 
> This is nitpicky, but unless someone told you to do the whitespace
> between some of these properties I'd get more consistent. i.e. reg and
> reg-names has no newline between them, but clocks and clock-names does,
> and then interconnects/interconnect-names does not.
:)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

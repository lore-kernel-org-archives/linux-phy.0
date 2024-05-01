Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50DA9C4345F
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lF9/sPSDmc1mzBkd2bAmVHdPkmWFHuvqg+B1ucZGZkk=; b=ar8jeSHfB90/j8BQrJJQ7Ru3nt
	4rXt7kUvXhrKd5GdNH/+fuNWEgXv+xRMFEFZgh1HKZy2YELU6Gg2Cy8HYp9gl8naIp3qQB1QESyfC
	YmJulFwXgy9DJyvN/dEY4Ka7rMw9rtLCb1mG1npWWmDe6OZ99x3/l835sboMjJ7nbcuqU1FoWzbPy
	pEOYYp2YsTNsiouBsagfPW6rH5FyPy8ljVhEq/x/P3gC1ALOQ8SZ3oGPBwj/B56/2gy7tbTlISfp8
	v8kafjnW2FmK/CzoRTRmCReIlnxhsPexvFPOqOphZWTp0bY9OLHA1XHmMSdop8g2bjPpWCxhoGgyO
	s84DkAPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2C7c-0000000A1xQ-3s4u;
	Wed, 01 May 2024 15:43:52 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2C7Z-0000000A1u7-2Nm0
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 15:43:52 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-6ee3a49bdcfso1801464a34.0
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 08:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714578225; x=1715183025; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WYyt1RBKP+5wqyIqwmy5cnYZMq9VEpLdANc4tFv/eOc=;
        b=nDsZk6KVwbPrHddko7C1mIgNrbB//pk511U6xGqQdpMbYeChXO1DJkW5ak0ivSmZMy
         TsPCJeRanH/hZ9LM0/rkoiKT5TJP5GWh8A+biOhQ9mVbAyiVreQotWzrxAmnypj4xBe7
         Z1qJoZjxupvFHF92wPWEnFYR/jKA0uW2qcdCsa1h6dQgpx8BkkP6KZPqtIa2owHZ6vhJ
         XeZXKSAt8iwA0eW9Qdi4lvYMjA+oRKEiSlX2o+CuROpVlP25vDtpBLnIPYtlHreL6PGe
         +rj9Xi2dgMcmZR0FktykLshfhrlT+8cWk6feRb2p10Y7C7x46ek3nF0Va53jhADxSTOY
         pFVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714578225; x=1715183025;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WYyt1RBKP+5wqyIqwmy5cnYZMq9VEpLdANc4tFv/eOc=;
        b=IcCIGRF2GP9ghJvWBR202nf2Z8hjAHk9VbWNZx+pT8/l4PNOeEyABqvhTHeMnYAhoA
         rnwh8CwUHZG9Hw0tTdNh9+LrUmKot8XPALnoBzXERLJ1Bu2x27oZ5RsvafnMzlK90bli
         lQ/Xn/ZFo9MQF5MQXWD21gKfxWVgf1rlc3dwxXamiU3F+/BGMqFjhIQuSTATp7xQLZCL
         /wseFtR0MjBBhmOOc2rYI34Z38FqdmNc0ns8tQ3vAsiDtdamth2SmbMX54VcyKGO4vZX
         hlnFdYcKXM6GNkLIiukzfde50VRT8SEloK4pLo+5lnzrzfQpwWkJhYLRgip4315RX4G1
         HInQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7574SUtC7pjPTGlQ1a/KBKenj0xIibDRyLrmykLuuFWLHDxq54cV3wVPeXA0fO3/XqP4M3I4cbVQi46yBV4nti4I9fIL8bB+Mg+3ecA==
X-Gm-Message-State: AOJu0YwHRS4Fj55Mau+AmtL+Khi8WKnKExSwkm6wHTUhKsKNsdzBi0C6
	aOPf2NcBTKFp7UE0pgECEjTjcyBgECGvtPaBlLOqSw22Q4gZwbNpfLV/W9HJkqQ=
X-Google-Smtp-Source: AGHT+IEVAUBi8gaQAQaPiF+BdK+POH9BTZIvS3fio856v721oE2NZNnhywEs1M2R3KrsTS8RWdtRpg==
X-Received: by 2002:a05:6830:1284:b0:6ef:a0a4:b601 with SMTP id z4-20020a056830128400b006efa0a4b601mr1830971otp.36.1714578225542;
        Wed, 01 May 2024 08:43:45 -0700 (PDT)
Received: from [192.168.7.169] (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id fc12-20020a056830498c00b006ee0d82d41dsm1595872otb.71.2024.05.01.08.43.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 08:43:45 -0700 (PDT)
Message-ID: <f7176c82-3702-4667-b68b-a8b7e3ad8690@gmail.com>
Date: Wed, 1 May 2024 10:43:43 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 RESEND 5/8] PCI: qcom: Add support for IPQ9574
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Manivannan Sadhasivam
 <manivannan.sadhasivam@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org
References: <20240501042847.1545145-1-mr.nuke.me@gmail.com>
 <20240501042847.1545145-6-mr.nuke.me@gmail.com>
 <a973f67b-de7f-4e21-b6b4-3b85d056456d@kernel.org>
Content-Language: en-US
From: mr.nuke.me@gmail.com
In-Reply-To: <a973f67b-de7f-4e21-b6b4-3b85d056456d@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_084349_761155_6882D5B3 
X-CRM114-Status: GOOD (  19.80  )
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

On 5/1/24 5:21 AM, Krzysztof Kozlowski wrote:
> On 01/05/2024 06:28, Alexandru Gagniuc wrote:
>> IPQ9574 has four PCIe controllers: two single-lane Gen3, and two
>> dual-lane Gen3. The controllers are identical from a software
>> perspective, with the differences appearing in the PHYs.
>>
>> Add a compatible for the PCIe on IPQ9574.
> 
> This is a friendly reminder during the review process.
> 
> It looks like you received a tag and forgot to add it.
> 
> If you do not know the process, here is a short explanation:
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
> versions, under or above your Signed-off-by tag. Tag is "received", when
> provided in a message replied to you on the mailing list. Tools like b4
> can help here. However, there's no need to repost patches *only* to add
> the tags. The upstream maintainer will do that for tags received on the
> version they apply.
> 
> https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577
> 
> If a tag was not added on purpose, please state why and what changed.

I had an Acked-by tag from Rob for what is now patch 6/8 -- previously 
5/7. Due to last-minute info from QUIC Inc, Dmitry and I decided to move 
the "snoc" and "anoc" clocks out of the PHY and to the PCIe controller.

This change resulted in a 6/8 patch that is substantially different from 
what Rob acked. I felt it was inappropriate to keep the tag.

Alex

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

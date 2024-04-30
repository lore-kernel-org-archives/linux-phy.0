Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93D35C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 30 Apr 2024 21:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WNSlppxvr+/uTsIsK0KXHeyP/ETUB0EEhqT+Ay6b6yM=; b=BgNFWe2W4ktyav
	xYTMKjDKIreZdHQn4/DT6/QMVqBG81rSSDedCUBm8ZGPV6XIEhcuINiN0AuITifbbGT88IVi62Jwk
	xT0wZ040zGlwkzi0pXZlBcDl3TY5DvcMsdXJI0iFWR1CryAXhBEEz7rJ+ycY0/4gH9QpVKJ6xah+M
	R6Wnsaq0wws3XdNSxp8BJwek6w/47eogCYVdL5/b8IPrS26Y7ITpLDUItGxndbSyyfwMAWqvenXS9
	UF3gD3OK3RbQO3ZGs9ANDIfI6P5LltTggGG5eWyBbfyje4cbnRnbAXmF9uYzgsGu4YC638jC3UDPk
	B1toOG5qxuUB+cVdNtOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1vO8-000000080vk-0wX6;
	Tue, 30 Apr 2024 21:51:48 +0000
Received: from mail-oo1-xc2e.google.com ([2607:f8b0:4864:20::c2e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1vO5-000000080uq-1MkT
	for linux-phy@lists.infradead.org;
	Tue, 30 Apr 2024 21:51:46 +0000
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-5aa3f0fcd46so3891489eaf.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Apr 2024 14:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714513899; x=1715118699; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d6qd8lJvJh2hrhUBJz33E1gMQnbvjUgqj9rCB8sm/gc=;
        b=dgfmU8+WuGgLbrO2Ma0D2mUZlrkuOgbJ6tqK1ZtFpvOb2HXRN5WpjAR37F17hF2vVl
         rNGP2luFgqtUA++SIRzZmLqHxmxvyrO5/Wf+HGeMW0qXIckE+uNNB+/RWUTZEju8mdxu
         JJpcQv9Jg9dbwSjhJghwy5LpWkpkKaywsXJ55W/aN/JdTgmXMvpsVitw4h8Yglbz9FmP
         Uu9xttGR6sUBXgJJlz0GtS5Ps5SqmiIkPO50fMe2lXu0ngwHqloNSXp6Q4etz+7L2GOE
         gWl4YggUUybBpuvaZtE8ZFv8/DvNbbV2Hu0n4NsL/L9TeVNTR8vJSY1ujTa5qOUjxH2F
         j1dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714513899; x=1715118699;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d6qd8lJvJh2hrhUBJz33E1gMQnbvjUgqj9rCB8sm/gc=;
        b=e+DzN7NGJJ2NF6Jm5HcqP8c999oxum1LNebt9UOUZyVIsBKZwqTOfLamDTeCab6NJh
         3qCwQ3PFUUNRTDkPYX7gtBeoclN8MZu/HtKH2cARTsjKbzkM8F296UcEZcI5UjWDEn1O
         aN3B8VsB4TliGx6P6MxqWtjWwBlWt3fCP5k0RPhL+Dw8wTD3ul10mHYZ+Ci7apSj68b3
         Kp620GBL/ZdLRIuE+no+LPfLQKW456mMg+167tt4DbIwWirHV34LpxGBzAfW7Rr2/qWX
         t2hPSrIVhROKqO+oqpeq3J/fOwv8T6OLyfxs6eNh9vC32B5p5cCsrpaWM2u+mv7Bq1ei
         VhsQ==
X-Forwarded-Encrypted: i=1; AJvYcCUSDfFbPnj3xj0UPQbsJEwOtVM5/Y/q09a0zGYh0ERAcfkm8icRWGnzYQvNsdmK56AYbk9/Wya+yV7H7yXHPV7IHPEKJmRyUptRjbEq2Q==
X-Gm-Message-State: AOJu0Yy76UXREfhyvUzI36tVKtjllsL+HB4hVS6W+99zd+Yp/k4QXS2D
	eNdbASMCIFoo0UIHjo671wLH5/CcU0Sf9TCLyigKTxzJ1Jvwobid
X-Google-Smtp-Source: AGHT+IHW6bYHhn8CohYrr9D+kQrfwgZyt3rb3ReMqW6TPOXzhq+u1mceFtChWghqHxrVWoqCKD1mtA==
X-Received: by 2002:a4a:98c7:0:b0:5af:c4b3:7c6d with SMTP id b7-20020a4a98c7000000b005afc4b37c6dmr691177ooj.5.1714513899564;
        Tue, 30 Apr 2024 14:51:39 -0700 (PDT)
Received: from [192.168.7.169] (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id bw12-20020a056820020c00b005ace4142e7esm5575325oob.46.2024.04.30.14.51.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Apr 2024 14:51:38 -0700 (PDT)
Message-ID: <9d9c569b-2e9c-4fd3-9a1a-50f198bd0884@gmail.com>
Date: Tue, 30 Apr 2024 16:51:37 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/7] phy: qcom-qmp-pcie: add support for ipq9574 gen3x2
 PHY
To: Varadarajan Narayanan <quic_varada@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
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
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
 <20240415182052.374494-7-mr.nuke.me@gmail.com>
 <CAA8EJpqY1aDZMaeqBULEOD26UeGYbLd8RsA16jZw7zXJ7_oGPQ@mail.gmail.com>
 <6726fa2b-f5fe-10fb-6aab-f76d61f0b3cd@gmail.com>
 <4a7b1e1d-ac68-4857-8925-f90c9e123fd1@gmail.com>
 <CAA8EJppGW=qyk2P6Z_S=dp0njsCjqZaXjw8qU4MY1HOZR-N=4A@mail.gmail.com>
 <Zi88Hdx6UgBo/gti@hu-varada-blr.qualcomm.com>
 <CAA8EJpq+Bbws8yH5Xq7rHyA+-=DaCcfEcgUa5RUt2+LWQW0kKg@mail.gmail.com>
 <ZjCQM24T2XIJ6GAR@hu-varada-blr.qualcomm.com>
Content-Language: en-US
From: mr.nuke.me@gmail.com
In-Reply-To: <ZjCQM24T2XIJ6GAR@hu-varada-blr.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_145145_411586_F443E654 
X-CRM114-Status: GOOD (  18.72  )
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

On 4/30/24 1:31 AM, Varadarajan Narayanan wrote:
> On Mon, Apr 29, 2024 at 01:55:32PM +0300, Dmitry Baryshkov wrote:
>> On Mon, 29 Apr 2024 at 09:20, Varadarajan Narayanan
>> <quic_varada@quicinc.com> wrote:
>>>
>>> On Wed, Apr 17, 2024 at 12:50:49AM +0300, Dmitry Baryshkov wrote:
>>>> On Wed, 17 Apr 2024 at 00:25, Alex G. <mr.nuke.me@gmail.com> wrote:
>>>>>
>>>>> Hi Dmitry,
>>>>>
>>>>> On 4/15/24 16:25, mr.nuke.me@gmail.com wrote:
>>>>>>
>>>>>>
>>>>>> On 4/15/24 15:10, Dmitry Baryshkov wrote:
>>>>>>> On Mon, 15 Apr 2024 at 21:23, Alexandru Gagniuc <mr.nuke.me@gmail.com>
>>>>>>> wrote:
>>>>>>>>
>>>>>>>> Add support for the gen3x2 PCIe PHY on IPQ9574, ported form downstream
>>>>>>>> 5.4 kernel. Only the serdes and pcs_misc tables are new, the others
>>>>>>>> being reused from IPQ8074 and IPQ6018 PHYs.
>>>>>>>>
>>>>>>>> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
>>>>>>>> ---
>>>>>>>>    drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 136 +++++++++++++++++-
>>>>>>>>    .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |  14 ++
>>>>>>>>    2 files changed, 149 insertions(+), 1 deletion(-)
>>>>>>>>
>>>>>>>
>>>>>>> [skipped]
>>>>>>>
>>>>>>>> @@ -2448,7 +2542,7 @@ static inline void qphy_clrbits(void __iomem
>>>>>>>> *base, u32 offset, u32 val)
>>>>>>>>
>>>>>>>>    /* list of clocks required by phy */
>>>>>>>>    static const char * const qmp_pciephy_clk_l[] = {
>>>>>>>> -       "aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
>>>>>>>> +       "aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
>>>>>>>> "anoc", "snoc"
>>>>>>>
>>>>>>> Are the NoC clocks really necessary to drive the PHY? I think they are
>>>>>>> usually connected to the controllers, not the PHYs.
>>>>>>
>>>>>> The system will hang if these clocks are not enabled. They are also
>>>>>> attached to the PHY in the QCA 5.4 downstream kernel.
>>>>
>>>> Interesting.
>>>> I see that Varadarajan is converting these clocks into interconnects.
>>>> Maybe it's better to wait for those patches to land and use
>>>> interconnects instead. I think it would better suit the
>>>> infrastructure.
>>>>
>>>> Varadarajan, could you please comment, are these interconnects
>>>> connected to the PHY too or just to the PCIe controller?
>>>
>>> Sorry for the late response. Missed this e-mail.
>>>
>>> These 2 clks are related to AXI port clk on Aggnoc/SNOC, not
>>> directly connected to PCIE wrapper, but it should be enabled to
>>> generate pcie traffic.
>>
>> So, are they required for the PHY or are they required for the PCIe
>> controller only?
> 
> These 2 clks are required for PCIe controller only.
> PCIE controller need these clks to send/receive axi pkts.

Very interesting information, thank you!

Dmitry, In light of this information do you want me to move these clocks 
out of the PHY and into the PCIe controller?

Alex

> Thanks
> Varada
> 
>>>>> They are named "anoc_lane", and "snoc_lane" in the downstream kernel.
>>>>> Would you like me to use these names instead?
>>>>
>>>> I'm fine either way.
>>>>
>>
>>
>>
>> --
>> With best wishes
>> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

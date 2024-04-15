Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A840C4345F
	for <linux-phy@archiver.kernel.org>; Mon, 15 Apr 2024 21:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KKhMVpQ+oAypxoc5V+x6acnt4dbQacjTOLWj1uZycrQ=; b=k7gynUeWnteW4O
	YF0GaqhR0uT0NAgmNF/X8qAThTpkKbx5m0LPQgGFJfmvUvvmZaR6hLx5pIV7S/UYMtACpe9opczKs
	ERyNZgm+tppihgzI7rdlxbULaGO2+2Yz2U0ue5ojkTdCFZUlxb090z6Flbhk0hKsKRmaQuJqdboct
	tTcSBKtCLDRf3QYfD/Y8Ji2uvlXe4lw4mI2uTVPZ4eCxpNiAnVBZ0JhR/o4mB97yhDCu9bC6sVYRr
	JKBWE9+XmA1j5a2ytvPblKHNJEKlwKKSZYy2HzcWZiyCKMPeZC6QbLxLUwnxFYT0MumhlKiNAwag3
	b9fFUX1zgylUx1pn4nyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwTpp-00000009xYT-2boQ;
	Mon, 15 Apr 2024 21:25:53 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwTpn-00000009xWy-0Y3c
	for linux-phy@lists.infradead.org;
	Mon, 15 Apr 2024 21:25:52 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-3c38eced701so1471215b6e.1
        for <linux-phy@lists.infradead.org>; Mon, 15 Apr 2024 14:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713216350; x=1713821150; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MnRyb1KC+1OBK62QHuW79588BJIAAupCpTaTbO7XI1c=;
        b=DvxL0N8SAVlaZkkcrAUbzVZ4VdM68bg0BfLTLvOe2qbsKD8eJpa2QCXQ/j0Mbo2tQK
         6eN0O+bzKOA3i5PqNnd4dZWS2cVKKwhsPg9d0zw0gfIJUkW7maFnRX4K1W0cuuNe8HM1
         D2I+WMpQSA4r00dEASKFjBYtP66ohHdQkMB9Rg5ANmlx0yhvV06SXvHTekSQkyNpxv6A
         5AsE0ZLpvz5kiaDSZfe6TUcOuEx+NLZhPCbptq8Js89Ft3XMcHbbiuM3IOhCcH8peFQn
         6Nst8vDJ5FT8SXrrWAQ46UoeC6ug+HISiDb3tY5iKyo09TC2j+TwEKxoBJK/5z0BofJq
         1e0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713216350; x=1713821150;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MnRyb1KC+1OBK62QHuW79588BJIAAupCpTaTbO7XI1c=;
        b=P05/YHrN/FvFbIwg9+J2EDYuR9jFcdszWqnSv3PoeUqLHkdKosIld0oCPcDqJr241K
         ErJ3LLmuUHafbvIA5zyr4YJVc8TnjCIYq+m/0NYK2HQhtVGj1kvcb+MugF1j4Uqpdw//
         KS7xhecMz+EajPZx2q5SCta5DRGKtBdnE/sYKeeoa4aue4rJ5gH1kRdUniLgH1VTm6YX
         dJ8rgnOd9KXphsi3AVAA/y3EfJbGHg0gDwpTdnmmk7ocQqTU9CpKwpm9fVv55d7eI1Sn
         wP6wisuAsYTRMlXh/73wHwgjfzQd5VjYPQRaDuMJUU2x4eg6x5gnVsHeSHRFAnh5zxUa
         H3GA==
X-Forwarded-Encrypted: i=1; AJvYcCW4c5iaftPUqtsrY5WW+Y77HOLOY/hIskpDDVJNf9aVd1n8LnIbItaLKDRKuzJlpXC/PCh3WH0dKsL7DDZoNmEmWh5SF3unVtb+CJhPuQ==
X-Gm-Message-State: AOJu0Yy+sdPcuQHFTSp7Mh4Ij304CGzNZvwg/7pqGytwV5yYttgsjtdy
	erWgxz/vyACHSMOdk77HXYKNPeWnYHsyjE8ndlsPqJOW5K5ZZotjjFPGsuIG3jE=
X-Google-Smtp-Source: AGHT+IFVx8xuKRS2VgjDQ5gszpCC9VDV/CVDiERN6wC4LXmwFjfelkaJR7tB/uZCbmijCe/eZtORlA==
X-Received: by 2002:a05:6808:2a69:b0:3c7:76c:c279 with SMTP id fu9-20020a0568082a6900b003c7076cc279mr6166827oib.14.1713216349788;
        Mon, 15 Apr 2024 14:25:49 -0700 (PDT)
Received: from [192.168.7.169] (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id n4-20020aca2404000000b003c60db822e7sm1774266oic.4.2024.04.15.14.25.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Apr 2024 14:25:49 -0700 (PDT)
Message-ID: <6726fa2b-f5fe-10fb-6aab-f76d61f0b3cd@gmail.com>
Date: Mon, 15 Apr 2024 16:25:48 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 6/7] phy: qcom-qmp-pcie: add support for ipq9574 gen3x2
 PHY
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
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
From: mr.nuke.me@gmail.com
In-Reply-To: <CAA8EJpqY1aDZMaeqBULEOD26UeGYbLd8RsA16jZw7zXJ7_oGPQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_142551_241953_5FC39018 
X-CRM114-Status: GOOD (  20.63  )
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



On 4/15/24 15:10, Dmitry Baryshkov wrote:
> On Mon, 15 Apr 2024 at 21:23, Alexandru Gagniuc <mr.nuke.me@gmail.com> wrote:
>>
>> Add support for the gen3x2 PCIe PHY on IPQ9574, ported form downstream
>> 5.4 kernel. Only the serdes and pcs_misc tables are new, the others
>> being reused from IPQ8074 and IPQ6018 PHYs.
>>
>> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 136 +++++++++++++++++-
>>   .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |  14 ++
>>   2 files changed, 149 insertions(+), 1 deletion(-)
>>
> 
> [skipped]
> 
>> @@ -2448,7 +2542,7 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
>>
>>   /* list of clocks required by phy */
>>   static const char * const qmp_pciephy_clk_l[] = {
>> -       "aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
>> +       "aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux", "anoc", "snoc"
> 
> Are the NoC clocks really necessary to drive the PHY? I think they are
> usually connected to the controllers, not the PHYs.

The system will hang if these clocks are not enabled. They are also 
attached to the PHY in the QCA 5.4 downstream kernel.

>>   };
>>
>>   /* list of regulators */
>> @@ -2499,6 +2593,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v4x1 = {
>>          .rx             = 0x0400,
>>   };
>>
>> +static const struct qmp_pcie_offsets qmp_pcie_offsets_ipq9574 = {
>> +       .serdes         = 0,
>> +       .pcs            = 0x1000,
>> +       .pcs_misc       = 0x1400,
>> +       .tx             = 0x0200,
>> +       .rx             = 0x0400,
>> +       .tx2            = 0x0600,
>> +       .rx2            = 0x0800,
>> +};
>> +
>>   static const struct qmp_pcie_offsets qmp_pcie_offsets_v4x2 = {
>>          .serdes         = 0,
>>          .pcs            = 0x0a00,
>> @@ -2728,6 +2832,33 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
>>          .phy_status             = PHYSTATUS,
>>   };
>>
>> +static const struct qmp_phy_cfg ipq9574_pciephy_gen3x2_cfg = {
>> +       .lanes                  = 2,
>> +
>> +       .offsets                = &qmp_pcie_offsets_ipq9574,
>> +
>> +       .tbls = {
>> +               .serdes         = ipq9574_gen3x2_pcie_serdes_tbl,
>> +               .serdes_num     = ARRAY_SIZE(ipq9574_gen3x2_pcie_serdes_tbl),
>> +               .tx             = ipq8074_pcie_gen3_tx_tbl,
>> +               .tx_num         = ARRAY_SIZE(ipq8074_pcie_gen3_tx_tbl),
>> +               .rx             = ipq6018_pcie_rx_tbl,
>> +               .rx_num         = ARRAY_SIZE(ipq6018_pcie_rx_tbl),
>> +               .pcs            = ipq6018_pcie_pcs_tbl,
>> +               .pcs_num        = ARRAY_SIZE(ipq6018_pcie_pcs_tbl),
>> +               .pcs_misc       = ipq9574_gen3x2_pcie_pcs_misc_tbl,
>> +               .pcs_misc_num   = ARRAY_SIZE(ipq9574_gen3x2_pcie_pcs_misc_tbl),
>> +       },
>> +       .reset_list             = ipq8074_pciephy_reset_l,
>> +       .num_resets             = ARRAY_SIZE(ipq8074_pciephy_reset_l),
>> +       .vreg_list              = NULL,
>> +       .num_vregs              = 0,
>> +       .regs                   = pciephy_v4_regs_layout,
> 
> So, is it v4 or v5?

Please give me a day or so to go over my notes and give you a more 
coherent explanation of why this versioning was chosen. I am only 
working from the QCA 5.4 downstream sources. I don't have any 
documentation for the silicon

Alex
> 
>> +
>> +       .pwrdn_ctrl             = SW_PWRDN | REFCLK_DRV_DSBL,
>> +       .phy_status             = PHYSTATUS,
>> +};
>> +
>>   static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
>>          .lanes                  = 2,
>>
> 
> 
> 
> --
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

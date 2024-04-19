Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EAD4C4345F
	for <linux-phy@archiver.kernel.org>; Fri, 19 Apr 2024 19:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kn+7uu0/A8ILlYkxRUaC0It4HmOgrY2QdhMeA0APE7Y=; b=FhgB48bcfNCsbQ
	1RJJ8AVZ18oL+GUcsUfIPoR4C869bZFZODlgBwxNVGFDi78fxQH4IWZkBWbYqRAWVMmRS2N/vpG07
	VQhZEeRRjgpNYx6TcwiV47D+Ic2425V5Ps5S7wvXK0pYYfln1k/7iRKdnU75Hy454y0qUp7H81nKi
	iQBGoh++n1ZC121Ou4MTLitG7yLfxbXQSMcgxPci40o1Gz8B9XCimFLI7ntkehHMdh4JTiUOXRg6h
	WFN3dlM1/ZYczxr03i1wJB8myHGQp0Z6yxlG+bs6CfArR+aHo+ALAOMjnMARmf1GYR73AheByV5z/
	Cqf3OZefLZcOpXxMOXUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxuA7-00000006opV-044g;
	Fri, 19 Apr 2024 19:44:43 +0000
Received: from mail-oo1-xc32.google.com ([2607:f8b0:4864:20::c32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxuA4-00000006ooP-2u9W
	for linux-phy@lists.infradead.org;
	Fri, 19 Apr 2024 19:44:41 +0000
Received: by mail-oo1-xc32.google.com with SMTP id 006d021491bc7-5ac8e8ce2a7so1613284eaf.1
        for <linux-phy@lists.infradead.org>; Fri, 19 Apr 2024 12:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713555878; x=1714160678; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P1BGAYuhr6Jr83/QJyI90NsvCbuHw5i7BYScCO/Al8w=;
        b=GbPgHnj2vdUvlHy9zeQ4KorQv2sFNBeBVVixQFVSBhtHgF4FGQCBBEqB32v9jtnbU6
         sohtyHFTVgq3qCb5NnC/v4oX4eeinl/qY342Xjsc3AlhaPjL+ydw38OEa4qWuX+R3EEh
         5V45KvLd1thvckiO94XsmCO1ugAEzJNUdCYDVwtlwcOrfog6LRnkwFpLoC8zFMSx7k/8
         4yK5C3H2BiIgtQ94HV16F8vfGyLxkesfDp6Tg1bPD+Sp7XBaG/ay4QxpAhUyCRh7LUcQ
         SACGALyDFJv6I3ACACKwopUg75kyA/eV8S42Zjoy7Vq3gvkqQ6ibvl1F+/cMRsSRz8xv
         fXCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713555878; x=1714160678;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P1BGAYuhr6Jr83/QJyI90NsvCbuHw5i7BYScCO/Al8w=;
        b=f6yNC1mrtlnrVjPa6a+h2vbT6vdTNChEkRnJTw9len38PVB0zzDIxHRs31Fs/JKoBs
         p4cPy7I1DWwvTDdrgS1/g04YVCLM4sXw1SZ2d9bd7suNFEgsfp5PdyJCvR/Gbv2tXq/H
         4PKyfP09e5aA3kDybxViZlBLViaLsTTRb2CtsHeQGSCqJ6JmoUnHZGQsco5Ia2LhZENQ
         hUzpCfswDe9XrNPL36WIcRlotCGqNCPVdJ+AGEEQMU44chl18olsofi02JCj3wyAb+1q
         I/U4eEOVFI5/4R92DbieN6J6jT7H0GdOfdC8Kycib7UpayocQnFKKmM+R1IR+IC+va8y
         WkEA==
X-Forwarded-Encrypted: i=1; AJvYcCWARR+Fln1ffB217oxwIP4JsSFlH3G6/tmt4E2kAJi4A/16nvNqGyZxD7uOGH71Yk8eUbAqAFDEjOwYpFCK6M8GkAK4znvqCpT+3jGzLw==
X-Gm-Message-State: AOJu0YxVVP4JYWDXLfQijrclcVXj6i3N9Q1SKzQUdtGDwfz96J5vU/Rp
	QHBJhsJBvuUroF3eD57cjn7iLhTIW+sr7ahN8nI5gAaQaFYOEgUtAaAc5MjFeHU=
X-Google-Smtp-Source: AGHT+IHseVtPGmY+lrtZnP4ORatX7mqfP+JxbR+E+KFQHqu5qkdPApEXoEstZaCDMmG0pP6LwJb0sA==
X-Received: by 2002:a05:6870:3119:b0:235:45b9:dfca with SMTP id v25-20020a056870311900b0023545b9dfcamr1177207oaa.18.1713555878592;
        Fri, 19 Apr 2024 12:44:38 -0700 (PDT)
Received: from [192.168.7.169] (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id pq4-20020a0568709c8400b002349fc4cdedsm940798oab.49.2024.04.19.12.44.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Apr 2024 12:44:37 -0700 (PDT)
Message-ID: <102f209c-3367-86ac-c583-73103d5510a9@gmail.com>
Date: Fri, 19 Apr 2024 14:44:36 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 4/7] PCI: qcom: Add support for IPQ9574
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
 <20240415182052.374494-5-mr.nuke.me@gmail.com>
 <CAA8EJpqKWJBqDUacE0xTLzxny32ZTStiRgXsd2LBD=Hou_CRBw@mail.gmail.com>
 <3cfc26e6-5587-d4a2-f217-1a30169ad1a0@gmail.com>
 <20240417070616.GB3894@thinkpad>
From: mr.nuke.me@gmail.com
In-Reply-To: <20240417070616.GB3894@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_124440_767336_E4B1E995 
X-CRM114-Status: GOOD (  15.85  )
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

Hi Mani.

On 4/17/24 02:06, Manivannan Sadhasivam wrote:
> On Mon, Apr 15, 2024 at 03:07:02PM -0500, mr.nuke.me@gmail.com wrote:
>>
>>
>> On 4/15/24 15:04, Dmitry Baryshkov wrote:
>>> On Mon, 15 Apr 2024 at 21:22, Alexandru Gagniuc <mr.nuke.me@gmail.com> wrote:
>>>>
>>>> Add support for the PCIe on IPQ9574. The main difference from ipq6018
>>>> is that the "iface" clock is not necessarry. Add a special case in
>>>> qcom_pcie_get_resources_2_9_0() to handle this.
>>>>
>>>> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
>>>> ---
>>>>    drivers/pci/controller/dwc/pcie-qcom.c | 13 +++++++++----
>>>>    1 file changed, 9 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>>>> index 14772edcf0d3..10560d6d6336 100644
>>>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>>>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>>>> @@ -1101,15 +1101,19 @@ static int qcom_pcie_get_resources_2_9_0(struct qcom_pcie *pcie)
>>>>           struct qcom_pcie_resources_2_9_0 *res = &pcie->res.v2_9_0;
>>>>           struct dw_pcie *pci = pcie->pci;
>>>>           struct device *dev = pci->dev;
>>>> -       int ret;
>>>> +       int ret, num_clks = ARRAY_SIZE(res->clks) - 1;
>>>>
>>>> -       res->clks[0].id = "iface";
>>>> +       res->clks[0].id = "rchng";
>>>>           res->clks[1].id = "axi_m";
>>>>           res->clks[2].id = "axi_s";
>>>>           res->clks[3].id = "axi_bridge";
>>>> -       res->clks[4].id = "rchng";
>>>>
>>>> -       ret = devm_clk_bulk_get(dev, ARRAY_SIZE(res->clks), res->clks);
>>>> +       if (!of_device_is_compatible(dev->of_node, "qcom,pcie-ipq9574")) {
>>>> +               res->clks[4].id = "iface";
>>>> +               num_clks++;
>>>> +       }
>>>> +
>>>> +       ret = devm_clk_bulk_get(dev, num_clks, res->clks);
>>>
>>> Just use devm_clk_bulk_get_optional() here.
>>
>> Thank you! I wasn't sure if this was the correct solution here. I will get
>> this updated in v4.
>>
> 
> Please rebase on top of [1] and mention the dependency in cover letter.

I am very hesitant to depend on another patch series. Is it okay if I 
include your patch in v4 of this series?

Alex

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

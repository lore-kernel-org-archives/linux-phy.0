Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31761C4345F
	for <linux-phy@archiver.kernel.org>; Mon, 15 Apr 2024 20:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gaBDVyyk+rE6gojD5pgLKH9XjgtiGEDax4nrYFb+RpI=; b=ZTbT/U7xpB+FDq
	fOYQOZT85lAWyxGFdBg5BUFEh2IpE57YJLGvw6DsZ1PuxN/Bwn37NE8qEI4Xc4sm1k0VVWTFllY8Y
	g5mvPKu8C8EXjVfyCuuQ/zGoHpSzNYdGEMOWD8iq41h1fx+BXbS0HZuqPz0ZhWW6HuzhPv7xcy4i3
	yqEzpfbTxeesgYEliLC//X+p17ol5ZaJJ6eXZvr96tnDW2/KOJQ2iY8VfPNKbQ0acFUvDsLDhIkXO
	Kud5CQprzXuuw4qqY+eEZaUe5izTWnGq0VGeFW4LJKLRc+KW3k2cFSsDui7QC2Rc/f4Uzo49enwTs
	fldBbXyhjyQmIR7E0Bhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwSbq-00000009mNg-3jfX;
	Mon, 15 Apr 2024 20:07:22 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwSbn-00000009mIQ-3QGj
	for linux-phy@lists.infradead.org;
	Mon, 15 Apr 2024 20:07:21 +0000
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-3c71c7e2d40so359769b6e.3
        for <linux-phy@lists.infradead.org>; Mon, 15 Apr 2024 13:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713211624; x=1713816424; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4JifNvzD6ATOs7XbgsOAoHx6qPqu77eFLvyJBkWlhOM=;
        b=lQcIfIXPn/lBWT45BhF0MAfYa9BpXUJe58pzBXgcOjvoonbTbkjCSaO62VJe6rQKay
         nrudmu4PmxwhZiCN81aXftcCOvFLB6nQhn9lFS5Xu7HWskehCm211qFKPMvvqDga4UwT
         4DAscSVxYQGASj3C2FOc4zVc038fqr4Ax4G8aZV05Tm73VLWrBHMtaL+gSMAjjSX7hKs
         PLEiPKcEtmdIdmuBqvnWxXePhZO9GpKa5lgELU70nF5uufOTSL+bMYDI5Nh5TVqJIm2B
         KR4DZguhd/vLQ4XpaF1MIGgpYDYyKHRuAziK0vDWbIfoqpIo8K14sM6JjKXS6Dixa24r
         hRIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713211624; x=1713816424;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4JifNvzD6ATOs7XbgsOAoHx6qPqu77eFLvyJBkWlhOM=;
        b=INZez1gOYtIwlcc8xs5tGPNSmUMsbvpmqd9SRxggusWcq41yKgzVjO6Nv1dlfzaokR
         e09dCpI5O9rEc+mjuuhF1yRoGt/2te6Gr+j275DMiIls0B0DlJEi4vVpEgBsC4+e7yCr
         cz1Wn/Grtv6yQu0RGf9++UgpFMjDzzMGnOE+8UCTYc5W4EmtIThYusyGtmRvB9WqmU13
         quJdAhZKWVDs25gHupXIR3tn2o8/Qaa5Mdh0ckRAlHbXFdfSKKUtV+cVhhf57qUzbwNf
         FToe9lKS7tIV+HZdH/+ETd+I8KUjh2sDRJNQuiSd0Wm870nczbo8idNcnm2YAiihb+6y
         sX7w==
X-Forwarded-Encrypted: i=1; AJvYcCXAMqEFvYbbKRqusgD+4taCbejGF2JcldgyQaGKkndUdvSm+Esvw+wGZrCoC6FBM5+rOMGhYg90TdaUjJlZCNWcR0hOCBQvpHgL+RtkPg==
X-Gm-Message-State: AOJu0YyHxNmBuxV2miC2eTEGpoaJutCejfrSFrCUFExjV8M245SDu6De
	DGviN4VVieScP+FM0kPY1bzSnwViKHLAGCGmaJRiICmXLxl+exBv14MZ9it6U8I=
X-Google-Smtp-Source: AGHT+IFy3N8X5eZmyOHaxpLK15msefQLyEskt5SJ1QGSSJgsfB/EzAOQUUeGT4MfulTZ3rIpNZyK2w==
X-Received: by 2002:a05:6808:b30:b0:3c5:e81a:b5b6 with SMTP id t16-20020a0568080b3000b003c5e81ab5b6mr11073891oij.59.1713211624554;
        Mon, 15 Apr 2024 13:07:04 -0700 (PDT)
Received: from [192.168.7.169] (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id e20-20020a05680809b400b003c5e679337esm1729084oig.47.2024.04.15.13.07.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Apr 2024 13:07:04 -0700 (PDT)
Message-ID: <3cfc26e6-5587-d4a2-f217-1a30169ad1a0@gmail.com>
Date: Mon, 15 Apr 2024 15:07:02 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 4/7] PCI: qcom: Add support for IPQ9574
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
 <20240415182052.374494-5-mr.nuke.me@gmail.com>
 <CAA8EJpqKWJBqDUacE0xTLzxny32ZTStiRgXsd2LBD=Hou_CRBw@mail.gmail.com>
From: mr.nuke.me@gmail.com
In-Reply-To: <CAA8EJpqKWJBqDUacE0xTLzxny32ZTStiRgXsd2LBD=Hou_CRBw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_130720_244873_53709C98 
X-CRM114-Status: GOOD (  16.93  )
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



On 4/15/24 15:04, Dmitry Baryshkov wrote:
> On Mon, 15 Apr 2024 at 21:22, Alexandru Gagniuc <mr.nuke.me@gmail.com> wrote:
>>
>> Add support for the PCIe on IPQ9574. The main difference from ipq6018
>> is that the "iface" clock is not necessarry. Add a special case in
>> qcom_pcie_get_resources_2_9_0() to handle this.
>>
>> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
>> ---
>>   drivers/pci/controller/dwc/pcie-qcom.c | 13 +++++++++----
>>   1 file changed, 9 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>> index 14772edcf0d3..10560d6d6336 100644
>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>> @@ -1101,15 +1101,19 @@ static int qcom_pcie_get_resources_2_9_0(struct qcom_pcie *pcie)
>>          struct qcom_pcie_resources_2_9_0 *res = &pcie->res.v2_9_0;
>>          struct dw_pcie *pci = pcie->pci;
>>          struct device *dev = pci->dev;
>> -       int ret;
>> +       int ret, num_clks = ARRAY_SIZE(res->clks) - 1;
>>
>> -       res->clks[0].id = "iface";
>> +       res->clks[0].id = "rchng";
>>          res->clks[1].id = "axi_m";
>>          res->clks[2].id = "axi_s";
>>          res->clks[3].id = "axi_bridge";
>> -       res->clks[4].id = "rchng";
>>
>> -       ret = devm_clk_bulk_get(dev, ARRAY_SIZE(res->clks), res->clks);
>> +       if (!of_device_is_compatible(dev->of_node, "qcom,pcie-ipq9574")) {
>> +               res->clks[4].id = "iface";
>> +               num_clks++;
>> +       }
>> +
>> +       ret = devm_clk_bulk_get(dev, num_clks, res->clks);
> 
> Just use devm_clk_bulk_get_optional() here.

Thank you! I wasn't sure if this was the correct solution here. I will 
get this updated in v4.

Alex

>>          if (ret < 0)
>>                  return ret;
>>
>> @@ -1664,6 +1668,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>>          { .compatible = "qcom,pcie-ipq8064-v2", .data = &cfg_2_1_0 },
>>          { .compatible = "qcom,pcie-ipq8074", .data = &cfg_2_3_3 },
>>          { .compatible = "qcom,pcie-ipq8074-gen3", .data = &cfg_2_9_0 },
>> +       { .compatible = "qcom,pcie-ipq9574", .data = &cfg_2_9_0 },
>>          { .compatible = "qcom,pcie-msm8996", .data = &cfg_2_3_2 },
>>          { .compatible = "qcom,pcie-qcs404", .data = &cfg_2_4_0 },
>>          { .compatible = "qcom,pcie-sa8540p", .data = &cfg_sc8280xp },
>> --
>> 2.40.1
>>
>>
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

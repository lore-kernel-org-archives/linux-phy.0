Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64801C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 13:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/bDClHJpZ15Szq1dw+FMhaXoDqxBnhvXZ8+oErFfcQo=; b=oU2kyqX/6NbMCu
	mrvenIHoiapianjmngA1CnDn1sHwLcj0PdsBRHqyYnqm7wI8y0NoXvy0OinV73E8r0/2DpKMfKyh/
	7yqHPly8r++2xI+o+JxCoGlO8X9ada77bxYoEjwNGta59CROjdpfeUQVrio+iEPFW2wLDKk3BtK/H
	V19ydDxodbpL2eJfW4O16r6NhIgGl5QGba+ZfYl9OfAEzpFnqGATBVgzlZBexe++lCEEXGhTTvtmu
	L3TE79hiOe553wTKBAQWWl54YlL20WgMApCxzCP+CtYlMFXSStPCICVDJBT2S4gGmQAcHMVUrmkSn
	W5ebLwa0oFYVKc9MQf1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot7ec-0062NQ-R2; Thu, 10 Nov 2022 13:31:38 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot7ea-0062KT-5m
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 13:31:37 +0000
Received: by mail-lf1-x136.google.com with SMTP id be13so3250154lfb.4
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 05:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ketLUUnsoyWouN0UzoicqQ1D0NB9EarJManqsfm6JHs=;
        b=EjoWG9qGZdA+cmM8l/whsRkqiI78AsL7dXW9Xf/o7LX+FJdxLRPybfO0gVPCemmzkr
         T7tSYRP1qpfy0gXEF3zbqegSztbMZkJI3GFEqLDUUG6XyO6OpU1m/IN4BB1GzVCUGyMW
         0ZknYwKnEsBCIgNyHKpUozqwX1hkP5S1MLZqQSnJXQBZ+3XUw8p/23jeTCNDrJDAV9vX
         uRAd9gYF9CuwNmiK0jqqD/+jPYh7LrkU2jugQEitlXp0Bv+UHAD324Hlw+YKEgCUjGp8
         OJI9n2AqdWTmoiZ5g1SnNl+mZTOxjMZ7t1OTFgUhtvzRIi5Ath2VcJsdPNYZdJ7h9vLC
         esuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ketLUUnsoyWouN0UzoicqQ1D0NB9EarJManqsfm6JHs=;
        b=i2rBK4IYU4jhFGC+9UQJQRXlsfIIc8YP8C6jkwzAONM4hoBksl2syM5DUpmeZVa41j
         xQHAVCwfP8ILHC5cznLzqBBQRlWHcHKFSJPtTQdwADFKATHqLoIM0KAqf7+Ac4ZpWMT+
         Am4AwsYe2ix/F/+GiDHHYiWxSyAV6d96o6I9ACVbj+BqYTEp8lqJnibHBNRYU4AEPa8P
         Q0UH/HAHcS6feGHE+xwWjPLCIvNFh8fov8SwUbvCUAxYAx3qxXLYZKe96w8CzKZQ5Uhd
         ShNQX2mmuRwYGthIchOi2hEyKtNUE/bO+9jdR1cODKicpGA7keHjKqkvSPJH3Hm4I0ij
         n3Ww==
X-Gm-Message-State: ACrzQf1K9Eq7NOK2m+t1w+sMi0aJxDQ6bLGNnnMy5n9UHBLITZhODUzY
	hyp918E2Z6Glz0hhxa8xh+1IKA==
X-Google-Smtp-Source: AMsMyM7dOA2ttjDI/ntgk+yGw8ab+rV2SYqP0CO+1QoY+yr6MNKkHeIG5DVm5U7jcfrHOI0lFfjHyA==
X-Received: by 2002:a05:6512:1108:b0:4a2:504f:b3f with SMTP id l8-20020a056512110800b004a2504f0b3fmr21697510lfg.169.1668087093172;
        Thu, 10 Nov 2022 05:31:33 -0800 (PST)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a21-20020ac25e75000000b004991437990esm2752373lfr.11.2022.11.10.05.31.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 05:31:32 -0800 (PST)
Message-ID: <0f7afb71-dc60-59f4-0708-ab54a0f6f4af@linaro.org>
Date: Thu, 10 Nov 2022 16:31:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 8/8] arm64: dts: qcom: sm8350-hdk: enable PCIe devices
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20221110103345.729018-1-dmitry.baryshkov@linaro.org>
 <20221110103345.729018-9-dmitry.baryshkov@linaro.org>
 <Y2zXmv8d9PIkO2/7@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y2zXmv8d9PIkO2/7@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_053136_268046_A6A0155C 
X-CRM114-Status: GOOD (  11.94  )
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

On 10/11/2022 13:51, Johan Hovold wrote:
> On Thu, Nov 10, 2022 at 01:33:45PM +0300, Dmitry Baryshkov wrote:
>> Enable PCIe0 and PCIe1 hosts found on SM8350 HDK board.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 16 ++++++++++++++++
>>   1 file changed, 16 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
>> index 0fcf5bd88fc7..58a9dc7705a5 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
>> +++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
>> @@ -222,6 +222,22 @@ &mpss {
>>   	firmware-name = "qcom/sm8350/modem.mbn";
>>   };
>>   
>> +&pcie0 {
>> +	status = "okay";
>> +};
>> +
>> +&pcie0_phy {
>> +	status = "okay";
>> +};
> 
> Looks like the required regulators are missing from the PHY nodes.

Ack, nice catch!

> 
> Johan

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

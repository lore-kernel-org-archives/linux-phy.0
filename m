Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93975C531F9
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 10:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDtZpFHlh9UI54veL0YVmdkCCD3GNAS6e5xGrEw4svw=; b=kU2sEivbMOen4n
	ooDlk4nzuVC6tG3CEqUNgE/d7ncbHsQPF8TSB6jZRzo65eJTj3eHi6ab2HJf6thtQAvN65Mf/T+MU
	LrONHVDXCrRZ2c6Ia4OXKVnVmcWWJXMira2wpk7YEwLOaoZQgOgGjgxN7LMp25DUuuy6csvHYUWPI
	bHisMnOWV28mzysFQH8kMs+R3eqKxH6ISWtrUMiwRQ4Lzyc6FqMGcDoJaM4FXzId+sV4tyAXK+piN
	kq6phgZdZ7/lm0Wus0RSQP2I3BWjyaGS3VlJMKN4BzBaynjnZlejaAEw8TAdw+kqHbJTWMV12Z5PF
	CMrURIZl0NVHxOP9J34w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wofPO-0000000519h-1PzA;
	Tue, 28 Jul 2026 10:51:38 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wofPM-00000005197-2Fe5
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 10:51:37 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-c1c4db7ca93so507458866b.2
        for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 03:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1785235895; x=1785840695; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=s0DjSdXiKBw0ZZEMZd8FTQi9iSoUjrgkZuIJH9PB0eg=;
        b=gpMsdoCG6mk2aPA4i+m2WF940L0VhcTsGJIrr7OJcAyzDA1uBWsovIevzJyp+ddrk1
         J21zLT/XiRvrfMHdWtKHsOnt0WiaDkhULRMmL6DXaHYsrPYBSURhZiQjh4jmPlRh9uGK
         ajCO/GM8NW206NjFOUxZjChSEnzNc0e9IJdEPUAHjmRqPtS8VFO1JWvan6FoWPI+YD+J
         ZYTtfrwADiWjt/Y1L2Y2MtBzgsvpPoADWa8gm9fJm5ArZR3ymH7g09uqJFOTGYJMJAet
         EkDZ9Uc0qgBs/KQXLmvHeQgMyaXmk8iplVd2LCpscX6ULXpyS3cc3FSaEjK6mruEcAml
         hZdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785235895; x=1785840695;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=s0DjSdXiKBw0ZZEMZd8FTQi9iSoUjrgkZuIJH9PB0eg=;
        b=C4sc1+RuDMVWFJ3nWDLAmQU5CpNY24wla3jfpSMmfmiWk5ukX6WeaxU0ZGQ1Cv/oKs
         spqnO/oe9Z/trjOXLlpt4KSJ7PrNgyWdCEpdCNh5DsKHYto78J+aiAMPNZpst3vzM377
         hSFDo4j7wwXgnSwICLgSp6Oi0Gp05RjfUrVKH8tQ6ax0PtkEKQqqRfFlx++Bcy9oz3P/
         quL2pWoF74QT6ken7/DXu6t/X6IjtCd760DUIaZfnENT5vRjh/+CC+Efh6uLex6dkKnP
         k9QMQd8hxhEyFcSyFvS116FAC0+PBtC0cImZCnxGL1KLq6V1HeRgTOryc+eJe7KJzYY+
         xcFQ==
X-Forwarded-Encrypted: i=1; AHgh+Rpz0JJeTVp5VDu901KDiMrxHu8dlBwP1957cS1Lvqr4kjcMyo26qOJw5QbIQSEVt6yJgFAUnyGAw7Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywfr9+0U2ysrTK6+8cR1lHnZuJgw2CKMuGHZlFcONLqZf0Flgzo
	rfb+Aj/YE7cCE3p9jdh1qtY95ypAZnt8HHNOwKhd1eLzAFcxG7Gfk4DPPR5hq8HXi7I=
X-Gm-Gg: AR+sD11jl+Ep00orI03OEhCS/euoofhJE0xQ5KRulGdulMuo8fUx52HsbV8udgC2erE
	LSPaRtNJNaVBAZpbECUs31KRRUVZK5a8S4NmfQDxejv0Z4YHh52DXwBxTt/yjPzrqvJsJbIBKMY
	iQSvZXPXnLblLI877lJ09cDj9CJPpeLorYJPZOvWbNkI1Ag4qO3o+kWXodbzu4VtAO0YP+gC5xD
	mmqyrAU3ieQuDADCekLqlXJEyxkPNBHeobKi4zLCUbRix2aP8gJkCkdZiwLYX3x+F7vC1r03tAZ
	UcWzh18zHhMJVsRgTDIR91P7+IopVGCx4Lhs2G6+ehHlD0ocVbOOR3bTSNdGG7mScoPcO56yPgR
	2DGQx2gUlB4HOnXP9vmFrBsrS6FiBGzNN8rGdOOcbs+hqQ08E4X0FsYb3ShAiC/pfn3hSwAISqV
	Dpdj3UnX/TVvzx
X-Received: by 2002:a17:906:fe43:b0:c15:ce72:9352 with SMTP id a640c23a62f3a-c1f72147fe4mr100806566b.33.1785235894410;
        Tue, 28 Jul 2026 03:51:34 -0700 (PDT)
Received: from [192.168.0.35] ([109.77.204.94])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1c32ebc3c0sm744772166b.51.2026.07.28.03.51.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jul 2026 03:51:33 -0700 (PDT)
Message-ID: <bdcb1c93-a560-42c2-9239-bc197b230a13@linaro.org>
Date: Tue, 28 Jul 2026 11:51:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 2/5] phy: core: Add devm_phy_get_by_of_node()
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-phy@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>
References: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
 <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-2-ae811e2f0799@linaro.org>
 <t2c7lvpp3xyoumd2gdzntkwb6xpdjvhzyp2hllukimzfzbwbvm@fkgwdtcqxof5>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <t2c7lvpp3xyoumd2gdzntkwb6xpdjvhzyp2hllukimzfzbwbvm@fkgwdtcqxof5>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_035136_625031_42727F0C 
X-CRM114-Status: GOOD (  14.24  )
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

On 28/07/2026 11:46, Dmitry Baryshkov wrote:
> On Tue, Jul 28, 2026 at 10:35:33AM +0100, Bryan O'Donoghue wrote:
>> Add a devm variant of phy_get_by_of_node() to allow for the familiar
>> pattern of having devres automatically release resources on the driver's
>> exit path.
>>
>> Signed-off-by: Bryan O'Donoghue<bryan.odonoghue@linaro.org>
>> ---
>>   drivers/phy/phy-core.c  | 34 ++++++++++++++++++++++++++++++++++
>>   include/linux/phy/phy.h |  7 +++++++
>>   2 files changed, 41 insertions(+)
>>
>> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
>> index ebfad5325072e..7af24f2f4120f 100644
>> --- a/drivers/phy/phy-core.c
>> +++ b/drivers/phy/phy-core.c
>> @@ -1029,6 +1029,40 @@ struct phy *phy_get_by_of_node(struct device_node *np)
>>   }
>>   EXPORT_SYMBOL_GPL(phy_get_by_of_node);
>>   
>> +/**
>> + * devm_phy_get_by_of_node() - devm managed lookup and obtain phy reference by device node
>> + * @dev: device requesting the PHY
>> + * @np: device_node of the PHY provider
>> + *
>> + * Returns phy associated with the device_node or ERR_PTR. devres manages
>> + * releasing resources.
>> + */
>> +struct phy *devm_phy_get_by_of_node(struct device *dev, struct device_node *np)
>> +{
>> +	struct phy **ptr, *phy;
>> +	struct device_link *link;
>> +
>> +	ptr = devres_alloc(devm_phy_release, sizeof(*ptr), GFP_KERNEL);
>> +	if (!ptr)
>> +		return ERR_PTR(-ENOMEM);
>> +
>> +	phy = phy_get_by_of_node(np);
>> +	if (IS_ERR(phy)) {
>> +		devres_free(ptr);
>> +		return phy;
>> +	}
>> +
>> +	*ptr = phy;
>> +	devres_add(dev, ptr);
>> +	link = device_link_add(dev, &phy->dev, DL_FLAG_STATELESS);
> Why are you adding devlink here?

Looking at 987351e1ea77 ("phy: core: Add consumer device link support") 
- adds this link to 
phy_get()/devm_of_phy_get()/devm_of_phy_get_by_index() to enforce 
suspend/resume ordering between PHY consumer and provider.

So the get_by_of_node() replicates that logic.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E345C54EBE
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 20:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bPRZzAz6odkhib7Ub0AnFsO2ebxjJdY9k21v91u1vGw=; b=xZlRC6JsJUaaaW
	47Il2OK8XGlvfoEUGkcP1SLHb9ROLv7fzf2wB/knydIOZO1pRdvxBhPXCbHu0c784ZJ2YrwdqAv+K
	c5WO0UsXEI8pf735EveV6XFDxCgWT8hev91KPe5Cm1+5FvNThgL9GxRXqNqr1eDXD8LnvNORTiXbs
	bMNGYNx6g5COqMyVghEXxJtD7t+KcGlnGPDuCmFnqCBvr6FNYiMs50KLyGTdS0RoYY2LfcirsALmf
	kqlxVY84XRbxtfapWQL4aQJBq7llWG5OUEZEz/bscPeUTemNbCMSCyLV8F/MryuhPhUVpT5hxjyH6
	2Latxr88R7cDWpuAVXGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG3ze-00GpH8-BP; Thu, 12 Jan 2023 20:16:10 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG3Km-00GWxM-5W
	for linux-phy@lists.infradead.org; Thu, 12 Jan 2023 19:33:57 +0000
Received: by mail-lj1-x233.google.com with SMTP id g14so20384174ljh.10
        for <linux-phy@lists.infradead.org>; Thu, 12 Jan 2023 11:33:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1JIYsMoXBydeWSn636wmG/Lb0+3KtaflCFgpsVqKASE=;
        b=qbrF/2QjIGACx037/GJu0XQQcZ1Y3hPaMwOzChvkOLdToaTqaiN4h2QOJc9QgTq2i/
         WDSgTjY9P/FNpiuJoM5wPVLAz9GT0a945L5MAGu42sDfYya0i7UbcDgXwt4flH7UPLfh
         8xIk7FFcJLUy5HS1asOTzx6v1zrirnNfs8IJAZ9Sk65shK24W+/ucRe0EbRKntUhWULc
         v2P+3CoYAuOVzE+CI+Zks73+sD6up7ltZtXiAM+73xNuLMFlfBSfnNxW3MK2EIQO5vG7
         c71f8rgNmCGMhusBMu6InU+O3AFVX7t+S8NzsIKAlgOBKKf5HDHzainln9Y0vcsEmU1q
         FCBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1JIYsMoXBydeWSn636wmG/Lb0+3KtaflCFgpsVqKASE=;
        b=l3RAAaYoczy/oLsCtJzEoRGmpSbnT+i51uvrw/RQOdxPyjnQxJEcs/xx4mGVxW0tZc
         GAS1O81JbnSuWmYnYjoD7V9GjhY7ivXM1NOlG91NWHb0REjNpM3BvB0MW0vat6r54w3a
         CT95ifeElHc5oxHUAgyKYrAPiKwKVa9/GakFP24JMn6b+L9P2U7L5AJagfFSUVuQi5Sb
         QrAbGCq8iebQpo9Ca3HzzZGYqGbuIiJQ70VcLj5d3V653uJEG+nvCYwXuA7VMxDuRm3V
         jajvDxRZq07Gk/JTX1Md3KK5llH5Ub7OtSH6nqKILR3oV43i9UdnPzTXtUsNuQCqjmm8
         TfwQ==
X-Gm-Message-State: AFqh2kohXjAtFgTChYm0TMIbRIhz3yRIm901I2+7LCEXdGIY+0vrpWT0
	mlBIdwTJaQc4YcWUcIDvh9/EWg==
X-Google-Smtp-Source: AMrXdXv3+ZSf9y1ilQIM6yrNYmOcMkr/mWVjVGi348euRwBv5qEqZ0+ZJ0/epNcIXFHgpqqxpAod+g==
X-Received: by 2002:a2e:80c9:0:b0:287:d8ce:6c9d with SMTP id r9-20020a2e80c9000000b00287d8ce6c9dmr2860076ljg.4.1673552032393;
        Thu, 12 Jan 2023 11:33:52 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id v25-20020a2e87d9000000b00288470f3145sm906564ljj.36.2023.01.12.11.33.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jan 2023 11:33:52 -0800 (PST)
Message-ID: <cf968a25-02f7-d402-530b-eb379b707e54@linaro.org>
Date: Thu, 12 Jan 2023 21:33:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 2/3] phy: qcom-qmp-combo: Add config for SM6350
Content-Language: en-GB
To: Vinod Koul <vkoul@kernel.org>, Johan Hovold <johan@kernel.org>
Cc: Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20221130081430.67831-1-luca.weiss@fairphone.com>
 <20221130081430.67831-2-luca.weiss@fairphone.com>
 <Y6xP4YRAp68TfxFi@hovoldconsulting.com> <Y8BIX+js1ircJyb9@matsya>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y8BIX+js1ircJyb9@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_113356_267561_117ABE74 
X-CRM114-Status: GOOD (  14.96  )
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

On 12/01/2023 19:50, Vinod Koul wrote:
> On 28-12-22, 15:17, Johan Hovold wrote:
>> Luca, Vinod,
>>
>> On Wed, Nov 30, 2022 at 09:14:28AM +0100, Luca Weiss wrote:
>>> Add the tables and config for the combo phy found on SM6350.
>>>
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>> Changes since v2:
>>> * Drop dp_txa/dp_txb changes, not required
>>> * Fix dp_dp_phy offset
>>>
>>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 126 ++++++++++++++++++++++
>>>   1 file changed, 126 insertions(+)
>>>
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>> index 77052c66cf70..6ac0c68269dc 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>
>>> @@ -975,6 +1039,19 @@ static const char * const sc7180_usb3phy_reset_l[] = {
>>>   	"phy",
>>>   };
>>>   
>>> +static const struct qmp_combo_offsets qmp_combo_offsets_v3 = {
>>> +	.com		= 0x0000,
>>> +	.txa		= 0x1200,
>>> +	.rxa		= 0x1400,
>>> +	.txb		= 0x1600,
>>> +	.rxb		= 0x1800,
>>> +	.usb3_serdes	= 0x1000,
>>> +	.usb3_pcs_misc	= 0x1a00,
>>> +	.usb3_pcs	= 0x1c00,
>>> +	.dp_serdes	= 0x1000,
>>
>> I would have expected this to be 0x2000 as that's what the older
>> platforms have been using for the dp serdes table so far. Without access
>> to any documentation it's hard to tell whether everyone's just been
>> cargo-culting all along or if there's actually something there at offset
>> 0x2000.

usb3_serdes is 0x1000, so dp_serdes equal to 0x1000 is definitely an typo.

Judging from the downstream dtsi, the DP PHY starts at offset 0x2000. So 
dp_serdes is equal to 0x2000, dp_phy = 0x2a00, ln_tx1 = 0x2200, ln_tx2 = 
0x2600.

>>
>> Vinod, could you shed some light on this as presumably you have access
>> to some documentation?
>>
>>> +	.dp_dp_phy	= 0x2a00,
> 
> No sorry, I dont have access to this version...
> 

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

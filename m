Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2D6BC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 14:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHdmRatEJKHfz3IaDCaNvvS7slS/+OiElr/18P1JM1o=; b=dlL6pWuDE8Khvl
	4A0YhbVMCeqLrMQXlHM6Lavd6BEvlTaKPz/UM8u9mVqLUCDMdZyoihoyXtSKUbmJ5qiXe2CO/nAuC
	rtocWQBuW58TlbsSt8DtrZB6YFe+z0jfS87/xJAHwtQkV90MB/YT5ZVZorxb5NxVAC9UVcVN8RwZQ
	Whu1A6/byS8PPSCXZn3SUy5CKCEbRtiVbsAr46Aww3YeCKuv1FV2dKZAtmOyP7YjQITC8GGe8BYfX
	byl8bOsNsTxPmdoCdaQkjYCsg8xLf7NSsUti/v1m+N1nchpEOEw9gFT5d5nIfS4KHtWtiQNVWhZ29
	mVk7lVBl1i2GvCr5OTOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiGRq-004W4t-Dy; Tue, 11 Oct 2022 14:41:34 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiGRo-004W3z-Aa
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 14:41:33 +0000
Received: by mail-lf1-x129.google.com with SMTP id bp15so21415236lfb.13
        for <linux-phy@lists.infradead.org>; Tue, 11 Oct 2022 07:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L6X11cP/UuvWsmC5+JuzfzTsN8jfZXH1VKI3byABTrk=;
        b=l9ffPAt40gUOCMlYqkfjDGnFdUwMK21YU6Tl+TgF1rex0RCnlsSGG3VWpNY/8JV+jD
         R3aqOZcdkOSLoaXxRm4TvkdOb2bsAb49/c8d057cxJUyd6oTAweqojh4ni33/fAjsOmL
         aTn8S6YwujhKPaKSX6e/qJv7pEAGVvNoBDFFkI7vULfKjH+FvbrN/1toIf+kpAK6Y1Oq
         So/PbhDWsklYINBk+kbhG0C8TJTpLXZ5MIEKTbDBOr5AdmZTyHAuyPujQ/0/oEFPZ6bi
         GtxUzLl47VWCeqFwCyHeWO5fKuVLng4y5mAX/mwDorRLoJ+H4NyEJqLhjlIEc0+jYRel
         hy0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L6X11cP/UuvWsmC5+JuzfzTsN8jfZXH1VKI3byABTrk=;
        b=zeqiQjT8xWae1zKSNksPzvF2slfdp5E40DOI1ckoCTip8y5zqKPjtyUHYvf9gWF8HG
         A+vg68r71e3ek5tnvAKia69LVtyfEO561Pn6NyyrBDAo4TFbEiSsGSFAJIKytv9Dv2ha
         q4SdTUUAfSVtF4I0QIbbBRso3C0qSXqzXl5zc5JznZmyG12fjWjCC94qPoUCYSJ5e7D8
         ZxE8b4wfJ1oKv8LmvxAidLQ6tOjGP0m6KKG4q1R+kqgk6/9pxx449oy/VmODWeQJ7P7Y
         CY5PV/qgf6W85G/O6Y/MIzzpz2F9nvNBx7lRDR28xc96mzvFEcayPsn6LCoMP2B03euU
         Cacg==
X-Gm-Message-State: ACrzQf1nSuyZoTTRKk3Y6PLDmmGaiPxtZ0AwEMAcAHRGTEBGKuBOm6JO
	KIfTnd90Ju+HJzF8ZT/BHCIrQE0TkwOMrQ==
X-Google-Smtp-Source: AMsMyM777wQ9nWguMeYr7N7mq+Bdd14bNohbJtWdNzwjLNWojR+TZ3UstXaUlwi4BsWWwmZRrD8C9w==
X-Received: by 2002:a05:6512:3090:b0:4a2:7db9:b15c with SMTP id z16-20020a056512309000b004a27db9b15cmr8204163lfd.424.1665499289726;
        Tue, 11 Oct 2022 07:41:29 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id p20-20020a056512235400b004a05622a852sm1880189lfu.241.2022.10.11.07.41.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 07:41:29 -0700 (PDT)
Message-ID: <dbd85c78-86dc-8dd0-83d2-43af933e5a92@linaro.org>
Date: Tue, 11 Oct 2022 17:41:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 08/13] phy: qcom-qmp-pcie: drop power-down delay config
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221011131416.2478-1-johan+linaro@kernel.org>
 <20221011131416.2478-9-johan+linaro@kernel.org>
 <66261491-530d-c368-6cc8-daeef74fcbda@linaro.org>
 <Y0V1TIBySTPhYqX/@hovoldconsulting.com>
 <ebe1e26a-7335-29ac-4990-6b8fdb02ba7c@linaro.org>
 <Y0V66q53I4ivlXI+@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y0V66q53I4ivlXI+@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_074132_403464_6DA74BEC 
X-CRM114-Status: GOOD (  29.31  )
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

On 11/10/2022 17:17, Johan Hovold wrote:
> On Tue, Oct 11, 2022 at 05:04:04PM +0300, Dmitry Baryshkov wrote:
>> On 11/10/2022 16:53, Johan Hovold wrote:
>>> On Tue, Oct 11, 2022 at 04:46:53PM +0300, Dmitry Baryshkov wrote:
>>>> On 11/10/2022 16:14, Johan Hovold wrote:
>>>>> The power-down delay was included in the first version of the QMP driver
>>>>> as an optional delay after powering on the PHY (using
>>>>> POWER_DOWN_CONTROL) and just before starting it. Later changes modified
>>>>> this sequence by powering on before initialising the PHY, but the
>>>>> optional delay stayed where it was (i.e. before starting the PHY).
>>>>>
>>>>> The vendor driver does not use a delay before starting the PHY and this
>>>>> is likely not needed on any platform unless there is a corresponding
>>>>> delay in the vendor kernel init sequence tables (i.e. in devicetree).
>>>>>
>>>>> Let's keep the delay for now, but drop the redundant delay period
>>>>> configuration while increasing the unnecessarily low timer slack
>>>>> somewhat.
>>>>
>>>> Actually, the vendor driver does this 995..1005 sleep. But contrary to
>>>> our driver it does that after programming whole PHY init sequence, which
>>>> includes SW_RESET / START_CTL, but before programming the pipe clocks.
>>>
>>> Right, it does it after starting the PHY which means that you don't have
>>> to poll for as long for the PHY status.
>>>
>>> It's a different delay entirely.
>>
>> No-no-no. The 995-1005 delay was added guess for which SoC? For ipq8074,
>> where the config tables contain the ugly CFG_L writes for SW_RESET /
>> START_CTRL. So, it is the same delay, but added by somebody who didn't
>> care enough. The original 10-11 delay is a completely different story,
>> you are correct here.
> 
> Yeah, I noticed that ipq8074 was the first to abuse the prwdn_delay
> and possibly because of it starting the PHY already in its PCS table
> (which it never should have).
> 
> I'm talking about the intent of pwrdn_delay which was to add a delay
> after powering-on the phy and before starting it.
> 
> The vendor driver has a 1 ms delay after starting the PHY and before it
> starts polling as the PHY on newer SoC tend to take > 1 ms before they
> are ready.
> 
> So, I still claim that that delay in the vendor driver is a different
> one entirely.
> 
>> Thus, I'd say, the PCIe delay should be moved after the registers
>> programming.
> 
> No, not necessarily. Again, that's an optimisation in the vendor driver
> to avoid polling so many times. Since I can say for sure that there are
> no PHY that start in less than 1 ms, I wouldn't add it unconditionally.

I don't think it's an optimization. For me it looks like some kind of 
stabilization delay before touching pipe clocks.

> 
> Either way, separate change.
>   
>>>> I think we can either drop this delay completely, or move it before
>>>> read_poll_timeout().
>>>
>>> It definitely shouldn't be used for any new platforms, but I opted for
>>> the conservative route of keeping it in case some of the older platforms
>>> actually do need it.
>>>
>>> My bet is that this is all copy-paste cruft that could be removed, but
>>> I'd rather do that as a separate follow-on change. Perhaps after testing
>>> some more SoC after removing the delay.
>>>
>>> SC8280XP certainly doesn't need it.
>>
>> I think in our case this delay just falls into status polling. We'd
>> probably need it, if we'd add the noretain handling.
> 
> I'm not sure I understand what you're referring to here ("noretain
> handling")?

 From what I see in the downstream (4.19 at hand), the sequence is the 
following:

program_phy_config() // including SW_RESET & START_CTRL

delay

for pipe clocks:
clk_set_flags(info->hdl, CLKFLAG_NORETAIN_MEM)
clk_set_flags(info->hdl, CLKFLAG_NORETAIN_PERIPH)

set clock rates, prepare & enable pipe clocks

wmb()

poll for the PHY STATUS


-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

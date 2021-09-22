Return-Path: <SRS0=p6f2=OM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CA7EC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 23:47:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EB53260F0F
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 23:47:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EB53260F0F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6FZaYzsNDC4B1QagEgVqsE/jh8Sda8cFndHb/NIN1Yw=; b=FNyYCX60MslIZHAK1v0qh/BEog
	5jyOlkoqJIcNvbCEL8D7AniBWMMpUVUKa6x9jL3vv2qF5MQamFazXiB04fHoPnwsiZ8xxCK81sJ/1
	R7S3WL8lkPRm6mSAcmKGEICdoPjI7REpJEdIzTOYa1Y+UTLShRf7+E6crrIXNSdrDzfQ0Q7W818ed
	9kUaug6gn12N/hlvdCRmdHlzzPMvQoVk7aJOqVapkasSzuzYORzuspY1HH1UhUEOQo8Ah5odKiodb
	T97QvV8m6Cqhvts7OqDmDKgkRvuoOK++aiTEPeo3RFTJZUYCy/qVuW6J31jpFbinf+XlW1wIabfT5
	+IFvfJvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTBx6-009xKP-7x; Wed, 22 Sep 2021 23:47:00 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTBx3-009xJu-Ee
 for linux-phy@lists.infradead.org; Wed, 22 Sep 2021 23:46:59 +0000
Received: by mail-lf1-x134.google.com with SMTP id z24so19269215lfu.13
 for <linux-phy@lists.infradead.org>; Wed, 22 Sep 2021 16:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aAGBCjkspExmpXroz1trymUPrSbhC0Yih1wDe+h05ag=;
 b=JmattVShzBibso7FtXu3lo0vHfWEPqJcwLpy2lhH84uohEya5HfNHKn4Es7MVeta6B
 yB/xUfGizyXhuQxTROHTVqNipO+5vaRcy63QBvaFrwWnJK1dQpWJXh4W5sj81DqfnECt
 NOpxi9BDlTVN3zRpGTWm1qwhaHPfpbZvYVRT0xIDDbjqKpajs1fBfy829cAgq3ahL/FM
 kuyfDz0X/bRePpt9KOg3LRn1Db0sSyd0NjHK24hr7maUu9AgYnUJxT4xn5VwCiMQM87v
 5kvKLCOjQtkcgs4MYyq0XL0aTKUKBrthPk+DiDyZMHQG5fFBSnUo9Dbdevig9dG1AGNt
 jvTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aAGBCjkspExmpXroz1trymUPrSbhC0Yih1wDe+h05ag=;
 b=Tgat6VcM42gvI/UAePdqprwbe2cMdtncRa3xfbA0sFyP79yoAOlHSVPTkqxthnHr+k
 sQgAqHKA+0PQsBY46zQbTiOSmb7w4OXcMvVD27IFhV97DURH3ruacgNPXHr3G9JbIMsv
 GdoZZrKo5pzogNK8CkGHMuBj3QmVliuyXC7lDZNjXAOGEWOEQLQ99jvIcaYgEhBooI6Q
 gqsbD0izIL2EU81+hdwfAWKExxWRHZ6RRFuNgEEYsv7D9MR4AGXp7bz9yeGhQP4exnFa
 xWsv/K2lLLLUl8a4iQd0tU6bzkV0jwSGj3oR+iuJZAVPtjdVUu81AocBVJZCYICHcYKS
 70NA==
X-Gm-Message-State: AOAM532Q0Rs7r9ZisSkTOMLAFT2GipSyS59t1nN3XRzYROVraYqUWIwY
 s0b0eJkPXxNMZ8yGhtI6o8XS2c+Klcy/3w==
X-Google-Smtp-Source: ABdhPJwZI5sE/S305lCmHN3qymUOeIcki+pNf7yR75LekUX3JQBM2TUjiyH+C3cXPCivKZxmqxZMoQ==
X-Received: by 2002:a05:651c:b12:: with SMTP id
 b18mr2036215ljr.512.1632354416017; 
 Wed, 22 Sep 2021 16:46:56 -0700 (PDT)
Received: from [192.168.10.17] (88-112-130-172.elisa-laajakaista.fi.
 [88.112.130.172])
 by smtp.gmail.com with ESMTPSA id b28sm389970ljf.101.2021.09.22.16.46.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Sep 2021 16:46:55 -0700 (PDT)
Subject: Re: [PATCH] phy: qcom-qusb2: Fix a memory leak on probe
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20210922221613.2115038-1-vladimir.zapolskiy@linaro.org>
 <YUu0txXFw2fL3Fgq@ripper>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Message-ID: <f4bd4988-543b-ee3f-a37b-1d0185760ea1@linaro.org>
Date: Thu, 23 Sep 2021 02:46:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <YUu0txXFw2fL3Fgq@ripper>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_164657_551505_5F801172 
X-CRM114-Status: GOOD (  20.04  )
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

Hi Bjorn,

On 9/23/21 1:56 AM, Bjorn Andersson wrote:
> On Wed 22 Sep 15:16 PDT 2021, Vladimir Zapolskiy wrote:
> 
>> On success nvmem_cell_read() returns a pointer to a dynamically allocated
>> buffer, and therefore it shall be freed after usage.
>>
>> The issue is reported by kmemleak:
>>
>>    # cat /sys/kernel/debug/kmemleak
>>    unreferenced object 0xffff3b3803e4b280 (size 128):
>>      comm "kworker/u16:1", pid 107, jiffies 4294892861 (age 94.120s)
>>      hex dump (first 32 bytes):
>>        00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>>        00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>>      backtrace:
>>        [<000000007739afdc>] __kmalloc+0x27c/0x41c
>>        [<0000000071c0fbf8>] nvmem_cell_read+0x40/0xe0
>>        [<00000000e803ef1f>] qusb2_phy_init+0x258/0x5bc
>>        [<00000000fc81fcfa>] phy_init+0x70/0x110
>>        [<00000000e3d48a57>] dwc3_core_soft_reset+0x4c/0x234
>>        [<0000000027d1dbd4>] dwc3_core_init+0x68/0x990
>>        [<000000001965faf9>] dwc3_probe+0x4f4/0x730
>>        [<000000002f7617ca>] platform_probe+0x74/0xf0
>>        [<00000000a2576cac>] really_probe+0xc4/0x470
>>        [<00000000bc77f2c5>] __driver_probe_device+0x11c/0x190
>>        [<00000000130db71f>] driver_probe_device+0x48/0x110
>>        [<0000000019f36c2b>] __device_attach_driver+0xa4/0x140
>>        [<00000000e5812ff7>]  bus_for_each_drv+0x84/0xe0
>>        [<00000000f4bac574>] __device_attach+0xe4/0x1c0
>>        [<00000000d3beb631>] device_initial_probe+0x20/0x30
>>        [<000000008019b9db>] bus_probe_device+0xa4/0xb0
>>
>> Fixes: 0b56e9a7e835 ("phy: Group vendor specific phy drivers")
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qusb2.c | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
>> index 3c1d3b71c825..061665ba8ef7 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
>> @@ -589,6 +589,8 @@ static void qusb2_phy_set_tune2_param(struct qusb2_phy *qphy)
>>   		qusb2_write_mask(qphy->base, cfg->regs[QUSB2PHY_PORT_TUNE2],
>>   				 val[0] << HSTX_TRIM_SHIFT,
>>   				 HSTX_TRIM_MASK);
>> +
>> +	kfree(val);
> 
> Nice catch, here's my:
> 
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Thank you for the review, however I have just found a still unresolved
memleak when zeroes are returned, so there is v2.

> 
> That said, do you think we could replace the nvmem_cell_read() with a
> call to nvmem_cell_read_u8() to avoid the need to clean it up instead?

It might be a good idea to do it in a separate change, nvmem_cell_read_u8()
is found in v5.9 and later versions, so its usage prevents a probable
backport to stable branches, because the original problem comes in v4.12.

FWIW the sent fix should be clearly applicable to v4.20 and later versions
only, if it's needed, separate changes are required to cover v4.12-v4.20
range.

--
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

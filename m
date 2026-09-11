Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 328DCC88E4D
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 16:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L5ZspyCX9L7or5rhucx8RYuydkbiCQ3CJsvKPrKGcRg=; b=4ix9wd51z+7Khc
	OP8vZen340USTg+fr+T55HbqQZPJmHeqgqNqSsBkwujUf7qZu16BqvHkRHZKrUYJPxgspyAF9vRaU
	Ell7Nily1AB1wiqp1kGGouznCwTo3Rloy5KTcskx6Mp4NbFincIp/TfDOz7PGUMId1VpsdyunVZdh
	93ApMQqX8bdn9F+SURS15WrUIcgdS46WN++JHUNO8stySYAnrT+F1iqYZ6QDBxmO4gWjjlhOq4B5k
	0Xxv03qHOzKtV355NxwFe/WY1lfMj9dtnRFwCQ/BQIqV/mcNB+6rYdRoJrdPdaNYdKa07OLnrkqP2
	siwaecwDDf82qa8GQC9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53vv-0000000HBoX-2kfq;
	Fri, 11 Sep 2026 16:16:59 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53vt-0000000HBnr-2rYO
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 16:16:58 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49cd38e0e5dso856015e9.2
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 09:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1789143415; x=1789748215; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AEScTZKIB90XpkBNEHwOjr8hKNAnt7HkPQnGxzbxNrY=;
        b=O+YIU3SspSG6Gtd2ARpsw7OpetxOgDsrmglbce2fEnDxto2/Ha2BuMN25WD0GS6rYO
         uxM6Daglf3blw6qTjsjKsmDzJNIf8xl9NBUYNO3gpiclXmUc5MTyK+Fo3vvEiZu3i7Jd
         e4VOSECYbkA2UrKZMY3rEDYYSgDjm/fvNklnR5N7tAxc46vVRIfkQwtaF2kY9B0KqSac
         Pmu8iiZCEYzwcfF2wnBYlpMdfPjcuWW5Fr6KSyOUdgGU5+xBc7LUbJryXL3WMgG69u2l
         vwR1xoh7df8Da5B/0IYLS+HnrWCEkQkDpQth5UDH7Psx41rMiAd8rcEXsnvOc61PPplA
         lJPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789143415; x=1789748215;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AEScTZKIB90XpkBNEHwOjr8hKNAnt7HkPQnGxzbxNrY=;
        b=RcEgXOwxPx69TcWNDOIFcuOsRsSgfAvCl6NJXTYCLiCziOCYy6V8IvjHK60tm5lGdW
         XR455OKavE+JUC2yLDv1fxios8uPMPqdcZFuI5lGSnlH0VK33PyiRkbDg1lxM4hc8uQO
         ROUrogln9m8chaLPj+T7mWtdIjLwBnXKA9gnNeBrAZ5S13v56rwZY+EhuSRKDyp/zVTM
         1bfiUVhD2Mqs7JgXDJh7Cm/UFcX5Z6TzeXG5gpwDbXMatEfaVLeFptDb9Q2vmKXL69L5
         6wK4PuldlNX6N+j6/PucMA+8YOB5GcA80EF15FL6P3U8/7mvSFXtSM97WTbi6BsFfLa8
         /t5A==
X-Forwarded-Encrypted: i=1; AKwUvBy5DGh526b3fjclr2oqhvR8vYAp0ucxxNBfnab3qgD5TXe5C3qGB5s9BZDmD+K+R2X47x1dY0U8tzw=@lists.infradead.org
X-Gm-Message-State: AFuF++lwRYzMHQ8wydhCUBt74g9pHd8DnhdUfdBukJvMPmSqdZpCiZR3
	L9Av1m0Bmz6Bx8+sljICZgPUriQFNBtBx2uN83DeCmGr7vQBNfrUstinuuMXgUwsKGs=
X-Gm-Gg: AYBFou2PVLWu0ysyCEhWPP3SVZ+PADYcw+dE3hXHlkwfzFS+1JwCnfHVWD0yBvRvjjQ
	qjbjEwNstJUGiYGoQNgGJs6y8smd8B0Fl2pCT8/rVPEOHyppF4M+NkdJh99hI0JHkqdmxR3z7ho
	rS9UBBGmVgvvpavxotINtvDF0Eyk8SXjZivmqXx84XU68v2cxNbA8Bpxylk+HtEDUQBmioCeC4F
	xsf0yCPN8rFGSu+w5YsWGzMsYR8KgcNTGGe/UCsR51spgi4xmuVf1EnnOckA3nZkmcK8XCY2+0O
	g2ai8XBBFDuFQwRQJMXIJAMBoFv8CUJlJo65MzJc93Qi4Flgc6KLNhB+H5tUtRikh8oD+thDFAV
	kf0setj2XcUspqHHpArA1SJksH/8fmVUtFAGMw7Wqbwn+V1ry57+VrKbP+n839bKNu/nUG9tTzC
	P5DuDixKLRppXvaDgwWvsJ18afSMSWWlG+ca4Jz46S5nb/DWlYicDYmT6gDONnirlMCSzJZImug
	SDE
X-Received: by 2002:a05:600c:c178:b0:49c:f512:2361 with SMTP id 5b1f17b1804b1-49e61a15c31mr119640575e9.14.1789143415254;
        Fri, 11 Sep 2026 09:16:55 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.97])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e62231360sm50771265e9.4.2026.09.11.09.16.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2026 09:16:53 -0700 (PDT)
Message-ID: <42c0a43e-df20-48c2-882a-bd8e81fffd85@tuxon.dev>
Date: Fri, 11 Sep 2026 19:16:51 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5] phy: renesas: rcar-gen3-usb2: Avoid long delay in
 atomic context
To: Pavel Machek <pavel@nabladev.com>,
 Claudiu Beznea <claudiu.beznea+renesas@tuxon.dev>
Cc: yoshihiro.shimoda.uh@renesas.com, vkoul@kernel.org,
 neil.armstrong@linaro.org, geert+renesas@glider.be, magnus.damm@gmail.com,
 prabhakar.mahadev-lad.rj@bp.renesas.com, linux-renesas-soc@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, stable@vger.kernel.org,
 Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
References: <20260716183246.3183877-1-claudiu.beznea+renesas@tuxon.dev>
 <ap_o-T5GGMFGYZ4v@duo.ucw.cz>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <ap_o-T5GGMFGYZ4v@duo.ucw.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_091657_755620_7F80492B 
X-CRM114-Status: GOOD (  29.12  )
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

Hi, Pavel,

On 9/8/26 13:52, Pavel Machek wrote:
> Hi!
> 
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> To address this, release the spin lock before sleeping for 20 ms as
>> required by the HW manual and reacquire it afterwards. To avoid other
>> threads entering the critical section and configuring the HW while the
>> software is waiting for the OTG initialization to complete, introduce the
>> otg_initializing variable alongside the otg_init_done wait
>> queue. Any
> 
> This is quite complex.

I agree. I tried to keep the current driver capabilities and adjust it for the 
long delay.

> How is this solved in mainline?

What do you mean by "How is this solved in mainline?" ? This patch is intended 
for mainline.

> 
>> To avoid failures when multiple PHYs call struct
>> phy_ops::rcar_gen3_phy_usb2_init() simultaneously, and the PHY responsible
>> for initializing the OTG either fails or deinit quiqly and another PHY
>> takes over the PHY init role), the code waiting for the
>> channel->otg_init_done wait queue retries up to NUM_OF_PHYS times.
> 
> And more complexity.
> 
> Example of the code is quoted below, and we are returning EBUSY to
> userspace if it tries to change role at the wrong time. Not great.
> 
> As far as I understand, the initialization on needs to be done
> once.

Yes.

> Instead of exposing /sys interfaces before hardware is ready,
> and then doing complex dance when /sys is accessed, could we
> initialize hardware in rcar_gen3_phy_usb2_probe or something?

It may be achievable, I haven't tried, but that would involve, at least, 
enabling PHY related stuff that consumes power at times this may not be needed.

> 
> Looking at the code:
> 
>          /* If current and new mode is the same, this returns the error */
>          if (cur_mode == new_mode)
>                  return -EINVAL;
> 
> this should probably just return success? (EINVAL is certainly wrong
> error code here.)

Things could be improved, indeed. This is however code that was present in this 
driver before this patch.

Thank you,
Claudiu

> 
> Best regards,
> 								Pavel
> 
>> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
>> @@ -392,26 +408,58 @@ static ssize_t role_store(struct device *dev, struct device_attribute *attr,
>>   	struct rcar_gen3_chan *ch = dev_get_drvdata(dev);
>>   	bool is_b_device;
>>   	enum phy_mode cur_mode, new_mode;
>> +	int retries = NUM_OF_PHYS;
>> +	unsigned long flags;
>> +	int ret = -EIO;
>>   
>> -	guard(spinlock_irqsave)(&ch->lock);
>> +	spin_lock_irqsave(&ch->lock, flags);
>>   
>> -	if (!ch->is_otg_channel || !rcar_gen3_is_any_otg_rphy_initialized(ch))
>> -		return -EIO;
>> +	if (!ch->is_otg_channel)
>> +		goto unlock;
>> +
>> +	while (retries-- && ch->otg_initializing) {
>> +		spin_unlock_irqrestore(&ch->lock, flags);
>> +
>> +		ret = wait_event_timeout(ch->otg_init_done, !ch->otg_initializing,
>> +					 USB2_OTG_INIT_TIMEOUT);
>> +		ret = ret ? 0 : -ETIMEDOUT;
>> +		if (ret && !retries)
>> +			goto exit;
>> +
>> +		spin_lock_irqsave(&ch->lock, flags);
>> +	}
>> +
>> +	/* If another thread started a new initialization just return -EBUSY. */
>> +	if (ch->otg_initializing) {
>> +		ret = -EBUSY;
>> +		goto unlock;
> ...
>> @@ -1007,6 +1226,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>>   		return ret;
>>   
>>   	spin_lock_init(&channel->lock);
>> +	init_waitqueue_head(&channel->otg_init_done);
>>   	for (i = 0; i < NUM_OF_PHYS; i++) {
>>   		channel->rphys[i].phy = devm_phy_create(dev, NULL,
>>   							channel->phy_data->phy_usb2_ops);
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

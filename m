Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F22B2CA0EE9
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 06:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TXdWLGajKwR3r3GBgzKM+iZPbEOKG9jRnZUUVQioGac=; b=sMHw2pYkbto6Do
	FO/NVF4yMTDYecqOKjUsWBfG7dGpU4ba/kX0MjTgCYI9GQSQhwVp1gtNxnBEtjyUeREdl4TnJ0428
	5hsa1xZwsZyqu9lGVIcVX+HnbkUgFIHYNN/dQrrsCa2AWEMutjZcGott0PNXkC/Gkxu2NKEizSQ++
	q6zk5UnlkPJwpHZhtBqnfAGGZE/40YLUXxxWQgXmHMmItEIHCz3i1hhlo6RTpJwhkMM8Q1VFWf7YX
	mM4CPyYGCZievJZeNQgZcTMfOMzeoZ5lM0fE71c6tWDCxK7KkGlbPdlSJOOAltqHRPyCObWQKlhnp
	5lx9DIc5kP/vDXMmZiCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoFR0-00000009Twl-2nyC;
	Tue, 19 Aug 2025 06:03:02 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoFPU-00000009Tll-2v01
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 06:01:30 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-45a1b05a59fso37858825e9.1
        for <linux-phy@lists.infradead.org>; Mon, 18 Aug 2025 23:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1755583287; x=1756188087; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jCrxZo4+iFbzWuafqcWchsTA3vFDSS7vqG8us0w6qHw=;
        b=AnHFZZBg2JZOKTccRWOWStWbV4EYyf+2mjuzR4uVklGb7ZkiKsjucziUbh3/xumnyB
         u30O+drnw16GKPaIE+Cbp092FKUmMt1L1z2adtTnBQajLyb1J4eS65YAmmsDmT+a2VE8
         JWaMn7c1fqpcwZslXlCYzRnO56vt+xl3CG8G9UlBOd3wjC31Gex+FQ4TF/4ulBZCqMvw
         Wdq8qYlsA8bQvk/KkOCggeJCCktp/50jb/kjXacKqI5DXrx8O3X6Y7nv768cRdv01DDW
         mGfsX1sqoi3ZO15MFJJp4o4FaTwE0b1oK3YIKapPjKc45xnefp61UcrvkOYVzK73V3iD
         4YcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755583287; x=1756188087;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jCrxZo4+iFbzWuafqcWchsTA3vFDSS7vqG8us0w6qHw=;
        b=GYyfwV1ccrjy5OWUY6cGAF2x0WeUU17tMDFZ7+lGbuihPfwLSY1f2u76C7Ng4l8lYK
         nhUZ5/y8GUKw81wn6T75MTc96jurSREdZ+dmglI8xl5IFKYsAx26gRwyop7R8adSagoQ
         n9JdPTACMcT819kDP245CRYtb8ca4c9gyn0KhE0M655iS7KXjLpUHTivtD0F+hXmekLp
         YyRQIgPzd2yt4KemMrF86n7iZUAgkcd0iFmruUUj0MY+vnMGVhdFebCIofi0Y3Qd0eKs
         jI2cqepZF9N2dZ4W9FgIyjbBuLSmFib3FBbP6gDEalEUYa41Pl/JSJ4apN4x9HMgPsdM
         npYw==
X-Gm-Message-State: AOJu0Yy+UdI5+1+BR60nuCX14BSCTeJLwPQW+4bMs53Nr8nU4rt0JhEt
	1yRKTZ3HLGr930E85hxAKBCuGeiSO2HfG14R/B+hDUUwp8O7it3Rj05gurnJSBvjDm4=
X-Gm-Gg: ASbGncuesqseaV0X7+XM3SlC7/p/1vGHUZyM6xsxIF+rcFR0cpIqaTYsrT7LgcgBNBh
	+8oK+JMRMUR2e8M12X8Dhx67oZh5QnJ7LQGcYqGWvSK7dMbpGYHNWhlhFbKyEZL9gUBGwHedEHp
	wGb8YGWS+MYes4nIlN2xwgotej8BlCKpBg53EIxkrc1J3w6j5G/9bqWeIH7+kjFJN3vzqQY2a3J
	Sg2vxoKUr6vSp6VE/NY27YQAG09BJowDuQeWd1KkT4iDITaI+3vIVq+nPbZg3rxuGq3go4WnlQK
	UjagqZGf/UpUquygbuhp5JGFdmh7o/qxENP3dAM0yM+5K8V20BQRjpc8XJp4Cbw5AR3Bx9nO6Xy
	IEalSuY+NqjqmhCeo3r/ID4V3LHKXKtcb8MB647TIBfs7E9fOoRGEgNTLL2Otoleddc8ozrvppT
	8n8g==
X-Google-Smtp-Source: AGHT+IEBenKmHbomfqM7jRrj+OcZnm9VNNe9GX3JYk6fkmpM0P8zqRVhhyCR0kaRAw4wTbU/JEdLvw==
X-Received: by 2002:a05:600c:4750:b0:450:cabd:b4a9 with SMTP id 5b1f17b1804b1-45b43e02bc0mr6688745e9.29.1755583287073;
        Mon, 18 Aug 2025 23:01:27 -0700 (PDT)
Received: from ?IPV6:2a02:2f04:620a:8b00:4343:2ee6:dba1:7917? ([2a02:2f04:620a:8b00:4343:2ee6:dba1:7917])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c077c5767fsm2102502f8f.62.2025.08.18.23.01.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 23:01:26 -0700 (PDT)
Message-ID: <bc053bca-8dd9-4a50-a352-290b38a329b0@tuxon.dev>
Date: Tue, 19 Aug 2025 09:01:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/7] phy: renesas: rcar-gen3-usb2: Fix an error
 handling path in rcar_gen3_phy_usb2_probe()
To: Biju Das <biju.das.jz@bp.renesas.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "kishon@kernel.org" <kishon@kernel.org>,
 "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "magnus.damm" <magnus.damm@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
 <20250819054212.486426-3-claudiu.beznea.uj@bp.renesas.com>
 <TY3PR01MB1134647BC6436CA61E0A200F98630A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB1134647BC6436CA61E0A200F98630A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_230128_741336_79110A63 
X-CRM114-Status: GOOD (  21.21  )
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

Hi, Biju,

On 8/19/25 08:49, Biju Das wrote:
> Hi Claudiu, Christophe,
> 
> Thanks for the patch.
> 
>> -----Original Message-----
>> From: Claudiu <claudiu.beznea@tuxon.dev>
>> Sent: 19 August 2025 06:42
>> Subject: [PATCH v5 2/7] phy: renesas: rcar-gen3-usb2: Fix an error handling path in
>> rcar_gen3_phy_usb2_probe()
>>
>> From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
>>
>> If an error occurs after the reset_control_deassert(),
>> reset_control_assert() must be called, as already done in the remove function.
>>
>> Use devm_add_action_or_reset() to add the missing call and simplify the
>> .remove() function accordingly.
>>
>> Fixes: 4eae16375357 ("phy: renesas: rcar-gen3-usb2: Add support to initialize the bus")
>> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
>> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
>> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>> [claudiu.beznea: removed "struct reset_control *rstc = data;" from  rcar_gen3_reset_assert()]
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>
>> Changes in v5:
>> - none
>>
>> Changes in v4:
>> - none
>>
>> Changes in v3:
>> - collected tags
>>
>> Changes in v2:
>> - none; this patch is new; re-spinned the Christophe's work at
>>
>> https://lore.kernel.org/all/TYCPR01MB113329930BA5E2149C9BE2A1986672@TYCPR01MB11332.jpnprd01.prod.outloo
>> k.com/
>>
>>
>>   drivers/phy/renesas/phy-rcar-gen3-usb2.c | 11 ++++++++++-
>>   1 file changed, 10 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
>> index 47beb94cd424..d61c171d454f 100644
>> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
>> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
>> @@ -699,6 +699,11 @@ static enum usb_dr_mode rcar_gen3_get_dr_mode(struct device_node *np)
>>   	return candidate;
>>   }
>>
>> +static void rcar_gen3_reset_assert(void *data) {
>> +	reset_control_assert(data);
>> +}
>> +
>>   static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)  {
>>   	struct device *dev = channel->dev;
>> @@ -717,6 +722,11 @@ static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)
>>   	if (ret)
>>   		goto rpm_put;
>>
>> +	ret = devm_add_action_or_reset(dev, rcar_gen3_reset_assert,
>> +				       channel->rstc);
> 
> Now 'rstc' can be removed from struct rcar_gen3_chan and use the local rstc pointer
> as context variable here.

I can drop it now but it will be added later (after this series) along with 
suspend to RAM support. That is the reason I preferred to still keep it.

Thank you,
Claudiu

> 
> Cheers,
> Biju
> 
>> +	if (ret)
>> +		goto rpm_put;
>> +
>>   	val = readl(channel->base + USB2_AHB_BUS_CTR);
>>   	val &= ~USB2_AHB_BUS_CTR_MBL_MASK;
>>   	val |= USB2_AHB_BUS_CTR_MBL_INCR4;
>> @@ -860,7 +870,6 @@ static void rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
>>   	if (channel->is_otg_channel)
>>   		device_remove_file(&pdev->dev, &dev_attr_role);
>>
>> -	reset_control_assert(channel->rstc);
>>   	pm_runtime_disable(&pdev->dev);
>>   };
>>
>> --
>> 2.43.0
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

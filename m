Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67E7EC52D7C
	for <linux-phy@archiver.kernel.org>; Fri, 23 Aug 2024 08:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w+akuNd1wWkB8zEru/1xEc0APiAK2yyui9lCfJp0+QM=; b=1cJMRmrcdIbY3Z
	NGyT6aHlYO3q4G9za7sc7Fp7zzvuLNR6fslY/OHKK4RjB4EcZfUPn/n7wHmVQ1ACpUHAKWbPds1YW
	jVi72OfYWWlEZ3WYvGonhml31+PPbNRwv4VvThTnvT6GzzfAjjvFedXyeVf4xYIo8IJh+SW0o8EYA
	huQULN1QDHV/4wwYohFO1gezx5n6QJYnf+/Jhk0cHwi/4S4uT9SwRXn/jWPPXn2aTPm0H24nBwFeu
	pIWzal32ZxaVkvX81KtgzDQhiW9w2wnFZJ33leKOthEPEggsJALY3YLcJWT6wC8FHPwSEfxpomTeW
	w5IyE7Rfu2RTKP8L8mrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shPuQ-0000000FwMM-0RLS;
	Fri, 23 Aug 2024 08:44:38 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shPqc-0000000FvDz-3Jj3
	for linux-phy@lists.infradead.org;
	Fri, 23 Aug 2024 08:40:44 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-5bed05c0a2fso2238643a12.3
        for <linux-phy@lists.infradead.org>; Fri, 23 Aug 2024 01:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724402441; x=1725007241; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fG9KNjBoDmO8zW0C42AiccF/rKtpUpUCjugH/PuwWu0=;
        b=WLTj1KGInCwc8tyt2969LkqhAJJpr68TBAegnd3OMVfsxLOVYVvFP8a8kPsBS3ne9T
         9Y1rW/TakPE8OR3JiERBWOKL1eFsonc3e6kVqeDhhfmNSfpcsKzo8qYxTyBlmzSBe469
         taR7xEy04n7qQomVOapUbytiZr8D/72kb18+5r6M4DlNpyKNqOSs6wfMg4qzLy1CfJQU
         yBOx+h4xrdkhDZz4sWMXnzx9Wkoc8VjJlz0x98Wl19BZLzbRuVdrX72RThDXnYWJ+Y0d
         S5LXfjSHzLhisA3yfwDd+IeF6m+KM99eY+PtbFa+UOAvoDwc5UWPsOJ/UTbAsosYWwW9
         zMQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724402441; x=1725007241;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fG9KNjBoDmO8zW0C42AiccF/rKtpUpUCjugH/PuwWu0=;
        b=r4IDeSJS/6jBUuMGeNk6+f4NJZPDGx0tiaAuLKOcc1vL3YpZTH/jKX0kZCNez54oYY
         tTRo0Igp6DolXDjJ8QkA7O5LOXfh3mF/PAkcrm4gyghZufVYniSPN4eE/w7VtZU5vZbk
         B5amARmkHtDmpTJ0/9BiVIJe0FpW1AkKs2wT4jw28KJb9mSz/ID1GfWAvIxVUgjRbwZP
         Hlak9u1GJBlcYZ7U9/Gwn7sN9/ZeVF2o1qL+ix75Hbd8Poy9KWEJxCkf/OkAghEBqA5A
         LIWy2eg7F2MsHBISZ+BxvSJxMS1puuLLB/t3ad8lK4V65oHK56jZW9T5xYh4ei1buaiv
         lefg==
X-Gm-Message-State: AOJu0YxRUYv2H2Qv7yfSz6kg+kCJOvObbilbeYvFHqdFFUA/CPN6AMVn
	lTK5k4RU2mxiH60o7g8j0RdBsXeLtg6g7rQKlKmEmG6gicATX9z0jQCS+LxDpmI=
X-Google-Smtp-Source: AGHT+IELJdt9NWz1Qyq2a+tw+U6RVfRhf7Xtr1odkIop07urXH/CbabXuHZJspnO7+6yMIrduwa9BA==
X-Received: by 2002:a17:906:da82:b0:a77:dc70:b35f with SMTP id a640c23a62f3a-a86a54b694dmr101050966b.58.1724402440963;
        Fri, 23 Aug 2024 01:40:40 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f29004csm229783366b.46.2024.08.23.01.40.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Aug 2024 01:40:40 -0700 (PDT)
Message-ID: <59f4d28b-5b9b-427a-baca-739fc03a5cc1@tuxon.dev>
Date: Fri, 23 Aug 2024 11:40:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/16] reset: rzg2l-usbphy-ctrl: Add support for RZ/G3S
Content-Language: en-US
To: Biju Das <biju.das.jz@bp.renesas.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "kishon@kernel.org" <kishon@kernel.org>,
 "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "magnus.damm@gmail.com" <magnus.damm@gmail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-9-claudiu.beznea.uj@bp.renesas.com>
 <TY3PR01MB11346B5C5D9AA883B7736A5C3868F2@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB11346B5C5D9AA883B7736A5C3868F2@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_014042_970035_26F32A7C 
X-CRM114-Status: GOOD (  17.24  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi, Biju,

On 22.08.2024 19:59, Biju Das wrote:
> Hi Claudiu,
> 
>> -----Original Message-----
>> From: Claudiu <claudiu.beznea@tuxon.dev>
>> Sent: Thursday, August 22, 2024 4:28 PM
>> Subject: [PATCH 08/16] reset: rzg2l-usbphy-ctrl: Add support for RZ/G3S
>>
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Add support for RZ/G3S SoC. It needs its own compatible as it uses 2 reset signals and it cannot work
>> w/o both of them. To be able to fully validate this on DT schema, too, the RZ/G3S uses it's own
>> compatible w/o a fallback (as if the fallback will be used the RZ/G3S will not work anyway).
> 
> Other than reset/ power domain approach for handling USBPWRRDY signal
> 
> Can't USBPWRRDY signal handled in SYSC driver directly? Since SYSC driver init happens at very early boot stage
> Check for USBPHY control device availability and handle USBPWRRDY signal there??

In theory, it can be done this way, too.  The downside I see at the moment
with this approach would be that the USB, PCIe drivers will not be in
charge with handling their signals, there will be no direct dependency
available b/w SYSC and USB drivers.

The HW manual doesn't mention anything about the power consumption of the
USB, PCI areas based on the state of the signals from SYSC, so, I don't
know if there will be any implication on this if the signals will be just
de-asserted from the SYSC driver.


Thank you,
Claudiu Beznea


> Cheers,
> Biju
> 
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>  drivers/reset/reset-rzg2l-usbphy-ctrl.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/reset/reset-rzg2l-usbphy-ctrl.c b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
>> index 8b64c12f3bec..08b18d7de7ad 100644
>> --- a/drivers/reset/reset-rzg2l-usbphy-ctrl.c
>> +++ b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
>> @@ -93,6 +93,7 @@ static int rzg2l_usbphy_ctrl_status(struct reset_controller_dev *rcdev,
>>
>>  static const struct of_device_id rzg2l_usbphy_ctrl_match_table[] = {
>>  	{ .compatible = "renesas,rzg2l-usbphy-ctrl" },
>> +	{ .compatible = "renesas,r9a08g045-usbphy-ctrl" },
>>  	{ /* Sentinel */ }
>>  };
>>  MODULE_DEVICE_TABLE(of, rzg2l_usbphy_ctrl_match_table);
>> --
>> 2.39.2
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BA2DCD98CE
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 05:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7xaevE2QPjlwztqwC+xV3dnyXBNoizhBAeFyiCKvBdg=; b=umqouZt9SeSJyo
	ot2P9XA8YhvF3T6UVZjjvucYZC6kTLvDcD14MDGKrpCrxauo6Rn98fmsHETO+NJ0LyrGO+Xo+YLis
	AzdMUtNCNB1MnJnnOxlwP84SRvEXRxhoRF4IDVS+8FQDVb8/FSJ/iiuwVckBERCTh6UbIIivrbu8z
	ckKYi3NrKtIwOR2qW6Rd3FRoJgehz45TTCrvGv86pZamRjHRq69biSgl8h5Oj/y8kjm80g0j3URYd
	SFyfZPujxJy3QI9pggnZ2ATortBdTaZlqfnQPlgsBW0vckUy98Ly3JScSxo/QvX5RZRl1Ln/2MwhW
	oCm8Jw+nKs4Y8XUW0jrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXupX-0000000AODV-08II;
	Fri, 12 Jun 2026 05:53:23 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXupV-0000000AOCl-1fT3
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 05:53:22 +0000
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-c8585c51f1fso737808a12.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 22:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781243600; x=1781848400; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/je3/phVFkxTSj46mlyxqk6IelVNMtxa/1bdYhVDBUI=;
        b=DAR9QrEkYjeFsMGr17BhNOZjga10U5VwHAUkfaG4xdHmsZ+adhiR7veJxzyI0Armsf
         nZ42NlHok2UiQSRcS0BWmm4V+EIBd1SAYvP7iloD1qkO/W5aTbyXC29mq/CKs76SyCje
         xbSgcnXGvE3ZfTbeuciKd0ltyNredPkITr2OVQVHBuqrsE15oz/w1r5bzBMZcmI4qyRJ
         OGm0UFROQMDf9nWLzRUO/pvFdC4qTfuQzSajB11zZBDSikAopzCeN9tBDn7fEkwjy6vh
         dqSZtn/bNSnaFZq3ji11OlInn69yl0/IoKh8LOhe0B0tPVVxcA8wKRlR3AyhkydrANds
         h9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781243600; x=1781848400;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/je3/phVFkxTSj46mlyxqk6IelVNMtxa/1bdYhVDBUI=;
        b=jFcockmpoyf7zpv4N6NYnLq5O1cP+jE8RlwFBP0csELfFjCHPB1GdKzji60LJ8U1kD
         wzyGg5YoYwNwp/iwSS75jIoKw2kGQiVAOuTrPlDbRON0zHeD97wYhpN1OFOGOYG27QDq
         rxqEBwY4ehS3EmKRIVps5Xj3aOlvnOxZ4zBD3prvVR6l5VKQVmSOHhLWPEtmGSqXABOn
         dK8Ep/DX44Yux51+3Rx24uh+lXxQLEf+mJu+uEawNODTRwtUl7WTA3YYFomQvdreKr+X
         GTC91v1/C527hG20RCIQCGqioV6+Cmv2RaXpQ2POy7oUi8dMdjGNpiOUuVmYFj+903+9
         TxtQ==
X-Forwarded-Encrypted: i=1; AFNElJ/yPcXrJKsIS3/n608NK7jOPYEKhZrtxurvFg+j9XkReFtcrrkZn2FStnGXdfSYO24YxUSRXlk+gxk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy79hrtYgS5/GyuAqGF2AuxbrQDx5ARgJ/1rGgDqRDB0Kq/OhoY
	oz9zFYGUfXx1bkFx3o1wCqOj0MUYzr5HGqXf4LFE6NLUOlcCrEdDqqdJ
X-Gm-Gg: Acq92OHdbwhB3oxIk4BBK16SVOWBSlWVBdEW/q25oHhgsxLIKOyzx6KvZp5/rdA0HYj
	7X7uEbCwYIEAf6Tf0jqyEGMRmh8QJQjVCFStwYnpU0Jq2a06metrugSLPxygn8eUGzs7M7DNPr4
	Hb7Dsz4f3uL1Xz3YG5IFGExP7MywvOXO0eiBkap7QlKJTucirsVSUx2y1G4E0VgrisAfQIQD3zN
	BRvHrptCmu2WD3yErwhRU81HeDXY0pWCm7FgYcIO430JDG1XnqZxcIwiMj/RQjQZhlGBxlC+/Bm
	fpDF35dSA8EkKKVWtkafe67+hOIb9si0+20VPIvGV/rS+LthIq7ae5Ja1+nrZHg7g8fmSwWgX/e
	OeWZD31sf18lJxbIQsfMmNw+MUS4MPUyRNHHX3KH0dyaKhozA7kCFB6t/bOpNZdd93p3DGmsVxn
	Es095j6J34JWMcc8jym/4AJE2iONE7x+Zw2YiVAP56ujh5mJKEZAEOcPXkas1Q0KjbSKL5lzX6f
	5V/
X-Received: by 2002:a17:902:e94c:b0:2bf:21e6:bae1 with SMTP id d9443c01a7336-2c3fca68d95mr18444785ad.18.1781243600085;
        Thu, 11 Jun 2026 22:53:20 -0700 (PDT)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c42f1f0f24sm7915955ad.3.2026.06.11.22.53.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2026 22:53:19 -0700 (PDT)
Message-ID: <3730c4a3-ae0b-47dc-af4d-ac1ed800e952@gmail.com>
Date: Fri, 12 Jun 2026 13:53:14 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: nuvoton: Add MA35D1 USB2 OTG PHY driver
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jacky Huang <ychuang3@nuvoton.com>,
 Shan-Chun Hung <schung@nuvoton.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260604101220.1092822-1-a0987203069@gmail.com>
 <20260604101220.1092822-3-a0987203069@gmail.com> <aiqWSGCuhAK7hoY9@vaman>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <aiqWSGCuhAK7hoY9@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_225321_431852_C9BE56F4 
X-CRM114-Status: GOOD (  20.45  )
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


On 6/11/2026 7:04 PM, Vinod Koul wrote:
> On 04-06-26, 18:12, Joey Lu wrote:
>> Add a PHY driver for the USB 2.0 PHYs in the Nuvoton MA35D1 SoC,
>> intended for use with the EHCI and OHCI host controllers.
>>
>> The MA35D1 SoC has two USB ports:
>>
>>    - USB0: an OTG port shared between a DWC2 gadget controller and
>>      EHCI0/OHCI0 host controllers.  A hardware mux automatically routes
>>      the physical USB0 signals to the appropriate controller based on the
>>      USB ID pin state.  The DWC2 IP is device-only in hardware,
>>      so host-mode operation on USB0 is handled entirely by EHCI0/OHCI0.
>>
>>    - USB1: a dedicated host-only port served by EHCI1/OHCI1.
>>
>> The driver implements:
>>    - Power-On Reset sequence with a guard that skips re-initialization if
>>      the PHY is already operational.  This protects PHY0 when the DWC2
>>      gadget driver has already run its own init before EHCI0 probes.
>>    - Optional resistor calibration trim via nuvoton,rcalcode.
>>    - Optional over-current detect polarity via nuvoton,oc-active-high.
>>    - For PHY0 only: a USB role switch that exposes the hardware ID pin
>>      state (PWRONOTP[16]).
>>
>> Signed-off-by: Joey Lu <a0987203069@gmail.com>
>> ---
>>   drivers/phy/nuvoton/Kconfig          |  15 ++
>>   drivers/phy/nuvoton/Makefile         |   1 +
>>   drivers/phy/nuvoton/phy-ma35d1-otg.c | 264 +++++++++++++++++++++++++++
>>   3 files changed, 280 insertions(+)
>>   create mode 100644 drivers/phy/nuvoton/phy-ma35d1-otg.c
>>
>> diff --git a/drivers/phy/nuvoton/Kconfig b/drivers/phy/nuvoton/Kconfig
>> index d02cae2db315..5fdd13f841e7 100644
>> --- a/drivers/phy/nuvoton/Kconfig
>> +++ b/drivers/phy/nuvoton/Kconfig
>> @@ -10,3 +10,18 @@ config PHY_MA35_USB
>>   	help
>>   	  Enable this to support the USB2.0 PHY on the Nuvoton MA35
>>   	  series SoCs.
>> +
>> +config PHY_MA35_USB_OTG
>> +	tristate "Nuvoton MA35 USB2.0 OTG PHY driver"
>> +	depends on ARCH_MA35 || COMPILE_TEST
>> +	depends on OF
>> +	select GENERIC_PHY
>> +	select MFD_SYSCON
>> +	select USB_ROLE_SWITCH
>> +	help
>> +	  Enable this to support the USB2.0 OTG PHY on the Nuvoton MA35
>> +	  series SoCs.  This driver handles PHY initialization for the
>> +	  EHCI/OHCI host controllers, including per-PHY power-on reset,
>> +	  resistor calibration trim, and over-current polarity
>> +	  configuration.  For the OTG port (PHY0), it also monitors the
>> +	  USB ID pin and registers a USB role switch.
>> diff --git a/drivers/phy/nuvoton/Makefile b/drivers/phy/nuvoton/Makefile
>> index 2937e3921898..3ecd76f35d7c 100644
>> --- a/drivers/phy/nuvoton/Makefile
>> +++ b/drivers/phy/nuvoton/Makefile
>> @@ -1,3 +1,4 @@
>>   # SPDX-License-Identifier: GPL-2.0
>>   
>>   obj-$(CONFIG_PHY_MA35_USB)		+= phy-ma35d1-usb2.o
>> +obj-$(CONFIG_PHY_MA35_USB_OTG)		+= phy-ma35d1-otg.o
> Have you considered reusing usb2 driver with a different power_on
> function? Or handle the differences internally in the driver. There are
> few similarities in two and some things are different
Thank you for the excellent suggestion regarding reusing the existing 
USB2 driver.

After further evaluation and local testing, I verified that it is 
entirely feasible to reuse the driver. Consequently, I will drop the 
separate phy-ma35d1-otg.c patch series and submit a new patch set that 
extends the existing phy-ma35d1-usb2.c mainline driver.

In the upcoming patch series, I will expand the driver's capability from 
a single-port PHY0 peripheral driver to a dual-port manager supporting 
both PHY0 and PHY1, while integrating OTG features.

BR,
Joey

>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

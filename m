Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9AF8CA0EED
	for <linux-phy@archiver.kernel.org>; Fri, 29 Aug 2025 01:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WNhHlaVL1vBgXdSZS9q4vZOmMhKXcNqb+hjtpH3EqwE=; b=UpWG7FDh5t2DL4
	AJl/PXeB0NUS+KnfGpMzhMhGDY2bpcuSFc0H2cFV7ThsbqyYP+ebEwwZhql3c21g8DVovxwbsX/ZO
	0HsEAjoUHZUsiofP+mZar1UCsH1o12CGzPkE3X32PiiOvEiry2EVkvtYUkZ1SOC7vXAnQkHmiuUm6
	+xyegBPkonZerDQh07sDmIbFKaHj36AS3C6sQXTXdjpWOIjQvb/t9F/xoc7U5t9wwz8rPKqVx0+aL
	tGJxT7W9VtzqVvn359ZshWYC8CXmsRMTl6S+4qMMC04K4y4uHSuL0r6nfLBhNyUiWV5/J92t/sv4g
	7QF3T+BR4g4syRbKh7mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urndM-00000003xNC-0pEF;
	Fri, 29 Aug 2025 01:10:28 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urhix-00000002rnu-3Y1f
	for linux-phy@lists.infradead.org;
	Thu, 28 Aug 2025 18:51:53 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3c68ac7e18aso828094f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 28 Aug 2025 11:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1756407110; x=1757011910; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nfWnXEUbRmO2bZYKzeFSX9JXT8vaYtDeDLS56yh5lMM=;
        b=KWjYopj+d7jq0cgUbh3AZA+MBvKlD8go179xV1BeZv1zT0GRaE7WE5Zu8mE27JTBxc
         KvGZz9qE4QJ6MA8DGsHEvgwgpIiggrJeMbL/Lc5wFMObzd0qIGxF22qulWWu75KsXf6z
         b43lP6DL83SIA2JzhtiPMS6bokshP+4rzb3khq4f6KmYek8fpVkPYn/SrDNfEeLtnQ4p
         SkCPo7716AzpI2wLrQWWZNTFSHnQ0PjKwVgSOYU0YkxQ6dF/pE+jAbXb1pSEtaUyD+76
         l/fO7WqKnZ2Th0vUcSC+IdfO9U61DrEsmgLY6SFlS5P3bD9Vr8g37jjmr+2sVogVzIP+
         UUiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756407110; x=1757011910;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nfWnXEUbRmO2bZYKzeFSX9JXT8vaYtDeDLS56yh5lMM=;
        b=RcTegzjwxq3OgO9KohKQrZw5MG/sMM2rGQ43AsWo4WQNgvzSe2Spg4/FWFs5CocUye
         c+6Ocrc7rP1LO20EoVmHGMUsiHM4LKnJ9M+e0MLE7bntH/EzsZEfXyX5WY7quIII2z2a
         Qtn61vy1aP2nnxb6NLaDkP8wbxKYxlRkCG2ZkMu1vYJTfZRZfITPwyT/L2ZIqNLzv7eE
         hkNifVMsSUSxDiLPGEP/BQZXShcLGgtaOvXRRiHm1C67eooNvT9Wy0+BdWAnIAos5VTG
         OXGNcwRp4j3ihuAVZL1RZTzu07jYDezfSUEeWHE8ZD5Va6yLS4Z3PUmY1u1TKnWg0I57
         Zyzw==
X-Forwarded-Encrypted: i=1; AJvYcCUKBbnILEl9Tw+s3QF50C+D8ug0iM5yS9vjLf0CWgQ9sbVWtqkiZHjV3ttS62FOtxvok/J++PozLk8=@lists.infradead.org
X-Gm-Message-State: AOJu0YycK/bfcHAn5I4oMSrFdHyi3LSLdI0ChpvPecVnk4KE8A4Ipx6i
	2TN3AdTPtwTNPR4hoBYhV0KTR9ZLq8gRYQQ4QOyqKWBl7DMArLBAxY4QPpu6/eibkfg=
X-Gm-Gg: ASbGncuY73e/cNN9quLTUvthTtfpn76qTrhlPsspCpQCGRTWXCLk0Bsuk6QUWcFhspe
	+4J8HunVHNEqxPn5QkYLVzGGWjryJNuiZZFTm6q+Us7vLW2vBS8rQ51M1qpbrTrwu63X5vnWC/7
	qMjnrB5Ypzz/C8tEEUHj4k6BgWE6/cFuZWhFYno3sl5GA0In/PnwgFLhihpceddTNO3SwgOXXNf
	1fU0Ta3ATqkxws9a1gGY7B9Xx2waFWs/gjdW2b8V4K+GeGbDYa2aFQmsPVA8XMzrsDNt38dc6y2
	NzKBsPgkruFd8bdwo/yF3ERli/+mn8d75cQfpEBtPHgFaRQDh0/xdg6lp7mQXFs6ENAUTtg7V3O
	8Z4OxBdDbdpbdgyXVvWE0ijPiouYuXkwUsZeJSdiCwAv4i28TER4mb8kBPHv+4jxBxH64/iqCNk
	t+7A==
X-Google-Smtp-Source: AGHT+IFH7UEDWbUy+TasCPo403tJMHIqZxhurwEarUivqN9QOFINaQbIWO0b2hiOs4lzpLzAs7zcyw==
X-Received: by 2002:a5d:64e8:0:b0:3cd:df50:49aa with SMTP id ffacd0b85a97d-3cddf505264mr2611694f8f.31.1756407109457;
        Thu, 28 Aug 2025 11:51:49 -0700 (PDT)
Received: from ?IPV6:2a02:2f04:6103:4200:a4c6:4e84:e72c:19fd? ([2a02:2f04:6103:4200:a4c6:4e84:e72c:19fd])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf270fd01csm358610f8f.12.2025.08.28.11.51.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Aug 2025 11:51:49 -0700 (PDT)
Message-ID: <ae53d367-2ee5-49aa-82ba-86f9e84d4d25@tuxon.dev>
Date: Thu, 28 Aug 2025 21:51:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/7] Add initial USB support for the Renesas RZ/G3S SoC
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, yoshihiro.shimoda.uh@renesas.com,
 biju.das.jz@bp.renesas.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
 <aLAZprjeKtk4pusw@shikoro>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <aLAZprjeKtk4pusw@shikoro>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_115151_981449_0B9A8452 
X-CRM114-Status: GOOD (  13.16  )
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

Hi, Wolfram,

On 8/28/25 11:56, Wolfram Sang wrote:
> Hi Claudiu,
> 
>> Series adds initial USB support for the Renesas RZ/G3S SoC.
>>
>> Series is split as follows:
>> - patches 1-2/7		- fixes on bindings and driver for USB PHY
>> - patches 3-5/7		- updates the rzg2l-usbphy-ctrl driver and documentation
>> 			  with support for setting PWRRDY though SYSC
>> - patches 6-7/7		- add device tree support
> 
> Can you kindly send me a working config (privately will do). I think I
> enabled all the necessary config options but still get:
> 
> [    0.271024] rzg2l_usbphy_ctrl 11e00000.usbphy-ctrl: probe with driver rzg2l_usbphy_ctrl failed with error -22
> ...
> [   10.981612] platform 11e20000.usb: deferred probe pending: platform: supplier 11e10200.usb-phy not ready
> [   10.984103] platform 11e10200.usb-phy: deferred probe pending: platform: wait for supplier /soc/usbphy-ctrl@11e00000/regulator-vbus

I just checked it on latest linux-next and all good on my side. Would it be 
possible that you don't have commit 2da2740fb9c8 ("soc: renesas: rz-sysc: Add 
syscon/regmap support") in your tree?

This is how my tree looks like:

1db69bbb9c49 (HEAD) arm64: dts: renesas: rzg3s-smarc: Enable USB support
ee93ed9f0097 arm64: dts: renesas: r9a08g045: Add USB support
285447f934f3 reset: rzg2l-usbphy-ctrl: Add support for RZ/G3S SoC
8c758908876c reset: rzg2l-usbphy-ctrl: Add support for USB PWRRDY
8e41c54ab567 dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3S support
02db7a65b4b3 phy: renesas: rcar-gen3-usb2: Fix an error handling path in 
rcar_gen3_phy_usb2_probe()
217453b58bdf dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
0f4c93f7eb86 (tag: next-20250822, linux-next/master) Add linux-next specific 
files for 20250822

and few checks on my board:

root@smarc-rzg3s:~# uname -r
6.17.0-rc2-next-20250822-00007-g1db69bbb9c49
root@smarc-rzg3s:~# [  217.627804] usb 1-1.2: USB disconnect, device number 4
[  217.627804] usb 1-1.2: USB disconnect, device number 4

root@smarc-rzg3s:~#
root@smarc-rzg3s:~#
root@smarc-rzg3s:~#
root@smarc-rzg3s:~# lsusb
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 001 Device 002: ID 045b:022b Hitachi, Ltd
Bus 001 Device 003: ID 8087:0029 Intel Corp. AX200 Bluetooth
Bus 002 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 004 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
root@smarc-rzg3s:~# [  231.154575] usb 1-1.2: new high-speed USB device number 5 
using ehci-platform
[  231.154575] usb 1-1.2: new high-speed USB device number 5 using ehci-platform
[  231.299629] usb-storage 1-1.2:1.0: USB Mass Storage device detected
[  231.299629] usb-storage 1-1.2:1.0: USB Mass Storage device detected
[  231.327087] scsi host0: usb-storage 1-1.2:1.0
[  231.327087] scsi host0: usb-storage 1-1.2:1.0
[  232.348676] scsi 0:0:0:0: Direct-Access     SanDisk  Cruzer Blade     1.00 
PQ: 0 ANSI: 6
[  232.348676] scsi 0:0:0:0: Direct-Access     SanDisk  Cruzer Blade     1.00 
PQ: 0 ANSI: 6
[  232.382829] sd 0:0:0:0: [sda] 31260672 512-byte logical blocks: (16.0 GB/14.9 
GiB)
[  232.382829] sd 0:0:0:0: [sda] 31260672 512-byte logical blocks: (16.0 GB/14.9 
GiB)
[  232.417118] sd 0:0:0:0: [sda] Write Protect is off
[  232.417118] sd 0:0:0:0: [sda] Write Protect is off
[  232.430023] sd 0:0:0:0: [sda] Write cache: disabled, read cache: enabled, 
doesn't support DPO or FUA
[  232.430023] sd 0:0:0:0: [sda] Write cache: disabled, read cache: enabled, 
doesn't support DPO or FUA
[  232.481535]  sda: sda1
[  232.481535]  sda: sda1
[  232.490719] sd 0:0:0:0: [sda] Attached SCSI removable disk
[  232.490719] sd 0:0:0:0: [sda] Attached SCSI removable disk

root@smarc-rzg3s:~#
root@smarc-rzg3s:~#
root@smarc-rzg3s:~# lsusb
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 001 Device 002: ID 045b:022b Hitachi, Ltd
Bus 001 Device 003: ID 8087:0029 Intel Corp. AX200 Bluetooth
Bus 001 Device 005: ID 0781:5567 SanDisk Corp. Cruzer Blade
Bus 002 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 004 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
root@smarc-rzg3s:~#
root@smarc-rzg3s:~#

Thank you for looking to this,
Claudiu

> 
> Thanks,
> 
>     Wolfram
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

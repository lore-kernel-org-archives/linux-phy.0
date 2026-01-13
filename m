Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9118D2D107
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 13:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MqoOZmuXxLjJ52N9IasAuGarb+PVmdZxcWf4r85wa7g=; b=z1Va9iQ1YhnP9k
	4BOdCM8XfCEm8MM1WIpHYRIEYQ+iUSR9jyjKJudHZ/SzUDdnVYpK/F3OKmbLvmfIdwrCKZDxK8XxW
	/SRGdR2CtvL4aB2bRzW6A5u1AVdrgCoa5+55edMQI/JzMhQU1kinWjHyaI2WIc9flMYsxl8rXNxEt
	5Y2foG/pkPaREm4Ml96bkjDbbXZlAJa3Fq5zSSW19nM+dhnXKg8yB8Vru+DQNXnFFK8rGt+y37yLg
	kbWC1c/K0WChYHyW1+WGjY8T5jjHDBhdmRaSWgLVil5H5sobrZm7LssU2QA1W/KgetAZSTTKFs9P8
	kTEgAOvCaUuldSEPIHew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfevj-00000007Bqi-1oVX;
	Tue, 13 Jan 2026 13:59:31 +0000
Received: from smtp1.tecnico.ulisboa.pt ([2001:690:2100:1::15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfevh-00000007Bpg-0ViG
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 13:59:30 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id 93BC96003C0E;
	Tue, 13 Jan 2026 13:59:08 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id Ur3fdMvR0rzO; Tue, 13 Jan 2026 13:59:06 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [IPv6:2001:690:2100:1::b3dd:b9ac])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id 9BEC16003C17;
	Tue, 13 Jan 2026 13:59:05 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1768312746;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YQFYfebyjYR/hZj8TDjbMiG+ptmbxmnKKfMCRuYjPcY=;
	b=L2TzBMD8zf4M4h59qxLElOoWj1MpaFxVTswx0m5aRDtPFwntp0GOo+unArNl2t3gz3LxNG
	YggvhJXcp+tNe4dRXBTuh7vthuFVE2TVdkxryKWLPPBua0xqWYxdqTNUznzHzy+Hlm4hZp
	n2zoevMGlR4t8T6NpXBQD3w9wsH93cCL6vmIstu6eISotaBZdho1LQ3bYj0otWmOyR0gmk
	ZbfsldT2bkSBNmyJrPJzsuJMMLF+FCCqnUy+PzVnOuPzrcvOyiGiOvY80OvjufZB/W7lJt
	ICjxcCexpUxX2wOIEzii2u+eafGEU4lFfLzYobxHmwIQcE8if1YSgnE9Ub/MMA==
Received: from [192.168.2.110] (unknown [148.63.39.39])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id A7A57360148;
	Tue, 13 Jan 2026 13:59:04 +0000 (WET)
Message-ID: <54afff11-df9b-4c25-bd1d-8134196ce093@tecnico.ulisboa.pt>
Date: Tue, 13 Jan 2026 13:59:01 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] phy: tegra: xusb: Fix USB2 port regulator disable
 logic
To: Jon Hunter <jonathanh@nvidia.com>, Mathias Nyman
 <mathias.nyman@intel.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thierry Reding <thierry.reding@gmail.com>, JC Kuo <jckuo@nvidia.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
 <20251204-diogo-tegra_phy-v1-2-51a2016d0be8@tecnico.ulisboa.pt>
 <c5450fc7-230e-4435-bd1d-3db4f1f6e736@nvidia.com>
Content-Language: en-US
From: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
In-Reply-To: <c5450fc7-230e-4435-bd1d-3db4f1f6e736@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_055929_317777_B085F372 
X-CRM114-Status: GOOD (  24.20  )
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



On 1/13/26 12:01, Jon Hunter wrote:
> 
> On 04/12/2025 21:27, Diogo Ivo wrote:
>> The USB2 PHY mode handling on Tegra210 incorrectly relied on
>> regulator_is_enabled() when determining whether the VBUS supply should
>> be disabled during role changes. This is because regulator_is_enabled()
>> reports exactly what is states and not if there is an unbalanced number
>> of calls between regulator_enable() and regulator_disable(). For
>> example, regulator_is_enabled() always reports true on a fixed-regulator
>> with no enable gpio, which is the case on the Pixel C.
>>
>> This then leads to the PHY driver wrongfully calling regulator_disable()
>> when transitioning from USB_ROLE_DEVICE to USB_ROLE_NONE since the driver
>> did not previously call the corresponding regulator_enable().
>>
>> Fix this by keeping track of the current role and updating the logic to
>> disable the regulator only when the previous role was USB_ROLE_HOST.
>>
>> While at it fix a small typo in a comment.
>>
>> Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
>> ---
>>   drivers/phy/tegra/xusb-tegra210.c | 5 +++--
>>   drivers/phy/tegra/xusb.h          | 1 +
>>   2 files changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/phy/tegra/xusb-tegra210.c b/drivers/phy/tegra/ 
>> xusb-tegra210.c
>> index 3409924498e9..63ad57d95514 100644
>> --- a/drivers/phy/tegra/xusb-tegra210.c
>> +++ b/drivers/phy/tegra/xusb-tegra210.c
>> @@ -1934,9 +1934,9 @@ static int tegra210_usb2_phy_set_mode(struct phy 
>> *phy, enum phy_mode mode,
>>               /*
>>                * When port is peripheral only or role transitions to
>>                * USB_ROLE_NONE from USB_ROLE_DEVICE, regulator is not
>> -             * be enabled.
>> +             * enabled.
>>                */
>> -            if (regulator_is_enabled(port->supply))
>> +            if (port->role == USB_ROLE_HOST)
>>                   regulator_disable(port->supply);
>>               tegra210_xusb_padctl_id_override(padctl, false);
>> @@ -1944,6 +1944,7 @@ static int tegra210_usb2_phy_set_mode(struct phy 
>> *phy, enum phy_mode mode,
>>           }
>>       }
>> +    port->role = submode;
>>       mutex_unlock(&padctl->lock);
>>       return err;
>> diff --git a/drivers/phy/tegra/xusb.h b/drivers/phy/tegra/xusb.h
>> index d2b5f9565132..273af147dfd3 100644
>> --- a/drivers/phy/tegra/xusb.h
>> +++ b/drivers/phy/tegra/xusb.h
>> @@ -317,6 +317,7 @@ struct tegra_xusb_usb2_port {
>>       enum usb_dr_mode mode;
>>       bool internal;
>>       int usb3_port_fake;
>> +    enum usb_role role;
>>   };
> 
> 
> A similar fix was made to the Tegra186 code by commit cefc1caee9dd 
> ("phy: tegra: xusb: Fix unbalanced regulator disable in UTMI PHY mode"). 
> Although the above looks simpler, I am wondering if we should make a 
> similar change to the Tegra210 code so that they both are implemented in 
> the same way?

Looking at cefc1caee9dd my approach leads to less changes but I do agree
that standardization benefits us here. However in that case I think we
can take it a step further and actually just have a single function
tegra_xusb_padctl_id_override() (and likewise for vbus_override() and
set_mode()) since they all seem to do the same thing in both platforms.

If not I can simply make this patch look like cefc1caee9dd. Let me know
what you think!

Diogo

> Jon

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

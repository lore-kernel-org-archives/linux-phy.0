Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D688D2F320
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 15:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5VPyMXk1+lAyqeLz9pVA5f7PNAdVYdnspFXAqP7e72E=; b=0J+vaX25HYRDCQ
	Guox5EthnQEd8wbonmp6G5wcjwpwaDpaqXu5ngs6IXyV+VaW3DlcqJ7R2LFWoVt3Q8ilFVpzBoSU9
	P/5UaVjJpp+w2gSDF9iAhUSBU8iljmuyQWR+7lwGmWygPP5a7pkbp7dzObQeIY6YcJNroNk4/SuUA
	sbl8kXtzzVC75AjzZfBClWp0L0COlE0/cUT+6wbZ4P3xBG1/z/knGoeUzILdA3Ku3BnbLBlofCjFV
	wWPaVUSUtv63R/a8yT6zjxCbljoSfGcceTB5KvmoS1Rj+ysIFEx7XGrudAOiPSpJBOIADoGqLItmL
	vZ6yIfHwUstdQwY0zfUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfg3X-00000007L2B-3K7r;
	Tue, 13 Jan 2026 15:11:42 +0000
Received: from smtp1.tecnico.ulisboa.pt ([193.136.128.21])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfg3U-00000007L0b-1zEB
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 15:11:38 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id 0DA0D600084C;
	Tue, 13 Jan 2026 15:11:35 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id aulEY0Telgc1; Tue, 13 Jan 2026 15:11:32 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [193.136.128.10])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id 91B8E6001401;
	Tue, 13 Jan 2026 15:11:29 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1768317089;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=V20ZBD9CJ8yUjiXed4dOqLBy4fH72bgYz4DmEJlM3Y8=;
	b=XhasqdgPmo06L9jvO+SGzbdwCXghoeYvU2TV+6ad1ux3djoWNiHgZ5DsGKOTSGrlmmRU6e
	koctDBA09Zpz5ejInp7Z3oCPAdpSUbsKU+tpfCz3ecrgu4zF5YpbBbaN6uBW8fip2tsPrl
	+kJabVIEi6/1pk57SqHYwHTN/Z81G8CquEnLahApyLauXA3EZJ/izwsDe7NLDEDyBdyHZA
	CV81OyulP3MRC8lWhLzkvgIOnj1Ux9LEdAy0mYOHlyLCnsNYkss0oZ1sOI2tlNVTEYShPv
	drio9ynDGPZPIvVIecXHLohKYtPcQ5WdPJ/FOhjo/ctmeRzSVYaHlF8Zlsa6NA==
Received: from [192.168.2.110] (unknown [148.63.39.39])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id 57D68360148;
	Tue, 13 Jan 2026 15:11:29 +0000 (WET)
Message-ID: <d2f01fe4-f92a-408a-890c-7e37f7c414c3@tecnico.ulisboa.pt>
Date: Tue, 13 Jan 2026 15:11:29 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: tegra: smaug: Add usb-role-switch support
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
 <20251204-diogo-tegra_phy-v1-5-51a2016d0be8@tecnico.ulisboa.pt>
 <ea60f024-1f39-483c-87e3-36624bd58d49@nvidia.com>
 <ea4ee289-fb46-44be-b5e6-9d3beca7c0d8@tecnico.ulisboa.pt>
 <42df7bb1-c587-429f-88ac-1e5ffa7c2b3f@nvidia.com>
Content-Language: en-US
From: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
In-Reply-To: <42df7bb1-c587-429f-88ac-1e5ffa7c2b3f@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_071136_657429_191535AA 
X-CRM114-Status: GOOD (  20.89  )
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



On 1/13/26 14:49, Jon Hunter wrote:
> 
> On 13/01/2026 14:20, Diogo Ivo wrote:
>>
>>
>> On 1/12/26 22:03, Jon Hunter wrote:
>>>
>>> On 04/12/2025 21:27, Diogo Ivo wrote:
>>>> The USB2 port on Smaug is configured for OTG operation but lacked the
>>>> required 'usb-role-switch' property, leading to a failed probe and a
>>>> non-functioning USB port. Add the property along with setting the 
>>>> default
>>>> role to host.
>>>>
>>>> Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
>>>> ---
>>>>   arch/arm64/boot/dts/nvidia/tegra210-smaug.dts | 2 ++
>>>>   1 file changed, 2 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts b/arch/ 
>>>> arm64/boot/dts/nvidia/tegra210-smaug.dts
>>>> index b8d854f90be7..49bf23d6f593 100644
>>>> --- a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
>>>> +++ b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
>>>> @@ -1809,6 +1809,8 @@ usb2-0 {
>>>>                   status = "okay";
>>>>                   vbus-supply = <&usbc_vbus>;
>>>>                   mode = "otg";
>>>> +                usb-role-switch;
>>>> +                role-switch-default-mode = "host";
>>>>               };
>>>
>>>
>>> This change does add the following warning when building with CHECK_DTBS
>>> ...
>>>
>>> arch/arm64/boot/dts/nvidia/tegra210-smaug.dtb: padctl@7009f000 
>>> (nvidia,tegra210-xusb-padctl): ports:usb2-0: 'role-switch-default- 
>>> mode' does not match any of the regexes: '^pinctrl-[0-9]+$'
>>>      from schema $id: http://devicetree.org/schemas/phy/ 
>>> nvidia,tegra210- xusb-padctl.yaml
>>>
>>> I know that there are many warnings seen for the smaug DTB, but it would
>>> be good to ensure we don't add more.
>>
>> The 'role-switch-default-mode' property is read by the driver to set the
>> initial role for the port [0] and is needed in order for the port to work
>> when booting so in order to fix the warning this property needs to be 
>> added
>> to the binding.
> 
> Correct.
> 
>> As for the other warning ('connector' is a dependency of 'usb-role- 
>> switch')
>> again I think the binding needs to be adjusted since in the Pixel C the
>> connector node should be under the (as for now not present)
>> cros-ec-typec node and the usb2-0 is then modeled as a remote-endpoint
>> for the full connector. I am currently working on fixing the cros-ec- 
>> typec
>> driver and already have a working fix for automatic role switching but
>> in any case I think the binding is what needs changing. If you agree
>> with this then I will add the necessary changes to the DT binding in v2.
> 
> Yes in both cases we need fixes to the DT binding that's all.

Perfect, will do for v2.

Diogo

> Jon
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBC97E9A77B
	for <linux-phy@archiver.kernel.org>; Tue, 24 Mar 2026 12:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HapRPDzUYNPCii2pHGxec0O2bhvy3ZSfSjjLAcMP5t8=; b=TPunkKlurxbz5s
	bDNUuSpDASk2rZLtxtwGkQQEd/bweQXmLL6RKIjfHnRSF79HuG1TLiyDdyfZ0fqyFl6OupA9RhhAQ
	7RqHNBqgV+//7KqUgGP+RI0roWHAQgGaEMTI8D3c1Y2HwQ7QwH7NAuuOOi2/fqEeUNqaPYP3FB+WR
	fR9rpGn56b5tT8k4WRG0Bs0zKWvN5YbtHLOEaQq8H6DE0JbNZAzwh7lJ6DvE8lsEcluXNoxZ9g7V/
	1bQguUwL+nFH3Fp0rjZCSvvIn6qDNxhx+KaCzxfZ448IJiAijCnIqoDvjczEX67jGAKQTpJinjVnM
	4yX1EoLK+NJmOw6BRSZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w50rx-00000001NPh-2G6a;
	Tue, 24 Mar 2026 12:28:25 +0000
Received: from smtp1.tecnico.ulisboa.pt ([193.136.128.21])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w50rt-00000001NP8-1mWp
	for linux-phy@lists.infradead.org;
	Tue, 24 Mar 2026 12:28:22 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id 44CD0600085A;
	Tue, 24 Mar 2026 12:28:19 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id ZSyy3OFlWjsN; Tue, 24 Mar 2026 12:28:17 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [IPv6:2001:690:2100:1::b3dd:b9ac])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id B7CE36000872;
	Tue, 24 Mar 2026 12:28:16 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1774355296;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0H07sbfA7geFvMVbwBHgjO9Zv4YRqDulO8wi0QJ4JIg=;
	b=R1r/LdNxDWwh5jSyABP8e+EE3vZwy4hwHQI6Fb+sHg77++Ws2tOUkybACtMSYyv1beB9bT
	Ia7pVb1GUjrjT2sWiAmuZ3wT/znd3dEBIyiiUMMrMnnwiVfSJzSELd9Saj9OrIN+xyRqlE
	5qYq/U02pF8nrIhBKMGz3rn03bRE/suN1vgf4jNFJ7YFeXEHg63FH+Btc9D66tGirT6a6B
	rfIervl+oGLlR5NxihO/gaz3dcI2Xswn7SISTuXtkl5Zz/FFJp87s95VH7dcZ1hUzVon+c
	cK8xdEWDNzomsLF6f7CSX+AbM77BXQio+Y+acBK9zAl6pilcUQbqHWZtIXvr2Q==
Received: from [IPV6:2001:8a0:57db:f00:3ee2:38aa:e2c9:7dde] (unknown [IPv6:2001:8a0:57db:f00:3ee2:38aa:e2c9:7dde])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id 466F1360187;
	Tue, 24 Mar 2026 12:28:16 +0000 (WET)
Message-ID: <991ecd66-9db0-468d-b3b0-570ca89191bf@tecnico.ulisboa.pt>
Date: Tue, 24 Mar 2026 12:28:16 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] usb: xhci: tegra: Remove redundant mutex when
 setting phy mode
To: Thierry Reding <thierry.reding@kernel.org>
Cc: Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-usb@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20260127-diogo-tegra_phy-v2-0-787b9eed3ed5@tecnico.ulisboa.pt>
 <20260127-diogo-tegra_phy-v2-2-787b9eed3ed5@tecnico.ulisboa.pt>
 <acJ50sQraVmy4zXs@orome>
Content-Language: en-US
From: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
In-Reply-To: <acJ50sQraVmy4zXs@orome>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_052821_622553_F1782A2B 
X-CRM114-Status: GOOD (  13.51  )
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



On 3/24/26 11:48, Thierry Reding wrote:
> On Tue, Jan 27, 2026 at 03:11:48PM +0000, Diogo Ivo wrote:
>> As the PHY subsystem already synchronizes concurrent accesses to a PHY
>> instance with a core-internal mutex remove the driver specific mutex
>> synchronization.
>>
>> Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
>> ---
>> v1->v2:
>> - New patch
>> ---
>>   drivers/usb/host/xhci-tegra.c | 4 ----
>>   1 file changed, 4 deletions(-)
>>
>> diff --git a/drivers/usb/host/xhci-tegra.c b/drivers/usb/host/xhci-tegra.c
>> index 8b492871d21d..927861ca14f2 100644
>> --- a/drivers/usb/host/xhci-tegra.c
>> +++ b/drivers/usb/host/xhci-tegra.c
>> @@ -1357,15 +1357,11 @@ static void tegra_xhci_id_work(struct work_struct *work)
>>   
>>   	dev_dbg(tegra->dev, "host mode %s\n", str_on_off(tegra->host_mode));
>>   
>> -	mutex_lock(&tegra->lock);
>> -
>>   	if (tegra->host_mode)
>>   		phy_set_mode_ext(phy, PHY_MODE_USB_OTG, USB_ROLE_HOST);
>>   	else
>>   		phy_set_mode_ext(phy, PHY_MODE_USB_OTG, USB_ROLE_NONE);
>>   
>> -	mutex_unlock(&tegra->lock);
>> -
> 
> It looks to me like the mutex here is trying to protect against
> tegra->host_mode changing while we're setting a different mode. That
> doesn't seem to be taken care of by the PHY internal mutex.

I'm not sure I understand your point. Do you mean guarding against
tegra->host_mode changing in tegra_xhci_id_notify()? If so I don't see
how it would guard against that.

Diogo

> Thierry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

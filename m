Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 852D510F92E3
	for <linux-phy@archiver.kernel.org>; Tue, 31 Mar 2026 16:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=slKVVABJu3cL2wP801dYSyDoP7IM93ccUzxDo7cYNkc=; b=tLTog4W/ONiKRE
	6Pj7iiRPTh+NFLmG5xdbziwKWPmHze3wAjTRa2VVJNAb3BrEoDO0D/oiiTTAcGdB7nv0tFleq/uqH
	NYLFDp1bTe/XYSBVdUD9o0FcaJYBsSNNS2+LiNH1ow7rqdYR+MMiv3el6TR3WPktNj7lJ5eS4Ipz3
	32v5giy5bwH1SaLXDWZlpJZKeviRqNucDdNcPU4uxGb+MCfh26KayFPIXBfprGli4OZlf+GGMlXCi
	EUq+K07/HcjxQQ0v6gGbDiZCNJ0AR9Okmd5T2+Ja1Swt3y1AA7oyGPy6e5JUs9P87gRxH1EVj1tO3
	DYuwU4ppcOaUMvTkj+Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7cGj-0000000DHNx-17Rq;
	Tue, 31 Mar 2026 16:48:45 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7cGg-0000000DHNM-0ivu
	for linux-phy@lists.infradead.org;
	Tue, 31 Mar 2026 16:48:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 5051A25F0B;
	Tue, 31 Mar 2026 18:48:40 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nIGKYODwd-YB; Tue, 31 Mar 2026 18:48:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1774975719; bh=E6JwAt4pAUiInSPP+d17jCzhh33dDx3RElmAhqz3dks=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=f74sWmNAo5/OgPyomIPzVopv3r9edQPc/VePoGMEuqhw9A9BAUhGF4uveznpxjRe4
	 yoj3vnpP9I7MSTRHKgMEjoEs7ccYeku7gK9/DbrWER+jaNSjiSXWL+qHMkzzZIg8p0
	 RVpnI/yUziu3HuQ5h32RlTRQnsEfmTsKhrsK8uIhgkRgsXBsoZOU8nLxtzlr3oRE/4
	 qcEZMK4B0dwCWrD3GNLHZ/mwmsKiqju4gOXEVTPw5WClwMpP4YG0rHBc3oEJP4GEAu
	 z5iwZeeGFYA4RS71075qCBX6ll0kdilKpxu7s+dXb+vScCkWFeEzXulXzOmHuitIlC
	 9HiISAiZCsnZA==
MIME-Version: 1.0
Date: Tue, 31 Mar 2026 16:48:39 +0000
From: Rustam Adilov <adilov@disroot.org>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Stanley
 Chang <stanley_chang@realtek.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 6/6] phy: realtek: usb2: Make configs available for
 MACH_REALTEK_RTL
In-Reply-To: <20260330215207.stx6qbjr7kctm4xt@skbuf>
References: <20260327160638.15134-1-adilov@disroot.org>
 <20260327160638.15134-7-adilov@disroot.org>
 <20260330215207.stx6qbjr7kctm4xt@skbuf>
Message-ID: <41ebd8edfe58ca8b9e9be4954be38c56@disroot.org>
X-Sender: adilov@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_094842_355232_089BEBDA 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 2026-03-30 21:52, Vladimir Oltean wrote:
> On Fri, Mar 27, 2026 at 09:06:38PM +0500, Rustam Adilov wrote:
>> Add the MACH_REALTEK_RTL to the if statement to make the config
>> options available for Realtek RTL SoCs as well.
>> 
>> Signed-off-by: Rustam Adilov <adilov@disroot.org>
>> ---
>>  drivers/phy/realtek/Kconfig | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/phy/realtek/Kconfig b/drivers/phy/realtek/Kconfig
>> index 75ac7e7c31ae..f9eadffacd18 100644
>> --- a/drivers/phy/realtek/Kconfig
>> +++ b/drivers/phy/realtek/Kconfig
>> @@ -3,7 +3,7 @@
>>  # Phy drivers for Realtek platforms
>>  #
>>  
>> -if ARCH_REALTEK || COMPILE_TEST
>> +if ARCH_REALTEK || MACH_REALTEK_RTL || COMPILE_TEST
>>  
>>  config PHY_RTK_RTD_USB2PHY
>>  	tristate "Realtek RTD USB2 PHY Transceiver Driver"
>> -- 
>> 2.53.0
>> 
>> 
> 
> The file now reads:
> 
> if ARCH_REALTEK || MACH_REALTEK_RTL || COMPILE_TEST
> 
> ...
> 
> endif # ARCH_REALTEK || COMPILE_TEST
> 
> Please update the end comment as well.

Good notice, will change it.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFED0F483C6
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 16:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MFo6CVU94l/zzmywIA5q4BOr2sVBi8sJJ2AbfdGgIIE=; b=HODR1fCWxZgRGE
	z8SUBsHc4OHCQEg/1tJhxGtGp6PTfh9mY46kTbuj9tDN/UZtxxrNnXyJXJbUtNfhodhzXZQRW3rPR
	Np3kAXc+irdnjjWSK9djZw0vAxzipK9Reh13u/DE4f5rmdBYOzxiCTXnGRzV2hFBUx81Ey1Kc1Ad7
	6JAlokVuca6WjIwVI7sAxCMPjnasnwRQGl2/i4SREq2SNmckZIclszUdfIt1YbphyA4MRCNTTnXac
	mgjraUsUZCDYKNQBp/tv4ZL3sz0cNrZ9e6Hb1OoVBcjDYZ5qRmFu2cRCyPQ7Z8dPgMyeh3Du91s2Q
	NIDlX/c/RvoL2EEn9fVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4hwp-0000000H6zd-2Vtb;
	Mon, 23 Mar 2026 16:16:11 +0000
Received: from smtp1.tecnico.ulisboa.pt ([193.136.128.21])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4hwm-0000000H6ux-0ver
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 16:16:10 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id C350E600882A;
	Mon, 23 Mar 2026 16:15:46 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id 126tTdIN8NTm; Mon, 23 Mar 2026 16:15:44 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [193.136.128.10])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id E2AB36008813;
	Mon, 23 Mar 2026 16:15:42 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1774282543;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oxX+OUc3xAG2hwZFdRqs0R//MKXMT1i1SmwKlI7QCUU=;
	b=SwGLjMrK9ln3TcNEAy+X0mypZiqlB9obo5qLLYD5EBTUgUj81QnjKt4tNkkCO/mjjfLHo2
	Y3PEOU09sIAODUjaPNDpqo8otBGKVMH1F3dMorf4JQkK59Kd9t8gDl0REdd3ML2ISfa8Nz
	xrmRUHJjFZk015wqZPQfQEY+5UCcGar+nTkVXv5d0H7/JE04N/KYuScurMaSJD+96Gidfo
	dZjlL3FAbJq76/l/qMwZIXalTwJLtpmVI+NFuV0B5AIO8SCGPyqLBrFoIElXWbMarS1Zka
	u4xxGAi8SdMWEwhWRMzTd2WgoTDOZ6Z04F/vuH6KRUMU+VLL9EJCGdzVPKcEYw==
Received: from [IPV6:2001:8a0:57db:f00:3ee2:38aa:e2c9:7dde] (unknown [IPv6:2001:8a0:57db:f00:3ee2:38aa:e2c9:7dde])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id 767D33601AC;
	Mon, 23 Mar 2026 16:15:41 +0000 (WET)
Message-ID: <54167943-deac-40ec-be86-7ddc6b015c2d@tecnico.ulisboa.pt>
Date: Mon, 23 Mar 2026 16:15:24 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/6] Fixes to Tegra USB role switching and phy handling
To: Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, stable@vger.kernel.org
References: <20260127-diogo-tegra_phy-v2-0-787b9eed3ed5@tecnico.ulisboa.pt>
Content-Language: en-US
From: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
In-Reply-To: <20260127-diogo-tegra_phy-v2-0-787b9eed3ed5@tecnico.ulisboa.pt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_091608_689782_54C81A9B 
X-CRM114-Status: GOOD (  18.32  )
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

Hello,

Ping on this series as it has been quite a while since this was sent out
originally.

Best regards,

Diogo

On 1/27/26 15:11, Diogo Ivo wrote:
> Hello,
> 
> This patch series contains fixes/improvements for USB role switching on the
> Tegra210 and Tegra186 SoCs.
> 
> The first patch addresses a wrong check on the logic that disables the
> VBUS regulator.
> 
> The second patch removes a redundant mutex lock when setting the PHY
> mode.
> 
> The third patch guarantees proper ordering of events when switching PHY
> roles.
> 
> The remaining patches are included to standardize the PHY .set_mode()
> callback between Tegra186 and Tegra210.
> 
> With this patch series this feature can only be controlled from userspace,
> by writing the desired role to sysfs as
> 
> echo "role" > /sys/class/usb_role/usb2-0-role-switch/role
> 
> with role being one of {device, host, none}.
> 
> Further patches will enable automatic role switching via the 'cros_ec_typec'
> driver which is currently broken on Smaug.
> 
> Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
> ---
> Changes in v2:
> - Remove DT patches already taken to be upstreamed
> - Add standardization between Tegra210 and Tegra186
> - Address review comments from v1, detailed descriptions in each patch
> - Link to v1: https://lore.kernel.org/r/20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt
> 
> ---
> Diogo Ivo (6):
>        phy: tegra: xusb: Fix USB2 port regulator disable logic
>        usb: xhci: tegra: Remove redundant mutex when setting phy mode
>        phy: tegra: xusb: Fix ordering issue when switching roles on USB2 ports
>        phy: tegra: xusb: Add ID override support to padctl
>        phy: tegra: xusb: Move .set_mode() to a shared location
>        phy: tegra: xusb: Move T186 .set_mode() to common implementation
> 
>   drivers/phy/tegra/xusb-tegra186.c   | 73 +++++----------------------------
>   drivers/phy/tegra/xusb-tegra210.c   | 42 +------------------
>   drivers/phy/tegra/xusb.c            | 80 +++++++++++++++++++++++++++++++++++++
>   drivers/phy/tegra/xusb.h            |  4 ++
>   drivers/usb/gadget/udc/tegra-xudc.c |  4 ++
>   drivers/usb/host/xhci-tegra.c       | 14 ++++---
>   include/linux/phy/tegra/xusb.h      |  3 ++
>   7 files changed, 111 insertions(+), 109 deletions(-)
> ---
> base-commit: b02a5530af8abe0d3cd4852ba48990716e962934
> change-id: 20251201-diogo-tegra_phy-86c89cab7377
> 
> Best regards,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

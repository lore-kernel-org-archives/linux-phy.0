Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 669DFD58E7A
	for <linux-phy@archiver.kernel.org>; Mon,  2 Mar 2026 09:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+Ptjk/OTYz3crmykrkTmLR1jgXkdk8N7ZJJBGCwat4=; b=O9bIp9H/eqBDzl
	VsjoSJHWJem6q0F4KvAqnoVEDf7X6QqPXkMjKRUt0nj8X2gNUyT7ib3t4TiHs+TCRR+1+Ang+N1GU
	X19BnsJeHb/JU1pOdrPSQbwMQHEDlVTI66wRMkr/8QMFwur56pUND8GBqk6tD8iykBjOZ9bJFYn8f
	Rsb1Mq+RLdV+CbO0dilVMCHyIhlXlsZ9D9ThXC03Tl3v8K7Lb8PbYViR4HpT46YsW7unh50NLxW1t
	hidUfsSAHyoFITlWfTkzu142YhrapiKHkrhKSn2f+IkipSMFjl0MMb8KTl7xChKq0VYo/ykMRjECf
	GIETjCQ5eKS8hago+r7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwzJ2-0000000CZm8-43KG;
	Mon, 02 Mar 2026 09:11:13 +0000
Received: from smtp1.tecnico.ulisboa.pt ([193.136.128.21])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwzJ0-0000000CZl4-03cB
	for linux-phy@lists.infradead.org;
	Mon, 02 Mar 2026 09:11:12 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id 31F2B600298F;
	Mon,  2 Mar 2026 09:10:46 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id 9zY3EXe9AjZ4; Mon,  2 Mar 2026 09:10:43 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [IPv6:2001:690:2100:1::b3dd:b9ac])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id 40B36600298D;
	Mon,  2 Mar 2026 09:10:42 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1772442643;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ALlF6/vIv/5xuYr1Gfj3RVY3fMyDzf4HKQYtSC25+Y4=;
	b=kq6yykSqCccGOyxQkZiYYRl4InB8BhUZ8Xs18tk1CsbLkx6x53sO9TssNNE4IQhab0mX6+
	mb3f/niCWn5KWXeAD5nzC5awUAM303Ro18H9t/o5YH1z0MZuCK+pPUcOAct8XEZBfweJ6/
	JaPuliwJ/uWR9AkGnIhkO7AEN5brKWsABtzVwup+36oZZO+MKN9STQ6AJeRxjf2235/aaf
	Tvs7tkK8V+ZBYxYPq4cpM8wrosSRCEkYKrXw7A2U4RMH61DqyiywtVGIWr7xu6PDJDTPwS
	rMiYO2GxfTgSTrUCfVfRW0WGtlsN4J0d2zzg9YBFMz81nTzxt0XULAhWB7ZrSw==
Received: from [IPV6:2001:8a0:fbec:a900:2c09:2fb0:9be7:36e0] (unknown [IPv6:2001:8a0:fbec:a900:2c09:2fb0:9be7:36e0])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id D502136013D;
	Mon,  2 Mar 2026 09:10:40 +0000 (WET)
Message-ID: <1663dc81-0685-4de9-8cf7-6065a644e7af@tecnico.ulisboa.pt>
Date: Mon, 2 Mar 2026 09:10:29 +0000
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
X-CRM114-CacheID: sfid-20260302_011110_487558_72D1D60C 
X-CRM114-Status: GOOD (  17.43  )
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

Gentle ping on this series.

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

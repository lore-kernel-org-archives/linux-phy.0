Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A6BEC9EC90
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 13:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fcn9ynLIoWEq5gnQiC68CnoS0ILE7zA3NujwINVshVY=; b=u7zfzt8ybz2DSf
	LbMvRAryfodMcOFcyVjcNbzPNbxKiHEoujQLxTJHYwQoviK+gH8HJQBHZz/bxmn5iBLDRGKLW1fA7
	Gw2nf6R1mGbo57OfekOQaJ313Cq0ClCpsRRxtOi3zDZU9jqY4jVAaXQ19DOTAhcwAQ9MqRWoIRtA4
	v/yxus1JkztNXDp2rR0ACzUQp2568B9XvueJqS9snauGRPCkVT7t3GGBdYSHc8YvSaIbIfRLBJMNs
	zYcAPriYexVw9rnKN382ovZK3wTaDWEsZMgQdYf/ZacvTOFSVLSoCNVTdHOfGwH9QfqGB08iLMDve
	1n9wCqyDLQJCAyLlCHKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIPd-00000005TE7-3FCi;
	Mon, 12 Jan 2026 13:56:53 +0000
Received: from smtp1.tecnico.ulisboa.pt ([2001:690:2100:1::15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIPa-00000005TCN-34Di
	for linux-phy@lists.infradead.org;
	Mon, 12 Jan 2026 13:56:52 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id EFCC96001407;
	Mon, 12 Jan 2026 13:46:27 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id e0GECEQ2kv4x; Mon, 12 Jan 2026 13:46:25 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [IPv6:2001:690:2100:1::b3dd:b9ac])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id 7C38C6000256;
	Mon, 12 Jan 2026 13:46:24 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1768225585;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uFKcXE+OliUSap4yQqLacMApUbum4+mc35fmauINXeI=;
	b=ltAZsuR/TrWFWKlvz+8DLThz4rMJrAfmVj/dX9eENLDgL2zqZ1i3wTYmXUEuPwlJ101CIT
	4SOA5cxUI0Mq68zzwlNAgBl/N4+0nJaH64hSh4moFWQ6BFPumHRiDx1RFPk/030m/cCtf3
	7aC3dkwnY3jGicSzqMX7dqPAssWGZmpVSE2aq/hEQyu9Yway6cXJLMOGIXTGrQ8I/qfTOS
	nEqT4AmS6llXkoiLPoah59WkiJ7dxZRl8W9lG/5oEMISEyV7JEP6/ri/fM8kh8OXKYZGGa
	UTzIIHoeBa9JRTukyNdnj0/R2/C5xYPIF5kk6qrK6xYbYYv5GtRCCVgQYdUeVg==
Received: from [192.168.2.110] (unknown [148.63.39.39])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id 08B923600D6;
	Mon, 12 Jan 2026 13:46:22 +0000 (WET)
Message-ID: <c21113d5-cd10-409b-a4d6-a6d213bfec2f@tecnico.ulisboa.pt>
Date: Mon, 12 Jan 2026 13:46:19 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Fixes to Tegra USB role switching and Smaug USB role
 switching enablement
To: Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
Content-Language: en-US
From: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
In-Reply-To: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_055650_914379_C60B7E82 
X-CRM114-Status: GOOD (  19.80  )
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

On 12/4/25 21:27, Diogo Ivo wrote:
> Hello,
> 
> This patch series contains two fixes for USB role switching on the
> Tegra210 SoC, as well as enabling this feature on the Pixel C.
> 
> The first patch addresses a wrong check on the logic that disables the
> VBUS regulator.
> 
> The second patch guarantees proper ordering of events when switching PHY
> roles.
> 
> The third and fourth patches then add the necessary nodes and properties
> in the Smaug DT in order for role switching to work. Currently with this
> patch series this feature can only be controlled from userspace by writing
> the desired role to sysfs as
> 
> echo "role" > /sys/class/usb_role/usb2-0-role-switch/role
> 
> with role being one of {device, host, none}.
> 
> Further patches will enable automatic role switching via the 'cros_ec_typec'
> driver which is currently broken on Smaug.
> 
> N.B: This series does not add a 'connector' node under the 'usb-role-switch'
> property added on patch 04/04 because for Smaug the connector should instead
> be under the node for 'cros_ec_typec' node and as stated above this
> driver is currently broken for this device. If it is deemed better to
> describe it but explicitly disable the node let me know and I will send
> out a v2.
> 
> Signed-off-by: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
> ---
> Diogo Ivo (5):
>        usb: host: tegra: Remove redundant pm_runtime_mark_last_busy() call
>        phy: tegra: xusb: Fix USB2 port regulator disable logic
>        phy: tegra: xusb: Fix ordering issue when switching roles on USB2 ports
>        arm64: tegra: smaug: Complete and enable tegra-udc node
>        arm64: tegra: smaug: Add usb-role-switch support
> 
>   arch/arm64/boot/dts/nvidia/tegra210-smaug.dts | 13 +++++++++++++
>   drivers/phy/tegra/xusb-tegra210.c             |  5 +++--
>   drivers/phy/tegra/xusb.c                      | 23 +++++++++++++++++++++++
>   drivers/phy/tegra/xusb.h                      |  1 +
>   drivers/usb/gadget/udc/tegra-xudc.c           |  4 ++++
>   drivers/usb/host/xhci-tegra.c                 | 17 ++++++++++-------
>   include/linux/phy/tegra/xusb.h                |  1 +
>   7 files changed, 55 insertions(+), 9 deletions(-)
> ---
> base-commit: a8817ff3b5cd99b0a5af57a92d1a3a7980612550
> change-id: 20251201-diogo-tegra_phy-86c89cab7377

Gentle ping on this series.

Thank you,
Diogo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A92D1CD3439
	for <linux-phy@archiver.kernel.org>; Tue,  5 May 2026 18:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X7Bi//wMOe/leib6MPJ/xlHrw3mo+G6gjJpI7dLl3eY=; b=aeruLqwgVYLJGk
	blf3Q08Bgb61vu8Ugrm/BzAsef9mmW8zQ15hSxo4V5zK7Q/0Mh5G/5NYgi6Sj5ZJtkX4ysKuyuktM
	Ka0wPrW5bY5z9WKTssfF9xcXHhvQVP07v89Q7eiRCzOsb6VQ3iYb6VYv9ICbhp/FtMLZ1AjBCkbvK
	MsbMyNNoEgE1X4SpvDjS9jLRH5Du3glGmqaW701PY/7TVq1XzfxW9RrfiaVVylj6nMOL59V8F4Ycx
	RzkiWXiClpiL9IA7BvxM+qX8xCW3hDkln3w+jGv6H6PhZdm1l8rFaSN5CbnDPJxw/kwvHd/o3OVbn
	HLFCgDHIvRB9YyVGWaiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKKgN-0000000HCgN-08GZ;
	Tue, 05 May 2026 18:39:47 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKKgK-0000000HCfv-2L3S
	for linux-phy@lists.infradead.org;
	Tue, 05 May 2026 18:39:45 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id E3FDA271F6;
	Tue,  5 May 2026 20:39:41 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LLZCIpH-8SuS; Tue,  5 May 2026 20:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1778006381; bh=q6VLxNm36ZLu/c7vrKUrJ3PjNVHXNOJKQ6BVBQm2AZY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=bosDAgNVMwhgew+EKY4RbWC2akirpmSVn6jY1aZuT8gPhdI6Nj9fX6OlbMFXfIq50
	 556nv1t1le9P8Z5udrNeOdkPhYst2L0hIRm3aP7nFiN6GaBJrcJEXATLRjrkke+xHI
	 DS+by+7d4CghjHnBWdpRYieXRxNp6pKyUxfIT0fVeuYku+8p1q9CQZxv5W/4q2I3HO
	 fKqiWwSOu44SFFxv0MPMuYPp1BVIi4cXs09SqTEbIpvEaMXVtsgN8GNifQ77MDsPLQ
	 Rs8gMOHdzA5Q5dt64HWCeRcH3eXzfhfubz3y4N0bVbnmgEwxG1wmPkwl79Lx1TFnot
	 wy4h2vMhRkAGQ==
MIME-Version: 1.0
Date: Tue, 05 May 2026 18:39:40 +0000
From: Rustam Adilov <adilov@disroot.org>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Stanley
 Chang <stanley_chang@realtek.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/6] phy: realtek: usb2: support for RTL9607C USB2 PHY
In-Reply-To: <20260505113721.ur4qd4udu7jas473@skbuf>
References: <20260420191941.81834-1-adilov@disroot.org>
 <20260505113721.ur4qd4udu7jas473@skbuf>
Message-ID: <5fc256e31c4611d804eb03c30594e79b@disroot.org>
X-Sender: adilov@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_113944_747655_EBA6E341 
X-CRM114-Status: GOOD (  20.08  )
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

On 2026-05-05 11:37, Vladimir Oltean wrote:
> On Tue, Apr 21, 2026 at 12:19:35AM +0500, Rustam Adilov wrote:
>> This patch series for Realtek USB2 PHY driver adds support for RTL9607C
>> USB2 PHY.
>> 
>> RTL9607C is a big endian MIPS CPU which is quite far from RTD series SoCs
>> supported by realtek usb2 phy driver, but the phy initilization is found
>> to be very indentical in most areas.
>> 
>> Most of the code was based on the Realtek's usb driver from the GPL tarball
>> in [1] and adjusted to fit into the realtek usb2 phy driver code format.
>> 
>> The patch series was split into smaller patches that add/change something
>> in the driver that are not exactly related to RTL9607C and that also
>> helps for easier review. That also means, patch 5 depends on all the prior
>> patches that come before it.
>> 
>> USB2 PHY on RTL9607C is primarly used for its internal OHCI/EHCI controllers.
>> 
>> [1] - https://github.com/jameywine/GPL-for-GP3000/blob/main/linux-5.10.x/arch/mips/rtl9607c/usb.c
>> 
>> ---
> 
> Could you go through Patchwork and reply inline to the issues found,
> stating whether you are or are not going to resolve them?
> https://patchwork.kernel.org/project/linux-phy/list/?series=1083475

Yeah, sure thing. However i do expect a good bit of refactoring of this patch series
once we get SWAP_IO_SPACE working. It just turned out that some of the realtek drivers
from various subsystems use readl/ioread32 for native endian (which is big endian for
rtl9607c and others under MACH_REALTEK_RTL) and enabling SWAP_IO_SPACE makes them
function in little endian which breaks those things. So that's what we are dealing with
at this moment.

> All of the WARNING: line length of XX exceeds 80 columns

I can resolve them just fine.

> WARNING: msleep < 20ms can sleep for up to 20ms; see function description of msleep().
> #88: FILE: drivers/phy/realtek/phy-rtk-usb2.c:629:
> +		msleep(10);

I can resolve it by changing it to usleep_range like i did with reset controller one.

> ../drivers/phy/realtek/phy-rtk-usb2.c:158:16: warning: cast to restricted __le32
> ../drivers/phy/realtek/phy-rtk-usb2.c:163:19: warning: incorrect type in initializer (different base types)
> ../drivers/phy/realtek/phy-rtk-usb2.c:163:19:    expected unsigned int [usertype] tmp
> ../drivers/phy/realtek/phy-rtk-usb2.c:163:19:    got restricted __le32 [usertype]

That should be fixed by using ioread32be.

>  1 maintainers not CCed: p.zabel@pengutronix.de 

When i run scripts/get_maintainer.pl, it doesn't print it out at all but I can include it.

> Detected inline keyword in C files
> +static inline int utmi_wait_register(u32 (*read)(void __iomem *reg), void __iomem *reg, u32 mask,

Even though it was not introduced by this patch series, i think it is relevant as
i am directly modifying its property to include read function to it. Something along
like "While we are here, remove inline from utmi_wait_register"

I believe that is every issue from Checks list apart from Sashiko reviews.

Best,
Rustam

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

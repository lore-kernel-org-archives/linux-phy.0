Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48F28C3ABC0
	for <linux-phy@archiver.kernel.org>; Thu,  8 May 2025 12:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDYySTngBriXJ8ad8V2GwrxVbaZYtyQnk2daBHEzgCA=; b=HngMK1LvOYUXt/
	0NeM4SK3skImdk+znYKrexev+7McPlE72aDI9tx2qaL4t9RV2JdgVh7wUoJLTzHhKL0wzYK/S/hsU
	bbQFG0proIdxFlBpzf2Uif6FHdgyWiPBWNW3d7JRHWbHr75OFIwYrTkW8LzAOdbQZBTBNqABrwDGB
	GLUs0VkO3xx8H/uF9EYqGhgbaYowpwM1kNsbZQYEEwFBzbeh7KKLR30GnSp5iKQ4Qzmwxw/XjCIRW
	blzlkSY2tueXRq2ZRuUjgC5ohuuAOCOOQoIWqCKy/Hg+GOF+Q8ZcWvCgEWu0qjJX+R+3JdczlgtK/
	a87g49lIghmfmwwFsxIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD0Eg-00000000aOu-3p0D;
	Thu, 08 May 2025 12:20:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD0CD-00000000ZzV-3p7N
	for linux-phy@lists.infradead.org;
	Thu, 08 May 2025 12:17:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 656EE43591;
	Thu,  8 May 2025 12:17:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87923C4CEE7;
	Thu,  8 May 2025 12:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746706669;
	bh=RR5XVvwaxIpv4tFRMJooTfhy90KlIV7GW4E2LebVt2o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UAAKnC+X3v4fephXxf1UX4HLMzCL+GqreG0J2d0/k/3vdv5lrVumDvEUhT/sul1ek
	 RYJgrr+bCjkFZMvJDHOEWBZXJpHuRGuQS2Iz50+xteBUXVcE/LLF+4Zz7adLy0g0+o
	 Vxh3OZOjKGC1xnt4+cpuyHd4qmoEZhNR2zPlZtbP1er3XtcioQxSGI+S6snH8BmkBb
	 kSZqMaZH8gnWozkBqIvyj6grMKXjUM0ngPH2F/0ywHm0MwYOIuKkLXKOuYfZ8XavYa
	 IUWbFTkS1bn4lQ1yOqqoTwm4bDScwERvbsr29vaN8wIT5iS5o/3nQsHJwPBfL4gFkE
	 o5FRaP9dN5LYQ==
Date: Thu, 8 May 2025 14:17:43 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
	bhelgaas@google.com, linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
	treding@nvidia.com, jonathanh@nvidia.com, kthota@nvidia.com,
	mmaddireddy@nvidia.com, sagar.tv@gmail.com
Subject: Re: [PATCH V4] phy: tegra: p2u: Broaden architecture dependency
Message-ID: <aByg58pvj3onDveF@ryzen>
References: <20250417074607.2281010-1-vidyas@nvidia.com>
 <20250508052021.4135874-1-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250508052021.4135874-1-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_051749_966671_16A0F949 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
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

On Thu, May 08, 2025 at 10:50:21AM +0530, Vidya Sagar wrote:
> Replace the ARCH_TEGRA_194_SOC || ARCH_TEGRA_234_SOC dependency with a 
> more generic ARCH_TEGRA check for the Tegra194 PIPE2UPHY PHY driver.
> This allows the PHY driver to be built on all Tegra platforms instead
> of being limited to specific SoCs.
> 
> Link: https://patchwork.kernel.org/project/linux-pci/patch/20250128044244.2766334-1-vidyas@nvidia.com/
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>

Looks good to me, but there will need coordination between the
PHY and PCI maintainers for this to not cause a kernel test bot
build failure, if the PCI patch is merged before the PHY patch.

Reviewed-by: Niklas Cassel <cassel@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

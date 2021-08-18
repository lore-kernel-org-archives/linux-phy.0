Return-Path: <SRS0=m+Tr=NJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED884C4338F
	for <linux-phy@archiver.kernel.org>; Wed, 18 Aug 2021 09:01:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AA3EF6108E
	for <linux-phy@archiver.kernel.org>; Wed, 18 Aug 2021 09:01:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AA3EF6108E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+pJyMESVonCY8CITkU5j0pzhY7JAFVtPWUgOZ1jMcpw=; b=RfDF29YJ4TaLwX
	yn5znctI44EKkNi1LyyqWWaJwv4tRpt+vFF1cYvI1DStpniUbNJDgzA3MqQSboTxs0eI18rIdKfAI
	ZKCzfyY660pJlAR4FMz506+z4QvQ01eFXBLWGnHjnX3vtxrHFerpCvxMt+XuRPEeq5ZoJF1QX+LsZ
	pbCq45lWcmfl2FFhXBh2vu1MuM5xFNH4HO5UbU9l3dusrTGYx1DOaeJPeOnFxB9aAEqGWqV79E+mP
	y8W3/vqugOVp54GipN9zbDIp5Jrw32Ks/dGdTD0MHOmZh8yaVYVtg7Pk2kd4myo0S44Fj4Ti7S2sZ
	wiQRFhX7AXaJ06QPuMxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGHS0-004lVB-7E; Wed, 18 Aug 2021 09:01:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGHRy-004lUc-Aj
 for linux-phy@lists.infradead.org; Wed, 18 Aug 2021 09:01:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1137060FDA;
 Wed, 18 Aug 2021 09:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629277289;
 bh=8NuBOtO78slwW7BXiYxkftHTC6yD0SJL97x0yNzsaRc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PhiNhws8kCYqpxs7TiNvUjTQTvbWdrP+MMcEQ7ZH2HlPdn+cfGCgzb3nlzQRQYQO5
 flzoTkzdfCO89h7Ane5Ppf1UGUyVTp3Uqf3zl7lqtzwEgWb6YZGQACVgTERAMiI4Wx
 4jD4exyb8ds64h9rs91ihHOd32ETCwrtrqdg5bcRvhDEGX5rLynhW3EFuEK9ci2ynq
 d3DlAaZSBABfDcqPJBloJXyHdChc/Cw+i/+B0FLVPUGK/bKP32biwsXp1ETW7QAZ/Q
 JNrqP0gN0JhXZoOh2tIMJIxbzHqWXRa9W857YTGfKP50XRrkXNLN99WM7def5ajRpf
 hjlOH2tI66HFA==
Date: Wed, 18 Aug 2021 11:01:23 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linuxarm@huawei.com,
 mauro.chehab@huawei.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Manivannan Sadhasivam
 <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v11 01/11] phy: HiSilicon: Add driver for Kirin 970 PCIe
 PHY
Message-ID: <20210818110123.33eba838@coco.lan>
In-Reply-To: <YRuSnXHSZHhBC40r@matsya>
References: <cover.1628755058.git.mchehab+huawei@kernel.org>
 <7788c5ead6d6f5a6f9e5faaee4460eb2149967c4.1628755058.git.mchehab+huawei@kernel.org>
 <YRuSnXHSZHhBC40r@matsya>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.30; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_020130_460044_7704EDDB 
X-CRM114-Status: GOOD (  19.64  )
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

Hi Vinod,

Em Tue, 17 Aug 2021 16:12:37 +0530
Vinod Koul <vkoul@kernel.org> escreveu:

> > +	/* FIXME: calling it causes an Asynchronous SError interrupt */
> > +//	kirin_pcie_clk_ctrl(phy, false);  
> 
> when will you fix the fixme and pls remove the deadcode

Working with clocks on this SoC is very tricky: there are lots of clock
lines (~70) that are critical for this device to work. Such lines are
enabled via the Device's firmware, and are supposed to be always
powered. Powering off such clock lines cause a SError.

Most clocks on this device are managed by the clk-hikey3670 driver.
At the current state of clk-hi3670, the only way for HiKey 970
to even boot is to add:

	clk_ignore_unused=true

as a Kernel boot parameter. That is the solution given by the downstream
official distributions for HiKey970 at 96boards.

The fix is to flag the critical clocks with CLK_IS_CRITICAL at the
clk-hi3670 driver, but finding the right clock set has been a challenge.

I spent the last couple of weeks trying to identify the critical ones,
as I'm aiming to be able to use a Kernel built with a default arm64
one of my goals is to have this device working fine with a
"make defconfig" Kernel.

So, I added this patch:

	https://lore.kernel.org/lkml/2d2de5e902ced072bcfd5e5311d6b10326b9245b.1627041240.git.mchehab+huawei@kernel.org/

to my tree (which reduces the set of clocks using CLK_IGNORE_UNUSED
from 308 to 163 clocks). Than I ran script that was dropping the
flag one by one, boots the new Kernel and do a sanity check. When it 
fails to boot, I manually dropped the patch, and re-run the script
to test the remaining clocks. After a couple of weeks, I reached a patch
with 78 clock lines that seemed critical, but the resulting patch was
not stable, as, depending on the day I boot the Kernel with such patch,
it crashes with SError in a couple of seconds after booting, or 
cause the Ethernet firmware to not load.

I intend to keep trying to find the clock lines that can't be disabled,
but this is very time consuming, as I couldn't find any documentation
about that. So, it has to be done empirically.

-

In any case, fixing it doesn't sound a critical issue for the PHY
driver. I mean, right now, this patchset allows removing and 
re-inseting the PCIe driver, which is already an improvement over the
original upstream driver, which was missing the power-off logic for
Kirin 960.

With this patchset, both power-off/power-on logic for both HiKey960
(where the PHY is inside the pcie-kirin driver) and for HiKey970,
which uses this PHY driver. On both devices, I tested an endless loop 
with rmmod/modprobe for the PCIe.

Besides that, in practice, removing PCIe in runtime is something that
people usually don't do.

So, while it would be cool to balance the clock disable logic,
I don't think this is a critical issue in this particular case.

Thanks,
Mauro

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

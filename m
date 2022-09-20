Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98BE4C6FA92
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 18:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=V9bspIBXU8ZcP0rZatDtcZgJDCWcuyA4giL4lFpuQpo=; b=nHuMWa1wRSOM6r
	G8A2X4nYAnmF20XE8ccOS6KThQDw4XxEx/uQVoqeDzMNtOPP/HSdN0AVwkVJfmesaOe8h7LnNrdcv
	BeOHPCxWR4140/0z8tgFPTAkHGrWoU7/kkIo/JiSXMjgzLbmIJ6hzSm/6r0c7Xn4bBsw99JW4ggR3
	qwEcZtl3JMkjslaK8SUhF0FclWnxl0a/T8yWMSbw0jQuJmxU1oTmgbduVAxmzGQYppihK5Mt++XKB
	1mBc9QB2WgsgL+Z7grxa1dWW5PnevugO+/efb1IG80zt4zHA19LY3IaPmXn6QNwobOK2OQkNuuV5c
	OivpthoKfS8nJRjix08A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oahnb-005gO9-15; Tue, 20 Sep 2022 18:16:47 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oahnX-005gKa-SD
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 18:16:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 62DEB62C16;
	Tue, 20 Sep 2022 18:16:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB18CC433C1;
	Tue, 20 Sep 2022 18:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663697799;
	bh=qbFGsZmeyVBsjxnEf6EsFVV+a4DqJ+aI9q4jgAqQE8s=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=DCi2N5qM84CpyJ4wWr0ZucIQfZKVQ9ERFZuGWlCmq+KdUixA1HAh1v8vNfh4J1Aim
	 dn1G+rhm0MHuDMsEoHq8cetTXUnhyoalNpvXmhh277nw0EaDo9O6MTwrA9BBrmQ16/
	 5/BeI3IIWkQOMdSSKAyS2p+BxENvI44PCFCDXm7StNs1GqNwTnr1PleZyGmTbXrfxD
	 zVPg999YsligGnuuBm4yvP7Ud4ol5JkZG980TQslP4KTZV6y7mrhPooZyOwJldg3Yn
	 SIUn2kmZu8JI+eJ+wOgrL5mUkGPUa2+Gq+Wm8c6rMIemS1jEgKiB5OmUMreQ4ywUHZ
	 khGDd80bxmvdg==
Date: Tue, 20 Sep 2022 13:16:37 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org, mka@chromium.org,
	quic_vbadigan@quicinc.com, quic_hemantk@quicinc.com,
	quic_nitegupt@quicinc.com, quic_skananth@quicinc.com,
	quic_ramkri@quicinc.com, manivannan.sadhasivam@linaro.org,
	swboyd@chromium.org, dmitry.baryshkov@linaro.org,
	svarbanov@mm-sol.com, agross@kernel.org, andersson@kernel.org,
	konrad.dybcio@somainline.org, lpieralisi@kernel.org,
	robh@kernel.org, kw@linux.com, bhelgaas@google.com,
	linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@ti.com,
	mturquette@baylibre.com, linux-clk@vger.kernel.org,
	Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v7 1/5] PCI: qcom: Add system suspend and resume support
Message-ID: <20220920181637.GA1121154@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1663669347-29308-2-git-send-email-quic_krichai@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_111644_096606_04B7EE86 
X-CRM114-Status: GOOD (  16.29  )
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

On Tue, Sep 20, 2022 at 03:52:23PM +0530, Krishna chaitanya chundru wrote:
> Add suspend and resume syscore ops.
> 
> Few PCIe endpoints like NVMe and WLANs are always expecting the device
> to be in D0 state and the link to be active (or in l1ss) all the time
> (including in S3 state).

What does this have to do with the patch?  I don't see any NVMe or
WLAN patches here.

> In qcom platform PCIe resources( clocks, phy etc..) can released
> when the link is in L1ss to reduce the power consumption. So if the link
> is in L1ss, release the PCIe resources. And when the system resumes,
> enable the PCIe resources if they released in the suspend path.

What's the connection with L1.x?  Links enter L1.x based on activity
and timing.  That doesn't seem like a reliable indicator to turn PHYs
off and disable clocks.

> is_suspended flag indicates if the PCIe resources are released or not
> in the suspend path.

Why is "is_suspended" important for the commit log?  It looks like
just a standard implementation detail.

> Its observed that access to Ep PCIe space to mask MSI/MSIX is happening
> at the very late stage of suspend path (access by affinity changes while
> making CPUs offline during suspend, this will happen after devices are
> suspended (after all phases of suspend ops)). If we turn off clocks in
> any PM callback, afterwards running into crashes due to un-clocked access
> due to above mentioned MSI/MSIx access.
> So, we are making use of syscore framework to turn off the PCIe clocks
> which will be called after making CPUs offline.

Add blank lines between paragraphs.  Or rewrap into a single paragraph.

s/Its observed/It's observed/
s/MSIX/MSI-X/ throughout
s/MSIx/MSI-X/ throughout

Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

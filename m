Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C0C6ECAAD8
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 16:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=f2D702QO4KL1i1Kst6KPcG8y12LNEZZUbTxDZZawDLY=; b=jhouF0/H9LBLsj
	AjOi4NrrbZLZwNRndLDoM4Xj4dluokQqSfGFevOCPm5lchNc/yUvePRkFFfAb6EU43UVfx0+w5ttw
	L/bzxk3BxX2P0UNKrVlp5aOMi9jWap3LNrS6V16HubRd7AVWV/FiuDYZpg63OS5GbMyBUcpCBXcvr
	RCDnBfLAonizjkQvZyoXIqxChMr1Ro1XotHawZ0lCYPkSIPft+fR//lKMi9harvyjh5DxdRxqnxv1
	JbAYikeQs+TgWXU2gNE3k4WGBSoIPvJ+Nb0T3G2hbqVFBPmr/uhNvOpQABuy1cgxO6SybG4Xh39Px
	fJ8vSNKPhJ4lGVzG3hqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ob318-00C5Yf-U1; Wed, 21 Sep 2022 16:56:10 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ob316-00C5XK-M2
	for linux-phy@lists.infradead.org; Wed, 21 Sep 2022 16:56:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A852863233;
	Wed, 21 Sep 2022 16:56:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6D85C433D6;
	Wed, 21 Sep 2022 16:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663779363;
	bh=yFjh0wT5HsRYP3bLSZYhZ7J9X1Rof+k/TwTLudEJkQc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=r/8WQihAogvVfN/oTI14lVFCr4f8o2Lcy3IB8ZQ1nQkVjlOfsfQiIa2LcgN4zkF9+
	 FQOxulbdWKVy1dIJSo57YVMfEv91RN4I9mzNMftDqFmiBwKue1698z2sOcrUiweMLa
	 kDfl3HMOQH6gcNXSJe5NX3WOgVWASaM6O3/yy5XR+vNjII/VzL1LtAlCSQnkH/0k0e
	 mRQJAd7E7+snXscz2MumUfENdmjpGWO43Eb+wHOZw3QLti+CM4tvBb8Jj62uk+/bp/
	 qbqHoaWPHK0sSovao42QmXyIMVkhIK6lgMj11/XSnfOcOYlRinja7xhKNTBqGG9dJI
	 79BwUc+AdN04w==
Date: Wed, 21 Sep 2022 11:56:01 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
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
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>, linux-pm@vger.kernel.org
Subject: Re: [PATCH v7 1/5] PCI: qcom: Add system suspend and resume support
Message-ID: <20220921165601.GA1215223@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ed1a1260-0ef4-203a-f073-f5232bfc8466@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_095608_813689_F01F3423 
X-CRM114-Status: GOOD (  32.25  )
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

[+cc Rafael, linux-pm since this is real power management magic,
beginning of thread:
https://lore.kernel.org/all/1663669347-29308-1-git-send-email-quic_krichai@quicinc.com/
full patch since I trimmed too much of it:
https://lore.kernel.org/all/1663669347-29308-2-git-send-email-quic_krichai@quicinc.com/]

On Wed, Sep 21, 2022 at 03:23:35PM +0530, Krishna Chaitanya Chundru wrote:
> On 9/20/2022 11:46 PM, Bjorn Helgaas wrote:
> > On Tue, Sep 20, 2022 at 03:52:23PM +0530, Krishna chaitanya chundru wrote:
> > > Add suspend and resume syscore ops.
> > > 
> > > Few PCIe endpoints like NVMe and WLANs are always expecting the device
> > > to be in D0 state and the link to be active (or in l1ss) all the time
> > > (including in S3 state).
> >
> > What does this have to do with the patch?  I don't see any NVMe or
> > WLAN patches here.
>
> Existing NVMe driver expecting NVMe device to be in D0 during S3 also. If we
> turn off the link in
> suspend, the NVMe resume path is broken as the state machine is getting
> reset in the NVMe device.
> Due to this, the host driver state machine and the device state machine are
> going out of sync, and all NVMe commands
> after resumes are getting timed out.
> 
> IIRC, Tegra is also facing this issue with NVMe.
> 
> This issue has been discussed below threads:
> 
> https://lore.kernel.org/all/Yl+6V3pWuyRYuVV8@infradead.org/T/
> 
> https://lore.kernel.org/linux-nvme/20220201165006.3074615-1-kbusch@kernel.org/

The problem is that this commit log doesn't explain the problem and
doesn't give us anything to connect the NVMe and WLAN assumptions with
this special driver behavior.  There needs to be some explicit
property of NVMe and WLAN that the PM core or drivers like qcom can
use to tell whether the clocks can be turned off.

> > > In qcom platform PCIe resources( clocks, phy etc..) can released
> > > when the link is in L1ss to reduce the power consumption. So if the link
> > > is in L1ss, release the PCIe resources. And when the system resumes,
> > > enable the PCIe resources if they released in the suspend path.
> >
> > What's the connection with L1.x?  Links enter L1.x based on activity
> > and timing.  That doesn't seem like a reliable indicator to turn PHYs
> > off and disable clocks.
>
> This is a Qcom PHY-specific feature (retaining the link state in L1.x with
> clocks turned off).
> It is possible only with the link being in l1.x. PHY can't retain the link
> state in L0 with the
> clocks turned off and we need to re-train the link if it's in L2 or L3. So
> we can support this feature only with L1.x.
> That is the reason we are taking l1.x as the trigger to turn off clocks (in
> only suspend path).

This doesn't address my question.  L1.x is an ASPM feature, which
means hardware may enter or leave L1.x autonomously at any time
without software intervention.  Therefore, I don't think reading the
current state is a reliable way to decide anything.

> ...
> > > Its observed that access to Ep PCIe space to mask MSI/MSIX is happening
> > > at the very late stage of suspend path (access by affinity changes while
> > > making CPUs offline during suspend, this will happen after devices are
> > > suspended (after all phases of suspend ops)). If we turn off clocks in
> > > any PM callback, afterwards running into crashes due to un-clocked access
> > > due to above mentioned MSI/MSIx access.
> > > So, we are making use of syscore framework to turn off the PCIe clocks
> > > which will be called after making CPUs offline.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

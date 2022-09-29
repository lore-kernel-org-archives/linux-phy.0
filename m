Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 385B1C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 18:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=PwQ0m/5NKJie35hcAYmMrMdpr/Y/MDBhhZVCQbWydWI=; b=EbE0iLANIyYkyz
	eeLpH/SXgViDkakJe3LiDz0lrP4Jdyhctl0ZG3K2YJ5FtGv3vusvkxDlpqw0zBvUtsoH+7Q7U2dCB
	HISDCaQ3wkwMWep8Px2xsvL788Nxy8965u/MC9cS2FUnLFSjSEmpg4ViPI++FCnfBPwgQ3TyF0DMJ
	qQewyE/UB0ZI6juNhdb+yH5K35LN7nyn/ZcAL8OQN4AaJWYaTAsbAkOAoyNXc8RVTbd1Jm9615/8x
	dQXeey/dNvyegFGXY9XYaWVeFmrjPAKdX62DY4Lzw0zCer+vo1MMoVf7bdoRDu8jHmUOFS1roKNuJ
	qOF+nodaPdNwiYUcDpRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odyel-0053c3-LM; Thu, 29 Sep 2022 18:53:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odyej-0053b5-8S
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 18:53:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A860E62138;
	Thu, 29 Sep 2022 18:53:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEDD8C433C1;
	Thu, 29 Sep 2022 18:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664477587;
	bh=SJ/0ZKRCjXlv2aH2CHUmKWWkgmNd1ziKt9xrxglAf6o=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=D9Pngc/N/7ClWd6VcuwyqWsy1h/uBoGBXwX5BAH0UyXG3R47oVK8li1oS8fE3EmtI
	 imd6/cJjgcSW7spJH/HPmfbuMSrJ9K650FOEDHA+VyxVcKP5HuIhAzkszvi13BylaR
	 +TlXDe++kMpM5rqAXArpxgJCUuU+Q3SdGdyQEEpBQCYbL0Tn2MTzvbJxWryW2QFENl
	 GNKIHbtt1eK9YB+y7eWQjev/LWcCbdEagFKOrnLNRsowZZ3QO9WsRlJ7CX8g7MY/Xj
	 LgwWvmB88LHdEsajLpHVvQ0J8qGPUUnw236V5bvvF7muplxLehAJzofZDc11uJNXPo
	 gJ7YZpwcCZn6g==
Date: Thu, 29 Sep 2022 13:53:05 -0500
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
Message-ID: <20220929185305.GA1912842@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d2f7167-818a-a655-9885-b71a3e91733e@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_115309_424291_EF708D41 
X-CRM114-Status: GOOD (  44.28  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, Sep 26, 2022 at 09:00:11PM +0530, Krishna Chaitanya Chundru wrote:
> On 9/23/2022 7:56 PM, Bjorn Helgaas wrote:
> > On Fri, Sep 23, 2022 at 07:29:31AM +0530, Krishna Chaitanya Chundru wro=
te:
> > > On 9/23/2022 12:12 AM, Bjorn Helgaas wrote:
> > > > On Thu, Sep 22, 2022 at 09:09:28PM +0530, Krishna Chaitanya Chundru=
 wrote:
> > > > > On 9/21/2022 10:26 PM, Bjorn Helgaas wrote:
> > > > > > On Wed, Sep 21, 2022 at 03:23:35PM +0530, Krishna Chaitanya Chu=
ndru wrote:
> > > > > > > On 9/20/2022 11:46 PM, Bjorn Helgaas wrote:
> > > > > > > > On Tue, Sep 20, 2022 at 03:52:23PM +0530, Krishna chaitanya=
 chundru wrote:
> > > > > > > > > In qcom platform PCIe resources( clocks, phy etc..) can
> > > > > > > > > released when the link is in L1ss to reduce the power
> > > > > > > > > consumption. So if the link is in L1ss, release the PCIe
> > > > > > > > > resources. And when the system resumes, enable the PCIe
> > > > > > > > > resources if they released in the suspend path.
> > > > > > > > What's the connection with L1.x?  Links enter L1.x based on
> > > > > > > > activity and timing.  That doesn't seem like a reliable
> > > > > > > > indicator to turn PHYs off and disable clocks.
> > > > > > > This is a Qcom PHY-specific feature (retaining the link state=
 in
> > > > > > > L1.x with clocks turned off).  It is possible only with the l=
ink
> > > > > > > being in l1.x. PHY can't retain the link state in L0 with the
> > > > > > > clocks turned off and we need to re-train the link if it's in=
 L2
> > > > > > > or L3. So we can support this feature only with L1.x.  That is
> > > > > > > the reason we are taking l1.x as the trigger to turn off cloc=
ks
> > > > > > > (in only suspend path).
> > > > > > This doesn't address my question.  L1.x is an ASPM feature, whi=
ch
> > > > > > means hardware may enter or leave L1.x autonomously at any time
> > > > > > without software intervention.  Therefore, I don't think readin=
g the
> > > > > > current state is a reliable way to decide anything.
> > > > > After the link enters the L1.x it will come out only if there is
> > > > > some activity on the link.  AS system is suspended and NVMe driver
> > > > > is also suspended( queues will=A0 freeze in suspend) who else can
> > > > > initiate any data.
> > > > I don't think we can assume that nothing will happen to cause exit
> > > > from L1.x.  For instance, PCIe Messages for INTx signaling, LTR, OB=
FF,
> > > > PTM, etc., may be sent even though we think the device is idle and
> > > > there should be no link activity.
> > > I don't think after the link enters into L1.x there will some
> > > activity on the link as you mentioned, except for PCIe messages like
> > > INTx/MSI/MSIX. These messages also will not come because the client
> > > drivers like NVMe will keep their device in the lowest power mode.
> > > =

> > > The link will come out of L1.x only when there is config or memory
> > > access or some messages to trigger the interrupts from the devices.
> > > We are already making sure this access will not be there in S3.  If
> > > the link is in L0 or L0s what you said is expected but not in L1.x
> > Forgive me for being skeptical, but we just spent a few months
> > untangling the fact that some switches send PTM request messages even
> > when they're in a non-D0 state.  We expected that devices in D3hot
> > would not send such messages because "why would they?"  But it turns
> > out the spec allows that, and they actually *do*.
> > =

> > I don't think it's robust interoperable design for a PCI controller
> > driver like qcom to assume anything about PCI devices unless it's
> > required by the spec.
>
> From pci spec 4, in sec 5.5
> "Ports that support L1 PM Substates must not require a reference clock wh=
ile
> in L1 PM Substates
> other than L1.0".
> If there is no reference clk we can say there is no activity on the link.
> If anything needs to be sent (such as LTR, or some messages ), the link
> needs to be back in L0 before it
> sends the packet to the link partner.
> =

> To exit from L1.x clkreq pin should be asserted.
> =

> In suspend after turning off clocks and phy we can enable to trigger an
> interrupt whenever the clk req pin asserts.
> In that interrupt handler, we can enable the pcie resources back.

From the point of view of the endpoint driver, ASPM should be
invisible -- no software intervention required.  I think you're
suggesting that the PCIe controller driver could help exit L1.x by
handling a clk req interrupt and enabling clock and PHY then.

But doesn't L1.x exit also have to happen within the time the endpoint
can tolerate?  E.g., I think L1.2 exit has to happen within the LTR
time advertised by the endpoint (PCIe r6.0, sec 5.5.5).  How can we
guarantee that if software is involved?

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

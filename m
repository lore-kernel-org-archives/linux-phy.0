Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FA5DC6FA82
	for <linux-phy@archiver.kernel.org>; Fri, 23 Sep 2022 14:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=0RskmFexJRwylTrp7CXq1kCgPnJ2vDL4RJ7l3i2oqP4=; b=ZrGEAZacZdPrZb
	S5sWVgJBD6BNQTxp4JuTlMSfVE07lxukT4rBYgAU1w7gBGu7B/L0S80fFfb04t+UmBSWBBzjt8GPM
	0RPua7MmNV+qr8O17ylNRwoDaevl+9uV26FVkFBIzdRxdEQ6otV4vMkx52t3M859e2scoVk5y+v0k
	lmL0KmkwOGAawDJ5lQb+Ede5LAR15w/oSFUujV7LuIlQTlY2IY+wBi4gjE4uweunXiMg67ukVGkbI
	2qlqyoey6SwMUA8Je8py7MC9CnJ3Ea5oEvyv1MweOwAXZARiJaq2DiNQf6br4Gd1VDr3jRUgQhxBg
	by/WxaKPSLU1rnwNr5PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1objdF-004dUy-1I; Fri, 23 Sep 2022 14:26:21 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1objdB-004dUR-4j
	for linux-phy@lists.infradead.org; Fri, 23 Sep 2022 14:26:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 030B062535;
	Fri, 23 Sep 2022 14:26:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16133C433C1;
	Fri, 23 Sep 2022 14:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663943173;
	bh=ObX6HvLa+ySlFwmEmsOrRGpPJYrz/yfFRnE1KqoIX0Q=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=USLuatUTEmyIgU2Aq8Log9JG+qRZjgZycPj46CoYsjOhO4Te9M5o1aWKI7BRmtvdM
	 LyiAxh1zM59V+a30u/L29IL83ASv7/MpyUBJ1dUkVUoCow7vY0l9DwpQLnl7OQgIs4
	 hH9ZIj7n3hqXQ18xEzrBjkvdSqrS1V6blwsmBdncB5zO4ilhg7qkvQvi5Wp8o1B/pH
	 gGGjEaDgeqLprAybZHo222IH1RDwVCfG8pfbPKCyNCPlEBXwhvaZmYcF9Zu2whk5P/
	 EOUP+dFAym2QbbsPwtrVan5NXxW2KedOrHlQsk/LP1GOo3OHsZT8B72oIIbVPOyl/0
	 cH+Vj2uh2VlJw==
Date: Fri, 23 Sep 2022 09:26:11 -0500
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
Message-ID: <20220923142611.GA1389970@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <95e4e9d9-3f39-6cf4-0739-967c7e568697@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_072617_298835_2AAC72A9 
X-CRM114-Status: GOOD (  35.39  )
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

On Fri, Sep 23, 2022 at 07:29:31AM +0530, Krishna Chaitanya Chundru wrote:
> =

> On 9/23/2022 12:12 AM, Bjorn Helgaas wrote:
> > On Thu, Sep 22, 2022 at 09:09:28PM +0530, Krishna Chaitanya Chundru wro=
te:
> > > On 9/21/2022 10:26 PM, Bjorn Helgaas wrote:
> > > > On Wed, Sep 21, 2022 at 03:23:35PM +0530, Krishna Chaitanya Chundru=
 wrote:
> > > > > On 9/20/2022 11:46 PM, Bjorn Helgaas wrote:
> > > > > > On Tue, Sep 20, 2022 at 03:52:23PM +0530, Krishna chaitanya chu=
ndru wrote:

> > > > > > > In qcom platform PCIe resources( clocks, phy etc..) can
> > > > > > > released when the link is in L1ss to reduce the power
> > > > > > > consumption. So if the link is in L1ss, release the PCIe
> > > > > > > resources. And when the system resumes, enable the PCIe
> > > > > > > resources if they released in the suspend path.
> > > > > > What's the connection with L1.x?  Links enter L1.x based on
> > > > > > activity and timing.  That doesn't seem like a reliable
> > > > > > indicator to turn PHYs off and disable clocks.
> > > > >
> > > > > This is a Qcom PHY-specific feature (retaining the link state in
> > > > > L1.x with clocks turned off).  It is possible only with the link
> > > > > being in l1.x. PHY can't retain the link state in L0 with the
> > > > > clocks turned off and we need to re-train the link if it's in L2
> > > > > or L3. So we can support this feature only with L1.x.  That is
> > > > > the reason we are taking l1.x as the trigger to turn off clocks
> > > > > (in only suspend path).
> > > >
> > > > This doesn't address my question.  L1.x is an ASPM feature, which
> > > > means hardware may enter or leave L1.x autonomously at any time
> > > > without software intervention.  Therefore, I don't think reading the
> > > > current state is a reliable way to decide anything.
> > >
> > > After the link enters the L1.x it will come out only if there is
> > > some activity on the link.  AS system is suspended and NVMe driver
> > > is also suspended( queues will=A0 freeze in suspend) who else can
> > > initiate any data.
> >
> > I don't think we can assume that nothing will happen to cause exit
> > from L1.x.  For instance, PCIe Messages for INTx signaling, LTR, OBFF,
> > PTM, etc., may be sent even though we think the device is idle and
> > there should be no link activity.
>
> I don't think after the link enters into L1.x there will some
> activity on the link as you mentioned, except for PCIe messages like
> INTx/MSI/MSIX. These messages also will not come because the client
> drivers like NVMe will keep their device in the lowest power mode.
> =

> The link will come out of L1.x only when there is config or memory
> access or some messages to trigger the interrupts from the devices.
> We are already making sure this access will not be there in S3.  If
> the link is in L0 or L0s what you said is expected but not in L1.x

Forgive me for being skeptical, but we just spent a few months
untangling the fact that some switches send PTM request messages even
when they're in a non-D0 state.  We expected that devices in D3hot
would not send such messages because "why would they?"  But it turns
out the spec allows that, and they actually *do*.

I don't think it's robust interoperable design for a PCI controller
driver like qcom to assume anything about PCI devices unless it's
required by the spec.

Bjorn

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

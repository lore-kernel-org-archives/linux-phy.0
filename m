Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5252CC54EE9
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 18:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=y6B4LiwT73HXH37mJSRXsGxuPpTHjNgsbozVyrq+yKY=; b=MywMQMny3VCfSh
	9sTFeDJ3K071tnJkV4blupX58LOSlcFCXiuXl4leHg2BZHTFLmXaaDv/UBkHvt8C3JbVHu1oX+DfY
	sEfTYeYoK5lrkiT8fW37IFsH8jh4nc7t+I8UjoEY6yBemPzio1QClvFRMGhHnaLp2Qb6VnUuth7TS
	+AEcQyaIK0BMfzbxkA2UMrG2pA1IDE5FFFW+M9eKE4AxOanHcARW5EY7tgVW1qngZZPdqcSUlrumm
	MrW6WA1h3y+wJqMBJfe/W1YIhaWjF+PU5Oa5+wLZ95IPjY7g6y/J0mLkTctCjv83HaONYnJJorn+b
	RaFtZ/IBmND2dyMjJ6ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obR9r-00HQOP-P1; Thu, 22 Sep 2022 18:42:47 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obR9o-00HQLr-Cx
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 18:42:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CFBAC6114A;
	Thu, 22 Sep 2022 18:42:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0C40C433C1;
	Thu, 22 Sep 2022 18:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663872162;
	bh=/h8vcD/VKlMfsilM0pkuVJ3xlR/VnjMHKVy8yWgVg3g=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=DmVinFlzBg9GsiUso69Bkk+/qHgPMQ2PgkuO4jWk25WN3iEbJx1lE2EPNnp+UpZnd
	 hu5TxP9txk4iW6UcAN8LLLgpNHGZzGGn+4EzxfTVDvIXQoiUgJtylxpnQ+3iFjCgVu
	 nDiO8mlp2Bh4pFYJrzemIOLrxrvY1zxfDlvg0hIuGDNz81AxsGF9CmSDzj2YGxtOzr
	 6aA+HTqnfXy8X/FQaqynQCNkeGqZmbI67yE0Ba44vb1jgHEm4td29W588UgyBiSoKZ
	 efOtVj8fB9632l2+UQfoZPOMLabf9FRBZp4Tml0Ipz9iTG5vhN842RM6k5pL5kD3Pz
	 fH9Ppb9LPh2JQ==
Date: Thu, 22 Sep 2022 13:42:40 -0500
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
Message-ID: <20220922184240.GA1326211@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <807730f9-0220-d297-dffd-929dde30d513@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_114244_539269_68B807A2 
X-CRM114-Status: GOOD (  43.35  )
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

On Thu, Sep 22, 2022 at 09:09:28PM +0530, Krishna Chaitanya Chundru wrote:
> On 9/21/2022 10:26 PM, Bjorn Helgaas wrote:
> > [+cc Rafael, linux-pm since this is real power management magic,
> > beginning of thread:
> > https://lore.kernel.org/all/1663669347-29308-1-git-send-email-quic_kric=
hai@quicinc.com/
> > full patch since I trimmed too much of it:
> > https://lore.kernel.org/all/1663669347-29308-2-git-send-email-quic_kric=
hai@quicinc.com/]
> > =

> > On Wed, Sep 21, 2022 at 03:23:35PM +0530, Krishna Chaitanya Chundru wro=
te:
> > > On 9/20/2022 11:46 PM, Bjorn Helgaas wrote:
> > > > On Tue, Sep 20, 2022 at 03:52:23PM +0530, Krishna chaitanya chundru=
 wrote:
> > > > > Add suspend and resume syscore ops.
> > > > > =

> > > > > Few PCIe endpoints like NVMe and WLANs are always expecting the d=
evice
> > > > > to be in D0 state and the link to be active (or in l1ss) all the =
time
> > > > > (including in S3 state).
> > > > What does this have to do with the patch?  I don't see any NVMe or
> > > > WLAN patches here.
> > > Existing NVMe driver expecting NVMe device to be in D0 during S3 also=
. If we
> > > turn off the link in
> > > suspend, the NVMe resume path is broken as the state machine is getti=
ng
> > > reset in the NVMe device.
> > > Due to this, the host driver state machine and the device state machi=
ne are
> > > going out of sync, and all NVMe commands
> > > after resumes are getting timed out.
> > > =

> > > IIRC, Tegra is also facing this issue with NVMe.
> > > =

> > > This issue has been discussed below threads:
> > > =

> > > https://lore.kernel.org/all/Yl+6V3pWuyRYuVV8@infradead.org/T/
> > > =

> > > https://lore.kernel.org/linux-nvme/20220201165006.3074615-1-kbusch@ke=
rnel.org/
> > The problem is that this commit log doesn't explain the problem and
> > doesn't give us anything to connect the NVMe and WLAN assumptions with
> > this special driver behavior.  There needs to be some explicit
> > property of NVMe and WLAN that the PM core or drivers like qcom can
> > use to tell whether the clocks can be turned off.
>
> Not only that NVMe is expecting the device state to be always in D0.
> So any PCIe drivers should not turn off the link in suspend and do
> link retraining in the resume.  As this is considered a power cycle
> by the NVMe device and eventually increases the wear of the NVMe
> flash.

I can't quite parse this.  Are you saying that all PCI devices should
stay in D0 when the system is in S3?

> We are trying to keep the device in D0 and also reduce the power
> consumption when the system is in S3 by turning off clocks and phy
> with this patch series.

The decision to keep a device in D0 is not up to qcom or any other PCI
controller driver.

> > > > > In qcom platform PCIe resources( clocks, phy etc..) can
> > > > > released when the link is in L1ss to reduce the power
> > > > > consumption. So if the link is in L1ss, release the PCIe
> > > > > resources. And when the system resumes, enable the PCIe
> > > > > resources if they released in the suspend path.
> > > >
> > > > What's the connection with L1.x?  Links enter L1.x based on
> > > > activity and timing.  That doesn't seem like a reliable
> > > > indicator to turn PHYs off and disable clocks.
> > >
> > > This is a Qcom PHY-specific feature (retaining the link state in
> > > L1.x with clocks turned off).  It is possible only with the link
> > > being in l1.x. PHY can't retain the link state in L0 with the
> > > clocks turned off and we need to re-train the link if it's in L2
> > > or L3. So we can support this feature only with L1.x.  That is
> > > the reason we are taking l1.x as the trigger to turn off clocks
> > > (in only suspend path).
> >
> > This doesn't address my question.  L1.x is an ASPM feature, which
> > means hardware may enter or leave L1.x autonomously at any time
> > without software intervention.  Therefore, I don't think reading the
> > current state is a reliable way to decide anything.
>
> After the link enters the L1.x it will come out only if there is
> some activity on the link.  AS system is suspended and NVMe driver
> is also suspended( queues will=A0 freeze in suspend) who else can
> initiate any data.

I don't think we can assume that nothing will happen to cause exit
from L1.x.  For instance, PCIe Messages for INTx signaling, LTR, OBFF,
PTM, etc., may be sent even though we think the device is idle and
there should be no link activity.

Bjorn

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

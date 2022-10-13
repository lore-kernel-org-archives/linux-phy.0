Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D663C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 13 Oct 2022 00:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=6AHwSoEz+KI/p+JKvImIHY0Wv2d+9fzG21PJ5U6LbrY=; b=wuzRXvodaRx7sT
	RDNSFvZ5gmkNNmt11nbAHAnCIsmh+hdIHt7iOtIufWcEK8a6SgVwMMPpLU2Mchbp+Xk0+79K4AuJX
	P2oERk8FT4P43R82cTme06x3u+O9hOq8jy9tF33poyPIe7YDS55w2LIFGJtY7i4t4HXHCMo0+G6CH
	j7bTXCQrgeo56ALBOxd5rhqh0FKcfxjF/Bi4cO64QViEjGncUGQwyf+XS5kb96PaG1i+5YX6tWkRD
	z0HqpAkyXfYs4v/uqRN5/c2wIUwn5yBIJD/2dluMnsXPpwkmgvr/OEg2GMMvctgbMG7TNWBfKJCIC
	K5vgehObddXd/Yi+msAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oimOK-00A1G9-Sa; Thu, 13 Oct 2022 00:48:05 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oimLA-009zaG-SM
	for linux-phy@lists.infradead.org; Thu, 13 Oct 2022 00:44:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7AE18B81C97;
	Thu, 13 Oct 2022 00:44:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03566C43470;
	Thu, 13 Oct 2022 00:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665621886;
	bh=DKXGPgqaiPkIBCBB26ELdj+CVTTMyMJ9i/fnIjLcUSQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=Dd8sa6U0NOxibXKaQPEphZ/krmhRr7n/v6yTSTggiHzhkANlzBGhvELS7Lc0sh0xC
	 QVq0tY3jJIkGA72yx9C//YeMqqngoNAyhC/IBtyDk9akrtRxupxyB6/3thQHA/ICRn
	 mvll3qWTTRY9TXaUhroH0/6ctovHTbOsRPHqNdVTZhGHJygefMwtlstZQEp5XaqebW
	 w9i5JInzE1jJx7D3ZXzvda+TPBDV85RLS3EJGfhe/K23HkKbQukeC0sQ30+segWurZ
	 P1jXEFp17hWIh3cW2D8XmvBlSvrfAmpBeteq9pN1Ul4mFn4P2U3YkCsuAmmpOq0D8X
	 D6CeUf8YcsmdA==
Date: Wed, 12 Oct 2022 19:44:44 -0500
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
	"Rafael J. Wysocki" <rafael@kernel.org>, linux-pm@vger.kernel.org,
	Marc Zyngier <maz@kernel.org>,
	Kevin Rowland <kevin.p.rowland@gmail.com>
Subject: Re: [PATCH v7 1/5] PCI: qcom: Add system suspend and resume support
Message-ID: <20221013004444.GA3135316@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <04ace1ae-26d0-4157-b7eb-8dff29895180@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_174449_247680_8D16D36C 
X-CRM114-Status: GOOD (  19.53  )
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

[+cc Marc, Kevin]

On Wed, Oct 12, 2022 at 07:36:52PM +0530, Krishna Chaitanya Chundru wrote:
> On 10/6/2022 2:43 AM, Bjorn Helgaas wrote:

[I'm declaring quote text bankruptcy and dropping the huge wall of
text.  The IRQ affinity change you mention seems to be the critical
issue :)]

> > The PCIe spec clearly envisions Refclk being turned off
> > (sec 5.5.3.3.1) and PHYs being powered off (sec 5.5.3.2) while in
> > L1.2.
> > 
> > I've been assuming L1.2 exit (which includes Refclk being turned on
> > and PHYs being powered up) is completely handled by hardware, but it
> > sounds like the Qcom controller needs software assistance which fields
> > an interrupt when CLKREQ# is asserted and turns on Refclk and the
> > PHYs?
> > 
> > 5.5.3 does say "All Link and PHY state must be maintained during L1.2,
> > or must be restored upon exit using implementation specific means",
> > and maybe Qcom counts as using implementation specific means.
> > 
> > I *am* concerned about whether software can do the L1.2 exit fast
> > enough, but the biggest reason I'm struggling with this is because
> > using the syscore framework to work around IRQ affinity changes that
> > happen late in suspend just seems kind of kludgy and it doesn't seem
> > like it fits cleanly in the power management model.
> 
> Can you please suggest any another way to work around IRQ affinity
> changes.

One of your earlier patches [1] made dw_msi_mask_irq() look like this:

  static void dw_msi_mask_irq(struct irq_data *d)
  {
    struct pcie_port *pp = irq_data_get_irq_chip_data(d->parent_data);
    struct dw_pcie *pci = to_dw_pcie_from_pp(pp);

    if (dw_pcie_link_up(pci))
	    pci_msi_mask_irq(d);

    irq_chip_mask_parent(d);
  }

That was an awful lot like Marc's suggestion [2] that the
pci_msi_mask_irq() should be redundant.

If it's truly redundant, maybe pci_msi_mask_irq() can be removed
from dw_msi_mask_irq() (and other similar *_mask_irq()
implementations) completely?

Bjorn

[1] https://lore.kernel.org/r/1659526134-22978-3-git-send-email-quic_krichai@quicinc.com
[2] https://lore.kernel.org/linux-pci/86k05m7dkr.wl-maz@kernel.org/

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

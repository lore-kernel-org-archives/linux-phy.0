Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03BE2C982C9
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 15:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=CzPuDZUiM387PQst+x6VtEUST4RLedS9eB3hQVJfhn0=; b=KQ24um2bKB36k/
	ScUr2LfyA3APU4wonXuqoFzMw4XXhuNlR3cYbtvLcZPdei1eeP9Nsvfpmbo8Iee5Cq76nGJoZW2/h
	uI7yi4P37sFnWggaKeCJZCCTwVO+h4RiQIxCjVmGUP2/nOCSHl3gE9HfH8B0kSx1Lg3CFwpfQWTLW
	soRkOID2oB66zeIhsEo3BmMw0AQ+NSEYH0vVFr632E2xxmTWsk5jbF/ESVwJjrKuIu9gn0Q6dcOO1
	gYgTWDYMzvJT9FVBnhx6PTrMhpdSYKoKozb+IQhYsASzgoIvbPVtJW3gStJxF+XbZNsC3wCyFutUC
	BilXsICBS/gFyhb/k5DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6ryV-00000009edm-2C7J;
	Wed, 16 Sep 2026 15:55:07 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6ryV-00000009edI-06XF
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 15:55:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 486706020C;
	Wed, 16 Sep 2026 15:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1AD11F000FF;
	Wed, 16 Sep 2026 15:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789574106;
	bh=XOZkV6IEsSIEMAuWCGLWEExcMJL19yV/VfUFygYmtfk=;
	h=Date:From:To:Cc:Subject:In-Reply-To;
	b=BDPg6XGjK+eUiOyjuE6n13hfmldAuixZfcYAgCO14yFoqpU0ajI1sH8KOF/bT6/aw
	 gP9HD+js1NZ962rSYp3/gFTA6jabIWDxCMJAJKL2+1RPdJUNdag/YiTvLqwh2Ibqvp
	 zYX1gDq0IyF0GX36MTirWD7KmRwUlo4KAF9XDd6ZUs8pZB+m8Y9mxKZRtjF2UjWEKv
	 +xv60V5vozNPin241bV0mplbr4VTgwmb0GivRcMAibe5nDPMI59NGuB3EHojcQ5t7O
	 rvRtE1duuBf5Hkv5Eipg9XtZcT9qbSapDgt4X6hKAaD/2787lGUunN4Do38ZE4hsOl
	 p5RAIbqNIH8Ag==
Date: Wed, 16 Sep 2026 10:55:04 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 0/4] PCI: qcom: Align PHY init sequence with HPG
Message-ID: <20260916155504.GA926264@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-align_pcie_init_sequence_0916-v1-0-0b2195836f30@oss.qualcomm.com>
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

On Tue, Sep 15, 2026 at 11:04:20PM -0700, Qiang Yu wrote:
> HPG requires the controller/PHY GDSCs to be powered up and all
> clocks enabled, then the controller's reset and the PHY's reset
> toggled together as one group, with PARF_DEVICE_TYPE set right
> after. This series adds the callbacks needed on both sides to
> realize that sequence: a phy_reset() call the controller makes as
> part of its own reset, and matching phy_ops::init/phy_ops::reset on
> the PHY side.

This observation is not related to this series; it's a question about
PCI host controller initialization ordering in general because it
seems like this is a perennial issue.  Is there anything we can do to
converge on some sort of generic standard or typical ordering across
drivers?

For example, while looking at a patch that changed ordering in a
different driver (not qcom), I asked Gemini for some guidance and it
came up with the following ordering recommendations, which seem
pretty generic:

  - assert downstream PERST# so physical lanes remain quiet while
    setting up the host

  - assert local resets (core & PHY)

  - enable and stabilize power (IP core, I/O rails, PHYs)

  - enable and stabilize clocks, including refclk and T_PERST_CLK

  - initialize PHYs

    - deassert PHY reset or allow register access to PHY

    - wait for PHY PLL lock to refclk

    - program PHY parameters & calibration

    - verify PHY ready

  - deassert local core reset

  - configure RC (device type, MPS, max link speed, width, etc)

  - deassert downstream PERST#

  - enable LTSSM

If this could be made generic enough, maybe something like it could be
included in Documentation/PCI/controller/pci-controller-drivers.rst?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

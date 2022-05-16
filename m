Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C6A7C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 16 May 2022 12:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZjf4pf/aPGLWYFcGCfpfC4BghMmwy+dvuemnHLcbJY=; b=E5v9afTC7opeoJ
	HSc4z/UiUFirZ+gaowcRSdPulgkOHOf77Rep7Mrw//vfWnQEtsM1ijo/TsA8lKkbs8bAVZwZmp0hg
	WobbkqBzwmu4yI4h7cpX2ed2oXhyvUmFAJQQFsyWEC2CUjqOqjLAOzX1HjsKBEbQ7FdRssGjIZuAi
	7BUyFkq9XffxA892piM/F23lwzLX5grmNvsp/fjOBlUeDsbUH/wty4OCVWdJio3/iQBuR9MsKy7FB
	rHF4UeJ5mv3yqYKcX6Jnao7eF5Ndomi18sS+K1XknCPc5dVpH5siN1zf7HHijceYH/ueFL+NZ7reM
	jscF+HxUebFZfCp4yS8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqZky-007ZSj-RM; Mon, 16 May 2022 12:23:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqZkv-007ZRO-8r
 for linux-phy@lists.infradead.org; Mon, 16 May 2022 12:23:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D418C61140;
 Mon, 16 May 2022 12:23:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DB07C385B8;
 Mon, 16 May 2022 12:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1652703799;
 bh=vjr+sYh43sWwlmgGg+ndrIcpFt2TjxdJbmBK4XwQ7yA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jhRDhmrnwrC7CzRcA23skFHqAFt2RYp+ypjPVQR/79Aie+uvRFjNe9FS8z99vZ3cK
 FydIsBQnGCm8tu3kXuySCiNMTV16NAEdsih9oFIoO1oqk/8LirO9WfNkbRbv7qLtV/
 YgW/Rc+/507me5TewIwSdtGx0T1NBRsitpLKJ2BXohPDWgd14/7kzxzpoemYHsV2rB
 liJbWatimmbsuCb7mhrc80Q2JcgdeUAhefRhJidCSId6OlEQUe0Jpga4lAFXiBj/60
 JpDSjuOtfnNAh0wvMm07UBG10g8bH1aR+x4wfHuXAX5TeNmXjFjG2PQBInrIiKFBEf
 kdsbr7hHzLfig==
Date: Mon, 16 May 2022 17:53:14 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH 0/5] phy: qcom-qmp: split the QMP PHY driver
Message-ID: <YoJCMhF0c1t6Joa+@matsya>
References: <20220516114525.3596196-1-dmitry.baryshkov@linaro.org>
 <652b11e8-bd2e-e1e1-363f-4f460bb20913@linaro.org>
 <YoI68x3mQVSYIJa7@matsya>
 <CAA8EJpqmOR-3FV8fGDUyRRvLSUAV0oGZ2MHUMbVPxrgakdHuhg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpqmOR-3FV8fGDUyRRvLSUAV0oGZ2MHUMbVPxrgakdHuhg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_052321_433584_10431961 
X-CRM114-Status: GOOD (  30.62  )
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

On 16-05-22, 15:01, Dmitry Baryshkov wrote:
> On Mon, 16 May 2022 at 14:52, Vinod Koul <vkoul@kernel.org> wrote:
> >
> > On 16-05-22, 14:50, Dmitry Baryshkov wrote:
> > > On 16/05/2022 14:45, Dmitry Baryshkov wrote:
> > > > While adding support for the PCIe EP mode support to the QMP driver I
> > > > couldn't help but notice that the QMP PHY driver has slowly become the a
> > > > beast with tons of conditions and corner cases being inserted here and
> > > > there.r
> > > >
> > > > This an RFC for an attempt to to cleanup the QMP driver by splitting the
> > > > QMP PHY driver into four smaller drivers, each targeting a particular
> > > > family of PHY backends (DP/combo, PCIe, UFS and USB). Yes, this results
> > > > in some code duplication, but I hope that the end result is still better
> > > > than the current situation.
> > > >
> > > > If the idea looks good, I will continue polishing the drivers. A
> > > > feedback regarding the common functions (ones, left in the
> > > > phy-qcom-qmp.c file) would be appreciated.
> > >
> > > Oh. 3 patches out of five bounced because of moving the tables between
> > > source files. It looks like for the review I will have to split this
> > > somehow. Ideas are appreciated.
> >
> > I have released the patches but yes maybe do the table moves one bit at
> > a time...?
> 
> Well, I can do this, but it would be then a series of
> - add foo QMP PHY driver
> - move tables for msm7777-foo to the foo QMP PHY driver
> -  move tables for sdm5555-foo to the foo QMP PHY driver
> - ......
> - remove foo QMP support from the main driver
> 
> How does that sound?

yes that sounds sane to me, but lets see if Bjorn has better ideas?

> 
> >
> > >
> > > >
> > > > Dmitry Baryshkov (5):
> > > >    phy: qcom-qmp: split combo PHY support
> > > >    phy: qcom-qmp: split DP data to DP-specific structures
> > > >    phy: qcom-qmp: split UFS PHY support
> > > >    phy: qcom-qmp: split PCIe PHY support
> > > >    phy: qcom-qmp: complete split of the QMP driver
> > > >
> > > >   drivers/phy/qualcomm/Makefile             |    2 +-
> > > >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 1362 +++++
> > > >   drivers/phy/qualcomm/phy-qcom-qmp-lib.h   |  290 +
> > > >   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c  | 1945 +++++++
> > > >   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c   |  863 +++
> > > >   drivers/phy/qualcomm/phy-qcom-qmp-usb.c   | 2104 ++++++++
> > > >   drivers/phy/qualcomm/phy-qcom-qmp.c       | 5983 +--------------------
> > > >   drivers/phy/qualcomm/phy-qcom-qmp.h       |   43 +
> > > >   8 files changed, 6732 insertions(+), 5860 deletions(-)
> > > >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > > >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-lib.h
> > > >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > > >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > > >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> > > >
> > >
> > >
> > > --
> > > With best wishes
> > > Dmitry
> >
> > --
> > ~Vinod
> 
> 
> 
> -- 
> With best wishes
> Dmitry

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

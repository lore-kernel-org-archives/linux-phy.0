Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76A65C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 16 May 2022 11:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gIZo6miH+L1QoRmAQv6Iae+wyXKsOUyzVZ43/CG0EsM=; b=pIt59kF7A/mAhG
	yVOChzaPypqQ9s/9Qu2MQyBc0xmID44reaT3tleOLniPmwwHkjYOtTMOGCSk8VuSmXLNaiLjxMwMU
	ElMErz0tv95goHPccQSE38rLT5tUpdBnCs3+pRI8wmQDZpkppkEwjY2vTbwVk3vYv+qOzdS5sQGrH
	cK6L5P2Hc/71eN+6pyuPVfnfU9KcnY+UVyb5orUvjpoB10mQZWOufa7dzSJ6f7xxDrdi+vHnpQVpx
	vXaJf0eLQFoqAtYX5NIIulvnr3wM8cAVcoXCJwnK0Ly96n8yzH89sxPnqipfkeNdeQWBhRfn45svk
	WGoG7Y8tOeecdjVelsRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqZH2-007OHO-TC; Mon, 16 May 2022 11:52:28 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqZH0-007OEl-AI
 for linux-phy@lists.infradead.org; Mon, 16 May 2022 11:52:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E757F6102A;
 Mon, 16 May 2022 11:52:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97CADC385AA;
 Mon, 16 May 2022 11:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1652701944;
 bh=ut68diDCfJv3RgBFK9QhzpxbMnwcHYQmhINCGtZhizc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g/qRp2TN1d0x3ymegxGekTb5aD89KFb1NsE8NvQv29zMEUk9bf0LkDfo8W4Vhasf+
 fPCl7uzEEVDGSa9gC7gveQJDZ9hkeY+pJWfueH2PJC4DX+vCd1OUa/yKbmsA+ykN2N
 BBmkxyXJWDiqOUh1YHypbRkWyMJ04IIt/vGguuQY/nh2T1lq7wn0icDynJXmm3hGXQ
 D6HMLgyJriPhRDJvAMroFl6mQ4aa2NChPnsoVLWc9snZBN3/Qm5GXQFbSPoyilkxQB
 XvXf9VaFLP7+EImJjoUlb8aKQPMfhuWt5EinHSBvAx7gAuV2dtZzlUd3jS+zvnE6Q0
 QyiH7wk6w0knw==
Date: Mon, 16 May 2022 17:22:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH 0/5] phy: qcom-qmp: split the QMP PHY driver
Message-ID: <YoI68x3mQVSYIJa7@matsya>
References: <20220516114525.3596196-1-dmitry.baryshkov@linaro.org>
 <652b11e8-bd2e-e1e1-363f-4f460bb20913@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <652b11e8-bd2e-e1e1-363f-4f460bb20913@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_045226_466826_8A09B51F 
X-CRM114-Status: GOOD (  23.40  )
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

On 16-05-22, 14:50, Dmitry Baryshkov wrote:
> On 16/05/2022 14:45, Dmitry Baryshkov wrote:
> > While adding support for the PCIe EP mode support to the QMP driver I
> > couldn't help but notice that the QMP PHY driver has slowly become the a
> > beast with tons of conditions and corner cases being inserted here and
> > there.r
> > 
> > This an RFC for an attempt to to cleanup the QMP driver by splitting the
> > QMP PHY driver into four smaller drivers, each targeting a particular
> > family of PHY backends (DP/combo, PCIe, UFS and USB). Yes, this results
> > in some code duplication, but I hope that the end result is still better
> > than the current situation.
> > 
> > If the idea looks good, I will continue polishing the drivers. A
> > feedback regarding the common functions (ones, left in the
> > phy-qcom-qmp.c file) would be appreciated.
> 
> Oh. 3 patches out of five bounced because of moving the tables between
> source files. It looks like for the review I will have to split this
> somehow. Ideas are appreciated.

I have released the patches but yes maybe do the table moves one bit at
a time...?

> 
> > 
> > Dmitry Baryshkov (5):
> >    phy: qcom-qmp: split combo PHY support
> >    phy: qcom-qmp: split DP data to DP-specific structures
> >    phy: qcom-qmp: split UFS PHY support
> >    phy: qcom-qmp: split PCIe PHY support
> >    phy: qcom-qmp: complete split of the QMP driver
> > 
> >   drivers/phy/qualcomm/Makefile             |    2 +-
> >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 1362 +++++
> >   drivers/phy/qualcomm/phy-qcom-qmp-lib.h   |  290 +
> >   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c  | 1945 +++++++
> >   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c   |  863 +++
> >   drivers/phy/qualcomm/phy-qcom-qmp-usb.c   | 2104 ++++++++
> >   drivers/phy/qualcomm/phy-qcom-qmp.c       | 5983 +--------------------
> >   drivers/phy/qualcomm/phy-qcom-qmp.h       |   43 +
> >   8 files changed, 6732 insertions(+), 5860 deletions(-)
> >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-lib.h
> >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> > 
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

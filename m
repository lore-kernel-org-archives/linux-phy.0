Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1816BC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 16 May 2022 12:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xMfsry7RXH2mIbjE5tCWLurkBKXWGbZnrl+hqMAI6os=; b=rQROiVcYEYjWfb
	Yyxcn/FiC9GOvLKOCWxyr1WW4uDZ41i+YLZO94X97VesvbLV11lmw6Azhic3arJMD99BVdudAuK+Y
	jUH85yRtjVkSangYa904nuy4GvR4V0HRi2QS6ArP+7buDbb1e2Jme0s6ytn4IlVttLpd3sL66/LkX
	stDtOJ1Ax1D0lraK2tHWZr4Fjxtj3VIkd8i3gvHufvUXMGIxVV+smPQRtPYXbcnx5s+tNqiKRSFUL
	sZ2bXSpO26FZYSeu28yy/yT2qZ4IhGvNB9wjItKbr8KeuA/20A3X+kZQv2k7wg/7yNn1OM/b4JIcn
	EYkujmEznoWCLI0YLLPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqZUH-007T6q-Jl; Mon, 16 May 2022 12:06:09 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqZPX-007QUK-7q
 for linux-phy@lists.infradead.org; Mon, 16 May 2022 12:01:16 +0000
Received: by mail-qv1-xf30.google.com with SMTP id dv4so11900345qvb.13
 for <linux-phy@lists.infradead.org>; Mon, 16 May 2022 05:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r6QUxKhZD7dg6SrR8olJzbWfcvHNB4B8kSPF8qfUx38=;
 b=P6ii775z8lYleFEFRXcqe+2dnyCW6s2TYhOY2oSOdVQ6lzkwMupbEuhvj94dY8wV3L
 NV7BrGCfjrpfiIldhK81AUxgBd+w00gSuJk9eYX1BuslhgQI1juimLvdG9BhSePXOJzD
 B/IB33YRW01xAVyo5OGv4o+MIZddTp9dk2QpfrJwnQNsihZJUNaZAKUPtTW6geowhKv1
 IkTQ4v+XvZi+sw1+z6glx21KyFsd00j9OR2g99Y8YlSlMPD7ZbHlFrLhkGzNhSDmKqbF
 Ef69EWQI1zNsJ/2r0h1jcRb07JfpoMyZYIxOtE/AliN5Mi3nRltNMmHZMNUWw4Xhi3Li
 V4sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r6QUxKhZD7dg6SrR8olJzbWfcvHNB4B8kSPF8qfUx38=;
 b=3KT0JoWR1ur4UrIV0D97vsQtSborcw6Ra1pTt4AtvYDOL6fH9+aVX8EzUnwzNosb0s
 Z3wMItGo/umX+Ak0wFuuk7mlrPr+7t86BTCTqklLbe9tmVMLmD4FY/R26LPSrPbFaz8P
 UvTprxuAb0jyAr3PpvFI9L0AICSSSb/MxHv0Atgrpl4xtQMoRdH6ofW97i5H6yRUrROo
 mBCbcMtqMbbroakHiBHGmE8epqrJ7QdP4cJZEbTkS7w49vFQLsNNXHDl8pEpTwTn7CE4
 GDt4UsQVd4CmDUT8ai8t8tEmnit37f1rQUBFKtL6PpLjNyHK2r7diCZwpDFwECPfnuKt
 sB4Q==
X-Gm-Message-State: AOAM533FFS2fkMEj8n6n444+dBbz17bCC3wDz/7hEb4lslO+7XK1lUjU
 4nEathNBxNe6KeYJdOwAB2pOfsvibNcGBDU37e2zYw==
X-Google-Smtp-Source: ABdhPJwHa4RjXR9o8GoZi0AXSz4W0+XbdeL5C0dkgGkMhhdaEcK05tJ86QebCOnp//emSd0UMOOX0V9DoUugxa0fG7E=
X-Received: by 2002:a0c:ac02:0:b0:45a:91a4:c11b with SMTP id
 l2-20020a0cac02000000b0045a91a4c11bmr14898092qvb.119.1652702471784; Mon, 16
 May 2022 05:01:11 -0700 (PDT)
MIME-Version: 1.0
References: <20220516114525.3596196-1-dmitry.baryshkov@linaro.org>
 <652b11e8-bd2e-e1e1-363f-4f460bb20913@linaro.org> <YoI68x3mQVSYIJa7@matsya>
In-Reply-To: <YoI68x3mQVSYIJa7@matsya>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 16 May 2022 15:01:00 +0300
Message-ID: <CAA8EJpqmOR-3FV8fGDUyRRvLSUAV0oGZ2MHUMbVPxrgakdHuhg@mail.gmail.com>
Subject: Re: [RFC PATCH 0/5] phy: qcom-qmp: split the QMP PHY driver
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, 
 Kishon Vijay Abraham I <kishon@ti.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_050115_330789_F9F03BBC 
X-CRM114-Status: GOOD (  26.43  )
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

On Mon, 16 May 2022 at 14:52, Vinod Koul <vkoul@kernel.org> wrote:
>
> On 16-05-22, 14:50, Dmitry Baryshkov wrote:
> > On 16/05/2022 14:45, Dmitry Baryshkov wrote:
> > > While adding support for the PCIe EP mode support to the QMP driver I
> > > couldn't help but notice that the QMP PHY driver has slowly become the a
> > > beast with tons of conditions and corner cases being inserted here and
> > > there.r
> > >
> > > This an RFC for an attempt to to cleanup the QMP driver by splitting the
> > > QMP PHY driver into four smaller drivers, each targeting a particular
> > > family of PHY backends (DP/combo, PCIe, UFS and USB). Yes, this results
> > > in some code duplication, but I hope that the end result is still better
> > > than the current situation.
> > >
> > > If the idea looks good, I will continue polishing the drivers. A
> > > feedback regarding the common functions (ones, left in the
> > > phy-qcom-qmp.c file) would be appreciated.
> >
> > Oh. 3 patches out of five bounced because of moving the tables between
> > source files. It looks like for the review I will have to split this
> > somehow. Ideas are appreciated.
>
> I have released the patches but yes maybe do the table moves one bit at
> a time...?

Well, I can do this, but it would be then a series of
- add foo QMP PHY driver
- move tables for msm7777-foo to the foo QMP PHY driver
-  move tables for sdm5555-foo to the foo QMP PHY driver
- ......
- remove foo QMP support from the main driver

How does that sound?

>
> >
> > >
> > > Dmitry Baryshkov (5):
> > >    phy: qcom-qmp: split combo PHY support
> > >    phy: qcom-qmp: split DP data to DP-specific structures
> > >    phy: qcom-qmp: split UFS PHY support
> > >    phy: qcom-qmp: split PCIe PHY support
> > >    phy: qcom-qmp: complete split of the QMP driver
> > >
> > >   drivers/phy/qualcomm/Makefile             |    2 +-
> > >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 1362 +++++
> > >   drivers/phy/qualcomm/phy-qcom-qmp-lib.h   |  290 +
> > >   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c  | 1945 +++++++
> > >   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c   |  863 +++
> > >   drivers/phy/qualcomm/phy-qcom-qmp-usb.c   | 2104 ++++++++
> > >   drivers/phy/qualcomm/phy-qcom-qmp.c       | 5983 +--------------------
> > >   drivers/phy/qualcomm/phy-qcom-qmp.h       |   43 +
> > >   8 files changed, 6732 insertions(+), 5860 deletions(-)
> > >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-lib.h
> > >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > >   create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> > >
> >
> >
> > --
> > With best wishes
> > Dmitry
>
> --
> ~Vinod



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

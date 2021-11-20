Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55A8EC433EF
	for <linux-phy@archiver.kernel.org>; Sat, 20 Nov 2021 06:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JmdK3o+kTDF3Qz/7qQl20Kk0zzrmaoGyXxFxp3wJ8Uo=; b=BbtLoE0hzq6q25
	fdrlnIgZkRcCD/NlciojOE9mVcGK5HJuAgTduc1+dX+cMVwulBXtPpU/fpGbER27c6v/pSH+hkWOt
	a8af+JH8hlLjr70ca6dNJYOy4bnfxh66d/z69USUTPJAEFyOUz23PwaJrNXoMGoPt1svC9VeEChAo
	3LbIf1JM4LYxfuBz3bdRLi2nhD1rs452JTB+9a9mlfEKDORsxvPG5KhWe9/s9uhRoJKC8PUG7TtlN
	99q7g2EuQxxr8J7LYmu9kupQKeDwhT5dbaq/IDd4xOVSbk5aKIGwUaDV0nYJmUUKORcRstUd6WJGU
	ohEry/HYpRJlkS2W9Kxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1moJQQ-00C61e-KP; Sat, 20 Nov 2021 06:00:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1moJQO-00C61D-Ro
 for linux-phy@lists.infradead.org; Sat, 20 Nov 2021 06:00:34 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C8F0860E9B;
 Sat, 20 Nov 2021 06:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637388028;
 bh=F9WH0Q3dMb+WLsf5ldP5Y9VErnRq9PFjOeJVodW8nho=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RwEGGDTbkVnWS46oSb5M+InyHyzjk3b/ZcmQbX55YGZ71AUABlDTYa1vaw/UyD0hO
 OOYSgWyr/DoiXi/8UkjeC4bjPIwUvc8Cbc8XjdpGebA3axQsZo6jcejXWH47ymdwPN
 OSi5PkxfEioyBNDFrBWW0foWzW/2ag3sG6Pqt9Fi6nj/G8oYgcedWYXJZtn/vwo0T1
 EkqmPzM9wGOdy7lMONR1EdU+St9kHEvJb8T0eT1ag+RfzgFhF1DnXXTduNfJYx5Lp0
 xs06hcYRNHc0PcWjvihxrt1NUjR4TP2HG5dGDw93AWd/8EX3dSgH9FrDJcrXmMk9OV
 rEBtvGHR7wWYQ==
Date: Sat, 20 Nov 2021 11:30:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/6] phy: qualcomm: ipq806x-usb: Fix kernel-doc style
Message-ID: <YZiO92inoiTapw0o@matsya>
References: <20211116103951.34482-1-vkoul@kernel.org>
 <20211116103951.34482-2-vkoul@kernel.org>
 <YZWbxdnfHKdCI/hz@builder.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YZWbxdnfHKdCI/hz@builder.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_220032_943541_57910CEF 
X-CRM114-Status: GOOD (  19.89  )
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

On 17-11-21, 18:18, Bjorn Andersson wrote:
> On Tue 16 Nov 04:39 CST 2021, Vinod Koul wrote:
> 
> > The functions are documented but there were style issues, so fix
> > the style and add missing description for phy_dwc3
> > 
> > drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c:130:
> > drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c:174:
> > drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c:212: warning:
> > This comment starts with '/**', but isn't a kernel-doc comment.
> > Refer Documentation/doc-guide/kernel-doc.rst
> > 
> > Signed-off-by: Vinod Koul <vkoul@kernel.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 26 +++++++++++----------
> >  1 file changed, 14 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> > index bfff0c8c9130..e1b8fa911416 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> > @@ -127,12 +127,13 @@ struct phy_drvdata {
> >  };
> >  
> >  /**
> > - * Write register and read back masked value to confirm it is written
> > + * usb_phy_write_readback - Write register and read back masked value to
> 
> "Writing kernel-doc" indicates that you should have some parenthesis
> after that function.

Heh, it does not warn :(, will update this
> 
> > + * confirm it is written
> >   *
> > - * @base - QCOM DWC3 PHY base virtual address.
> > - * @offset - register offset.
> > - * @mask - register bitmask specifying what should be updated
> > - * @val - value to write.
> > + * @phy_dwc3: QCOM DWC3 PHY base virtual address.
> 
> I guess this was "base" at some point? As you're fixing up the
> kerneldoc, it would be nice to correct this to say something like
> "usb_phy context".

Why did I miss this one :(, yeah will update this

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

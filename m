Return-Path: <SRS0=nTb1=PJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4706EC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 17:46:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1112C613CF
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 17:46:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1112C613CF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSZHZ5CdX0m0bjQ5KG/AYwQR5Tf3kvJxPIzo004pSlo=; b=XVHV4MT2eElXHd
	z6C/F1Ppa7oyFl5t6cUGWpnx0GM4Wf2oFyuc1daKz+Hr0iJLdgUbGv2YYqctS6kSUsuY3Tx1XqK8r
	fOWta4wZzKUKpduQx1+AE/acGo1yyvSTJPsAUUuQPDaRJkt0bKnb+17oszQ+gjefFKun4NLm27VMO
	Fn//c0KyCU+AMSv4GigL+hCjdFtHlspVrwjhVykk6sEhh9LQ0oB391iExwpEp2n4ZVGnK5kg129In
	/i/6HqHlLK7RLp4F/kjGDEdw6eoymWG7w76jAokBYwu24HbE/IL2SSa7Fut+K5y9GPgoBTpeMubiG
	nJTfucnfHfOzZOy+ezKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdc9H-008YWw-IA; Thu, 21 Oct 2021 17:46:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdc9E-008YWG-ID
 for linux-phy@lists.infradead.org; Thu, 21 Oct 2021 17:46:37 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 377D96139F;
 Thu, 21 Oct 2021 17:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634838396;
 bh=5yxyO+SbV4ZYkqAUmZBs+5tctJ2fRPEXvFU5ANq9jZI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Qzhf/5+Pld5SPs/JQcVt2xbCD+i/2WEBlxB3INFwDAqCoF42aXlcGmVOxJ7Ilim+n
 WrO5hmFMHl8iDrJQZA7qH/KalMweTcyLh8sMvy2ixC510EvyJLfhkQYDExImFpJOv/
 rmyCLLDGjtZ7XW5dnJ95FC19BD4lPvxQ1BA+omWqhdtR0zpKRJizCWgnmCjdz4bBFw
 wqtWsFMRoJpShJLb03nmvU7MMMMoxYpWje4nLroDb8Iy9/ePA9EZMqcsLtdCWY2UwX
 JZFAOjKiNq+eXwlAhnKixH1quWEBjPsz81OdAaLXUiilOvEsl9SxOT8F7Kyg2OHeza
 41u25IM9s7G+g==
Date: Thu, 21 Oct 2021 23:16:31 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Stephen Boyd <swboyd@chromium.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Doug Anderson <dianders@chromium.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Matthias Kaehlcke <mka@chromium.org>,
 Sandeep Maheswaram <quic_c_sanm@quicinc.com>,
 Wesley Cheng <wcheng@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 quic_pkondeti@quicinc.com, quic_ppratap@quicinc.com
Subject: Re: [PATCH] phy: qcom-snps: Correct the FSEL_MASK
Message-ID: <YXGndzeN/nVJp8A/@matsya>
References: <1634711785-25351-1-git-send-email-quic_c_sanm@quicinc.com>
 <CAE-0n51miQBAO2QBtHG75cB4TZnm9jiXFz3APBwrNbQcfjB-Eg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAE-0n51miQBAO2QBtHG75cB4TZnm9jiXFz3APBwrNbQcfjB-Eg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_104636_644423_DC54B495 
X-CRM114-Status: GOOD (  15.34  )
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

On 21-10-21, 10:35, Stephen Boyd wrote:
> Quoting Sandeep Maheswaram (2021-10-19 23:36:25)
> > The FSEL_MASK which selects the refclock is defined incorrectly.
> > It should be [4:6] not [5:7]. Due to this incorrect definition, the BIT(7)
> > in USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1 is reset which keeps PHY analog
> > blocks ON during suspend.
> > Fix this issue by correctly defining the FSEL_MASK.
> >
> > Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> 
> Any Fixes tag?

Yes pls add

> 
> > ---
> >  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > index ae4bac0..28459a1 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > @@ -1,6 +1,7 @@
> >  // SPDX-License-Identifier: GPL-2.0
> >  /*
> >   * Copyright (c) 2020, The Linux Foundation. All rights reserved.
> > + * Copyright (c) 2021, Qualcomm Innovation Center, Inc. All rights reserved.
> 
> I never thought I'd see this again! :)

Also, is it justified adding a new copyright for single code line change..?

> >   */
> >
> >  #include <linux/clk.h>
> > @@ -33,7 +34,7 @@
> >
> >  #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0   (0x54)
> >  #define RETENABLEN                             BIT(3)
> > -#define FSEL_MASK                              GENMASK(7, 5)
> > +#define FSEL_MASK                              GENMASK(6, 4)
> >  #define FSEL_DEFAULT                           (0x3 << 4)
> >
> >  #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1   (0x58)

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

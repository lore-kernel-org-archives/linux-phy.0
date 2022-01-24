Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7104FC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jan 2022 04:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ahiggoRfG8w7NCFgXhY6YmpeHIKKHu4+aSAnqOPeDk=; b=UCzBTrFYE89Xlk
	UCblA6paP1ofXxlJGLzD3HEAI9Tq0qNEZNPM8svuyn5tPhEydoDZu6xHE/yEZP8TQH23EJTBnYaWs
	642KKr4pb+Lov3kWhY6vj2LUdoKk6o0byh2+x7MCddVMadO2DFHnT68wfjr6nMTQiqZEogm0auxEP
	GrCLFlitRMx6Q2nqcCEV6uhY9KRs3iwE3n7rDwHvB2cjWIswrluvvAGAdyWsqRzcZLJ3riQn/h8gj
	pDzAYZUM2xN7T+nZkHzwrhvAjOi0ktyCzG797HqUZf08eVOg//yVLBZGVw91yXiSIIbmNI3P2gL+U
	caOONajyEtneBkC0UOPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBqxH-002D7W-Mu; Mon, 24 Jan 2022 04:27:47 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBqxE-002D6t-RW
 for linux-phy@lists.infradead.org; Mon, 24 Jan 2022 04:27:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 89AC8B80DF0;
 Mon, 24 Jan 2022 04:27:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77B0AC340E1;
 Mon, 24 Jan 2022 04:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642998462;
 bh=bu82sJ+NjeI3uuIOGsgPoe/ycAxxYC9Q8Zij5mql5gA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PVPWgMTA02LQv8gB3uq7owgnzrPNGUiCM4YT3xgA77kT6KA3hA+SQD6QN0msD/Hhh
 bnxZRUK+WooyMo9annjlUjtKlHUuMVzljUt9X02FV+yeuGeHfADMz0bMXp/tJ3dTaN
 UEkj7/W6wPcOIhyawaXAdMj67OENQNURc59pzr3gBez7deoSmd7ZxCo5Ok5JDFxJ0m
 U6ys6+KAfHCd2gqMENcXlc9LumQlcsyNP4OfXmPdY1N6IQEvHZxvTb8p2SCyNhMNWQ
 MpwxXqdzMwf//SxFa3MvBz98MdB29y4NdAh5HNeTeXTGcPYrd8IYgUJH5ZExpI0nnN
 mSzKOSaLraSGg==
Date: Mon, 24 Jan 2022 09:57:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Ansuel Smith <ansuelsmth@gmail.com>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] drivers: phy: qcom: ipq806x-usb: conver latch
 function to pool macro
Message-ID: <Ye4qujlrcfxPTy2j@matsya>
References: <20220117002641.26773-1-ansuelsmth@gmail.com>
 <20220117002641.26773-2-ansuelsmth@gmail.com>
 <Ye1BcvaneH0sWeQV@matsya>
 <61ed6a44.1c69fb81.35728.5e8b@mx.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <61ed6a44.1c69fb81.35728.5e8b@mx.google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_202745_189468_A7B3F045 
X-CRM114-Status: GOOD (  30.33  )
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

On 23-01-22, 15:46, Ansuel Smith wrote:
> On Sun, Jan 23, 2022 at 05:22:18PM +0530, Vinod Koul wrote:
> > On 17-01-22, 01:26, Ansuel Smith wrote:
> > > Convert latch function to readl pool macro to tidy things up.
> > > 
> > > Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 17 +++++------------
> > >  1 file changed, 5 insertions(+), 12 deletions(-)
> > > 
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> > > index 6788e0e8272a..ab2d1431546d 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> > > @@ -112,6 +112,9 @@
> > >  #define SS_CR_READ_REG				BIT(0)
> > >  #define SS_CR_WRITE_REG				BIT(0)
> > >  
> > > +#define LATCH_SLEEP				40
> > > +#define LATCH_TIMEOUT				100
> > > +
> > >  struct usb_phy {
> > >  	void __iomem		*base;
> > >  	struct device		*dev;
> > > @@ -156,19 +159,9 @@ static inline void usb_phy_write_readback(struct usb_phy *phy_dwc3,
> > >  
> > >  static int wait_for_latch(void __iomem *addr)
> > >  {
> > > -	u32 retry = 10;
> > > -
> > > -	while (true) {
> > > -		if (!readl(addr))
> > > -			break;
> > 
> > we break if read returns non zero value...
> > 
> > Do you know what is the value expected?
> >
> 
> If I understand the logic here, we write a value and we wait for it to
> get applied. To confirm that we execute a writel and then we readl the
> same address until it does return a value. That is the way used to
> understand that the write process has finished and that the value has
> been applied/we can write again.
> 
> > > -
> > > -		if (--retry == 0)
> > > -			return -ETIMEDOUT;
> > > -
> > > -		usleep_range(10, 20);
> > > -	}
> > > +	u32 val;
> > 
> > Okay this contains garbage..
> 
> I think I didn't understand, val value will get replaced by readl in
> the pool_timeout function.
> 
> > >  
> > > -	return 0;
> > > +	return readl_poll_timeout(addr, val, !val, LATCH_SLEEP, LATCH_TIMEOUT);
> > 
> > and we are waiting for it read a garbage value!
> > 
> 
> Again could be very confused and wrong but the pool_timeout macro does
> the exact same thing of the wait_for_latch function with th only
> difference of handling the sleep differently. We put in val the return
> of readl and the break condition as !val. Or I didn't understand the
> concern about garbage value.

Sorry I read the readl_poll_timeout wrongly, this seems correct, I will
pick these now.

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

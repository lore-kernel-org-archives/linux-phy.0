Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF7CCC433F5
	for <linux-phy@archiver.kernel.org>; Sun, 23 Jan 2022 14:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pgipmC6ukt2nFFfL2GIxTA+c6aBnpzmto8uE8LRNwaU=; b=piRn94WVtuJhZR
	IbJN/Z1V9fQ8IcJzXhJDrcz16oSzPtF4yg9SWpwvEext3JG55955xnNN7MYme+4K6boVbew3jYhpQ
	gZInyMekky0s7hBLOI5OI+1z2SOaYJC5s5jj2gZty6SVoN2CQWPc2+KvosUg+n1K4F/7/mIoCuF6V
	aFNtigt5IAUGxAGebCA0HJGm+WXCCVTer2vrc0LtehFfUV7bfFOAfSOMICazrNu3NatrtKbGmmKdz
	ijKabU3vLtjKxwu5p5wrfNbkZEWXoDcZ7mZo3GBjbFzfypcgRg+wbsF13NeJBH2AwL+QVVBQHif5v
	7yZi7dN02b9250Wpy7oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBe8X-0010A4-D6; Sun, 23 Jan 2022 14:46:33 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBe8U-00109h-QI
 for linux-phy@lists.infradead.org; Sun, 23 Jan 2022 14:46:32 +0000
Received: by mail-ej1-x631.google.com with SMTP id o12so14246010eju.13
 for <linux-phy@lists.infradead.org>; Sun, 23 Jan 2022 06:46:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:from:to:cc:subject:references:mime-version
 :content-disposition:in-reply-to;
 bh=hgWH+WcZXMlxkNrNUYeXrIrZsOUs50NokRp+9lLtuio=;
 b=bDhWIjq4PSVUuW00XfoEI+VZpml2rFKFdisJ2LLFq8a1sSibrFjyit2wIZICRAUFO+
 DhVT9lY/F3n4ExOnUAze5+POY5jimBX6KmmBYPRbOMcTYlu9RhQpRlqjdN6Ye+Zob2Oe
 KtDA3UWwMV3t5QWy7GZb5q0jlPpio1Ii5r4Zb8nMmoru3/iInyCr0nsS0WN8g9/v3Qnq
 kyMrggZZ6exW11xnsSRDbj6CNMmb+ijowaXXMvRQEVUd+Uf0dN1zDFyp5BYRBVN08Kvv
 b4S3niqnvX40jpGKzkdgghk8q/i9f2je6zoQU2rG0D52trZm/4I/hOiR30e9IKtjd/yl
 OB5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:from:to:cc:subject:references
 :mime-version:content-disposition:in-reply-to;
 bh=hgWH+WcZXMlxkNrNUYeXrIrZsOUs50NokRp+9lLtuio=;
 b=eTgYfGURUANkupbrcb23auVVg7dQZWUHuaQa3r+bJ+AYrFy9m5Jo54cYpz96S3h8ND
 15Ye29uw87uFTt4xiS9wW0QqIFSpHtqL8HZHZr2txQyyf62Btf6Ofqru039DHN+U86/K
 3fYWidZ+6LX4c+w3SDskZUMUGhL/80Oc/uaJI8z2J6Iohr4zLDrqfduSzux8MLjwNgLp
 PAGNb2Ts6mgKyXziM/HIQJV3FjRgeImiWwEcuivcWLsxaT9tBU2Vd2vC3lAk0RYGQ7fP
 eq9uSFmgU0Hx7Ax+AI7KhJZpsy+9HyrMP1jI9N50dgMyVhwyAUXNSPrxta03XAkI6flA
 kZGQ==
X-Gm-Message-State: AOAM530K7kqW7I3VzYvjGqebRYjZOgUotbLqi75G+ZOHQl7uElg7YXNy
 VOX5/P1Jt/KphvIwSZXqiYc=
X-Google-Smtp-Source: ABdhPJxexb6SNOjl8nBjHlVlmuVMQjSS2rGSKoTXvLvQSz0ZlvWRxzDR85vXwWCoH5fcXKWhZHmGIQ==
X-Received: by 2002:a17:907:3fa1:: with SMTP id
 hr33mr6694895ejc.239.1642949189039; 
 Sun, 23 Jan 2022 06:46:29 -0800 (PST)
Received: from Ansuel-xps. (93-42-71-246.ip85.fastwebnet.it. [93.42.71.246])
 by smtp.gmail.com with ESMTPSA id f26sm5019979eds.69.2022.01.23.06.46.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Jan 2022 06:46:28 -0800 (PST)
Message-ID: <61ed6a44.1c69fb81.35728.5e8b@mx.google.com>
X-Google-Original-Message-ID: <Ye1qQYTvGt7C1FFF@Ansuel-xps.>
Date: Sun, 23 Jan 2022 15:46:25 +0100
From: Ansuel Smith <ansuelsmth@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] drivers: phy: qcom: ipq806x-usb: conver latch
 function to pool macro
References: <20220117002641.26773-1-ansuelsmth@gmail.com>
 <20220117002641.26773-2-ansuelsmth@gmail.com>
 <Ye1BcvaneH0sWeQV@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Ye1BcvaneH0sWeQV@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_064630_893240_370B4073 
X-CRM114-Status: GOOD (  25.33  )
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

On Sun, Jan 23, 2022 at 05:22:18PM +0530, Vinod Koul wrote:
> On 17-01-22, 01:26, Ansuel Smith wrote:
> > Convert latch function to readl pool macro to tidy things up.
> > 
> > Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 17 +++++------------
> >  1 file changed, 5 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> > index 6788e0e8272a..ab2d1431546d 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
> > @@ -112,6 +112,9 @@
> >  #define SS_CR_READ_REG				BIT(0)
> >  #define SS_CR_WRITE_REG				BIT(0)
> >  
> > +#define LATCH_SLEEP				40
> > +#define LATCH_TIMEOUT				100
> > +
> >  struct usb_phy {
> >  	void __iomem		*base;
> >  	struct device		*dev;
> > @@ -156,19 +159,9 @@ static inline void usb_phy_write_readback(struct usb_phy *phy_dwc3,
> >  
> >  static int wait_for_latch(void __iomem *addr)
> >  {
> > -	u32 retry = 10;
> > -
> > -	while (true) {
> > -		if (!readl(addr))
> > -			break;
> 
> we break if read returns non zero value...
> 
> Do you know what is the value expected?
>

If I understand the logic here, we write a value and we wait for it to
get applied. To confirm that we execute a writel and then we readl the
same address until it does return a value. That is the way used to
understand that the write process has finished and that the value has
been applied/we can write again.

> > -
> > -		if (--retry == 0)
> > -			return -ETIMEDOUT;
> > -
> > -		usleep_range(10, 20);
> > -	}
> > +	u32 val;
> 
> Okay this contains garbage..

I think I didn't understand, val value will get replaced by readl in
the pool_timeout function.

> >  
> > -	return 0;
> > +	return readl_poll_timeout(addr, val, !val, LATCH_SLEEP, LATCH_TIMEOUT);
> 
> and we are waiting for it read a garbage value!
> 

Again could be very confused and wrong but the pool_timeout macro does
the exact same thing of the wait_for_latch function with th only
difference of handling the sleep differently. We put in val the return
of readl and the break condition as !val. Or I didn't understand the
concern about garbage value.

> 
> -- 
> ~Vinod

-- 
	Ansuel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

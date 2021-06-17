Return-Path: <SRS0=Iqmd=LL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3825C2B9F4
	for <linux-phy@archiver.kernel.org>; Thu, 17 Jun 2021 11:04:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AA37D6113C
	for <linux-phy@archiver.kernel.org>; Thu, 17 Jun 2021 11:04:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AA37D6113C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Jn5+wbutc2CEFIZnpz0H3/Qs6eegkx1Zg3jUTsG4AM=; b=XujaxHoPPMHFcJ
	Q6Cg1DzO1YGNbGYgMTeQnM7sMbCnQ+xMlVENqeEncycylbr1NarWNijVZsJvgJfsQuPGGp2lZq62K
	Bb94TuPvcfDnIVxyipx+3Pz2SpfJ8olirRaJDO+XIqLAlM1Qw73sruv5bxQRxejWidUj1PCQLnvPC
	6QMCOKyqqtpe6Yex8YUT+vcqdGyGgHp0exA7WSGl0Xg3VXw7xBeWr9vb57WhF/aGCRuhdq5G9ztaH
	HE36YG6+gl1GE/yDUXbfOfbUBZpTLVKHKgWKN9FdBZmfewWeE/Gct6W/PeZhUHd7nHtDlNQDacXHN
	0nYELVelqwmEzud6Q4CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltppA-009zsw-6d; Thu, 17 Jun 2021 11:04:40 +0000
Received: from mail-vs1-xe2a.google.com ([2607:f8b0:4864:20::e2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltotK-009myT-1a
 for linux-phy@lists.infradead.org; Thu, 17 Jun 2021 10:04:55 +0000
Received: by mail-vs1-xe2a.google.com with SMTP id j8so2690599vsd.0
 for <linux-phy@lists.infradead.org>; Thu, 17 Jun 2021 03:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Yc3v3gAfLxnXDzM8KeyqkmyumlBhFvvZJHDrxz2cMIU=;
 b=sI3eyR4FhUDZbzi6XsgSlIBX6O2vmLnEK0oMfoI5SmlPbHNO3BoVwb5qyzvxgc+vuC
 R7A1svAj17X/tiWOml6tNAQV84dFmYoffEbhD6MnqZ4aVe62FVO4EJ5JPZgvTCs7KIIH
 85Ehn7kD/Fp2EkJr8XwNVq23CxYCenQORBAcGvkxncV/nsZFeHTfEPDQ2/k19MPJfUU1
 j2q6v5bcOb79E7u4QdV5cVVm6cFK5q8aQqFlOupvLSzeKUeFAQFHQeAmoZMS7Ag2iuG7
 vDdudKcblojjxBs6c62twU8w/fVSumeLeBNbF9Fb/Zux+HkWPcrZWqL6yxQoFAjaxRcJ
 atZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Yc3v3gAfLxnXDzM8KeyqkmyumlBhFvvZJHDrxz2cMIU=;
 b=Ssf/Ruupj1cJM1r7B75k9zAL4mRM+KI3HHHcTCC+L3JGVL0Fa6Pa79gw76Cb51KSQG
 jikJ7hYli4ar9B4fNPZeBVLax6ibHNagKDKvgpWT4sF5eNyW7ht+UCyoHBUivvWxyU7Z
 IVDcUv4vc0StQSf3fcF3k0GTeO5MNEfMkGd2FK6MPpLtUZh71NL8WnGmrj6tPNVcRPbK
 UdJUdNBbWiI7cNmeeS8lyPKuIERaRuVjKzJ0YJO6BhTqeqQNR7E4r+IswJMMsZm3ly8n
 Ii5alQmrjfCwnS0mphhHLlUqTOB4VS+BXZ+9a3uZ8/V6iXloZukgBqONI2vILjUmAq7X
 EZzQ==
X-Gm-Message-State: AOAM533Yl8/ckRhALfyTVLyyzCk5wQkZQUTfIFKpQvlMTg8o2MrRxBjU
 6TPxZncuhI3Z5FrKbzpwN4zG/BrnKkreAc5mPssfzg==
X-Google-Smtp-Source: ABdhPJw29hnXb1KQzO/v8lJ0U0DUEo8Sjzq3oZXt2JE/qO1kK7A4zJfyHhgbucCOZ9JfQCjRKnVQTqu7QMYJQLRCEUQ=
X-Received: by 2002:a05:6102:386:: with SMTP id
 m6mr3631602vsq.48.1623924293206; 
 Thu, 17 Jun 2021 03:04:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210603182242.25733-1-rashmi.a@intel.com>
 <20210603182242.25733-2-rashmi.a@intel.com>
 <397dc803-f4ea-e8d3-9956-de8b3f537e2f@xilinx.com>
In-Reply-To: <397dc803-f4ea-e8d3-9956-de8b3f537e2f@xilinx.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 17 Jun 2021 12:04:17 +0200
Message-ID: <CAPDyKFpTf8DvauD17JR+jMH1TypgPiNs86k3YtaD4g10fRp65Q@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IFvigJxQQVRDSOKAnSAxLzJdIG1tYzogc2RoY2ktb2YtYXJhc2FuOiBVc2UgY2xvYw==?=
 =?UTF-8?B?ay1mcmVxdWVuY3kgcHJvcGVydHkgdG8gdXBkYXRlIGNsa194aW4=?=
To: Michal Simek <michal.simek@xilinx.com>,
 Manish Narani <manish.narani@xilinx.com>, 
 Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>
Cc: rashmi.a@intel.com, linux-drivers-review-request@eclists.intel.com, 
 linux-mmc <linux-mmc@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kishon <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
 linux-phy@lists.infradead.org, Mark Gross <mgross@linux.intel.com>, 
 kris.pan@linux.intel.com, furong.zhou@intel.com, 
 mallikarjunappa.sangannavar@intel.com, 
 Adrian Hunter <adrian.hunter@intel.com>, mahesh.r.vaidya@intel.com, 
 nandhini.srikandan@intel.com, 
 "Raja Subramanian, Lakshmi Bai" <lakshmi.bai.raja.subramanian@intel.com>
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210617_030454_176545_047BFA0B 
X-CRM114-Status: GOOD (  22.20  )
X-Mailman-Approved-At: Thu, 17 Jun 2021 04:04:39 -0700
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

On Fri, 4 Jun 2021 at 08:13, Michal Simek <michal.simek@xilinx.com> wrote:
>
>
>
> On 6/3/21 8:22 PM, rashmi.a@intel.com wrote:
> > From: Rashmi A <rashmi.a@intel.com>
> >
> > If clock-frequency property is set and it is not the same as the current
> > clock rate of clk_xin(base clock frequency), set clk_xin to use the
> > provided clock rate.
> >
> > Signed-off-by: Rashmi A <rashmi.a@intel.com>
> > Reviewed-by: Adrian Hunter <adrian.hunter@intel.com>
> > ---
> >  drivers/mmc/host/sdhci-of-arasan.c | 14 ++++++++++++--
> >  1 file changed, 12 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
> > index 839965f7c717..0e7c07ed9690 100644
> > --- a/drivers/mmc/host/sdhci-of-arasan.c
> > +++ b/drivers/mmc/host/sdhci-of-arasan.c
> > @@ -1542,6 +1542,8 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
> >               }
> >       }
> >
> > +     sdhci_get_of_property(pdev);
> > +
> >       sdhci_arasan->clk_ahb = devm_clk_get(dev, "clk_ahb");
> >       if (IS_ERR(sdhci_arasan->clk_ahb)) {
> >               ret = dev_err_probe(dev, PTR_ERR(sdhci_arasan->clk_ahb),
> > @@ -1561,14 +1563,22 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
> >               goto err_pltfm_free;
> >       }
> >
> > +     /* If clock-frequency property is set, use the provided value */
> > +     if (pltfm_host->clock &&
> > +         pltfm_host->clock != clk_get_rate(clk_xin)) {
> > +             ret = clk_set_rate(clk_xin, pltfm_host->clock);
> > +             if (ret) {
> > +                     dev_err(&pdev->dev, "Failed to set SD clock rate\n");
> > +                     goto clk_dis_ahb;
> > +             }
> > +     }
> > +
> >       ret = clk_prepare_enable(clk_xin);
> >       if (ret) {
> >               dev_err(dev, "Unable to enable SD clock.\n");
> >               goto clk_dis_ahb;
> >       }
> >
> > -     sdhci_get_of_property(pdev);
> > -
> >       if (of_property_read_bool(np, "xlnx,fails-without-test-cd"))
> >               sdhci_arasan->quirks |= SDHCI_ARASAN_QUIRK_FORCE_CDTEST;
> >
> >
>
> Manish/Sai: Please retest this on Xilinx SOC.
>
> Thanks,
> Michal

I am about to queue this patch, but it would be nice to get your
confirmation and tested-by tags before doing so. Would that be
possible within the next couple of days?

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

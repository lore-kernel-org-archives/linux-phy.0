Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4775C77B73
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 18:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zO5znho2lj82SLCf3htX1VSmCeIpj+zcj03dUbaWliI=; b=ijAzbYjaUUqq3e
	pRaVkH6m4sxidNe4deTYkpAi88au4V3LLB+T2N6BVzA3KjmqnzX1/CzHAMvsHlfJkCbPVwKCt2uOh
	rPAR+9W6n2HRcKCOibeCbxcinvEUf9uoymPG4hsiL/9CJMjieUauo9YMXPrbGx2OBJ4Aw4Zw6IhLH
	G7+gUIyz1+hLueB2R7V+smprWURJO+2H0JRsuv64sCywPOYmoYwJjapCLlm6h3hh3Zl06SgvjcBzO
	MYDyDikrpXrKktLv3vW8nLP8n2Nym3BPicmsYvcxFtswxEpJDOnlJdhl1SKQiGO7XCu3lZ3GywWVk
	8JtzfGY6p4VJev8MLQKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q44ML-00EuSI-0s;
	Tue, 30 May 2023 18:46:17 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q44MI-00EuRO-2g
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 18:46:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685472370;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=0LI6CN4AqBzxYXMeybknZnsUHQpyhfqhi5JUJbBAtlM=;
	b=eJN6qQqwzyhgRFHbgQ3ADDwpkx6mWOUdjMm246UZ+PIc60t24Ll6SlmxFB8wG77N9cZzD5
	BnTQXrGdTWwm1SFBZkGq9KRKwY+rgSqWd15rnKLTkuOBjPCnhNwCSvw4VjbTE026IwYRxd
	DjgdPwI1rRx4gobgCFN/9ibF+N9ORzk=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-578-pZHMkmTcPb2yMbq9yG799w-1; Tue, 30 May 2023 14:46:09 -0400
X-MC-Unique: pZHMkmTcPb2yMbq9yG799w-1
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-62609400a3bso70737276d6.2
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 11:46:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685472368; x=1688064368;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0LI6CN4AqBzxYXMeybknZnsUHQpyhfqhi5JUJbBAtlM=;
        b=eZfubZB15a7JZeFBseYpd1hUd1CZwJfWwhbJ64W9iG2Y45esHK52qU0gsqPbalk2F9
         hOsD99Ru7TD1+mPlc3/V7fpNomI/hecOURXY76V96ijOKwAF9f6zjFWm0mpWvEyez9TC
         GX/4f/xcArRczf5oXuEfoVT8HJfpeA1j6T0+xWJha2odOuRdcv3aH2mIh7qDVAwBxvPl
         KPziMUx7qqBQvwP9uy9QWVnFIFA87StbFVfO79W95r8vMC+c2bMS1fBcBKbZzAVnpXWZ
         in8otElHD7hi6tRopDyLqj9DPJ7bl5QYrkQVfJ1tCZLCm8uAUVs9JlNgN7pEiOIKYtLH
         EMNg==
X-Gm-Message-State: AC+VfDyn6G3afh0WFfR6JoF70M9WKJogWo9xtvaUw7cTCKcbt3nRvUvy
	GDTUi+A7QROvVCdmZS574IEPKEOFdXmFSF9DVuRVnh72TS4EIdt9uk+IjcHMjHUIKCPOx3m2Ggh
	TD2EL4NR/syeFvOaQ3DIpb/deGQ==
X-Received: by 2002:a05:6214:48e:b0:625:aa49:9abd with SMTP id pt14-20020a056214048e00b00625aa499abdmr3116363qvb.65.1685472368539;
        Tue, 30 May 2023 11:46:08 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5OTSOBM8dx5z4mye3zPw8Hjinloz9YveX76huti2t8fKlrYpX7Lxwgwe0kQ/j7T4maQJKryg==
X-Received: by 2002:a05:6214:48e:b0:625:aa49:9abd with SMTP id pt14-20020a056214048e00b00625aa499abdmr3116347qvb.65.1685472368304;
        Tue, 30 May 2023 11:46:08 -0700 (PDT)
Received: from fedora ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id df2-20020a056214080200b005ef54657ea0sm4874115qvb.126.2023.05.30.11.46.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 11:46:07 -0700 (PDT)
Date: Tue, 30 May 2023 14:46:05 -0400
From: Adrien Thierry <athierry@redhat.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH RFC 1/2] phy: qcom-snps-femto-v2: properly enable ref
 clock
Message-ID: <ZHZEbW+aSJ5xLOlO@fedora>
References: <20230529185638.32376-1-athierry@redhat.com>
 <20230529185638.32376-2-athierry@redhat.com>
 <20230529211629.7sw542tyyygv4tcs@ripper>
MIME-Version: 1.0
In-Reply-To: <20230529211629.7sw542tyyygv4tcs@ripper>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_114614_944374_E05FC667 
X-CRM114-Status: GOOD (  27.96  )
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

Hi Bjorn, thanks for your reply!

On Mon, May 29, 2023 at 02:16:29PM -0700, Bjorn Andersson wrote:
> On Mon, May 29, 2023 at 02:56:36PM -0400, Adrien Thierry wrote:
> > The driver is not enabling the ref clock, which thus gets disabled by
> > the clk_disable_unused initcall. This leads to the dwc3 controller
> > failing to initialize if probed after clk_disable_unused is called, for
> > instance when the driver is built as a module.
> > 
> 
> Good catch!
> 
> A side note though, clk_disable_unused() has no way to take kernel
> modules into consideration today, and it doesn't handle the case where
> clock drivers are built as modules appropriately.
> Work has started to address this, but as of todaybooting the system
> without clk_ignore_unused is not recommended...
>

For my understanding, do you have an example of a situation that would
fail with modules when not using clk_ignore_unused?

> > To fix this, add calls to clk_prepare_enable/clk_disable_unprepare at
> > the proper places.
> > 
> 
> If I parse the downstream kernel correctly the refclock should be
> turned off across runtime and system suspend as well.
> 

Which downstream kernel are you using? I'm not seing a system suspend
callback in mine [1]. refclock should be turned off on runtime suspend in
my patch, in qcom_snps_hsphy_suspend, which is called by
qcom_snps_hsphy_runtime_suspend.

[1] https://git.codelinaro.org/clo/la/kernel/ark-5.14/-/blob/kernel.lnx.5.14.r2-rel/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c

> Regards,
> Bjorn
> 
> > Signed-off-by: Adrien Thierry <athierry@redhat.com>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 20 +++++++++++++++++--
> >  1 file changed, 18 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > index 6c237f3cc66d..8abf482e81a8 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > @@ -166,6 +166,7 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
> >  	}
> >  
> >  	clk_disable_unprepare(hsphy->cfg_ahb_clk);
> > +	clk_disable_unprepare(hsphy->ref_clk);
> >  	return 0;
> >  }
> >  
> > @@ -181,6 +182,12 @@ static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
> >  		return ret;
> >  	}
> >  
> > +	ret = clk_prepare_enable(hsphy->ref_clk);
> > +	if (ret) {
> > +		dev_err(&hsphy->phy->dev, "failed to enable ref clock\n");
> > +		return ret;
> > +	}
> > +
> >  	return 0;
> >  }
> >  
> > @@ -380,10 +387,16 @@ static int qcom_snps_hsphy_init(struct phy *phy)
> >  		goto poweroff_phy;
> >  	}
> >  
> > +	ret = clk_prepare_enable(hsphy->ref_clk);
> > +	if (ret) {
> > +		dev_err(&phy->dev, "failed to enable ref clock, %d\n", ret);
> > +		goto disable_ahb_clk;
> > +	}
> > +
> >  	ret = reset_control_assert(hsphy->phy_reset);
> >  	if (ret) {
> >  		dev_err(&phy->dev, "failed to assert phy_reset, %d\n", ret);
> > -		goto disable_ahb_clk;
> > +		goto disable_ref_clk;
> >  	}
> >  
> >  	usleep_range(100, 150);
> > @@ -391,7 +404,7 @@ static int qcom_snps_hsphy_init(struct phy *phy)
> >  	ret = reset_control_deassert(hsphy->phy_reset);
> >  	if (ret) {
> >  		dev_err(&phy->dev, "failed to de-assert phy_reset, %d\n", ret);
> > -		goto disable_ahb_clk;
> > +		goto disable_ref_clk;
> >  	}
> >  
> >  	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_CFG0,
> > @@ -448,6 +461,8 @@ static int qcom_snps_hsphy_init(struct phy *phy)
> >  
> >  	return 0;
> >  
> > +disable_ref_clk:
> > +	clk_disable_unprepare(hsphy->ref_clk);
> >  disable_ahb_clk:
> >  	clk_disable_unprepare(hsphy->cfg_ahb_clk);
> >  poweroff_phy:
> > @@ -462,6 +477,7 @@ static int qcom_snps_hsphy_exit(struct phy *phy)
> >  
> >  	reset_control_assert(hsphy->phy_reset);
> >  	clk_disable_unprepare(hsphy->cfg_ahb_clk);
> > +	clk_disable_unprepare(hsphy->ref_clk);
> >  	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
> >  	hsphy->phy_initialized = false;
> >  
> > -- 
> > 2.40.1
> >

Best,
Adrien


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

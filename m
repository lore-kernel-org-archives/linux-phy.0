Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0817DC77B7A
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jun 2023 17:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDgE3NRcTVfDFesVOqsrYoyJXG4ua9Xhfl/U6/tMYKg=; b=RUUr9gjrUPwuoK
	ukCk0gXZiScbpSddG4gfFakowIIXEhPtpmlp8gWxjRp/SWMg7nfUjLX/PGOXLtFde/FykITiNOxZG
	Ezp+rRNtme9MUHl24Rp9+PF/MreoMETuveboNvvURpPuPqw11RKXJi99Olmx1Ek5rGQEOB3FpkX0P
	/RJCBceGVlLNDTaBcvd64i8snYu2fFJOGUromaF9C8dOYdMIamDchBkICavknTpnLb9tOiETaYq1+
	aIHCkgHLEazhCe6KzZCpgtotzzqmPf8bs8NSw7N69FKw/6TtkbAL1w++3Nt0T55TuHbMXz4pYk780
	37MPc78TyuTrQEZmPMFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4lqN-004NF9-2A;
	Thu, 01 Jun 2023 17:12:11 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4lqK-004NEQ-2J
	for linux-phy@lists.infradead.org;
	Thu, 01 Jun 2023 17:12:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685639527;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=5JK5bagIl4mNu2bd8dqzC2ZaUL1SOPOyDNs1gFUPJVk=;
	b=V9O6EQnN5sbMjz5kIaesQkwTvfdhMDTq9FWnr5eQ7KQ66IW+7B0/4PTZiMoptVscenWx0C
	vwxCtD4RNtTCAQFS01xAovaC7MZAMlr+qDZoeEiwxkdryM/7TtuA4M+iuloDU3Da3zyX6K
	UPByt/AbM6IzVacZokcEYz6787YyRRA=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-629-CKCKgI6jMum3PWam9N0wlg-1; Thu, 01 Jun 2023 13:12:06 -0400
X-MC-Unique: CKCKgI6jMum3PWam9N0wlg-1
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-62627366ebeso15542466d6.3
        for <linux-phy@lists.infradead.org>; Thu, 01 Jun 2023 10:12:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685639526; x=1688231526;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5JK5bagIl4mNu2bd8dqzC2ZaUL1SOPOyDNs1gFUPJVk=;
        b=B4R6Hq+AJAZxqX/6ZuPxc5KrcHwTohXGMtVw5j2o9u+ItyXlkwwCAkNtg3Yypb8BB/
         rL0CxcXER1Z3UtplZILzSYwb7Au8YfYrOBYgnCY7hJbwALQEU0CT9pGTqkBCUHZ1W5Fx
         auSEqAUHCt//0JkhAxExx1H7+mE+ekpenjrnkP2gBrgvtmwe6fbQT2nC4JCgRc9onbLv
         oSk7ZTMaUakO5jz36fzuxMNPlqHIuXIWe+B8lYY6AqeQ4LCccrLj9NEF24HsgDifNfTZ
         fa50I2nTa88m2L3QBsYTMEAQQmZoV95SP5+/Kk4j7Ha6AAq7DW88NOSmeJ6PI0zBJ8yv
         Cosw==
X-Gm-Message-State: AC+VfDypG33VHKIzSmuwF//E8K4WKPhyS1Mt0vrmBpTf6fC9x5Kx4O/f
	ZRjfwOSHcJouIRMAszPjzEFd0824D/Esn89WBQ/85SZbJMtwZA7uZ3MnJFEtcJ+uPvzl/JU4Aca
	Fl59lNDUpCaXnx920BIVdQOCSbg==
X-Received: by 2002:ad4:5f8e:0:b0:5f8:f168:e0e7 with SMTP id jp14-20020ad45f8e000000b005f8f168e0e7mr12816498qvb.29.1685639525986;
        Thu, 01 Jun 2023 10:12:05 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6I8R3fgCzuYzNgh+LioVv3oB78WfcfQrA7Q0GbkEvyKz+5epvEpwpfuytr1FokUwT/oOyJCA==
X-Received: by 2002:ad4:5f8e:0:b0:5f8:f168:e0e7 with SMTP id jp14-20020ad45f8e000000b005f8f168e0e7mr12816471qvb.29.1685639525725;
        Thu, 01 Jun 2023 10:12:05 -0700 (PDT)
Received: from fedora ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id pm22-20020ad446d6000000b006263c531f61sm3313822qvb.24.2023.06.01.10.12.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jun 2023 10:12:04 -0700 (PDT)
Date: Thu, 1 Jun 2023 13:12:02 -0400
From: Adrien Thierry <athierry@redhat.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH RFC 2/2] phy: qcom-snps-femto-v2: Remove AHB2PHY
 interface clock
Message-ID: <ZHjRYpjwHI3bP4yC@fedora>
References: <20230529185638.32376-1-athierry@redhat.com>
 <20230529185638.32376-3-athierry@redhat.com>
 <20230529211921.imf6tttlrkza4lc3@ripper>
MIME-Version: 1.0
In-Reply-To: <20230529211921.imf6tttlrkza4lc3@ripper>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_101208_827995_D676097E 
X-CRM114-Status: GOOD (  30.26  )
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

Hi Bjorn,

On Mon, May 29, 2023 at 02:19:21PM -0700, Bjorn Andersson wrote:
> On Mon, May 29, 2023 at 02:56:37PM -0400, Adrien Thierry wrote:
> > The AHB2PHY interface clock cfg_ahb_clk is not assigned anywhere in the
> > driver. Moreover, it's not used by any device tree, nor is present in
> > the qcom,usb-snps-femto-v2 bindings. Remove it.
> > 
> 
> The downstream driver deals with cfg_ahb as well, so I think it would be
> more appropriate to ensure that it's actually wired up.
> 
> And in that case, I would find it preferable to switch to use the
> clk_bulk API for the introduction of the ref clk - to clean up the error
> paths if nothing else.
>

I won't be able to properly wire the cfg_ahb clock in the device trees
because I've got no way of knowing which clock to use for cfg_ahb in the
various SoCs, but I can at least try to clean the code by using the
clk_bulk API.

> Regards,
> Bjorn
> 
> > Signed-off-by: Adrien Thierry <athierry@redhat.com>
> > ---
> > I'm not 100% sure if the clock should be removed, or if it should be added
> > to bindings and device trees that use this PHY. Better informed opinions
> > on the topic are highly welcome.
> > 
> >  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 20 +------------------
> >  1 file changed, 1 insertion(+), 19 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > index 8abf482e81a8..2d9c1105e28c 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > @@ -113,7 +113,6 @@ struct phy_override_seq {
> >   * @phy: generic phy
> >   * @base: iomapped memory space for snps hs phy
> >   *
> > - * @cfg_ahb_clk: AHB2PHY interface clock
> >   * @ref_clk: phy reference clock
> >   * @phy_reset: phy reset control
> >   * @vregs: regulator supplies bulk data
> > @@ -125,7 +124,6 @@ struct qcom_snps_hsphy {
> >  	struct phy *phy;
> >  	void __iomem *base;
> >  
> > -	struct clk *cfg_ahb_clk;
> >  	struct clk *ref_clk;
> >  	struct reset_control *phy_reset;
> >  	struct regulator_bulk_data vregs[SNPS_HS_NUM_VREGS];
> > @@ -165,7 +163,6 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
> >  					   0, USB2_AUTO_RESUME);
> >  	}
> >  
> > -	clk_disable_unprepare(hsphy->cfg_ahb_clk);
> >  	clk_disable_unprepare(hsphy->ref_clk);
> >  	return 0;
> >  }
> > @@ -176,12 +173,6 @@ static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
> >  
> >  	dev_dbg(&hsphy->phy->dev, "Resume QCOM SNPS PHY, mode\n");
> >  
> > -	ret = clk_prepare_enable(hsphy->cfg_ahb_clk);
> > -	if (ret) {
> > -		dev_err(&hsphy->phy->dev, "failed to enable cfg ahb clock\n");
> > -		return ret;
> > -	}
> > -
> >  	ret = clk_prepare_enable(hsphy->ref_clk);
> >  	if (ret) {
> >  		dev_err(&hsphy->phy->dev, "failed to enable ref clock\n");
> > @@ -381,16 +372,10 @@ static int qcom_snps_hsphy_init(struct phy *phy)
> >  	if (ret)
> >  		return ret;
> >  
> > -	ret = clk_prepare_enable(hsphy->cfg_ahb_clk);
> > -	if (ret) {
> > -		dev_err(&phy->dev, "failed to enable cfg ahb clock, %d\n", ret);
> > -		goto poweroff_phy;
> > -	}
> > -
> >  	ret = clk_prepare_enable(hsphy->ref_clk);
> >  	if (ret) {
> >  		dev_err(&phy->dev, "failed to enable ref clock, %d\n", ret);
> > -		goto disable_ahb_clk;
> > +		goto poweroff_phy;
> >  	}
> >  
> >  	ret = reset_control_assert(hsphy->phy_reset);
> > @@ -463,8 +448,6 @@ static int qcom_snps_hsphy_init(struct phy *phy)
> >  
> >  disable_ref_clk:
> >  	clk_disable_unprepare(hsphy->ref_clk);
> > -disable_ahb_clk:
> > -	clk_disable_unprepare(hsphy->cfg_ahb_clk);
> >  poweroff_phy:
> >  	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
> >  
> > @@ -476,7 +459,6 @@ static int qcom_snps_hsphy_exit(struct phy *phy)
> >  	struct qcom_snps_hsphy *hsphy = phy_get_drvdata(phy);
> >  
> >  	reset_control_assert(hsphy->phy_reset);
> > -	clk_disable_unprepare(hsphy->cfg_ahb_clk);
> >  	clk_disable_unprepare(hsphy->ref_clk);
> >  	regulator_bulk_disable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
> >  	hsphy->phy_initialized = false;
> > -- 
> > 2.40.1
> > 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BC7DEB64D9
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jun 2023 18:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfwTkx3sX4eLsKvC6bulkRUvwAOvuVSGbyE+/Kxkefw=; b=239Qrjqz3vT4vG
	phZ6mMlqfxSdUD2ylKcEwXKP7IeVMjXqsUZQoCo5IiIJ6w1LuacH49VeOXvPTuzCPcXVL17zNwWg9
	lqPjyMUlru2pPlv7fYBzVgC3rsemA484xZUm84AUNEZULJPuY8fDIAZPLbTQtx1lJekqPhVc23KuS
	O+ZCdb6FP04XtGF2v4JMP8ZS3IajILtpzt8xCG0+V0IczOVcdx3ShPRXlHYqnjNDcjR2tPIBbjxKb
	U9tB9Rhx6QB4cpHl29qoAD97guwjQ+4c2UidfSS4GF4DQ1hQYg5iICndWmcXwNwK7vxRnxGEERevv
	7LnG8kwxYs1Tw67bbAdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qED7V-00DnQt-2N;
	Tue, 27 Jun 2023 18:08:53 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qED7R-00DnQH-2u
	for linux-phy@lists.infradead.org;
	Tue, 27 Jun 2023 18:08:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687889326;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=XIzaMLEoZseg15rsHJ94wr9W2L80SXyc2pmPqG7NjnU=;
	b=cYFwqFj/aoddkPpdJT6PWc6XqMLInCjr02yY18as9mNeRJhVVC6jr4mzcZpQbLygMMhXvb
	WKE/+P9RIQcMIUlwUfFo6iF6iPC/Bp9qda4PC1i+CqrceJdJQYyNrOmr6Td5SR7gXU/mCn
	VEngakNQ7TGxo6+fVt/qFjGDkAd2kfE=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-584-lzZz6PjxP7mO2ewuBe2uqQ-1; Tue, 27 Jun 2023 14:08:45 -0400
X-MC-Unique: lzZz6PjxP7mO2ewuBe2uqQ-1
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-765a1a97103so306572985a.1
        for <linux-phy@lists.infradead.org>; Tue, 27 Jun 2023 11:08:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687889324; x=1690481324;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XIzaMLEoZseg15rsHJ94wr9W2L80SXyc2pmPqG7NjnU=;
        b=P2Y9T5akMMAQflStCESUGuQK3456+u4LMv0r02xw/Vu3OGi8hEW2iYz2ul0OzFjwqk
         7wP2o97hZGRWhNGa0tKcbuFMZpRuXxkF+0V2rb0qS80cf7fxurKC9EDxp4oevXsCfbv5
         NLT8/eQnpZSSLtZ9taO8UmQ5kltlGQxlyKQjsGjrtMNjinhVWs7MAoM8zOG7FpNssmGx
         qxR5ElHeS1nFeFyNRjjjmn0kVRU3j/QHWzfOuoMIN/u3QXvZfK0WVKR0j9B6j2onLBv+
         VLoWmMai9A87uocbRh3WTQAV2gScglg6uYFQDxsjk+N64WSiRxWmZ/qNadXCFxM+BBMF
         Bqhg==
X-Gm-Message-State: AC+VfDzVgFzG35Ww3HNIuKBoZbXgXyKjgPKtWv6/U8IF6kHLROd4AXUq
	fkAfIzur9WYPI3FTmBNiLBkFBp9AxGCpqwJVyCAUtot5AGI0kztjKKwPzYBeI4DZvd2LVaymOu0
	kDZsAWQ63MRHk1xnYoEa1HFUIZe8e4cHrYQ==
X-Received: by 2002:a05:620a:4087:b0:766:fbe6:ccbc with SMTP id f7-20020a05620a408700b00766fbe6ccbcmr5700130qko.29.1687889324172;
        Tue, 27 Jun 2023 11:08:44 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7TDVN2FeMGh6qcSDmZy8YGLhDuYZ5iNM3siut168C5HboPBzGXzZVtnAVC+3BFKsCrtFSPcQ==
X-Received: by 2002:a05:620a:4087:b0:766:fbe6:ccbc with SMTP id f7-20020a05620a408700b00766fbe6ccbcmr5700109qko.29.1687889323884;
        Tue, 27 Jun 2023 11:08:43 -0700 (PDT)
Received: from fedora ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id u12-20020ae9c00c000000b0076264532630sm4141287qkk.121.2023.06.27.11.08.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jun 2023 11:08:43 -0700 (PDT)
Date: Tue, 27 Jun 2023 14:08:41 -0400
From: Adrien Thierry <athierry@redhat.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 2/3] phy: qcom-snps-femto-v2: add system sleep PM ops
Message-ID: <ZJslqaHZqdizSGbc@fedora>
References: <20230622194021.80892-1-athierry@redhat.com>
 <20230622194021.80892-3-athierry@redhat.com>
 <52qapxj7sdearduro3iiqqpekrltc5zviwgq3gz4j4lne6cp5b@phikpenjras3>
MIME-Version: 1.0
In-Reply-To: <52qapxj7sdearduro3iiqqpekrltc5zviwgq3gz4j4lne6cp5b@phikpenjras3>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_110850_032775_38188DE3 
X-CRM114-Status: GOOD (  33.67  )
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

On Thu, Jun 22, 2023 at 02:43:07PM -0700, Bjorn Andersson wrote:
> On Thu, Jun 22, 2023 at 03:40:19PM -0400, Adrien Thierry wrote:
> > The downstream driver [1] implements set_suspend(), which deals with
> > both runtime and system sleep/resume. The upstream driver already has
> > runtime PM ops, so add the system sleep PM ops as well, reusing the same
> > code as the runtime PM ops.
> > 
> > [1] https://git.codelinaro.org/clo/la/kernel/msm-5.4/-/blob/LV.AU.1.2.1.r2-05300-gen3meta.0/drivers/usb/phy/phy-msm-snps-hs.c
> > 
> > Signed-off-by: Adrien Thierry <athierry@redhat.com>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 18 ++++++++++--------
> >  1 file changed, 10 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > index ce1d2f8b568a..378a5029f61e 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > @@ -179,7 +179,7 @@ static inline void qcom_snps_hsphy_write_mask(void __iomem *base, u32 offset,
> >  	readl_relaxed(base + offset);
> >  }
> >  
> > -static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
> > +static int qcom_snps_hsphy_do_suspend(struct qcom_snps_hsphy *hsphy)
> >  {
> >  	dev_dbg(&hsphy->phy->dev, "Suspend QCOM SNPS PHY\n");
> >  
> > @@ -199,7 +199,7 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
> >  	return 0;
> >  }
> >  
> > -static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
> > +static int qcom_snps_hsphy_do_resume(struct qcom_snps_hsphy *hsphy)
> >  {
> >  	int ret;
> >  
> > @@ -214,25 +214,25 @@ static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
> >  	return 0;
> >  }
> >  
> > -static int __maybe_unused qcom_snps_hsphy_runtime_suspend(struct device *dev)
> > +static int __maybe_unused qcom_snps_hsphy_suspend(struct device *dev)
> >  {
> >  	struct qcom_snps_hsphy *hsphy = dev_get_drvdata(dev);
> >  
> >  	if (!hsphy->phy_initialized)
> >  		return 0;
> >  
> > -	qcom_snps_hsphy_suspend(hsphy);
> > +	qcom_snps_hsphy_do_suspend(hsphy);
> >  	return 0;
> >  }
> >  
> > -static int __maybe_unused qcom_snps_hsphy_runtime_resume(struct device *dev)
> > +static int __maybe_unused qcom_snps_hsphy_resume(struct device *dev)
> >  {
> >  	struct qcom_snps_hsphy *hsphy = dev_get_drvdata(dev);
> >  
> >  	if (!hsphy->phy_initialized)
> >  		return 0;
> >  
> > -	qcom_snps_hsphy_resume(hsphy);
> > +	qcom_snps_hsphy_do_resume(hsphy);
> >  	return 0;
> >  }
> >  
> > @@ -518,8 +518,10 @@ static const struct of_device_id qcom_snps_hsphy_of_match_table[] = {
> >  MODULE_DEVICE_TABLE(of, qcom_snps_hsphy_of_match_table);
> >  
> >  static const struct dev_pm_ops qcom_snps_hsphy_pm_ops = {
> > -	SET_RUNTIME_PM_OPS(qcom_snps_hsphy_runtime_suspend,
> > -			   qcom_snps_hsphy_runtime_resume, NULL)
> > +	SET_RUNTIME_PM_OPS(qcom_snps_hsphy_suspend,
> > +			   qcom_snps_hsphy_resume, NULL)
> > +	SET_SYSTEM_SLEEP_PM_OPS(qcom_snps_hsphy_suspend,
> > +				qcom_snps_hsphy_resume)
> 
> Won't this cause issues if you system suspend the device while it's
> already runtime suspended?
>

I'm not sure if it would cause issues, but after reflexion and discussion
with Andrew, I think it's unnecessary to add system PM ops in the femto
PHY driver. 

In the dwc3 core, both system and runtime suspend end up calling
dwc3_suspend_common(). From there, what happens depends on the USB mode
and whether the controller is entering system or runtime suspend.

HOST mode:
  (1) system suspend on a non-wakeup controller

  The [1] if branch is taken. dwc3_core_exit() is called, which ends up
  calling phy_power_off() and phy_exit(). Those two functions decrease the
  PM runtime count at some point, so they will trigger the PHY runtime sleep
  (assuming the count is right).

  (2) runtime suspend / system suspend on a wakeup controller  

  The [1] branch is not taken. dwc3_suspend_common() calls
  phy_pm_runtime_put_sync(dwc->usb2_generic_phy). Assuming the ref count is
  right, the PHY runtime suspend op is called.

DEVICE mode:

  dwc3_core_exit() is called on both runtime and system sleep
  unless the controller is already runtime suspended.

OTG mode:
  (1) system suspend : dwc3_core_exit() is called

  (2) runtime suspend : do nothing

With that in mind:

1) Does the PHY need to implement system sleep callbacks? 

dwc3 core system sleep callback will already runtime suspend the PHY, and
also call phy_power_off() and phy_exit() for non-wakeup controllers. So,
adding system PM ops to the femto PHY driver would be redundant.

2) Should the ref_clk be disabled for runtime sleep / wakeup controller
system sleep, or only for non-wakeup controller system sleep?

I'm a little hesitant here. In my submission I'm disabling it in both, but
looking at the downstream code you provided, it seems it's only disabled
for system sleep. ref_clk is disabled by phy->set_suspend() [2] which IIUC
is only called in the system sleep path through dwc3_core_exit() [3].
Moreover, in host mode the upstream code seems to make a distinction
between 1) runtime sleep / system sleep for wakeup controller, and 2)
system sleep for non-wakeup controller where phy_power_off() and
phy_exit() are only called in the latter. This suggests the PHY is not
supposed to be in a fully powered-off state for runtime sleep and system
sleep for wakeup controller. So, it's possible the ref_clk should be kept
enabled in this case. What is your take on this? I could only disable
ref_clk in the femto phy->exit() callback to keep ref_clk enabled during
runtime sleep and make sure it's only disabled on system sleep for
non-wakeup controller.

Hoping I'm not missing anything here.

Best,

Adrien

[1] https://elixir.bootlin.com/linux/latest/source/drivers/usb/dwc3/core.c#L1988
[2] https://git.codelinaro.org/clo/la/kernel/msm-5.4/-/blob/LV.AU.1.2.1.r2-05300-gen3meta.0/drivers/usb/phy/phy-msm-snps-hs.c#L524
[3] https://git.codelinaro.org/clo/la/kernel/msm-5.4/-/blob/LV.AU.1.2.1.r2-05300-gen3meta.0/drivers/usb/dwc3/core.c#L1915

> Regards,
> Bjorn
> 
> >  };
> >  
> >  static void qcom_snps_hsphy_override_param_update_val(
> > -- 
> > 2.40.1
> > 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

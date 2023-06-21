Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C2FFEB64D7
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 20:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QVvgd43EXp8g4zmbLKFivXoeeSTgJwprTtPEqIq3iQw=; b=ESjoNp/aPQ40rd
	BON5b0ju21OTfTG0/2Tlqe6ZQjcnI8RUonMurGcy21GEVooXGnwulpZuCOj1SCy7MQh+cbM6LOf6M
	t9OwQ1pEIk8z5E15F6rRMX//U0cn9XxpXHJL4j5hqmdD05TK8lVUtsWlWjBTefpRttQB5sU+aoUN2
	Mi5srjs2UhKfGufT5Y520Ct/zqbxOk7KGmF9+vPk2L/wF+Delg2EJiTKyHAjAhU6y5rxqF0O1WM46
	lrh6fSE3wpls8pD0QRLYfDMyWjEOW8zW9Ua6P26wZW+f2GMw1xkC3bccf7CKJXxhC5Y012BLd3JLK
	sutHIsR9L/EflwW1HiDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qC4Vn-00Fg2R-1f;
	Wed, 21 Jun 2023 20:33:07 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qC4Vk-00Fg1v-1G
	for linux-phy@lists.infradead.org;
	Wed, 21 Jun 2023 20:33:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687379582;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=QiNuKgT2NeXOg5vJXpZnDkdkmlVyi9ytQ3mK8FSLR4A=;
	b=MeONj4zRmH6qYVLwVzOFZe7SYaSM8geLQdsrOY6pSHmG74AmFU+wSYPumKHAm5MeIn4qhN
	RayPHlNBuhQ+OSsVcW1yONjY7sdhpR8s4dPfAFvWAcpFdBbt7vBFw8xh9+r/0AXbYO66Co
	2hCzWfvmXXbp5WgW9ayC23i80rNudhs=
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com
 [209.85.210.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-220-KNWnAcnHPUmw1KuMA8sFeg-1; Wed, 21 Jun 2023 16:33:01 -0400
X-MC-Unique: KNWnAcnHPUmw1KuMA8sFeg-1
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-6b5abfdc326so1814563a34.2
        for <linux-phy@lists.infradead.org>; Wed, 21 Jun 2023 13:33:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687379580; x=1689971580;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QiNuKgT2NeXOg5vJXpZnDkdkmlVyi9ytQ3mK8FSLR4A=;
        b=BwSmJ6WfGQ4oaScZPpfsfwLjQhzHHdLQU/k5CT7VWCw8StzbzdVa3l+ZTMzZnpoEDZ
         fwWNuZPnrW/lLlps+BPwejN6kNCKVcIMZ173c6TEa9NUdDB+TzbPsOlUIXPm6fpETNqX
         Pg3cT5u60em4sCCoKkfeKlQYVMlqFZbGsMNeysFK5RbviLn90P+1hx77F8R1S45O4RV8
         pBnaSpKXAqAtKyHlZwJGYwjqiEszXcawKd7i3laCeyxrXeVXawYt/5XcsobHeIP3rlt3
         nfHsHDtBLSlKdQOtUlLpaQrk2HSdvZXss076/W8z9+0m5GUXA7f4necuqiwSb31imzzB
         0wKQ==
X-Gm-Message-State: AC+VfDwJxdXULNL2tQVczNX57cL/9qg7dCNXp48FyA4VdC6iVxwoH5hP
	Xm2yarTij9r3RrgJpHgnUNk/kRxYh77GNen0xbpf8GsF36ttuPRyIFlTVsCvbakaPZaCYj61kmq
	1VnIU8buAaVIOVPyS9S/8tTRhiQ==
X-Received: by 2002:a9d:7d14:0:b0:6b5:84a3:7c76 with SMTP id v20-20020a9d7d14000000b006b584a37c76mr8776000otn.10.1687379580397;
        Wed, 21 Jun 2023 13:33:00 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6/QyxagZeJ6jvP7m3OfLMB8yOol/oPhXV6yt+xub0keV+EViMbbd47xd/ZrIkMhk7WImGh3w==
X-Received: by 2002:a9d:7d14:0:b0:6b5:84a3:7c76 with SMTP id v20-20020a9d7d14000000b006b584a37c76mr8775988otn.10.1687379580141;
        Wed, 21 Jun 2023 13:33:00 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::f])
        by smtp.gmail.com with ESMTPSA id n8-20020a0568301e8800b006b46b136155sm2279847otr.23.2023.06.21.13.32.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 13:32:59 -0700 (PDT)
Date: Wed, 21 Jun 2023 15:32:57 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Adrien Thierry <athierry@redhat.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 2/2] phy: qcom-snps-femto-v2: add system sleep PM ops
Message-ID: <20230621203257.tvcubvn3xitzgnt5@halaney-x13s>
References: <20230605184455.34832-1-athierry@redhat.com>
 <20230605184455.34832-3-athierry@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20230605184455.34832-3-athierry@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_133304_528473_5141F53E 
X-CRM114-Status: GOOD (  25.12  )
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

On Mon, Jun 05, 2023 at 02:44:54PM -0400, Adrien Thierry wrote:
> Add the system sleep suspend and resume callbacks, reusing the same code
> as the runtime suspend and resume callbacks.

It would be nice (imo) to reference the downstream driver you used as a
reference if you spin a v3.

> 
> Signed-off-by: Adrien Thierry <athierry@redhat.com>
> ---
> I'm still a bit confused as to what the difference is between
> suspend/resume PM ops and the struct usb_phy set_suspend() callback.
> Please tell me if I should be populating the latter instead.

My understanding is usb_phy is a legacy thing, and that the generic phys
are the way to go (which this is).

Looking at dwc3 for example, you can see it uses:

	phy_power_off(dwc->usb3_generic_phy);
	phy_power_off(dwc->usb2_generic_phy);

	usb_phy_set_suspend(dwc->usb3_phy, 1);
	usb_phy_set_suspend(dwc->usb2_phy, 1);

so it handles both the generic phy (like this) and the usb_phy.
This driver doesn't implement the power_off callback, but phy_power_off
is also pm_runtime aware, so calling phy_power_off in a controller still
achieves similar behavior (although I'm following right
phy_init/phy_exit also are pm_runtime aware, so I think it would be at
that point that the ops get called).

This all assumes a user enables pm_runtime in sysfs for this driver.

> 
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> index ce1d2f8b568a..378a5029f61e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> @@ -179,7 +179,7 @@ static inline void qcom_snps_hsphy_write_mask(void __iomem *base, u32 offset,
>  	readl_relaxed(base + offset);
>  }
>  
> -static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
> +static int qcom_snps_hsphy_do_suspend(struct qcom_snps_hsphy *hsphy)
>  {
>  	dev_dbg(&hsphy->phy->dev, "Suspend QCOM SNPS PHY\n");
>  
> @@ -199,7 +199,7 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
>  	return 0;
>  }
>  
> -static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
> +static int qcom_snps_hsphy_do_resume(struct qcom_snps_hsphy *hsphy)
>  {
>  	int ret;
>  
> @@ -214,25 +214,25 @@ static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
>  	return 0;
>  }
>  
> -static int __maybe_unused qcom_snps_hsphy_runtime_suspend(struct device *dev)
> +static int __maybe_unused qcom_snps_hsphy_suspend(struct device *dev)
>  {
>  	struct qcom_snps_hsphy *hsphy = dev_get_drvdata(dev);
>  
>  	if (!hsphy->phy_initialized)
>  		return 0;
>  
> -	qcom_snps_hsphy_suspend(hsphy);
> +	qcom_snps_hsphy_do_suspend(hsphy);

Deserves its own patch, but can you return qcom_snps_hsphy_do_suspend/resume
as part of your clean up in this series?

>  	return 0;
>  }
>  
> -static int __maybe_unused qcom_snps_hsphy_runtime_resume(struct device *dev)
> +static int __maybe_unused qcom_snps_hsphy_resume(struct device *dev)
>  {
>  	struct qcom_snps_hsphy *hsphy = dev_get_drvdata(dev);
>  
>  	if (!hsphy->phy_initialized)
>  		return 0;
>  
> -	qcom_snps_hsphy_resume(hsphy);
> +	qcom_snps_hsphy_do_resume(hsphy);
>  	return 0;
>  }
>  
> @@ -518,8 +518,10 @@ static const struct of_device_id qcom_snps_hsphy_of_match_table[] = {
>  MODULE_DEVICE_TABLE(of, qcom_snps_hsphy_of_match_table);
>  
>  static const struct dev_pm_ops qcom_snps_hsphy_pm_ops = {
> -	SET_RUNTIME_PM_OPS(qcom_snps_hsphy_runtime_suspend,
> -			   qcom_snps_hsphy_runtime_resume, NULL)
> +	SET_RUNTIME_PM_OPS(qcom_snps_hsphy_suspend,
> +			   qcom_snps_hsphy_resume, NULL)
> +	SET_SYSTEM_SLEEP_PM_OPS(qcom_snps_hsphy_suspend,
> +				qcom_snps_hsphy_resume)
>  };
>  
>  static void qcom_snps_hsphy_override_param_update_val(
> -- 
> 2.40.1
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

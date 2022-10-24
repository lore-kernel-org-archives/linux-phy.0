Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54657C3A59D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 08:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1dHzjsm2kjKan8TxqGo2Q8A9V8eeI8i6uoI6HHZoTPw=; b=Syhm03RewMJeYP
	k/RzLFm1DPYRfc465Ljps+Q5RXNR+vC08S9LChUlGl0SMMbN5XRA3ZCUmIdegiuQ9i+KSgHqn5m6x
	HCTjn+FUuYzLOmOCht0rEO+AmY482LYWIB1y+7YrDoVI0JzBL63sH42LUirakI5Zo4O498+bsTSmp
	pEdOmplu/bSXWK/GLNzBg3SQqNq+5QB0lU73Qu72OQxQwrrDFaAcIHrZ9ccfLe2QA7lCR4nu9PVf/
	ObEHS1FJbSD3475KqUzFEkjWE0C4i0iWQmfDu6qweZ9Hrvs9NmPqIE4eFlqClWHeNag7roJZBNHT+
	T3XmRxPmUwxfkoeZHEew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omsPD-00Hayl-ME; Mon, 24 Oct 2022 08:01:55 +0000
Received: from mga03.intel.com ([134.134.136.65])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omsPA-00Haxd-Ns
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 08:01:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666598512; x=1698134512;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=PscHU1ZUOYvLbYdHmHk85RNII8BoOIqBa+IXJPv7aY4=;
  b=MxZjnLlj0we19lZnYgbmTpFQQe/m4FYYAdQvltWmvAdywFZQzVgiKPv4
   23suuZU1YjgjdyPgL0oHe0liigjCNHV09avROtzKCsgNj4e+bA7jvspEU
   nZt2upDlJ9FoDFLekgiJEbD+k5qpN8jz4U/dP5xeQJYaOW3D32t2Bjum0
   KeaJz7j/z+N1wf467FJmNQw27Flu6fGRDjadrcXKVkMXUFxZhnS+EQxoX
   tI0lWqw4GRjfjpa5zSIzulC3YNX1jRHLZ3uqDOIIfj2mDAZmi+FA/bOG/
   a7cfLfpGFTzNCFhIaQhwiWMYPnugoXVaMbB3odhIiO3VfwyzuRP0j3ZQx
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="309048246"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; 
   d="scan'208";a="309048246"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Oct 2022 01:01:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="773736785"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; 
   d="scan'208";a="773736785"
Received: from kuha.fi.intel.com ([10.237.72.185])
  by fmsmga001.fm.intel.com with SMTP; 24 Oct 2022 01:01:44 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Mon, 24 Oct 2022 11:01:43 +0300
Date: Mon, 24 Oct 2022 11:01:43 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Wayne Chang <waynec@nvidia.com>
Cc: gregkh@linuxfoundation.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, treding@nvidia.com,
	jonathanh@nvidia.com, thierry.reding@gmail.com, ajayg@nvidia.com,
	kishon@ti.com, vkoul@kernel.org, p.zabel@pengutronix.de,
	balbi@kernel.org, mathias.nyman@intel.com, jckuo@nvidia.com,
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, singhanc@nvidia.com,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH 06/11] usb: typec: ucsi_ccg: Replace ccgx to well-known
 regex
Message-ID: <Y1ZGZ2H0/ug3se6j@kuha.fi.intel.com>
References: <20221024074128.1113554-1-waynec@nvidia.com>
 <20221024074128.1113554-7-waynec@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221024074128.1113554-7-waynec@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_010152_857940_35AF27F2 
X-CRM114-Status: GOOD (  16.51  )
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

On Mon, Oct 24, 2022 at 03:41:23PM +0800, Wayne Chang wrote:
> ccgx is refer to the cypress cypd4226 typec controller.
> Replace ccgx to well-known regex "cypress".
> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> ---
>  drivers/usb/typec/ucsi/ucsi_ccg.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/typec/ucsi/ucsi_ccg.c b/drivers/usb/typec/ucsi/ucsi_ccg.c
> index 139707a2f3d6..5d3099e6eb77 100644
> --- a/drivers/usb/typec/ucsi/ucsi_ccg.c
> +++ b/drivers/usb/typec/ucsi/ucsi_ccg.c
> @@ -1358,7 +1358,7 @@ static int ucsi_ccg_probe(struct i2c_client *client,
>  	INIT_WORK(&uc->pm_work, ccg_pm_workaround_work);
>  
>  	/* Only fail FW flashing when FW build information is not provided */
> -	status = device_property_read_u16(dev, "ccgx,firmware-build",
> +	status = device_property_read_u16(dev, "cypress,firmware-build",
>  					  &uc->fw_build);
>  	if (status)
>  		dev_err(uc->dev, "failed to get FW build information\n");

This will break bisectability. You need to first add that
"cyppress,firmware-build" identifier without removing the old
"ccgx,firmware-build" identifier, and then introduce a separate
clean-up patch where you remove it when it's safe to remove:

1. Add new - This patch.
2. Modify users - PATCH 7/11.
3. Remove old - *missing*.

thanks,

-- 
heikki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

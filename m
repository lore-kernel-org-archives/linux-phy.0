Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3A06C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 16 Nov 2022 12:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DmDbSS9rqhlmxPfyvZdd/HDJcX5N66Apvs+b34eVZM=; b=pTYmJb3FtHZAIY
	MPiesgcbiKgfjiuTu1l9LZI3rmQyT6nwauubTgBu7H1QFPSWHyO21tc9KQCrTJaPiGPby8RvxTqrc
	NOu1VvIbcDvrvOUKHg5SVu0zHwiGWqW2WS8obL2cvIqlxtCLl/UBoL8IeX9Wqj5+Md3fvXiO3WSLE
	MVlXdlq7YnTbtxtPfDP1DHanU9l7rwFzveKPCPN08azQ0bGRq1AXaPrgRtxmFDtibqP/9hFZs9aZe
	09Xe05i/VjH9OFZTm7PO85QFLqjr4U3wbXyr1/U6qZP07AESSfflaTNxsIFXbXta5AHz0CEESlP5h
	+cTfNoY4Uk6mst3Sn98Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovHgz-003Tup-Pz; Wed, 16 Nov 2022 12:39:01 +0000
Received: from mga07.intel.com ([134.134.136.100])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovHfL-003SlE-Pq
	for linux-phy@lists.infradead.org; Wed, 16 Nov 2022 12:37:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1668602239; x=1700138239;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=oGL1Yrskd/4Uu+QY6jG0ey36GZ59SJOBtdPf971QTPY=;
  b=BFn524ugnw8TEjZws+5MPlC8kUUzzhhyN4BWEpYhyMlPJtQ61U1+Mz/U
   /GjLVEFiHb5b6foTf+MpzamEFtkyBdBOplgwC7uq9r4kh6vYzmId37AGp
   qAlbXFHYT4LLYi/AvfulPumfMJFEgYMmU1KFu4i6Vwp3mfaMDHuaCBj1C
   NOR6OzI45pUn1sxxKQHR+fv66QwTH5JXTUhSYcWq5QJekDqIqiUai6GyK
   UTfOY9h6u38aoKNOxlJsN2ucc/Xu1aQ4tfPIoXABZOcJ97F0j21h2CCZ/
   rfc782jUoUdacOrB5CBaiau9WWHrjP38iGd/e0Zo0TlkMXSQ7k0sDRYAI
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="376801377"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; 
   d="scan'208";a="376801377"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2022 04:37:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="781751953"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; 
   d="scan'208";a="781751953"
Received: from kuha.fi.intel.com ([10.237.72.185])
  by fmsmga001.fm.intel.com with SMTP; 16 Nov 2022 04:37:10 -0800
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Wed, 16 Nov 2022 14:37:10 +0200
Date: Wed, 16 Nov 2022 14:37:10 +0200
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Wayne Chang <waynec@nvidia.com>
Cc: gregkh@linuxfoundation.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, treding@nvidia.com,
	jonathanh@nvidia.com, thierry.reding@gmail.com, ajayg@nvidia.com,
	vkoul@kernel.org, p.zabel@pengutronix.de, balbi@kernel.org,
	mathias.nyman@intel.com, jckuo@nvidia.com,
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, singhanc@nvidia.com,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH v3 05/13] usb: typec: ucsi_ccg: Add OF support
Message-ID: <Y3TZdkdIltobUcb3@kuha.fi.intel.com>
References: <20221114124053.1873316-1-waynec@nvidia.com>
 <20221114124053.1873316-6-waynec@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221114124053.1873316-6-waynec@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_043719_913630_C4220C9F 
X-CRM114-Status: GOOD (  19.63  )
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

On Mon, Nov 14, 2022 at 08:40:45PM +0800, Wayne Chang wrote:
> The change enables the device tree infrastructure support.
> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>

Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

> ---
> V2 -> V3:nothing has changed
> V1 -> V2:nothing has changed
>  drivers/usb/typec/ucsi/ucsi_ccg.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/typec/ucsi/ucsi_ccg.c b/drivers/usb/typec/ucsi/ucsi_ccg.c
> index 835f1c4372ba..139707a2f3d6 100644
> --- a/drivers/usb/typec/ucsi/ucsi_ccg.c
> +++ b/drivers/usb/typec/ucsi/ucsi_ccg.c
> @@ -643,7 +643,7 @@ static int ccg_request_irq(struct ucsi_ccg *uc)
>  {
>  	unsigned long flags = IRQF_ONESHOT;
>  
> -	if (!has_acpi_companion(uc->dev))
> +	if (!dev_fwnode(uc->dev))
>  		flags |= IRQF_TRIGGER_HIGH;
>  
>  	return request_threaded_irq(uc->irq, NULL, ccg_irq_handler, flags, dev_name(uc->dev), uc);
> @@ -1427,6 +1427,12 @@ static void ucsi_ccg_remove(struct i2c_client *client)
>  	free_irq(uc->irq, uc);
>  }
>  
> +static const struct of_device_id ucsi_ccg_of_match_table[] = {
> +		{ .compatible = "cypress,cypd4226", },
> +		{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, ucsi_ccg_of_match_table);
> +
>  static const struct i2c_device_id ucsi_ccg_device_id[] = {
>  	{"ccgx-ucsi", 0},
>  	{}
> @@ -1481,6 +1487,7 @@ static struct i2c_driver ucsi_ccg_driver = {
>  		.pm = &ucsi_ccg_pm,
>  		.dev_groups = ucsi_ccg_groups,
>  		.acpi_match_table = amd_i2c_ucsi_match,
> +		.of_match_table = ucsi_ccg_of_match_table,
>  	},
>  	.probe = ucsi_ccg_probe,
>  	.remove = ucsi_ccg_remove,

thanks,

-- 
heikki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

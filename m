Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6047CA0EC4
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 05:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OlgHo2QbGyy7VXwjSwHvSA/G/33lDmGcJM9TD8wd5Os=; b=hYoYidrPiPsxBC
	9dI4QRln2Sqooar+RaKAfuYXL3swYFDRy/FgRQ/FGvqy0g/MtaXhcSc17CEkpstBr6vHmQky26F3T
	dP1ycssliXFQzB7IFtL46ljrvW+RY//IbKFj61MKGCMRFRJVhiIWtkKiBcy2+82Rmmmqf75DdCSZN
	gMK49aA4Nsfnnwdq4Qz6CIyGBCsDZYuyysPqhi97UPEcOjt8J1KcVIRNtMPJdSQdNBuaPBb93z1r3
	U7XcDhDL9hHOwYChWjcnmw2RhGLMxz3T/8JY3b4f4rF0U73D7zH5nHsFnHCQcvM5QgFAYPbwTFdn4
	4iJ+BzuDvLTxjShbPzZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulhzG-00000009y4S-2TO8;
	Tue, 12 Aug 2025 05:55:54 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulhwk-00000009xk6-2mD5
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 05:53:20 +0000
Received: from mail.ideasonboard.com (unknown [IPv6:2401:4900:1c66:bd1a:669e:3dcb:5a6b:a905])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 810083A4;
	Tue, 12 Aug 2025 07:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1754977628;
	bh=jO+IVzo3YAMCTJto5kIWS0+ylU9YXHD9qWaBlsMVx6g=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=S+v8NTpX1xLrmvzy9mlWxQ3TmWy36wXMt66fHZ+wOGiKTbu9gHKybPhxZPpa3nsUk
	 HbzrRtyNqNc3IIkyjkYL0IYZtQShSWsMI1v3KMZ+3EVS/tfkAvrMBEn3t/Fi8ActTs
	 6nqssOD6mLnCWpZqWm5R8ovhEGA6F32ZUT7iHABc=
MIME-Version: 1.0
In-Reply-To: <20250224-cdns_phy_pm-v1-1-0fe2c544cc87@ideasonboard.com>
References: <20250224-cdns_phy_pm-v1-1-0fe2c544cc87@ideasonboard.com>
Subject: Re: [PATCH] phy: cadence: cdns-dphy-rx: Add runtime PM support
From: Jai Luthra <jai.luthra@ideasonboard.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, Devarsh Thakkar <devarsht@ti.com>, Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
To: Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>
Date: Tue, 12 Aug 2025 11:17:56 +0530
Message-ID: <175497767648.8696.3021844845686596634@freya>
User-Agent: alot/0.12.dev28+gd2c823fe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_225318_842621_46225912 
X-CRM114-Status: GOOD (  14.91  )
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

Hi Vinod, Kishon,

Quoting Jai Luthra (2025-02-24 18:10:05)
> Enable runtime power management for the device. The PHY framework
> handles calling pm_runtime_(get|put)_sync when powering on/off this
> device.
> 

Can this patch get picked for the next merge window?

The CSI PM series is already reviewed [1], and it would be good to have
runtime PM for cameras working in 6.18, which needs both the PHY and CSI
IPs to be powered off.

[1]: https://lore.kernel.org/linux-media/20250224-ti_csi_pm-v1-0-8f8c29ef646d@ideasonboard.com/

> Signed-off-by: Jai Luthra <jai.luthra@ideasonboard.com>
> ---
>  drivers/phy/cadence/cdns-dphy-rx.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/cadence/cdns-dphy-rx.c b/drivers/phy/cadence/cdns-dphy-rx.c
> index 7729cf80a9bd892c3e5db6cdbdc4ece9ada2d99f..3ac80141189c4c8c350b678998e5dec7a15c3892 100644
> --- a/drivers/phy/cadence/cdns-dphy-rx.c
> +++ b/drivers/phy/cadence/cdns-dphy-rx.c
> @@ -12,6 +12,7 @@
>  #include <linux/phy/phy.h>
>  #include <linux/phy/phy-mipi-dphy.h>
>  #include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
>  #include <linux/sys_soc.h>
>  
>  #define DPHY_PMA_CMN(reg)              (reg)
> @@ -265,7 +266,7 @@ static int cdns_dphy_rx_probe(struct platform_device *pdev)
>                 return PTR_ERR(provider);
>         }
>  
> -       return 0;
> +       return devm_pm_runtime_enable(dev);
>  }
>  
>  static const struct of_device_id cdns_dphy_rx_of_match[] = {
> 
> ---
> base-commit: d082ecbc71e9e0bf49883ee4afd435a77a5101b6
> change-id: 20250224-cdns_phy_pm-b2b7d472835d
> 
> Best regards,
> -- 
> Jai Luthra <jai.luthra@ideasonboard.com>
> 

Thanks,
Jai

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

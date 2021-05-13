Return-Path: <SRS0=66Jo=KI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A377FC433B4
	for <linux-phy@archiver.kernel.org>; Thu, 13 May 2021 07:54:18 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 06844613C1
	for <linux-phy@archiver.kernel.org>; Thu, 13 May 2021 07:54:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 06844613C1
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FU/L7e5AD9vyA21QTRf9rduyYfAkpTSHYFfOUmzg6QU=; b=g4Be7pnc1uFyJP00CXgbEq6gJ
	Iy+3Y5ePboBltEcujHnmfI2kLM8Awu8cge+gocI3oVW95FTGYXyxpG6z4pJ9pRJ7ELzlDVKRS/Ams
	N2viEtNKtJfUQhwy3AqJ1m9SNyAEkJzhQ5JL9YqipcrWI2OJFITaF72Bpi91TlwtoAYmBxKBSeG5k
	FGjF4xLVUN4lFC6I/lqRvrMyGzgJMhV7U8BNMbnBOjs5YziAYZOsS4hSPXHVW2PWoAdoU1EbM0jgH
	KBYJ6YgqbhrPLhtDPhCEaKUEfjEisQEnBC+eN00IGgYQkxpk83lx/S+9Wgwd/l2wB5rsvY2wx2PZn
	Fonx2YPng==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lh6Ai-0052Li-ET; Thu, 13 May 2021 07:54:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lh6Ag-0052LO-Ff
 for linux-phy@desiato.infradead.org; Thu, 13 May 2021 07:54:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=KOaZp8AouIw7/U9UfC3TvXkrf0bQyCwsPWcKiEM/Ny4=; b=HVimQHAb+lvCs57wI7RF1KPOdi
 13MAPdNBfo6XbpQYGd6zD3vom/px0HQCT89coRDhf2ygEjCFeyb268bXaSFzrjJQBM/Q/NK73cxYE
 p7HeXP+Ia6uMmXre8cfa4CAAADC7PC2bATGidWPpjAUXqUpcIx9nh1IbmGcIePftMa4HFIyfTU2hI
 bZiflz9Z2m66640TXtQRTHehDGYProVRb3Mvv31LKHfnynB0XeF7MfP4/kh8dIwxmnDQXA6UeWRdq
 xB3LiVJtuDOHDyhxEygG/BBLnOw3GpbAFGl9Kil4PxJvfrMG48EyqpLZuqAzb2uM3ormJ4J6wiEFE
 ZcmVmuIQ==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lh6Ad-00B5j4-Pp
 for linux-phy@lists.infradead.org; Thu, 13 May 2021 07:54:13 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14D7s6dP124778;
 Thu, 13 May 2021 02:54:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1620892446;
 bh=KOaZp8AouIw7/U9UfC3TvXkrf0bQyCwsPWcKiEM/Ny4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ZTkiBauAHeh1DHNPw4F6cR/AltxIjUYgdMm2oEkZQ/lHhOpLyQ7uz11dArwLJ6wm7
 8cSWUfZPQiT9kv/jcSU8Gfb7xvMpQi+rC5GcewkwnAD28HF68ZuhwXDgKCgg+Fs9Ax
 FNzS1aLSCZlQfMcVlHRoMs8khU1QYQCNVJQQXotI=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14D7s667069809
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 13 May 2021 02:54:06 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 13
 May 2021 02:54:05 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 13 May 2021 02:54:05 -0500
Received: from [10.250.232.157] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14D7s13F054719;
 Thu, 13 May 2021 02:54:02 -0500
Subject: Re: [PATCH 13/14] phy: cadence-torrent: Add debug information for PHY
 configuration
To: Swapnil Jakhade <sjakhade@cadence.com>, <vkoul@kernel.org>,
 <p.zabel@pengutronix.de>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
CC: <mparab@cadence.com>, <lokeshvutla@ti.com>
References: <1617946456-27773-1-git-send-email-sjakhade@cadence.com>
 <1617946456-27773-14-git-send-email-sjakhade@cadence.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <24ec95cd-aa7c-6262-4065-7281788ab684@ti.com>
Date: Thu, 13 May 2021 13:24:00 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1617946456-27773-14-git-send-email-sjakhade@cadence.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210513_005411_955369_949B5E2B 
X-CRM114-Status: GOOD (  16.98  )
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

Hi Swapnil,

On 09/04/21 11:04 am, Swapnil Jakhade wrote:
> Display information in probe regarding PHY configuration parameters like
> single link or multilink protocol information along with number of lanes
> used for each protocol link.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> ---
>  drivers/phy/cadence/phy-cadence-torrent.c | 32 +++++++++++++++++++++--
>  1 file changed, 30 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
> index bf37569c6c51..39145e56e061 100644
> --- a/drivers/phy/cadence/phy-cadence-torrent.c
> +++ b/drivers/phy/cadence/phy-cadence-torrent.c
> @@ -574,6 +574,24 @@ static const struct coefficients vltg_coeff[4][4] = {
>  	}
>  };
>  
> +static const char *cdns_torrent_get_phy_type(enum cdns_torrent_phy_type phy_type)
> +{
> +	switch (phy_type) {
> +	case TYPE_DP:
> +		return "DisplayPort";
> +	case TYPE_PCIE:
> +		return "PCIe";
> +	case TYPE_SGMII:
> +		return "SGMII";
> +	case TYPE_QSGMII:
> +		return "QSGMII";
> +	case TYPE_USB:
> +		return "USB";
> +	default:
> +		return "None";
> +	}
> +}
> +
>  /*
>   * Set registers responsible for enabling and configuring SSC, with second and
>   * third register values provided by parameters.
> @@ -2504,8 +2522,7 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
>  				init_dp_regmap++;
>  			}
>  
> -			dev_info(dev, "%d lanes, max bit rate %d.%03d Gbps\n",
> -				 cdns_phy->phys[node].num_lanes,
> +			dev_info(dev, "DP max bit rate %d.%03d Gbps\n",
>  				 cdns_phy->max_bit_rate / 1000,
>  				 cdns_phy->max_bit_rate % 1000);
>  
> @@ -2539,6 +2556,17 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
>  		goto put_lnk_rst;
>  	}
>  
> +	if (cdns_phy->nsubnodes > 1)
> +		dev_info(dev, "%s (%d lanes) & %s (%d lanes)",
> +			 cdns_torrent_get_phy_type(cdns_phy->phys[0].phy_type),
> +			 cdns_phy->phys[0].num_lanes,
> +			 cdns_torrent_get_phy_type(cdns_phy->phys[1].phy_type),
> +			 cdns_phy->phys[1].num_lanes);
> +	else
> +		dev_info(dev, "%s (%d lanes)",
> +			 cdns_torrent_get_phy_type(cdns_phy->phys[0].phy_type),
> +			 cdns_phy->phys[0].num_lanes);

Make all of this dev_dbg() or dev_vdbg() and avoid noisy boot log.

Thanks
Kishon

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

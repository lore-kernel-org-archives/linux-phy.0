Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BA26C83F1A
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 09:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwmkTdazuW1TCUsoM0VSoTu+I07HqXP1xu158OjAtWA=; b=BtPlWrYaQJnC2N
	vKqSY8oj58widbOJAMDX55LjnxT+7GG5fRk7n+ZDOhQRW13Z+J6ivfTRvA00UwELY3uGNJzvrO/+c
	ztn6YnEgVZ7nreSJmFcIw11WRtz6OveX8pLuzfHEST/WjQBekSJN/DmmZ6mcuFTxFc3/h7MpR3dc9
	qiW993jhe34nOs8/OpYkINaG5PcGO0bjd9pqXuVRf30pcc29EIGIX1x3zJe8Xy9tcvoB9Ec7NCVmb
	mO6jxHH7myBaDMMVvQy4Fw2eg9NmHFWYiCtLNv2/0DCeWXWVGvDoFlHS7jNMOqLvvjgYgALMuzpOr
	eEF9sTkKviZu6yLh/olw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWGU-00000004bBL-0CNL;
	Wed, 23 Jul 2025 09:59:58 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueVur-00000004Wtp-2Q2s
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 09:37:38 +0000
Received: from [192.168.88.20] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6B09FC70;
	Wed, 23 Jul 2025 11:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1753263416;
	bh=9lbXW47zYRBbNIAHssQzUMi4FIW/6MYbIiMbRSaBNo0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=rYeMw/Z/5d6HMieBznhzKxln+P5JCikaDAQo5CczlPI3N5qcORPGyX64b08fxURiF
	 HJQ2NdZTMGwm+BzSht/p7M9l6/6v0jhD4ZTyNpXYMKA2JHpqIjd7nczqibdGtAepNs
	 CfbFLbJJunj0p0azTZfcqK6pO1XCt/whx9yihCcQ=
Message-ID: <2bec3583-6078-4650-a8d0-6cfe8fcec3f3@ideasonboard.com>
Date: Wed, 23 Jul 2025 12:37:31 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/2] Fix PLL lock timeout and calibration wait time
To: Devarsh Thakkar <devarsht@ti.com>
Cc: aradhya.bhatia@linux.dev, s-jain1@ti.com, r-donadkar@ti.com,
 j-choudhary@ti.com, a0512644@ti.com, vkoul@kernel.org, kishon@kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250704125915.1224738-1-devarsht@ti.com>
Content-Language: en-US
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Autocrypt: addr=tomi.valkeinen@ideasonboard.com; keydata=
 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
In-Reply-To: <20250704125915.1224738-1-devarsht@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_023737_762958_149790C9 
X-CRM114-Status: GOOD (  11.68  )
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

Hi,

On 04/07/2025 15:59, Devarsh Thakkar wrote:
> This fixes PLL lockup and O_CMN_READY timeout by moving the polling
> function after common state machine gets enabled. Also fix the
> calibration wait time to optimize the polling time.
> 
> NOTE: This needs to be applied on top of  
>   https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-4-862c841dbe02@ideasonboard.com/           
>   https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-5-862c841dbe02@ideasonboard.com/           
>   from the series:                                                                                  
>   https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com/    
> 
> Changelog:
> V4:                                                                                                 
> - Optimize wait_for_pll_lock, wait_for_cmn_ready calls to oneline                                   
>   using conditional operator                                                                        
> - Remove superflous init for ret variable in cdns_dphy_configure                                    
> - Enable pll and psm ref clocks before configuring PLL                                              
> - Update commit message to refer to TRM                                                             
> - Rebased on top of:                                                                                
>   https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-4-862c841dbe02@ideasonboard.com/           
>   https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-5-862c841dbe02@ideasonboard.com/           
>   from the series:                                                                                  
>   https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com/    
> 
> V3: 
> -   Use read-modify-write for using calibrated value for PLL
>     lock time
> -   Move out PLL clock configuration part to power_on function
> 
> V2: Separate patch for calibration logic and
>     return error code on polling 
> 
> Previous versions:
> V3: https://lore.kernel.org/all/20250502033451.2291330-1-devarsht@ti.com/
> V2: https://lore.kernel.org/all/20250326152320.3835249-1-devarsht@ti.com/
> V1: https://lore.kernel.org/all/20241230125319.941372-1-devarsht@ti.com/
> 
> Test logs:
> Link: https://gist.github.com/devarsht/d08d851399ca327e5594266a8d66d478
> 
> Rangediff:
> V3->V4:
> https://gist.github.com/devarsht/e4db52e1f4aec2d45596b3ed019e92ef
> 
> V2->V3:
> https://gist.github.com/devarsht/c4d2c4f6715ec7aa4df4cb2c7991b7aa
> 
> Devarsh Thakkar (2):
>   phy: cadence: cdns-dphy: Fix PLL lock and O_CMN_READY polling
>   phy: cadence: cdns-dphy: Update calibration wait time for startup
>     state machine
> 
>  drivers/phy/cadence/cdns-dphy.c | 126 ++++++++++++++++++++++++--------
>  1 file changed, 94 insertions(+), 32 deletions(-)
> 

For the series:

Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

 Tomi


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE839C05027
	for <linux-phy@archiver.kernel.org>; Wed,  1 Feb 2023 16:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S1mxwzHPa/tJqDWPwagAHB+qoIie9QhdOGZEmGXLeeI=; b=fn1eBxRA6g7C8/
	jHQSkOImzI+pO0YO4WpID5rS+PFIntcc6/ABbt2hrwRFJdJq8BF/9TJSafO6jpDhQ2Q5ALpZ5qdYd
	yv9iEXfajT9mm6v5gOLs5ZdNztvTcHMGBZ7yApMSHpr5n+fgTVcr0aF0Np7VyzGrSZk3Q0gMG0Rzn
	bUxutuP+eg2C3cAAownseu7lbgGGJzaiiwLHZlvDOp+9bl0FaDwnfSuNG8RD8fviXf8sD+/A8nPAY
	IoxyDogPMObR3p3YDs2y9LXiWeXSIsLfmJxMKg7BgklGj2SXca60oJatBOFUkEkijK9JPep1G8vRY
	7FAKA8HyE3SWZnkROCtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNFqZ-00ClYT-5e; Wed, 01 Feb 2023 16:20:31 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNFqT-00ClUE-4J; Wed, 01 Feb 2023 16:20:27 +0000
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 311E5fMX027482;
	Wed, 1 Feb 2023 17:20:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=7LpkrDl5b364c4QDYBWfxre0wdAK0qiVCaz+RNG9mTQ=;
 b=2tGlWiUsNXngWmV/pPXZwvsaN7FCKsDlhd02pUsWAxCyw+UyoZvO25xhUHzFmNvxFaeZ
 pERMgMZHLpPZige+3aNywf8AdEqRdOfWHhLunVWf76jmkLSku0M19IjgsIvAwKnQXUo/
 O1Tir6gPdzabjd1J3i5g/u2yOan5OsD7UthoU7JoF2w/TSb0QU0iHJ4qiFEa4wL5Ij56
 4nfy/8+eMmi7/MAS9NkFBaVUPA5BMS2UOyjdAClcmiDNYKkg+qSAiKR7Dl8n3Kvc5OVb
 Z5q8lzD7HxCmGtzgnUqzYt0kgqcLrBiY1e07ttEfPYFwyDYfpE+JJF+eWzW0kDLHYFIM ZA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3nfny5264r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 01 Feb 2023 17:20:14 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 78A0D10002A;
	Wed,  1 Feb 2023 17:20:12 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 717052278A8;
	Wed,  1 Feb 2023 17:20:12 +0100 (CET)
Received: from [10.48.1.102] (10.48.1.102) by SHFDAG1NODE2.st.com
 (10.75.129.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.13; Wed, 1 Feb
 2023 17:20:11 +0100
Message-ID: <ce8efcd8-fade-5328-8f21-3583e076b266@foss.st.com>
Date: Wed, 1 Feb 2023 17:20:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] phy: stm32-usphyc: add mdelay(1) to fix timeout on some
 machines
Content-Language: en-US
To: Michael Grzeschik <m.grzeschik@pengutronix.de>,
        <linux-arm-kernel@lists.infradead.org>
CC: <linux-phy@lists.infradead.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <mcoquelin.stm32@gmail.com>, <alexandre.torgue@foss.st.com>,
        <error27@gmail.com>, <kernel@pengutronix.de>
References: <20230124204500.3502665-1-m.grzeschik@pengutronix.de>
From: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
In-Reply-To: <20230124204500.3502665-1-m.grzeschik@pengutronix.de>
X-Originating-IP: [10.48.1.102]
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-02-01_04,2023-01-31_01,2022-06-22_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_082025_685434_3805C176 
X-CRM114-Status: GOOD (  24.24  )
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

On 1/24/23 21:45, Michael Grzeschik wrote:
> An mdelay of 1 seems to be necessary on some machines, since

Hi Michael,

Could you precise on which board ?

> the monsel status does not seem to be accurate. On rare occasions just
> working with the phy after this pll check lead to no functional usb.

Could you elaborate on the symptoms (provide some error logs) ?

> With this short mdelay this issue was not reported again.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  drivers/phy/st/phy-stm32-usbphyc.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm32-usbphyc.c
> index 5bb9647b078f12..c452a0caceb9fa 100644
> --- a/drivers/phy/st/phy-stm32-usbphyc.c
> +++ b/drivers/phy/st/phy-stm32-usbphyc.c
> @@ -353,6 +353,15 @@ static int stm32_usbphyc_phy_init(struct phy *phy)
>  		goto pll_disable;
>  	}
>  
> +	/* This mdelay seems to be necessary on some machines, since the
> +	 * monsel status does not seem to be accurate. On rare occasions
> +	 * just working with the phy after this pll check the usb
> +	 * peripheral (e.g. on the dwc2) run into timeout issues and
> +	 * leading to no functional usb. With this short mdelay this
> +	 * issue was not reported again.
> +	 */
> +	mdelay(1);
> +

The USBPHYC provides two PHY interfaces:
- PHY port#1 is for USBH
- PHY port#2 can be assigned to USBH or DWC2.

Adding some delay here, we'll hit twice this penalty (e.g. for USBH +
DWC2 or dual USBH) on all MP1 (MP13 & MP15) platforms.

Could you try to narrow down the issue by adding some debug log in:
- stm32_usbphyc_phy_init
- stm32_usbphyc_clk48_prepare

Best Regards,
Fabrice

>  	usbphyc_phy->active = true;
>  
>  	return 0;

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

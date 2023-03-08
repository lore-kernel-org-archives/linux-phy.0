Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21E93C64EC4
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 08:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Geyifi7/w/mSfBnd3XflsOcM/Dbk0kVB+maZOkvwzRo=; b=hp9DTE3cRDdExn
	u4XzstXaCDzxMyVAr1kHJ4abucaG17Ycv2uInt5ZaPH1xtO++mi5fWjiAWBZ57eD7wjawZy1iwlQz
	nF/pq9t5e7DF/cr0jSoszAll/QWHIJe0qJEbTBKNOhq9LL/MOFz2tinMQenBslAzkp7JBdr45fp+4
	+LQBiMbg0qplEp5cKtn/FbIfltSU1bWXiaQJpw8PVjRZVeckrnEbFIigznxQdQ1rY8BijriuA0lQb
	IyqkBAyS+3hYNPZxCRI7taWVMhUH6B7oZWz5L5buqHHLapJ5YQmxXkunDHqRb5lXwf4Nxsu1vYJsc
	pSn07cmITEFj07vFqEIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZpTO-00436A-Ik; Wed, 08 Mar 2023 08:48:34 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZpTK-00432h-ND; Wed, 08 Mar 2023 08:48:32 +0000
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32879V4P019611;
	Wed, 8 Mar 2023 09:48:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=iuAQdYFKTGYmPSS5SLf5c/qCK6pWGs2MRbmLc5fNhG4=;
 b=xzsQqRmdDMHYsL1kZ0hQQoCD8+B+TIPM3ukBpktDxODZXDj8b6++c+mLA5kI46FB7UAQ
 RsomBZT9ZGevmulS/wpqOr6w5hBFobsobYml/+9tEOS8d21fyFLSI+auk7C2RNqZ0iZB
 Kp0JpHKLLT2HeuUyXyTMoJ94VFvA4zaBw9aeYGdvcPnX+t/nz5DntwoTeTUxYttag6vP
 otMSn2x3+ClabYdHoCitkugbcjW/3dfYPGk+CCYpXOST4xLvlHvAZS875w/Xke0bUjFc
 ypkBjM2QtWxvOCpKcs/X15TsNXZp5/pqVjeVjsfOvP1tSb5ggmoMTLvR62+6YFu4zgJV OQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3p6fdrjkhn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 08 Mar 2023 09:48:10 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1425910002A;
	Wed,  8 Mar 2023 09:48:09 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3CFCD210F7E;
	Wed,  8 Mar 2023 09:48:09 +0100 (CET)
Received: from [10.201.21.26] (10.201.21.26) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.17; Wed, 8 Mar
 2023 09:48:08 +0100
Message-ID: <d422fd7b-05e8-c29b-90f6-f2a4742411f1@foss.st.com>
Date: Wed, 8 Mar 2023 09:48:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] phy: st: miphy28lp: use _poll_timeout functions for waits
To: Alain Volmat <avolmat@me.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay
 Abraham I <kishon@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20230210224309.98452-1-avolmat@me.com>
Content-Language: en-US
From: Patrice CHOTARD <patrice.chotard@foss.st.com>
In-Reply-To: <20230210224309.98452-1-avolmat@me.com>
X-Originating-IP: [10.201.21.26]
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-08_04,2023-03-08_01,2023-02-09_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_004831_371592_57D79228 
X-CRM114-Status: GOOD (  20.63  )
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

Hi Alain

On 2/10/23 23:43, Alain Volmat wrote:
> This commit introduces _poll_timeout functions usage instead of
> wait loops waiting for a status bit.
> 
> Signed-off-by: Alain Volmat <avolmat@me.com>
> ---
>  drivers/phy/st/phy-miphy28lp.c | 42 ++++++++--------------------------
>  1 file changed, 10 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/phy/st/phy-miphy28lp.c b/drivers/phy/st/phy-miphy28lp.c
> index 068160a34f5c..e30305b77f0d 100644
> --- a/drivers/phy/st/phy-miphy28lp.c
> +++ b/drivers/phy/st/phy-miphy28lp.c
> @@ -9,6 +9,7 @@
>  
>  #include <linux/platform_device.h>
>  #include <linux/io.h>
> +#include <linux/iopoll.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> @@ -484,19 +485,11 @@ static inline void miphy28lp_pcie_config_gen(struct miphy28lp_phy *miphy_phy)
>  
>  static inline int miphy28lp_wait_compensation(struct miphy28lp_phy *miphy_phy)
>  {
> -	unsigned long finish = jiffies + 5 * HZ;
>  	u8 val;
>  
>  	/* Waiting for Compensation to complete */
> -	do {
> -		val = readb_relaxed(miphy_phy->base + MIPHY_COMP_FSM_6);
> -
> -		if (time_after_eq(jiffies, finish))
> -			return -EBUSY;
> -		cpu_relax();
> -	} while (!(val & COMP_DONE));
> -
> -	return 0;
> +	return readb_relaxed_poll_timeout(miphy_phy->base + MIPHY_COMP_FSM_6,
> +					  val, val & COMP_DONE, 1, 5 * USEC_PER_SEC);
>  }
>  
>  
> @@ -805,7 +798,6 @@ static inline void miphy28lp_configure_usb3(struct miphy28lp_phy *miphy_phy)
>  
>  static inline int miphy_is_ready(struct miphy28lp_phy *miphy_phy)
>  {
> -	unsigned long finish = jiffies + 5 * HZ;
>  	u8 mask = HFC_PLL | HFC_RDY;
>  	u8 val;
>  
> @@ -816,21 +808,14 @@ static inline int miphy_is_ready(struct miphy28lp_phy *miphy_phy)
>  	if (miphy_phy->type == PHY_TYPE_SATA)
>  		mask |= PHY_RDY;
>  
> -	do {
> -		val = readb_relaxed(miphy_phy->base + MIPHY_STATUS_1);
> -		if ((val & mask) != mask)
> -			cpu_relax();
> -		else
> -			return 0;
> -	} while (!time_after_eq(jiffies, finish));
> -
> -	return -EBUSY;
> +	return readb_relaxed_poll_timeout(miphy_phy->base + MIPHY_STATUS_1,
> +					  val, (val & mask) == mask, 1,
> +					  5 * USEC_PER_SEC);
>  }
>  
>  static int miphy_osc_is_ready(struct miphy28lp_phy *miphy_phy)
>  {
>  	struct miphy28lp_dev *miphy_dev = miphy_phy->phydev;
> -	unsigned long finish = jiffies + 5 * HZ;
>  	u32 val;
>  
>  	if (!miphy_phy->osc_rdy)
> @@ -839,17 +824,10 @@ static int miphy_osc_is_ready(struct miphy28lp_phy *miphy_phy)
>  	if (!miphy_phy->syscfg_reg[SYSCFG_STATUS])
>  		return -EINVAL;
>  
> -	do {
> -		regmap_read(miphy_dev->regmap,
> -				miphy_phy->syscfg_reg[SYSCFG_STATUS], &val);
> -
> -		if ((val & MIPHY_OSC_RDY) != MIPHY_OSC_RDY)
> -			cpu_relax();
> -		else
> -			return 0;
> -	} while (!time_after_eq(jiffies, finish));
> -
> -	return -EBUSY;
> +	return regmap_read_poll_timeout(miphy_dev->regmap,
> +					miphy_phy->syscfg_reg[SYSCFG_STATUS],
> +					val, val & MIPHY_OSC_RDY, 1,
> +					5 * USEC_PER_SEC);
>  }
>  
>  static int miphy28lp_get_resource_byname(struct device_node *child,

Reviewed-by: Patrice Chotard <patrice.chotard@foss.st.com>

Thanks
Patrice

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

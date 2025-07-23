Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A9D7C83F17
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 13:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CMDd6ioucsLcw70ZLdXGVfjt2xFs0yTy6v7xUvy2ve4=; b=nRRQAta0FyQPwt
	u9wQw0TpTLCrTe+ur3ThCyECnmLwcZSJGvTKOuYeu4QzkVw56fFJh2Ge8pNgfB400RzZ4r60Eu9i4
	SJQ0ljvwuDrK2vJZdlhHwxax8AQu4mEj3iBi61w4C+O1XiBsERnQc/3jcXCGeK3vVSeCiFMHeOWlg
	zLBDa6O3srkUrqmt6OMESzsNxTKXdzQIHpFbaCcdJ+autq28ieDE5P5jcdMy47Ok0IG7s6hEr5KyB
	1bBSUqE/XtJbqGT+UU3arBe3Vsb7mK/up8QnC+D7oy+o+qXx+bKESpN06M3yRG3qUPuRAC1Wd/4uV
	jsJ9LJCtsOA5V11Vt8Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueZDe-00000004zjD-18ZL;
	Wed, 23 Jul 2025 13:09:14 +0000
Received: from lelvem-ot02.ext.ti.com ([198.47.23.235])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueYna-00000004vyI-2oYv
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 12:42:20 +0000
Received: from lelvem-sh01.itg.ti.com ([10.180.77.71])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTP id 56NCg3Xu1740624;
	Wed, 23 Jul 2025 07:42:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1753274523;
	bh=8y/5v6ifeSh2P8l6jmHUTbF35jKuGWps0dZvGwrWCtk=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=XmkW+R84rR4g+I8NcLuBgU1u2dnJ76cSVvt0OjYyI0WwCu19fmJwALVuT/li6hAKf
	 7eQke5Xaaex04CdqhFcFjobnM+iyspg9Bew2zd580ej31JMAl+FGcy92cgn2Y7Ivao
	 KbHhSrtyLhmHBYZx+jgYMip4ZY8P1AJcO1iz9Sx0=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelvem-sh01.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 56NCg3Mm714911
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Wed, 23 Jul 2025 07:42:03 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Wed, 23
 Jul 2025 07:42:03 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Wed, 23 Jul 2025 07:42:02 -0500
Received: from [172.24.227.193] (devarsh-precision-tower-3620.dhcp.ti.com [172.24.227.193])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 56NCfxY82989877;
	Wed, 23 Jul 2025 07:42:00 -0500
Message-ID: <4f06febe-68ad-4d50-a194-0df6bc5f1664@ti.com>
Date: Wed, 23 Jul 2025 18:11:59 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: cadence: cdns-dphy: Update calibration wait
 time for startup state machine
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
CC: <aradhya.bhatia@linux.dev>, <s-jain1@ti.com>, <r-donadkar@ti.com>,
        <j-choudhary@ti.com>, <a0512644@ti.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20250704125915.1224738-1-devarsht@ti.com>
 <20250704125915.1224738-3-devarsht@ti.com>
 <d12fc642-bb6b-4d97-9660-f50d2dad1202@ideasonboard.com>
Content-Language: en-US
From: Devarsh Thakkar <devarsht@ti.com>
In-Reply-To: <d12fc642-bb6b-4d97-9660-f50d2dad1202@ideasonboard.com>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_054218_854110_A9E14AA6 
X-CRM114-Status: GOOD (  21.89  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Tomi,

Thanks for the review.
On 23/07/25 13:36, Tomi Valkeinen wrote:
> Hi,
> 
> On 04/07/2025 15:59, Devarsh Thakkar wrote:
>> Do read-modify-write so that we re-use the characterized reset value as
>> specified in TRM [1] to program calibration wait time which defines number
>> of cycles to wait for after startup state machine is in bandgap enable
>> state.
>>
>> This fixes PLL lock timeout error faced while using RPi DSI Panel on TI's
>> AM62L and J721E SoC since earlier calibration wait time was getting
>> overwritten to zero value thus failing the PLL to lockup and causing
>> timeout.
>>
>> [1] AM62P TRM (Section 14.8.6.3.2.1.1 DPHY_TX_DPHYTX_CMN0_CMN_DIG_TBIT2):
>> Link: https://www.ti.com/lit/pdf/spruj83
>>
>> Cc: stable@vger.kernel.org
>> Fixes: 7a343c8bf4b5 ("phy: Add Cadence D-PHY support")
>> Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
>> ---
>> V4: No change
>> V3:
>> - Do read-modify-write to preserve reset value for calibration wait
>>    time
>> V2:
>> Introduced this as as separate patch
>>
>>   drivers/phy/cadence/cdns-dphy.c | 4 +++-
>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
>> index da8de0a9d086..24a25606996c 100644
>> --- a/drivers/phy/cadence/cdns-dphy.c
>> +++ b/drivers/phy/cadence/cdns-dphy.c
>> @@ -30,6 +30,7 @@
>>   
>>   #define DPHY_CMN_SSM			DPHY_PMA_CMN(0x20)
>>   #define DPHY_CMN_SSM_EN			BIT(0)
>> +#define DPHY_CMN_SSM_CAL_WAIT_TIME	GENMASK(8, 1)
>>   #define DPHY_CMN_TX_MODE_EN		BIT(9)
>>   
>>   #define DPHY_CMN_PWM			DPHY_PMA_CMN(0x40)
>> @@ -410,7 +411,8 @@ static int cdns_dphy_power_on(struct phy *phy)
>>   	writel(reg, dphy->regs + DPHY_BAND_CFG);
>>   
>>   	/* Start TX state machine. */
>> -	writel(DPHY_CMN_SSM_EN | DPHY_CMN_TX_MODE_EN,
>> +	reg = readl(dphy->regs + DPHY_CMN_SSM);
>> +	writel((reg & DPHY_CMN_SSM_CAL_WAIT_TIME) | DPHY_CMN_SSM_EN | DPHY_CMN_TX_MODE_EN,
>>   	       dphy->regs + DPHY_CMN_SSM);
> 
> That's not how you do read-modify-write. You should first read the
> register, then clear the fields you want to set/clear, then set the
> fields, then write.
> 
> reg = readl(dphy->regs + DPHY_CMN_SSM, dphy->regs + DPHY_CMN_SSM);
> reg &= ~(DPHY_CMN_SSM_EN | DPHY_CMN_TX_MODE_EN)
> reg |= DPHY_CMN_SSM_EN | DPHY_CMN_TX_MODE_EN;
> writel(reg, dphy->regs + DPHY_CMN_SSM);
> 
> That's the general form, in this particular case the and-line is not
> necessary, of course.
> 
> There's also FIELD_MODIFY() (and related), but I'm not sure if I like
> them... Up to you.

As discussed offline, here we just wanted to preserve the value for 
DPHY_CMN_SSM_CAL_WAIT_TIME bits as these are holding the calibration 
wait time, reset rest and then enable the SSM by setting DPHY_CMN_SSM_EN 
| DPHY_CMN_TX_MODE_EN and the patch rightly achieves this. I assume we 
are aligned on this as I see your review here [1].

Kindly let me know if otherwise.

[1]: 
https://lore.kernel.org/all/2bec3583-6078-4650-a8d0-6cfe8fcec3f3@ideasonboard.com/

Regards
Devarsh

> 
>   Tomi
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

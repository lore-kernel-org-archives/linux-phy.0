Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93E74C27C6E
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jun 2024 15:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/QCNkI6CH8UAmjRRYWcH1dYGbgDJnf3Kra32ZbeWoo=; b=35lxQ9NAf5tJw1
	wpieCUGlY53JuYywClkt/2yQ53Cte/bWAhxg0/C+GoJpyMucPPO9x8zcQxqpxB0F4iupvDo2QvniB
	ArkhcGwPcklYZLqcSgZmUPAX86Ce4BkdwCF61ICtayFr8IIpvWUJDp3tUh7KcMckIu8HI51w5T52S
	UBXvEiS5FANZOmxH9+GmR5eUsoexNXcgWHPz3RG3mj9KxKWUmEqlddK40EyQcE8WXX3d0+sqcWrjR
	sNfcC7rm4DAH+dDNnDdv40PX2ID14tulXhffBN4acVBPgsi7c+WBcoQXPRD1XRoz8PcdohjjwSEkg
	HnTQ6sQPUFdAt0Yhx7xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI8gW-00000003Cwi-1FoM;
	Fri, 14 Jun 2024 15:17:48 +0000
Received: from out-185.mta1.migadu.com ([95.215.58.185])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI8gT-00000003Cvc-1bFL
	for linux-phy@lists.infradead.org;
	Fri, 14 Jun 2024 15:17:47 +0000
X-Envelope-To: radhey.shyam.pandey@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1718378262;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EK/My33etlwM5NxXlcqrJJJAuLZlZ53SGlM1Z/KkM/w=;
	b=AO5LPneHUK8kRzcznQSE74VYKBs3yjWR7bbqeINnWEMZSQ8lc97BsqLBQh2egQqaU+kul4
	O5lSdr/zjbDnTNeb9e8DeHsBDAxGibylHKPdFu5z+ds2lP3Y2oph5JCzQC4mo04zC2Pgig
	7I85gJPe5Sxn7xqhx/rJDmJphzr+t1U=
X-Envelope-To: laurent.pinchart@ideasonboard.com
X-Envelope-To: linux-phy@lists.infradead.org
X-Envelope-To: vkoul@kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: michal.simek@amd.com
X-Envelope-To: kishon@kernel.org
Message-ID: <f8a5307a-ab9a-4b9a-9cf5-1b88f912b201@linux.dev>
Date: Fri, 14 Jun 2024 11:17:39 -0400
MIME-Version: 1.0
Subject: Re: [PATCH v2 1/4] phy: zynqmp: Enable reference clock correctly
To: "Pandey, Radhey Shyam" <radhey.shyam.pandey@amd.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Cc: Vinod Koul <vkoul@kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Simek, Michal" <michal.simek@amd.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>
References: <20240506170110.2874724-1-sean.anderson@linux.dev>
 <20240506170110.2874724-2-sean.anderson@linux.dev>
 <MN0PR12MB59531E522EC62B160EEC35E5B7C22@MN0PR12MB5953.namprd12.prod.outlook.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
In-Reply-To: <MN0PR12MB59531E522EC62B160EEC35E5B7C22@MN0PR12MB5953.namprd12.prod.outlook.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_081745_697762_BC8AE027 
X-CRM114-Status: GOOD (  14.51  )
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

On 6/14/24 01:30, Pandey, Radhey Shyam wrote:
>> -----Original Message-----
>> From: Sean Anderson <sean.anderson@linux.dev>
>> Sent: Monday, May 6, 2024 10:31 PM
>> To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>; linux-
>> phy@lists.infradead.org
>> Cc: Vinod Koul <vkoul@kernel.org>; linux-arm-kernel@lists.infradead.org;
>> linux-kernel@vger.kernel.org; Michal Simek <michal.simek@amd.com>;
>> Kishon Vijay Abraham I <kishon@kernel.org>; Sean Anderson
>> <sean.anderson@linux.dev>
>> Subject: [PATCH v2 1/4] phy: zynqmp: Enable reference clock correctly
>> 
>> Lanes can use other lanes' reference clocks, as determined by refclk.
>> Use refclk to determine the clock to enable/disable instead of always
>> using the lane's own reference clock. This ensures the clock selected in
>> xpsgtr_configure_pll is the one enabled.
>> 
>> For the other half of the equation, always program REF_CLK_SEL even when
>> we are selecting the lane's own clock. This ensures that Linux's idea of
>> the reference clock matches the hardware. We use the "local" clock mux
>> for this instead of going through the ref clock network.
>> 
>> Fixes: 25d700833513 ("phy: xilinx: phy-zynqmp: dynamic clock support for
>> power-save")
>> Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
>> ---
>> 
>> Changes in v2:
>> - New
>> 
>>  drivers/phy/xilinx/phy-zynqmp.c | 14 +++++++++-----
>>  1 file changed, 9 insertions(+), 5 deletions(-)
>> 
>> diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-
>> zynqmp.c
>> index f72c5257d712..5a434382356c 100644
>> --- a/drivers/phy/xilinx/phy-zynqmp.c
>> +++ b/drivers/phy/xilinx/phy-zynqmp.c
>> @@ -80,7 +80,8 @@
>> 
>>  /* Reference clock selection parameters */
>>  #define L0_Ln_REF_CLK_SEL(n)		(0x2860 + (n) * 4)
>> -#define L0_REF_CLK_SEL_MASK		0x8f
>> +#define L0_REF_CLK_LCL_SEL		BIT(7)
>> +#define L0_REF_CLK_SEL_MASK		0x9f
>> 
>>  /* Calibration digital logic parameters */
>>  #define L3_TM_CALIB_DIG19		0xec4c
>> @@ -349,11 +350,14 @@ static void xpsgtr_configure_pll(struct xpsgtr_phy
>> *gtr_phy)
>>  		       PLL_FREQ_MASK, ssc->pll_ref_clk);
>> 
>>  	/* Enable lane clock sharing, if required */
>> -	if (gtr_phy->refclk != gtr_phy->lane) {
>> +	if (gtr_phy->refclk == gtr_phy->lane)
>> +		/* Lane3 Ref Clock Selection Register */
> 
> This is common ref clock selection and not lane 3?

This is copied from the existing comment. I will remove it.

--Sean

>> +		xpsgtr_clr_set(gtr_phy->dev, L0_Ln_REF_CLK_SEL(gtr_phy-
>> >lane),
>> +			       L0_REF_CLK_SEL_MASK, L0_REF_CLK_LCL_SEL);
>> +	else
>>  		/* Lane3 Ref Clock Selection Register */
>>  		xpsgtr_clr_set(gtr_phy->dev, L0_Ln_REF_CLK_SEL(gtr_phy-
>> >lane),
>>  			       L0_REF_CLK_SEL_MASK, 1 << gtr_phy->refclk);
>> -	}
>> 
>>  	/* SSC step size [7:0] */
>>  	xpsgtr_clr_set_phy(gtr_phy, L0_PLL_SS_STEP_SIZE_0_LSB,
>> @@ -573,7 +577,7 @@ static int xpsgtr_phy_init(struct phy *phy)
>>  	mutex_lock(&gtr_dev->gtr_mutex);
>> 
>>  	/* Configure and enable the clock when peripheral phy_init call */
>> -	if (clk_prepare_enable(gtr_dev->clk[gtr_phy->lane]))
>> +	if (clk_prepare_enable(gtr_dev->clk[gtr_phy->refclk]))
>>  		goto out;
>> 
>>  	/* Skip initialization if not required. */
>> @@ -625,7 +629,7 @@ static int xpsgtr_phy_exit(struct phy *phy)
>>  	gtr_phy->skip_phy_init = false;
>> 
>>  	/* Ensure that disable clock only, which configure for lane */
>> -	clk_disable_unprepare(gtr_dev->clk[gtr_phy->lane]);
>> +	clk_disable_unprepare(gtr_dev->clk[gtr_phy->refclk]);
>> 
>>  	return 0;
>>  }
>> --
>> 2.35.1.1320.gc452695387.dirty
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

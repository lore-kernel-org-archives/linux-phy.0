Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FF25C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 27 Jan 2022 12:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7guikZasZ4wxL8n45Od8zBB6wfxtpBtas3LhDjRtE3o=; b=FcAVnWYAMUQblsTu3SoycZufsX
	ms89Q2+U37qxWrz39yJjKtJpH7eUlKiU1zP1fwMiyrRyWVRnkYt5rSoc2kO1jmYViTnOxx7rSLIeu
	0EoSEj+cf4N7z+frGlK/9dC7PAzBKlN++FjaeGfEfgox+GzdkU0g3iXTVqOmQaF6hPZfZoU6QTo7J
	BmKgLrvtKXCLqjJfigdSj3RDzzKpVAujjc27cHD2MPhhO6/JcQtEYHI6drifZKBMj85oNNuUEbH3K
	5hMyyRmBnNrL60i8eRwrF9WsfamWNsbtwrFnC6kalPogFMBs+P/NoqfyY6Puhbdogk8PBpgw1TwEr
	ZGYGQoxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nD3p0-00FfRk-P6; Thu, 27 Jan 2022 12:24:14 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nD3nk-00Feo9-78
 for linux-phy@lists.infradead.org; Thu, 27 Jan 2022 12:22:58 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 20RCMo3D041382;
 Thu, 27 Jan 2022 06:22:50 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1643286170;
 bh=M+t4TNyz45XBmCPzZgTRKAq1n7WDttb+rCbMTRGsH/I=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=XkAxfKj3fnwD4EDaZNL+Y4uKWtT/HgS2eVzm0zuoagMIDkEfBCKAuWJcYu72BuQZC
 5nCP4svvbM93kbU1H+LPKtmjMGEtqzlbWSvVqzIyDu2u2nSCktY4kN8jKLGfBB4OxK
 /pSfuhGnDBz1oSxbY4GWL2MeOz8BFP47vTd92Ta4=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 20RCMoaG037595
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 27 Jan 2022 06:22:50 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Thu, 27
 Jan 2022 06:22:50 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Thu, 27 Jan 2022 06:22:50 -0600
Received: from [172.24.145.136] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 20RCMlME047186;
 Thu, 27 Jan 2022 06:22:48 -0600
Subject: Re: [PATCH] phy: cadence: Sierra: Add support for skipping
 configuration
To: Dan Carpenter <dan.carpenter@oracle.com>
CC: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Swapnil Jakhade
 <sjakhade@cadence.com>,
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20220127085700.10333-1-a-govindraju@ti.com>
 <20220127101938.GD1978@kadam>
From: Aswath Govindraju <a-govindraju@ti.com>
Message-ID: <41985856-48f4-7333-b1d8-35d0f4c55509@ti.com>
Date: Thu, 27 Jan 2022 17:52:47 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220127101938.GD1978@kadam>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_042256_440422_6D6C935D 
X-CRM114-Status: GOOD (  32.59  )
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

Hi Dan,

On 27/01/22 3:49 pm, Dan Carpenter wrote:
> On Thu, Jan 27, 2022 at 02:26:58PM +0530, Aswath Govindraju wrote:
>> Skip the phy configuration if the required configurations were done in an
>> earlier boot stage.
>>
> 
> Why are you doing this?  Could you please put in the commit message if
> the user will see an improvement from this change.
> 

In some cases, the SerDes configuration can be done in the bootloaders
itself and in these the reconfiguration can be skipped in kernel. For
example 2 different cores can be using the SerDes, in this case the
bootloaders configure the SerDes, so that the cores can later on use the
lanes directly without configuring the lanes again.

I will include this in the commit message of the respin.

>> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
>> ---
> 
> [ snip ]
> 
>> @@ -1382,16 +1401,24 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
>>  	if (ret)
>>  		return ret;
>>  
>> -	ret = cdns_sierra_phy_get_resets(sp, dev);
>> -	if (ret)
>> -		goto unregister_clk;
>> -
>>  	ret = cdns_sierra_phy_enable_clocks(sp);
>>  	if (ret)
>>  		goto unregister_clk;
>>  
>> -	/* Enable APB */
>> -	reset_control_deassert(sp->apb_rst);
>> +	regmap_field_read(sp->pma_cmn_ready, &sp->already_configured);
>> +
>> +	if (!(sp->already_configured)) {
> 
> Delete extra parens.
> 
>> +		ret = cdns_sierra_phy_clk(sp);
>> +		if (ret)
>> +			goto unregister_clk;
> 
> The goto should release the most recent successful allocation which is
> cdns_sierra_phy_enable_clocks().  So this should be goto clk_disable.
> Except that will also call reset_control_assert() which is wrong...  The
> rules are generally that error handling should be in the reverse order
> from how we allocated it.  If allocation is optional the cleanup should
> be optional.  The allocation and unwind code should mirror each other.
> 
>> +
>> +		ret = cdns_sierra_phy_get_resets(sp, dev);
>> +		if (ret)
>> +			goto unregister_clk;
> 
> goto clk_disable;
> 
>> +
>> +		/* Enable APB */
>> +		reset_control_deassert(sp->apb_rst);
> 
> Since this is now optional it should be optional in the cleanup.
> 
>> +	}
>>  
> 
> Since the order of allocations has changed, the other gotos need to be
> updated to free the most recent allocation as well.  Then the error
> handling looks like this:
> 
> 	return 0;
> 
> put_control:
> 	while (--node >= 0)
> 		reset_control_put(sp->phys[node].lnk_rst);
> ctrl_assert:
> 	if (!sp->already_configured)
> 		reset_control_assert(sp->apb_rst);
> clk_disable:
> 	cdns_sierra_phy_disable_clocks(sp);
> unregister_clk:
> 	cdns_sierra_clk_unregister(sp);
> 	return ret;
> 
> 
>>  	/* Check that PHY is present */
>>  	regmap_field_read(sp->macro_id_type, &id_value);
>> @@ -1433,8 +1460,10 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
>>  
>>  		sp->num_lanes += sp->phys[node].num_lanes;
>>  
>> -		gphy = devm_phy_create(dev, child, &ops);
>> -
>> +		if (!(sp->already_configured))
> 
> Delete parens.
> 
>> +			gphy = devm_phy_create(dev, child, &ops);
>> +		else
>> +			gphy = devm_phy_create(dev, child, &noop_ops);
>>  		if (IS_ERR(gphy)) {
>>  			ret = PTR_ERR(gphy);
>>  			of_node_put(child);
>> @@ -1455,7 +1484,7 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
>>  	}
>>  
>>  	/* If more than one subnode, configure the PHY as multilink */
>> -	if (!sp->autoconf && sp->nsubnodes > 1) {
>> +	if (!(sp->already_configured && sp->autoconf) && sp->nsubnodes > 1) {
> 
> It's normally easier to understand conditions when you push the ! as
> far in as possible:
> 
> 	if ((!sp->already_configured || !sp->autoconf) &&
> 	    sp->nsubnodes > 1) {
> 
> Is this condition right?  Shouldn't it be:
> 
> 	if (!sp->already_configured && !sp->autoconf && sp->nsubnodes > 1) {
> 
> The ->already_configured is set/stored in firmware so I don't know when
> that happens.  Please, add that information to the commit message when
> you resend.
> 

Sorry, my logic was wrong. I will correct this in the respin.


Thank you for the review comments

Regards,
Aswath

> regards,
> dan carpenter
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

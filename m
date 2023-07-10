Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E470AEB64D9
	for <linux-phy@archiver.kernel.org>; Mon, 10 Jul 2023 14:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hsHpGxsqgFffy4rhXZCdM5XmVX/+ClZA5GUlYbu88jA=; b=Bc4paNR8kk5Yfr
	2ezLDZRUqnv1Il9jQLetGNh3B/97X1W0aXmCkjo2UcxZHPM6y6FxvcUWnyN0g2dchK2Y0SrgU8emp
	bOYdXK4LzimhboJ6cv0Lw0ilVgc5ekurdLnXN8qIOLF3V0oD765TqkPEZwn1JoaXtiWZ8NAyFrgEj
	VS+FH+8wp4HHhbkzlvON2AJ2Cqq42bxh6otqHiERuciRBmKHUQteVb0j5Bv098asql5EUn/tkHG+u
	z/aVy0tgAfQyEs3fJceDmw1I4ofkWHkLpGCJCIbmJVA8XBfQ/QVkTOvCDF0mv4g77VnZON9YYUjd2
	TRTtdXWJxJ7kWxGn0UqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIs1y-00BuHT-1n;
	Mon, 10 Jul 2023 14:38:26 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIs1u-00BuG6-10
	for linux-phy@lists.infradead.org;
	Mon, 10 Jul 2023 14:38:25 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 36AEcCfW064353;
	Mon, 10 Jul 2023 09:38:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1688999892;
	bh=+NyYiBIVfky5FyHiALbxif/2d8M8ji1PBrAZbcEWnkY=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=E0wKacmcy7Mvj34IuYLm3FNU+/mijt0hVPjXqhzW6Anbp3aUSE95p+pJW4wqQFJkI
	 +fd5/S+5WmgUVefv8szEb58hWZx+r+zti33+lMhZ7FFil15JiDP2QZI4TlweWTjIje
	 06kU4u8UqwLjMfnkv1Bc8tMCiIcmKioJsV4F5c/s=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 36AEcC3W011931
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 10 Jul 2023 09:38:12 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 10
 Jul 2023 09:38:12 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 10 Jul 2023 09:38:12 -0500
Received: from [10.250.32.50] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 36AEcBeq042221;
	Mon, 10 Jul 2023 09:38:12 -0500
Message-ID: <693d7d42-b062-1e01-b920-e13c2d08ca6f@ti.com>
Date: Mon, 10 Jul 2023 09:38:11 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] phy: ti: gmii-sel: Allow parent to not be syscon node
To: Siddharth Vadapalli <s-vadapalli@ti.com>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Roger Quadros <rogerq@kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
References: <20230515195922.617243-1-afd@ti.com>
 <5ae4bd37-65ee-d6da-1ab6-c1018d9959ec@ti.com>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <5ae4bd37-65ee-d6da-1ab6-c1018d9959ec@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_073824_124187_5169DC65 
X-CRM114-Status: GOOD (  28.17  )
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

On 5/15/23 11:05 PM, Siddharth Vadapalli wrote:
> Andrew,
> 
> On 16/05/23 01:29, Andrew Davis wrote:
>> If the parent node is not a syscon type, then fallback and check
>> if we can get a regmap from our own node. This no longer forces
>> us to make the parent of this node a syscon node when that might
>> not be appropriate.
> 
> Could you please let me know in which cases it is appropriate versus in which
> cases it isn't?

Use of syscon nodes should be discouraged, in most cases they can and should be
avoided. The only time we would need to have a syscon parent is when the register
space contains multiple sub-devices with bit level interleaving.

Most devices should never need syscon, we overuse syscon due to driver like
this that have no other option than to make the parent device a syscon node.

> Is syscon_node_to_regmap() being retained for backward
> compatibility until the device-tree nodes are cleaned up across all devices?
> 

Yes, the old way is left only for backwards compatibility.

>>
>> Signed-off-by: Andrew Davis <afd@ti.com>
>> ---
>>   drivers/phy/ti/phy-gmii-sel.c | 9 ++++++---
>>   1 file changed, 6 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
>> index 8c667819c39a..1e67ed9a5cf6 100644
>> --- a/drivers/phy/ti/phy-gmii-sel.c
>> +++ b/drivers/phy/ti/phy-gmii-sel.c
>> @@ -435,9 +435,12 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
>>   
>>   	priv->regmap = syscon_node_to_regmap(node->parent);
>>   	if (IS_ERR(priv->regmap)) {
>> -		ret = PTR_ERR(priv->regmap);
>> -		dev_err(dev, "Failed to get syscon %d\n", ret);
>> -		return ret;
>> +		priv->regmap = device_node_to_regmap(node);
> 
> If device_node_to_regmap() can always be used with the corresponding changes
> made to the device-tree nodes, wouldn't it be better to use it directly instead
> of using it as a fallback? (This is based on the assumption that
> syscon_node_to_regmap() is only being retained until the device-tree nodes are
> cleaned up to work with device_node_to_regmap()).
> 

Yes, that could work too. I was trying to make the minimal changes here, but
if we feel it works better we can have the default be to check the self node first.

Andrew

>> +		if (IS_ERR(priv->regmap)) {
>> +			ret = PTR_ERR(priv->regmap);
>> +			dev_err(dev, "Failed to get syscon %d\n", ret);
>> +			return ret;
>> +		}
>>   	}
>>   
>>   	ret = phy_gmii_sel_init_ports(priv);
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

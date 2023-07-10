Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 818FEEB64D9
	for <linux-phy@archiver.kernel.org>; Mon, 10 Jul 2023 14:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9bQRbugBjoctZA54U4qHlBHdeN0s/wx5e8+vpREwUCg=; b=zF8qWQxtpI3mZn
	HPxkN9URVMH2SbPhYXveeHkiyO1+uu7MkCq8xAwvhpQC8x3ldhMv/ip6h+sXz+zLO5/+zmGxTvDqz
	miS/nDe1Ukvt3L65ZeI7pcofzxjGuPCGMUcGec8PsOLYOwNWZiPmbthiHuOK/JkDuJy8d6FoO8jE6
	vkL9MLBpzV2t/WG1q/OP9r8Rd7eZmS6yIvptk/my2U1a9obLBZvhFqrkapZ6w2swvTULA3l+0+OC5
	hzPEYMF07MNwA0C+pkPUCY66Kzcldk6ek2E/eAFrffWZ6ElCWAJTcLBg9nPOckCPzuYn7POKGYkY5
	3Y/Zad6N+aCjHccgE5QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIs8v-00Bv5u-0U;
	Mon, 10 Jul 2023 14:45:37 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIs8t-00Bv5N-0o
	for linux-phy@lists.infradead.org;
	Mon, 10 Jul 2023 14:45:36 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 36AEjV2s066492;
	Mon, 10 Jul 2023 09:45:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1689000331;
	bh=10128ZciQXGR8XCaEAHZNiZaXB9rJJgJ+eH+I2zdmRc=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=c8sophcCrBuII7b1Oae7Q1AYHsJiqNtRmtoVwK5xeoqIPFdzsrqK+FF32buntJo7H
	 Fn1CGRiVaB55I2/sPE1CpfUbORZwr6SiWHkLY1NDzsPq5Eiw/9UIrU38z8MFQ2BLFC
	 Gk/4CkccqtAGG6x3xKJY/V2rr741Pn+WlugD+N3Q=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 36AEjVQ0034374
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 10 Jul 2023 09:45:31 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 10
 Jul 2023 09:45:31 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 10 Jul 2023 09:45:31 -0500
Received: from [10.250.32.50] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 36AEjVpG048928;
	Mon, 10 Jul 2023 09:45:31 -0500
Message-ID: <0d28eb47-a564-2155-875b-5c8dc8aa806e@ti.com>
Date: Mon, 10 Jul 2023 09:45:30 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] phy: ti: gmii-sel: Allow parent to not be syscon node
Content-Language: en-US
To: Roger Quadros <rogerq@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon
 Vijay Abraham I <kishon@kernel.org>,
        Siddharth Vadapalli <s-vadapalli@ti.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20230515195922.617243-1-afd@ti.com>
 <3c7d7d0b-b859-8921-952c-870c9474969c@kernel.org>
From: Andrew Davis <afd@ti.com>
In-Reply-To: <3c7d7d0b-b859-8921-952c-870c9474969c@kernel.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_074535_378218_E7DC63DF 
X-CRM114-Status: GOOD (  23.62  )
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

On 5/16/23 1:33 PM, Roger Quadros wrote:
> Hi Andrew,
> 
> On 15/05/2023 22:59, Andrew Davis wrote:
>> If the parent node is not a syscon type, then fallback and check
>> if we can get a regmap from our own node. This no longer forces
>> us to make the parent of this node a syscon node when that might
>> not be appropriate.
> 
> Trying to understand the motive for this and if it is better to
> introduce a "syscon = <&syscon_node>" property instead which
> makes it fool proof for all cases.
> 

My motivation is to reduce our overuse of syscon nodes, IMHO syscon
is almost always a broken design in DT and goes against the standard
usage.

Some drivers like this one force us to make the parent node a syscon
device, even what that is not needed otherwise (the register space is
standalone and the standard DT "reg" property can be used to describe
the device register space).

Using "syscon = <&syscon_node>" could be a useful option for devices
when syscon is actually needed. But I think that should only be used
when the whole node itself cannot be made a child of the syscon node,
making it a child when we can is better for DT organization vs. having
a bunch of top-level nodes that point around to their register spaces
with phandles.

Andrew

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

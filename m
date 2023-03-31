Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BE04C6FD18
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 07:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3KRA/WDRXed7tbJ9pvpj7itgtYVsXb89l/FCtdrF34=; b=V06kRKGerF+KJr
	CLOxmREIQGG7FTb+5n8xjGGviAwmodG2rPVy4icN9dPegnTh9z9boV8sb11P9U8IeuL6rYEH2E0eY
	fVo1Qqzb5IVf4F1FNN7UK7XmGwr13uQW0pNFPg2J4DMXEYcX+ZBf0/qPS7FDtILup635fo2Pfszmv
	EFdQeQcsr65I+EkGIWyHh574GPP8+/NplCkmddAz1SebruQj1VUHUghUy95tRYkvuu/ouRityv+aZ
	xfURqQioJpLUVBwgY4gpxwpPoU86Hb9HErsCjMe2Mdx7ro3/m1SevExDDboN7kVl+d7wWVb9MikPP
	Nzr0No1Tayy44ghTeYGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pi9Zp-006F7b-0p;
	Fri, 31 Mar 2023 07:53:37 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pi9Zg-006F5I-0h;
	Fri, 31 Mar 2023 07:53:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 5F67EB82CAE;
	Fri, 31 Mar 2023 07:53:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B79FC433EF;
	Fri, 31 Mar 2023 07:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680249203;
	bh=8FH7mQ2u8+g8iflRXHsu0r4l7PSoNLbMnI2avjCa0Cw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FB/Lnnk6X8luI2tmvT8OyUFvyvISzOtCnXXbzJCegdjPVDnknHhKAc0Iek8rmnskJ
	 wsH8OIk83JcnRxIfEuWN+5F9YHfId1hcp2022hznAQGqmsliC1w+CE/aXMQ7eW6g9Z
	 BshtmaZEn1z7Ug/bB7Xuor+vZst9wBP1bS3HQkPhLzhGzfdAOZJTWI1oL7LEcphpwc
	 ePtQgP+Twia+u2xX8127gnMAZA6wxtikAc/KqwLKPEaEfzTb4QN7oU79eWet17XvhN
	 NSvt/33lrTN22G3mN2bxRyMRsZbjICKGAVvEy734zEqpEe685N6RAkp+hejr38xkq/
	 7QbBjknPNW2qw==
Message-ID: <10ad789e-3dcc-0c74-5426-87f4a53d6fd0@kernel.org>
Date: Fri, 31 Mar 2023 10:53:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] phy: ti: gmii-sel: Add support for CPSW9G GMII SEL in
 J784S4
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 srk@ti.com
References: <20230331062521.529005-1-s-vadapalli@ti.com>
 <20230331062521.529005-2-s-vadapalli@ti.com>
 <cfcdb25b-5426-2532-ab8c-224a5e33baf3@kernel.org>
 <b5e426fb-8af9-c372-1076-63194e4de781@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <b5e426fb-8af9-c372-1076-63194e4de781@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_005333_830101_42BF0C8C 
X-CRM114-Status: GOOD (  15.26  )
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



On 31/03/2023 10:49, Siddharth Vadapalli wrote:
> Hello Roger,
> 
> On 31/03/23 13:15, Roger Quadros wrote:
>>
>>
>> On 31/03/2023 09:25, Siddharth Vadapalli wrote:
>>> Each of the CPSW9G ports in TI's J784S4 SoC support modes such as QSGMII.
>>>
>>> Add a new compatible for it and allow the usage of "ti,qsgmii-main-ports"
>>> property for J784S4.
>>>
>>> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
>>> ---
>>>  drivers/phy/ti/phy-gmii-sel.c | 13 +++++++++++++
>>>  1 file changed, 13 insertions(+)
>>>
>>> diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
>>> index c87118cb2af9..fba5c0c0771c 100644
>>> --- a/drivers/phy/ti/phy-gmii-sel.c
>>> +++ b/drivers/phy/ti/phy-gmii-sel.c
>>> @@ -235,6 +235,15 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j721e = {
>>>  	.num_qsgmii_main_ports = 2,
>>>  };
>>>  
>>> +static const
>>> +struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j784s4 = {
>>
>> Please make it into one line
> 
> I was simply following the convention used for other SoC data structs in the
> same file. Please let me know why this has to be an exception and I will post
> the v2 series with the change accordingly.

Not that much of a deal. ;)

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

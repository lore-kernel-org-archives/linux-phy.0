Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57BEDC197A0
	for <linux-phy@archiver.kernel.org>; Fri, 17 Nov 2023 01:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=gS1yX3G21Tcf2qptJKusG1dGYnSg5mbTf2/tZ2ehdqk=; b=hZGG0dBuuoARmLn73+Vd7NGHO+
	aWlm6krncYjVmCnXYKMs4RZh78IzSNjn/ehu4TFwEGljcvn6cCF15pfZiyo59GTELRivtIGH8Qm8X
	HJnaV1OQ6l31qraIM9rJPpt4PrIkZ+cIR68UCUajs1afGYyRSxuIKfezqjR7Sf4/ReSDA6YFb55Rg
	c01zKhez8jbdv9pJ7s4K4JYd9o+HnG4xG19Q6wHhGCIPk/I3Rmrx8zq8kLL/9r3PRDGNKD70IoQ7y
	ctCzI7ZLug5MGlBR1+rSXbEIE6fBQxqPWEMReJRDgH4QMRY/vJYUMP1ru6svnZkGZ/22y2aR1ky55
	i2GbixGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3nZN-005Ofn-2t;
	Fri, 17 Nov 2023 01:22:53 +0000
Received: from [42.101.60.195] (helo=mail.nfschina.com)
	by bombadil.infradead.org with smtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3nZJ-005Of5-3B
	for linux-phy@lists.infradead.org;
	Fri, 17 Nov 2023 01:22:52 +0000
Received: from [172.30.11.106] (unknown [180.167.10.98])
	by mail.nfschina.com (Maildata Gateway V2.8.8) with ESMTPSA id 04EF860107C73;
	Fri, 17 Nov 2023 09:22:25 +0800 (CST)
Message-ID: <2722c6df-9247-3d8b-272e-9810d5e19c4b@nfschina.com>
Date: Fri, 17 Nov 2023 09:22:25 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH 1/2] phy: mapphone-mdm6600: fix an error code problem in
 phy_mdm6600_device_power_on
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>
Cc: kishon@kernel.org, u.kleine-koenig@pengutronix.de,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org
X-MD-Sfrom: suhui@nfschina.com
X-MD-SrcIP: 180.167.10.98
From: Su Hui <suhui@nfschina.com>
In-Reply-To: <ZVX8W8+cM0U4j6Wh@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_172250_217277_A52875EA 
X-CRM114-Status: GOOD (  12.50  )
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

On 2023/11/16 19:26, Vinod Koul wrote:
> On 20-10-23, 17:14, Su Hui wrote:
>> When wait_for_completion_timeout() failed, error is assigned
>> '-ETIMEDOUT'. But this error code is never used. Return '-ETIMEDOUT'
>> directly to fix this problem.
> Where is patch 2/2?

Hi,

Sorry, I send a error patch 2/2 because of my carelessness.

This is the address of patch 2/2 which is irrelevant about this patch.

https://lore.kernel.org/all/7f81d365-0440-de01-8be4-9c8d3ab9d69c@nfschina.com/

Su Hui

>> Signed-off-by: Su Hui <suhui@nfschina.com>
>> ---
>>
>> I'm not sure that return directly is true or not, maybe need some
>> process before return directly.
>>
>>   drivers/phy/motorola/phy-mapphone-mdm6600.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/motorola/phy-mapphone-mdm6600.c
>> index 1d567604b650..e84e3390bff0 100644
>> --- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
>> +++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
>> @@ -421,8 +421,8 @@ static int phy_mdm6600_device_power_on(struct phy_mdm6600 *ddata)
>>   			dev_info(ddata->dev, "Powered up OK\n");
>>   	} else {
>>   		ddata->enabled = false;
>> -		error = -ETIMEDOUT;
>>   		dev_err(ddata->dev, "Timed out powering up\n");
>> +		return -ETIMEDOUT;
>>   	}
>>   
>>   	/* Reconfigure mode1 GPIO as input for OOB wake */
>> -- 
>> 2.30.2

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

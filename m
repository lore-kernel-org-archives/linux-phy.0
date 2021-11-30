Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BBC0C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 30 Nov 2021 05:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4qSr8f4wdX0rCdLMfyuu8LdqY0W3urEcifrHOJqOEXc=; b=2v1fiPH3ZjzIovCFVfJfHXhV3T
	tw+VkZsK7WKyW6OUuhb6AbgfxiY1qZReOob77C+0fRQUnishGIVYLs0KdPrRi04vXOVpJ2+vQ3C9g
	Nrw+lz9zFgOYTDxVzny1/Tz+PInOC03ZCFZqerZrRBcFrK4I0UycMAHGgvHIYRR0h24IZ/CPRl8sM
	IDp1pBXNAz0g3HPs/UfSvcR9Q2EzeWV4RIlo0O9uzPnC0lqIWBgoTYuMNesG0QOmW/C+DqWVWAqtT
	FRqavTtDEHwtiDqxAmgTDFt4Wzhjmv0cBguspxakVcPM515x+JHTwia6HFKrhkUwYYHGG5r5FXgfA
	k/iZ2oIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mrvwJ-003fOV-Ul; Tue, 30 Nov 2021 05:44:27 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mrvwH-003fNW-5s
 for linux-phy@lists.infradead.org; Tue, 30 Nov 2021 05:44:26 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1AU5i82r009485;
 Mon, 29 Nov 2021 23:44:08 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1638251048;
 bh=U6tAbU1FUjkuFjEE5Ogrgs0QNSo6DK/H8GNVY18hpVU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=EM0mAtEdjfUoBLU3hXsJZhN0IMOglegG141qYAyUdbm+hS4pjFaVf78BXiixR5CjO
 1iJTI9E8j0tCbekCeoW2TRQcsGpKfX8lE5kZglelc/s0n6p2zp2QZK7tK138pZeSep
 4QVlgV+VKfkAvfVrr6WZmxfzSOyU64d4Q1c2PYG0=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1AU5i81E021519
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 29 Nov 2021 23:44:08 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Mon, 29
 Nov 2021 23:44:08 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Mon, 29 Nov 2021 23:44:08 -0600
Received: from [10.250.232.185] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1AU5i4CN015816;
 Mon, 29 Nov 2021 23:44:04 -0600
Subject: Re: [PATCH RFC v3 3/4] mux: Add support for reading mux enable state
 from DT
To: Peter Rosin <peda@axentia.se>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>, Rob
 Herring <robh+dt@kernel.org>, Wolfgang Grandegger <wg@grandegger.com>, Marc
 Kleine-Budde <mkl@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-can@vger.kernel.org>, <linux-phy@lists.infradead.org>
References: <20211123081222.27979-1-a-govindraju@ti.com>
 <20211123081222.27979-4-a-govindraju@ti.com>
 <5a530528-27a9-f5c8-abd4-025897a1c197@axentia.se>
From: Aswath Govindraju <a-govindraju@ti.com>
Message-ID: <06126316-53ef-6c32-2fbe-cff68e1ea064@ti.com>
Date: Tue, 30 Nov 2021 11:14:03 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <5a530528-27a9-f5c8-abd4-025897a1c197@axentia.se>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211129_214425_398663_45482780 
X-CRM114-Status: GOOD (  28.26  )
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

Hi Peter,

On 25/11/21 7:22 pm, Peter Rosin wrote:
> Hi!
> 
> On 2021-11-23 09:12, Aswath Govindraju wrote:
>> In some cases, we might need to provide the state of the mux to be set for
>> the operation of a given peripheral. Therefore, pass this information using
>> the second argument of the mux-controls property.
>>
>> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
>> ---
>>  drivers/mux/core.c           | 146 ++++++++++++++++++++++++++++++++++-
>>  include/linux/mux/consumer.h |  19 ++++-
>>  include/linux/mux/driver.h   |  13 ++++
>>  3 files changed, 173 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/mux/core.c b/drivers/mux/core.c
>> index 22f4709768d1..9622b98f9818 100644
>> --- a/drivers/mux/core.c
>> +++ b/drivers/mux/core.c
>> @@ -370,6 +370,29 @@ int mux_control_select_delay(struct mux_control *mux, unsigned int state,
>>  }
>>  EXPORT_SYMBOL_GPL(mux_control_select_delay);
>>  

[...]

>>  }
>>  
>>  /**
>> - * mux_control_get() - Get the mux-control for a device.
>> + * mux_get() - Get the mux-control for a device.
>>   * @dev: The device that needs a mux-control.
>>   * @mux_name: The name identifying the mux-control.
>> + * @enable_state: The variable to store the enable state for the requested device
>>   *
>>   * Return: A pointer to the mux-control, or an ERR_PTR with a negative errno.
>>   */
>> -struct mux_control *mux_control_get(struct device *dev, const char *mux_name)
>> +static struct mux_control *mux_get(struct device *dev, const char *mux_name,
>> +				   unsigned int *enable_state)
> 
> s/enable_state/state/ (goes for all of the patch).
> 
>>  {
>>  	struct device_node *np = dev->of_node;
>>  	struct of_phandle_args args;
>> @@ -481,8 +545,7 @@ struct mux_control *mux_control_get(struct device *dev, const char *mux_name)
>>  	if (!mux_chip)
>>  		return ERR_PTR(-EPROBE_DEFER);
>>  
>> -	if (args.args_count > 1 ||
> 
> It is inconsistent to allow more than 2 args, but then only allow
> digging out the state from the 2nd arg if the count is exactly 2.
> 
>> -	    (!args.args_count && (mux_chip->controllers > 1))) {
>> +	if (!args.args_count && mux_chip->controllers > 1) {
>>  		dev_err(dev, "%pOF: wrong #mux-control-cells for %pOF\n",
>>  			np, args.np);
>>  		put_device(&mux_chip->dev);
>> @@ -500,8 +563,25 @@ struct mux_control *mux_control_get(struct device *dev, const char *mux_name)
>>  		return ERR_PTR(-EINVAL);
>>  	}
>>  
>> +	if (args.args_count == 2)
>> +		*enable_state = args.args[1];
>> +
> 
> With the suggested binding in my comment for patch 1/4, you'd need to do
> either
> 
> 	ret = of_parse_phandle_with_args(np,
> 					 "mux-controls", "#mux-control-cells",
> 					 index, &args);
> 
> or
> 
> 	ret = of_parse_phandle_with_args(np,
> 					 "mux-states", "#mux-state-cells",
> 					 index, &args);
> 
> depending on if the mux_get helper gets a NULL (enable_)state pointer or a "real"
> address, and then...
> 


Sorry, while trying to implement the above method, I came across one
more question. So, in a given consumer DT node we will be either having
only mux-states or mux-controls right? How would we take care of the
condition when we would want to set the state of a given line in the
controller. Especially when a single mux chip is used by multiple
consumers each using a different line. Wouldn't we require both
mux-controls and mux-states in that case? So, shouldn't the
implementation be such that we need to first read mux-controls and then
based whether the enable_state is NULL, we read mux-states?

Just to add more clarity, if we go about this method then we would have
both mux-controls and mux-states in the consumer DT node when we want to
specify the state.

Thanks,
Aswath

>>  	return &mux_chip->mux[controller];
>>  }
>> +
>> +/**
>> + * mux_control_get() - Get the mux-control for a device.
>> + * @dev: The device that needs a mux-control.
>> + * @mux_name: The name identifying the mux-control.
>> + *
>> + * Return: A pointer to the mux-control, or an ERR_PTR with a negative errno.
>> + */
>> +struct mux_control *mux_control_get(struct device *dev, const char *mux_name)
>> +{

[...]


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

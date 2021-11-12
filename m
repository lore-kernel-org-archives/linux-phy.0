Return-Path: <SRS0=yge3=P7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A36C8C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 12 Nov 2021 13:49:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D64B60F93
	for <linux-phy@archiver.kernel.org>; Fri, 12 Nov 2021 13:49:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6D64B60F93
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DQGtx4BxWq9UNyFHRIThisQYIEUZJkI1UcjI9gY6dwo=; b=GeqRQrGNbGxTz9bC7zclIAjcIC
	QRHzkrlXpamn0gnwd/8+jHSA/qOK8anqBDzZVdKJ3ZDkTomIr5/j2oztnU8S/waep+d9sf5dFK1QV
	pVgLnQ8n3yWa1Pjlxlaq0Y5yX3MyTWYko0QeclVZAH5OQqOU+vmCA6rs0UKZWB+ovKCLjQolNCUfT
	E2ZwnalhKoR+R90WO6T5MNNT8lYrqzgOs+xP/5SWUTxtPdWUKSA9ykp4L6tmZ82YI+sUyOsjI6Cud
	8SvhrDgz1FN2rrUiMCvHzurkSKTmdGA46L9gBJnuP7KgJyb7Ihv0DlR95C9m2Ax3LLAoeErgmdWmf
	kucIhpFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mlWw9-00AeJr-Tn; Fri, 12 Nov 2021 13:49:49 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mlWvT-00Adyg-Er
 for linux-phy@lists.infradead.org; Fri, 12 Nov 2021 13:49:09 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1ACDmxPe037162;
 Fri, 12 Nov 2021 07:48:59 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1636724939;
 bh=9RemVQAEh/lpbGewLitahIriAr6pZ2qjF/8p+5UfOFo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Y1Hn+O6Y4kLde+84VKJYpSL97AS66FWipwAo6rez7GcZKKvXIoLvqqxZ45iGLG3kX
 kNez4CW9h/x4IBgr42D9bXUfwPmv+R3JOIJkJIPg3vrWeOI3bDv+e+UcVbUR7u6Gxx
 qnSsFz0Z45xYg5YstgxVOR8b/VwbESbumq6HwUac=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1ACDmxql019477
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 12 Nov 2021 07:48:59 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Fri, 12
 Nov 2021 07:48:59 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Fri, 12 Nov 2021 07:48:59 -0600
Received: from [10.250.232.124] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1ACDmtxd017180;
 Fri, 12 Nov 2021 07:48:56 -0600
Subject: Re: [PATCH RFC 2/2] phy: phy-can-transceiver: Add support for setting
 mux
To: Marc Kleine-Budde <mkl@pengutronix.de>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Kishon Vijay Abraham I
 <kishon@ti.com>, Nishanth Menon <nm@ti.com>, Wolfgang Grandegger
 <wg@grandegger.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring
 <robh+dt@kernel.org>,
 <linux-can@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 Peter Rosin <peda@axentia.se>
References: <20211111164313.649-1-a-govindraju@ti.com>
 <20211111164313.649-3-a-govindraju@ti.com>
 <20211112084027.b2t2beqiiodnwjtv@pengutronix.de>
From: Aswath Govindraju <a-govindraju@ti.com>
Message-ID: <085ec3c0-75c6-f3c2-9999-348098fd88f9@ti.com>
Date: Fri, 12 Nov 2021 19:18:54 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211112084027.b2t2beqiiodnwjtv@pengutronix.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211112_054907_633410_F2FD2E5F 
X-CRM114-Status: GOOD (  29.73  )
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

Hi Marc,

On 12/11/21 2:10 pm, Marc Kleine-Budde wrote:
> On 11.11.2021 22:13:12, Aswath Govindraju wrote:
>> On some boards, for routing CAN signals from controller to transceiver,
>> muxes might need to be set. Therefore, add support for setting the mux by
>> reading the mux-controls property from the device tree node.
>>
>> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
>> ---
>>  drivers/phy/phy-can-transceiver.c | 21 +++++++++++++++++++++
>>  1 file changed, 21 insertions(+)
>>
>> diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
>> index 6f3fe37dee0e..3d8da5226e27 100644
>> --- a/drivers/phy/phy-can-transceiver.c
>> +++ b/drivers/phy/phy-can-transceiver.c
>> @@ -10,6 +10,7 @@
>>  #include<linux/module.h>
>>  #include<linux/gpio.h>
>>  #include<linux/gpio/consumer.h>
>> +#include <linux/mux/consumer.h>
>>  
>>  struct can_transceiver_data {
>>  	u32 flags;
>> @@ -21,13 +22,22 @@ struct can_transceiver_phy {
>>  	struct phy *generic_phy;
>>  	struct gpio_desc *standby_gpio;
>>  	struct gpio_desc *enable_gpio;
>> +	struct mux_control *mux_ctrl;
>>  };
>>  
>>  /* Power on function */
>>  static int can_transceiver_phy_power_on(struct phy *phy)
>>  {
>> +	int ret;
>>  	struct can_transceiver_phy *can_transceiver_phy = phy_get_drvdata(phy);
>>  
>> +	if (can_transceiver_phy->mux_ctrl) {
>> +		ret = mux_control_select(can_transceiver_phy->mux_ctrl, 1);
> 
> Hard coding the "1" looks wrong here. I have seen some boards where you
> can select between a CAN-2.0 and a single wire CAN transceiver with a
> mux. So I think we cannot hard code the "1" here.
> 

Yes, as you mentioned it is not ideal to hard code "1". I feel that, it
would be much better to read the state of the mux to be set from the
mux-controls property. The issue that I see with this approach is that
the current implementation in the mux framework only allows for one
argument, which is for indicating the line to be toggled in the mux. If
more arguments are added then an error is returned from the
"mux_control_get". I am not sure why this limitation was added.


>> +		if (ret) {
>> +			dev_err(&phy->dev, "Failed to select CAN mux: %d\n", ret);
>> +			return ret;
>> +		}
>> +	}
>>  	if (can_transceiver_phy->standby_gpio)
>>  		gpiod_set_value_cansleep(can_transceiver_phy->standby_gpio, 0);
>>  	if (can_transceiver_phy->enable_gpio)
>> @@ -45,6 +55,8 @@ static int can_transceiver_phy_power_off(struct phy *phy)
>>  		gpiod_set_value_cansleep(can_transceiver_phy->standby_gpio, 1);
>>  	if (can_transceiver_phy->enable_gpio)
>>  		gpiod_set_value_cansleep(can_transceiver_phy->enable_gpio, 0);
>> +	if (can_transceiver_phy->mux_ctrl)
>> +		mux_control_deselect(can_transceiver_phy->mux_ctrl);
>>  
>>  	return 0;
>>  }
>> @@ -95,6 +107,15 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
>>  	match = of_match_node(can_transceiver_phy_ids, pdev->dev.of_node);
>>  	drvdata = match->data;
>>  
>> +	if (of_property_read_bool(dev->of_node, "mux-controls")) {
> 
> Is this the proper way of doing this? Looks like we need a
> devm_mux_control_get_optional(), which doesn't return a -ENODEV if the
> device doesn't exist.
> 
> Cc'ed Peter Rosin.
> 
>> +		struct mux_control *control;
>> +
>> +		control = devm_mux_control_get(dev, NULL);
>> +		if (IS_ERR(control))
>> +			return PTR_ERR(control);
> 
> What about making use of dev_err_probe()?
> 

Sure, I will make this change.

Thank you for the comments.

Regards,
Aswath

>> +		can_transceiver_phy->mux_ctrl = control;
>> +	}
>> +
>>  	phy = devm_phy_create(dev, dev->of_node,
>>  			      &can_transceiver_phy_ops);
>>  	if (IS_ERR(phy)) {
>> -- 
>> 2.17.1
>>
>>
> 
> Regards,
> Marc
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

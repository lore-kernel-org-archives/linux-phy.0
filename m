Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EBD8C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 22 Nov 2021 13:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1xRID7RKWB78zzzALtCnXul6l0le6rnjFG1mmAXQad0=; b=TA1GgV4RsB6VaLm+h/tFuOfRct
	nxf3MQ9rwI7R/jSmlPxyNJ4PQAgwK83ta/a0+UalA7FB3NST8Zy9v9WYLl9bsRjHxpxKsQMVRXmEs
	8VtfUKlINCtXGg6buDqZnlnmIAjceQi5vYsAExKYTqnOTIin4Nu6AwJYc8fzFSIeJJNnYprRm6C5y
	qKP/kV8CHxoBAV3u1GzWuyspwbzhV4ZmixoLJz3oEkF0e4aC8/1TW16/IZ+IELC8AOUcjtmscgG57
	6ZOxOT1oNY/PdYUjcCWSPxn4tQauO1ARtbcmXnPqQNMEmPi3Ymq7BE7ltLv/dQyYFjE9LoQWY1NX9
	8R1kTH5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp9F0-00Gccr-Qc; Mon, 22 Nov 2021 13:20:14 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp9Ex-00Gcbv-Gy
 for linux-phy@lists.infradead.org; Mon, 22 Nov 2021 13:20:13 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1AMDK4U5122776;
 Mon, 22 Nov 2021 07:20:05 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1637587205;
 bh=xR2dHWq5eD7uB7AO8M+WdnBJwMa3yb4Ssmof4RBKTaE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=NzzNRwRKz+4xF2X9H63RvygmSwwFVYTm8z41KX+W6p0qb2sxKqwOdK0oXLlvnXCg6
 ln0QTf4I05WteG6tpBINudNy4ZCBnQGzaelbDZa6ffj/ey4WfzE9WikVLWkajtFWTK
 25jRfVVMso4bd/1g8d33+UKJ39LpIl8BfhGzW2tU=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1AMDK4ER053208
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Nov 2021 07:20:04 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Mon, 22
 Nov 2021 07:20:04 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Mon, 22 Nov 2021 07:20:04 -0600
Received: from [10.250.232.185] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1AMDK0ON113678;
 Mon, 22 Nov 2021 07:20:01 -0600
Subject: Re: [PATCH RFC v2 4/4] phy: phy-can-transceiver: Add support for
 setting mux
To: Marc Kleine-Budde <mkl@pengutronix.de>
CC: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Peter
 Rosin <peda@axentia.se>, Rob Herring <robh+dt@kernel.org>, Wolfgang
 Grandegger <wg@grandegger.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-can@vger.kernel.org>, <linux-phy@lists.infradead.org>
References: <20211122125624.6431-1-a-govindraju@ti.com>
 <20211122125624.6431-5-a-govindraju@ti.com>
 <20211122131221.i3djuarw2ae5lbdk@pengutronix.de>
From: Aswath Govindraju <a-govindraju@ti.com>
Message-ID: <47a0f27f-4d44-cc8f-f2ef-0919f38843bf@ti.com>
Date: Mon, 22 Nov 2021 18:50:00 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211122131221.i3djuarw2ae5lbdk@pengutronix.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_052011_682292_CE1FBB44 
X-CRM114-Status: GOOD (  28.16  )
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

On 22/11/21 6:42 pm, Marc Kleine-Budde wrote:
> On 22.11.2021 18:26:24, Aswath Govindraju wrote:
>> On some boards, for routing CAN signals from controller to transceiver,
>> muxes might need to be set. Therefore, add support for setting the mux by
>> reading the mux-controls property from the device tree node.
>>
>> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
>> ---
>>  drivers/phy/phy-can-transceiver.c | 26 ++++++++++++++++++++++++++
>>  1 file changed, 26 insertions(+)
>>
>> diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
>> index 6f3fe37dee0e..15056b9d68ba 100644
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
>> @@ -21,13 +22,23 @@ struct can_transceiver_phy {
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
>> +		ret = mux_control_select(can_transceiver_phy->mux_ctrl,
>> +					 mux_control_enable_state(can_transceiver_phy->mux_ctrl));
>> +		if (ret) {
>> +			dev_err(&phy->dev, "Failed to select CAN mux: %d\n", ret);
>> +			return ret;
>> +		}
>> +	}
>>  	if (can_transceiver_phy->standby_gpio)
>>  		gpiod_set_value_cansleep(can_transceiver_phy->standby_gpio, 0);
>>  	if (can_transceiver_phy->enable_gpio)
>> @@ -45,6 +56,8 @@ static int can_transceiver_phy_power_off(struct phy *phy)
>>  		gpiod_set_value_cansleep(can_transceiver_phy->standby_gpio, 1);
>>  	if (can_transceiver_phy->enable_gpio)
>>  		gpiod_set_value_cansleep(can_transceiver_phy->enable_gpio, 0);
>> +	if (can_transceiver_phy->mux_ctrl)
>> +		mux_control_deselect(can_transceiver_phy->mux_ctrl);
>>  
>>  	return 0;
>>  }
>> @@ -95,6 +108,19 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
>>  	match = of_match_node(can_transceiver_phy_ids, pdev->dev.of_node);
>>  	drvdata = match->data;
>>  
>> +	if (of_property_read_bool(dev->of_node, "mux-controls")) {
>> +		struct mux_control *control;
>> +		int ret;
>> +
>> +		control = devm_mux_control_get(dev, NULL);
>> +		if (IS_ERR(control)) {
>> +			ret = PTR_ERR(control);
>> +			dev_err_probe(&pdev->dev, ret, "failed to get mux\n");
>> +			return PTR_ERR(control);
>> +		}
>> +		can_transceiver_phy->mux_ctrl = control;
>> +	}
> 
> What about adding a devm_mux_control_get_optional(), which doesn't
> return a -ENODEV but a NULL pointer if the device doesn't exist?
> 

I tried adding it in the following manner,

+/**
+ * devm_mux_control_optional_get() - Optionally get the mux-control for a
+ *                                  device, with resource management.
+ * @dev: The device that needs a mux-control.
+ * @mux_name: The name identifying the mux-control.
+ *
+ * This differs from devm_mux_control_get in that if the mux does not
+ * exist, it is not considered an error and -ENODEV will not be
+ * returned. Instead the NULL is returned.
+ *
+ * Return: Pointer to the mux-control, or an ERR_PTR with a negative errno.
+ */
+struct mux_control *devm_mux_control_optional_get(struct device *dev,
+                                                 const char *mux_name)
+{
+       struct mux_control *mux_ctrl;
+
+       mux_ctrl = devm_mux_control_get(dev, mux_name);
+       if (PTR_ERR(mux_ctrl) == -ENOENT)
+                mux_ctrl = NULL;
+
+       return mux_ctrl;
+}
+EXPORT_SYMBOL_GPL(devm_mux_control_optional_get);
+

However the issue is that there is a print in mux_control_get()
 dev_err(dev, "%pOF: failed to get mux-control %s(%i)\n",

which is getting printed, whenever mux-controls property is not found.
Therefore, I was not sure about how to go about this issue and did not
implement it.

Thanks,
Aswath

> Marc
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

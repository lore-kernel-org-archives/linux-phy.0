Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C62E310F92E0
	for <linux-phy@archiver.kernel.org>; Tue, 31 Mar 2026 16:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MjY5jqzogCxouriyJI+vll0G/NdQTb5m6UhpV5h2WFY=; b=LFC1zadtGZKpLE
	xiefmHnb+U1nrAJaz92GMJFaYkw6ejUeJmAJkxcsQuNYCSD7kFLy+mfZiPutFGIoGU83JgRzsgeA4
	vuhKTx30L3U9uHvx9ML1CLHO7anGNTJsypN6/fcm3U9ecx2GCvUmVT6AF1XwLsmvMpBPQ0M9VAAbu
	ndRVudHXXyvxKAqihLLMGVmXOoXaENf4Zc1ZoNTVWkTq10rk1Y9sanQPlaQcUMTe7YqiZF+qXGM0P
	Ai4qmvY4DJI0EvnHoGZ3X3ILV1M+W6hPmhTeVZcFS5riFUyg0qG34fFY3T2o3hffvPrvvHtuj539g
	n1Dn7jDVurc5PeL3r+5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7c46-0000000DGei-1mME;
	Tue, 31 Mar 2026 16:35:42 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7c42-0000000DGeN-3ov4
	for linux-phy@lists.infradead.org;
	Tue, 31 Mar 2026 16:35:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 1160E2671D;
	Tue, 31 Mar 2026 18:35:37 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hkzXFXxmI-VP; Tue, 31 Mar 2026 18:35:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1774974936; bh=JNIdF6YFprLOSGOmgyQMSfnEajfhoSvqY+/nJiYsWQs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=IvRL2ZyWSVjvR85Rb67rNefcDhx1K6ALaW4yl2BSz6TDcWxObI5nKxDHYk++blFoB
	 jLxKSpuwBFW1egDH/fopjGXYeWECWRqRgSOUhdunshkuS5HIsJ4dlURAymh7BUoX3S
	 mNOCkYcMrtwbtlEzghY0mQ8+h2ONJOvFMMxobWNYmKxe50DZ8lQK6dr2dkNXrNYgVM
	 RUX/dHqs+GQRNFN+vtsYwLiRPDoIEV1cD6XmpBJ4QYFJP9MurgXv2KyWI8TOvBnak9
	 gMoHeTwZAD635k2+R4ntDHJDfey5eJxMtUDh5kEByniqz75ffQFYArUS2ZVOmM43oJ
	 LhNtJ6j54GD/w==
MIME-Version: 1.0
Date: Tue, 31 Mar 2026 16:35:36 +0000
From: Rustam Adilov <adilov@disroot.org>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Stanley
 Chang <stanley_chang@realtek.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Michael Zavertkin
 <misha.zavertkin@mail.ru>
Subject: Re: [PATCH v2 4/6] phy: realtek: usb2: introduce reset controller
 struct
In-Reply-To: <20260330213955.udqpa77ek7n4arsq@skbuf>
References: <20260327160638.15134-1-adilov@disroot.org>
 <20260327160638.15134-1-adilov@disroot.org>
 <20260327160638.15134-5-adilov@disroot.org>
 <20260327160638.15134-5-adilov@disroot.org>
 <20260330213955.udqpa77ek7n4arsq@skbuf>
Message-ID: <fcf97f76c391ca2a4eb0ecd195f63017@disroot.org>
X-Sender: adilov@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_093539_239236_66C0CDBA 
X-CRM114-Status: GOOD (  28.87  )
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

On 2026-03-30 21:39, Vladimir Oltean wrote:
> On Fri, Mar 27, 2026 at 09:06:36PM +0500, Rustam Adilov wrote:
>> In RTL9607C, there is so called "IP Enable Controller" which resemble
>> reset controller with reset lines and is used for various things like
>> USB, PCIE, GMAC and such.
>> 
>> Introduce the reset_control struct to this driver to handle deasserting
>> usb2 phy reset line.
>> 
>> Make use of the function devm_reset_control_array_get_optional_exclusive()
>> function to get the reset controller and since existing RTD SoCs don't
>> specify the resets we can have a cleaner code.
>> 
>> Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
>> Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
>> Signed-off-by: Rustam Adilov <adilov@disroot.org>
>> ---
>>  drivers/phy/realtek/phy-rtk-usb2.c | 12 ++++++++++++
>>  1 file changed, 12 insertions(+)
>> 
>> diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
>> index e65b8525b88b..070cba1e0e0a 100644
>> --- a/drivers/phy/realtek/phy-rtk-usb2.c
>> +++ b/drivers/phy/realtek/phy-rtk-usb2.c
>> @@ -17,6 +17,7 @@
>>  #include <linux/sys_soc.h>
>>  #include <linux/mfd/syscon.h>
>>  #include <linux/phy/phy.h>
>> +#include <linux/reset.h>
>>  #include <linux/usb.h>
>>  
>>  /* GUSB2PHYACCn register */
>> @@ -130,6 +131,7 @@ struct rtk_phy {
>>  	struct phy_cfg *phy_cfg;
>>  	int num_phy;
>>  	struct phy_parameter *phy_parameter;
>> +	struct reset_control *phy_rst;
>>  
>>  	struct dentry *debug_dir;
>>  };
>> @@ -602,6 +604,10 @@ static int do_rtk_phy_init(struct rtk_phy *rtk_phy, int index)
>>  	phy_parameter = &((struct phy_parameter *)rtk_phy->phy_parameter)[index];
>>  	phy_reg = &phy_parameter->phy_reg;
>>  
>> +	reset_control_deassert(rtk_phy->phy_rst);
> 
> LLM review says:
> 
> (less important)
> Can reset_control_deassert() fail here? If there is a hardware communication
> error with the reset controller, should this check the return value and
> propagate the error up instead of proceeding to configure the PHY?
> Additionally, since the exclusive reset line is deasserted here, does this
> code need a corresponding reset_control_assert() in the driver's teardown
> or exit path? Leaving the IP block permanently enabled after shutdown could
> lead to power leaks and prevent proper hardware re-initialization.

It realistically shouldn't fail. But I can add the return error for this.
And no, it doesn't need the reset_control_assert.

>> +
>> +	mdelay(5);
> 
> (more important)
> This code unnecessarily penalizes existing platforms. If rtk_phy->phy_rst
> is NULL (as on older platforms where the optional reset is not defined), the
> delay still executes.
> 
> Also, since PHY initialization callbacks run in a sleepable context, would it
> be better to use a sleep-based delay like usleep_range(5000, 6000) to yield
> the CPU instead of busy-waiting with mdelay(5)?

I can change mdelay to msleep and wrap it around something like if (rtk_phy->phy_rst).

>> +
>>  	if (phy_cfg->use_default_parameter) {
>>  		dev_dbg(rtk_phy->dev, "%s phy#%d use default parameter\n",
>>  			__func__, index);
>> @@ -1069,6 +1075,12 @@ static int rtk_usb2phy_probe(struct platform_device *pdev)
>>  
>>  	rtk_phy->num_phy = phy_cfg->num_phy;
>>  
>> +	rtk_phy->phy_rst = devm_reset_control_array_get_optional_exclusive(dev);
>> +	if (IS_ERR(rtk_phy->phy_rst)) {
>> +		dev_err(dev, "usb2 phy resets are not working\n");
>> +		return PTR_ERR(rtk_phy->phy_rst);
>> +	}
>> +
> 
> (still LLM review)
> If the reset controller driver is not yet ready, this will return
> -EPROBE_DEFER and print an error message to the kernel log.
> Should this use dev_err_probe() to silently handle probe deferral while
> correctly logging actual errors?

I can change it to dev_err_probe, no problem with that.

>>  	ret = parse_phy_data(rtk_phy);
>>  	if (ret)
>>  		goto err;
>> -- 
>> 2.53.0
>> 
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

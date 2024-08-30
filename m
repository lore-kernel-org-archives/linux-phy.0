Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A4B2CA0EFC
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 11:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ea2GkILHR/Ojueyoq1smMqujBR4+ucZnq3lvzEfhpGk=; b=iICMcBY/Yanjgm
	YGcn1KoJ1cb5AuhBIw1pRs0Dax1Jo3PT+aeED9VPzCx5a2+NJBplj0/+UHZPWl5waNno6giaEx3nN
	kktqROpzr2DtDeG6PAuE8vWHvwgc6xZfUZbvRGpiJrDlqQbs2nHVxXMU3lCJ3AmISMpDfApLyWKu8
	sz41T6jSXblRwP7rP3yUMCBkWIF9twpKiE9fweahDuKBdZVjGyAWMLxuoOhIySAezXdS4LCTSIHMi
	+gRMaeJyUQ+HWy7LQmG5tFId0BjlRkR37fMfxQEnxLpUj4r/pXWmZGlniTR36Z2wG2P0+usRsONGQ
	hVYtuO7zH0F6ESPf9vtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjzsg-000000065EK-3HMk;
	Fri, 30 Aug 2024 11:33:30 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjzrP-000000064wk-0Oo2
	for linux-phy@lists.infradead.org;
	Fri, 30 Aug 2024 11:32:13 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-42bb8cf8a5bso11034485e9.2
        for <linux-phy@lists.infradead.org>; Fri, 30 Aug 2024 04:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725017529; x=1725622329; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cSAdrIdIlTZrcDnp23HrKjtj5P2NCbxTQsvhsi+KTpM=;
        b=Jluu3YGyy8R77mN9K6Vf0AahvGpN9h4hqbpAQ0WTZ994x4PiUKHSNqXa0JrpaSd5+G
         a6SP1mV8IOFbXMijoi6ITycKDiLHHuGI45F/au17jRryjyn3QsjC8ffcRaefnn8lNViS
         dqhIINIdw6fdEycb7Jgy8PjJKo6ZNnInYfcsfQeqNJ9/s5SO3d6PvOh44BdHyIYUFcPs
         OfGSGJfyljme3ECofR0Qt4XM//nsv0HTdBCv6uttI4VnCj2PUg/YXOiLWZ9QGcjviFNP
         47xodCo/uo3Z0sctmDbSFalpzzidB3VB3yzLqhbslzLcPDWP9I0opTrk57WbpPQ2NGVT
         4WHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725017529; x=1725622329;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cSAdrIdIlTZrcDnp23HrKjtj5P2NCbxTQsvhsi+KTpM=;
        b=lhiTTfVxUSNGNfpiIPPzL/TTlT4DGVC9qVqKX9vPxGYlT9XYZWX3FKZjrnQljfvj6O
         IpoC8RsnGbbcIhm1eUbL6fzO0wBEXZfPf8ZMCG+0jTU3WGDyWfBhzmoEWt0bVZOaHGm9
         JPTbkz30F1E9HtR8MGhfzT1a9/x7gyJz/i7EoxYOQ+BjBKSWYxzBflLxa8kQrUqXUF5I
         /VG0PKYvCdGgeDuIW+QfphU6gZfaPYMmglOD7w5rQVKz5VAQyTbWUGUb0FE2ixqbl6aP
         +hfO7mRxwwVO/BwtfxEHWNOCgEDcZRSTjXUd2JUlYa2t6NRRzKgZ8ia9AmvWQ9ZKbQB2
         /qpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVeaIEBkic7k4KkN3eNaXcfr/uZeBtqw+5Xq9yVe+Clp+9VsyrKW1GFg85wmWjOzjtsIQ3tGegJOzk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxCeE0UYa4fwBp/qLe8a8XHkMzjcsOJ3DXW96isIcsWYWIQB6+5
	ANdI/lPgu8AgB59yzgctotOamzbnF+69RTZUY3M/4cYx1vEUuQydrFMrCu1d27s=
X-Google-Smtp-Source: AGHT+IGCHErgOXx4yyX533NrAWENK9/do0M6Sx35yhBOeVo9fVW0bDEo+wGDIbFLyg6RNTrJOm6ilA==
X-Received: by 2002:a05:600c:5110:b0:426:6696:9e50 with SMTP id 5b1f17b1804b1-42bb02591d1mr38716245e9.14.1725017528752;
        Fri, 30 Aug 2024 04:32:08 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42bb6deb2dcsm43774765e9.1.2024.08.30.04.32.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2024 04:32:08 -0700 (PDT)
Message-ID: <fa9b3449-ea3e-4482-b7eb-96999445cea5@tuxon.dev>
Date: Fri, 30 Aug 2024 14:32:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
Content-Language: en-US
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, gregkh@linuxfoundation.org, mturquette@baylibre.com,
 sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com,
 biju.das.jz@bp.renesas.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com>
 <99bef301-9f6c-4797-b47e-c83e56dfbda9@tuxon.dev>
 <CAPDyKFrVS2vpsJqTvjKCJ7ADqXc4D4k2eeCBsaK4T+=pXDnKUA@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAPDyKFrVS2vpsJqTvjKCJ7ADqXc4D4k2eeCBsaK4T+=pXDnKUA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_043211_190182_E55D83AA 
X-CRM114-Status: GOOD (  40.42  )
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



On 30.08.2024 13:14, Ulf Hansson wrote:
> On Fri, 30 Aug 2024 at 10:22, claudiu beznea <claudiu.beznea@tuxon.dev> wrote:
>>
>> Hi, Ulf,
>>
>> On 29.08.2024 18:26, Ulf Hansson wrote:
>>> On Thu, 22 Aug 2024 at 17:28, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>>>>
>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>
>>>> Hi,
>>>>
>>>> Series adds initial USB support for the Renesas RZ/G3S SoC.
>>>>
>>>> Series is split as follows:
>>>>
>>>> - patch 01/16           - add clock reset and power domain support for USB
>>>> - patch 02-04/16        - add reset control support for a USB signal
>>>>                           that need to be controlled before/after
>>>>                           the power to USB area is turned on/off.
>>>>
>>>>                           Philipp, Ulf, Geert, all,
>>>>
>>>>                           I detailed my approach for this in patch
>>>>                           04/16, please have a look and let me know
>>>>                           your input.
>>>
>>> I have looked briefly. Your suggested approach may work, but I have a
>>> few thoughts, see below.
>>>
>>> If I understand correctly, it is the consumer driver for the device
>>> that is attached to the USB power domain that becomes responsible for
>>> asserting/de-asserting this new signal. Right?
>>
>> Right!
>>
>>>
>>> In this regard, please note that the consumer driver doesn't really
>>> know when the power domain really gets powered-on/off. Calling
>>> pm_runtime_get|put*() is dealing with the reference counting. For
>>> example, a call to pm_runtime_get*() just makes sure that the PM
>>> domain gets-or-remains powered-on. Could this be a problem from the
>>> reset-signal point of view?
>>
>> It should be safe. From the HW manual I understand the hardware block is
>> something like the following:
>>
>>
>>                   USB area
>>          +-------------------------+
>>          |                         |
>>          | PHY --->USB controller  |
>> SYSC --> |  ^                      |
>>          |  |                      |
>>          | PHY reset               |
>>          +-------------------------+
>>
>> Where:
>> - SYSC is the system controller that controls the new signal for which
>>   I'm requesting opinions in this series
>> - PHY reset: is the block controlling the PHYs
>> - PHY: is the block controlling the USB PHYs
>> - USB controller: is the USB controller
>>
>> Currently, I passed the SYSC signal handling to the PHY reset driver; w/o
>> PHY reset the rest of the USB logic cannot work (neither PHY block nor USB
>> controller).
>>
>> Currently, the PHY reset driver call pm_runtime_resume_and_get() in probe
>> and pm_runtime_put() in remove. The struct reset_control_ops::{assert,
>> deassert} only set specific bits in registers (no pm_runtime* calls).
> 
> Thanks for clarifying!
> 
> For my understanding, in what register range do these bits belong? Is
> it the USB logic or in the PM domain logic, or something else.

The PHY reset block is an individual hardware block with its own address
space, clocks and reset signals.

The PHY block may reside in the same address space with USB controller but
it can provide PHY support for an external USB controller, something like:

+--------------------------+
|  PHY ---> USB controller |
|   |                      |
+---|----------------------+
   \/
+---------------+
| USB controller|
+---------------+

Because of this the PHY block is modeled in Linux as a standalone driver.

And SYSC is an individual HW block with its own address space. This is
where it resides the control of the signal for which I'm asking for directions.

> 
>>
>> The PHY driver is taking its PHY reset in probe and release it in remove().
>> With this approach the newly introduced SYSC signal will be
>> de-asserted/asserted only in the PHY reset probe/remove (either if it is
>> handled though PM domain or reset control signal).
>>
>> If the SYSC signal would be passed to all the blocks in the USB area (and
>> it would be handled though PM domains) it should be no problem either,
>> AFAICT, because of reference counting the pm_runtime_get|put*() is taking
>> care of. As the PHY reset is the root node the in the devices node tree for
>> USB the reference counting should work, too (I may miss something though,
>> please correct me if I'm wrong).
>>
>> If the SYSC signal would be handled though a reset control driver (as
>> proposed in this series) and we want to pass this reference to all the
>> blocks in the USB area then we can request the reset signal as shared and,
>> AFAIK, this is also reference counted. The devices node tree should help
>> with the order, too, if I'm not wrong.
> 
> Reference counting a reset signal sounds a bit weird to me, but I
> guess it can work. :-)
> 
> To sum up from my side;
> 
> As long as it's fine that we may end up asserting/de-asserting the
> reset-signal, without actually knowing if the PM domain is getting
> turn-on/off, 

With my understanding of it, that should not happen, at least not with the
current implementation of the drivers involved in this.

> then using a reset-control like what you propose seems
> okay to me.

I would prefer this option, too.

> 
> If not, there are two other options that can be considered I think.
> *) Using the genpd on/off notifiers, to really allow the consumer
> driver of the reset-control to know when the PM domain gets turned
> on/off.
> **) Move the entire reset handling into the PM domain provider, as it
> obviously knows when the domain is getting turned on/off.

This option is what I've explored, tested on my side.

I explored it in 2 ways:

1/ SYSC modeled as an individual PM domain provider (this is more
   appropriate to how HW manual described the hardware) with this the PHY
   reset DT node would have to get 2 PM domains handlers (one for the
   current PM domain provider and the other one for SYSC):

+               phyrst: usbphy-ctrl@11e00000 {
+                       compatible = "renesas,r9a08g045-usbphy-ctrl";
+                       reg = <0 0x11e00000 0 0x10000>;
+                       clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>;
+                       resets = <&cpg R9A08G045_USB_PRESETN>;
+                       power-domain-names = "cpg", "sysc";
+                       power-domains = <&cpg R9A08G045_PD_USB_PHY>, <&sysc
R9A08G045_SYSC_PD_USB>;
+                       #reset-cells = <1>;
+                       status = "disabled";
+
+                       usb0_vbus_otg: regulator-vbus {
+                               regulator-name = "vbus";
+                       };
+               };
+

and the PHY reset driver will get bulky with powering on/off both of these,
at least with my current implementation, something like (and the following
code is in probe()):

+       if (priv->set_power) {
+               priv->cpg_genpd_dev = dev_pm_domain_attach_by_name(dev, "cpg");
+               if (IS_ERR(priv->cpg_genpd_dev)) {
+                       dev_err_probe(dev, error, "Failed to attach CPG PM
domain!");
+                       error = PTR_ERR(priv->cpg_genpd_dev);
+                       goto err_pm_runtime_put;
+               }
+
+               priv->sysc_genpd_dev = dev_pm_domain_attach_by_name(dev,
"sysc");
+               if (IS_ERR(priv->sysc_genpd_dev)) {
+                       dev_err_probe(dev, error, "Failed to attach sysc PM
domain!");
+                       error = PTR_ERR(priv->sysc_genpd_dev);
+                       goto err_genpd_cpg_detach;
+               }
+
+               priv->cpg_genpd_dl = device_link_add(dev, priv->cpg_genpd_dev,
+                                                    DL_FLAG_PM_RUNTIME |
+                                                    DL_FLAG_STATELESS);
+               if (!priv->cpg_genpd_dl) {
+                       dev_err_probe(dev, -ENOMEM, "Failed to add CPG
genpd device link!");
+                       goto err_genpd_sysc_detach;
+               }
+
+               priv->sysc_genpd_dl = device_link_add(dev,
priv->sysc_genpd_dev,
+                                                     DL_FLAG_PM_RUNTIME |
+                                                     DL_FLAG_STATELESS);
+               if (!priv->sysc_genpd_dl) {
+                       dev_err_probe(dev, -ENOMEM, "Failed to add sysc
genpd device link!");
+                       goto err_genpd_cpg_dl_del;
+               }
+
+
+               error = pm_runtime_resume_and_get(priv->cpg_genpd_dev);
+               if (error) {
+                       dev_err_probe(dev, error, "Failed to runtime resume
cpg PM domain!");
+                       goto err_genpd_sysc_dl_del;
+               }
+
+               error = pm_runtime_resume_and_get(priv->sysc_genpd_dev);
+               if (error) {
+                       dev_err_probe(dev, error, "Failed to runtime resume
sysc PM domain!");
+                       goto err_genpd_cpg_off;
+               }
+       }
+

2/ SYSC being a PM domain provider parent of the CPG (current PM domain
   provider). With this the phy reset node is like proposed in this series
   (powered by CPG PM domain):

+               phyrst: usbphy-ctrl@11e00000 {
+                       compatible = "renesas,r9a08g045-usbphy-ctrl",
+                                    "renesas,rzg2l-usbphy-ctrl";
+                       reg = <0 0x11e00000 0 0x10000>;
+                       clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>;
+                       resets = <&cpg R9A08G045_USB_PRESETN>;
+                       power-domains = <&cpg R9A08G045_PD_USB_PHY>;
+                       #reset-cells = <1>;
+                       status = "disabled";
+
+                       usb0_vbus_otg: regulator-vbus {
+                               regulator-name = "vbus";
+                       };
+               };

And the USB SYSC PM domain is parent for all USB PM domains provided by CPG
(3 in this case). With this there should be some glue code b/w CPG (code in
drivers/clk/renesas/{rzg2l-cpg.c, r9a08g045-cpg.c}) and SYSC drivers (I
have something ugly locally, haven't tried to detach CPG code from SYSC
code at the moment).


> 
> Thanks again for your explanations!

Thank you, also, for looking into this,
Claudiu Beznea

> 
> Kind regards
> Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

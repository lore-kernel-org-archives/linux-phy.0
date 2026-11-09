Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19FE606A336
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 03:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qcXr43Ip;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=oBNP0vO9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0pg0fSMn32GJFEp42ooiyjOthXrOM9bh9RMFC8xVUvI=; b=qcXr43Ip8uOyMKM+mDDSHhnFBr
	WNeNgrHgTqQNYeRbJpGllPOS93+VHBHevYniJEGWzQKcf9buuPQWHIAQCv3jGvMBUYu89g4NWbhZB
	vHmno19LbK1DqdtUARMWOoiIDfkSPEqXCdsYl7es7C2K/8bTuFx2qzoJEMm+KGYcZXFARBTQuIeAw
	lFHVaxDh5VRpi5N9iOvqEuY6BHNSCCGGoZt5y58Ai6f5E9pbifHeUjtQ48Z++/XHuD2yKlynbwKzu
	PFga0mo42vVLoPgLl6ewx9DVcRMxQbTqIs1VxyN5C5akr0ICDuYs1V57e6Obu9SMarEfwZ8liwV9/
	fY++54zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQG0v-0000000HBll-0jzY;
	Mon, 09 Nov 2026 03:25:45 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQG0r-0000000HBkZ-1QbE
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 03:25:43 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-3ae1b34e0d2so196873a91.1
        for <linux-phy@lists.infradead.org>; Sun, 08 Nov 2026 19:25:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794194740; x=1794799540; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=z8n7JaPkB/Y4IA6cU4L2s+2dB40viJ/GtgSnJTcko/M=;
        b=oBNP0vO9Wl4Rw/mQb+ZDusoOxUzqo5035xejNA3UQlTLuU1VjQuOoGswrTRSWrkI5N
         Z8iNAQXkAHNHVXOSy32O9+tR3cXE4sjw89UlaCZcEZ0MDS+Pzu/c6+0FZPLiB6NWwJ6r
         eA+mE1rOC7CEwnpNlKLsEz5veazomXuOyVrvYJm2Tf3xZ6PgUMkaISsOwtx8IiM4GUij
         j9Oyvx2I1vWxXatew6FhiiENA2ciTvWc3XlpqwjRr/RmK5G9Z4BCBSSNma7bwCYqZyjW
         ttUZXl5DCN/0CilEnFreYAU00ipIsNPnErYS2qKNGFetbEKasWL1e4Sz1RLa3ZLDP0RB
         dg7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794194740; x=1794799540;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=z8n7JaPkB/Y4IA6cU4L2s+2dB40viJ/GtgSnJTcko/M=;
        b=wZtKTPUHfsECHLYEzN5bzYN5JlR4bK1q1rFkWaFLVIDObMcpWYSl8n9ZttfcGOBBNO
         Y4wE0i2ka7zVGeM+1Mu3XGFXo8lVfyhIZXJdwD7x30ZFZgPeYKXpOnfvVz+nbL0A8tXu
         9M0DZM+MfPAu3hLsLjsY7msZO+mCTKa2x6kX73shka4LiBJBIyhzv6U+flKlkl1Bxz2D
         +hOekGQpGWMLl8o6WT/V3tWUloymbgHPcmDkRGXr0umhXAkDbgjJx9F+a84GOLOuUn1C
         cgpMOpvxWBZGOr97wK9M2U3bgHWNoWf0nkPK4z9pLWnaWOPyarsN/2fclF3V3OKXehXD
         +4yw==
X-Forwarded-Encrypted: i=1; AL+hErFczrZn+8PSV50wDg/ncirQntS1Kc77uYKIuBE5YNnV2olZdtPL0vl/lAqN9SYi0vFjMRaaRqyhISM=@lists.infradead.org
X-Gm-Message-State: APuU4Z+nE67VzkWJHnT+lV/O+sbb4mxFD14IDCLzEOpfpCzqYU3Jjxy1
	Jj+OjntyqoBNNuEZ2ZqZYeuWSNbDwrI18etOMavPhNiiJuCX+CkoOf5z
X-Gm-Gg: AYBFou04WKHCegluxCtFyoVJp0jH/vJ7w3D+CFS8/joXVyNAUauvLAfbxWGL4TJfhBG
	Mzx2C2wcXor9yslZED6B6dxmrG4xlyhii8ZKhbhhh50BvT1CK5dtbKiENQwYV0eIdqzp46TmR8t
	2zhI7+H1cbnjmnvxDK5jucDQ3GPB6dTPFQ0Pi4DgVyw3jLW5mh6m6pZPysX00mvP43ubAruSqnq
	9ioyjJTlwrNf+7sJ6OGjbAyxqyKQ61nU+7dN/WJxI0iL6nY960uysgqIAQAVaQR4RbcXkJEEFqN
	l33XyNtgC3rvM0NJXXWSTmiK5/4X8ILDbMs1LLgQd8SlIuP+4F9LLg/V/fH1f6xlgvRjlEPs1ir
	rPULnbRX3XGcP9D4zLBJaLT8HOWZr2bx0/SYC8chLPUfWUU1lCoZ1el6k0F3kxVFEtgJRnjNECQ
	LoXpoehwzeFJwLrp93lW3Y2MOQsByVOopeH1mCnWJAQPtbwEDEs3+AyVTv5v0yoKG21VXtXmG1T
	ZhjFlkcf2M5ywCqbZht9zzbWPhPUAFYC13Sj5sz9rbqaASgG0pidbE6NBP/Gr1sdZB892BfIS+v
	pQeW7qorImqzU01dKQQDUcvKdXo6z7i5EG2gj/roNrR85lZRcJXHQTr0OvAsYkKoTscg0MQ/gpw
	MB1rUhrtm
X-Received: by 2002:a17:90b:3b50:b0:3b0:e388:d9c9 with SMTP id 98e67ed59e1d1-3b12d3fc0aemr1747792a91.12.1794194739886;
        Sun, 08 Nov 2026 19:25:39 -0800 (PST)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b1164f16b3sm3657744a91.0.2026.11.08.19.25.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Nov 2026 19:25:39 -0800 (PST)
Message-ID: <4e271e16-c3a6-462d-ac55-abd9129e03e1@gmail.com>
Date: Mon, 9 Nov 2026 11:25:36 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/4] phy: nuvoton: phy-ma35d1-usb2: extend to dual-port
 with OTG support
To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, neil.armstrong@linaro.org,
 linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org,
 robh@kernel.org, conor+dt@kernel.org
References: <20261008060629.2736806-1-a0987203069@gmail.com>
 <20261008060629.2736806-5-a0987203069@gmail.com>
 <sashiko-outbox-163689@kernel.org>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <sashiko-outbox-163689@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_192541_400046_F91D4A73 
X-CRM114-Status: GOOD (  34.50  )
X-Spam-Score: -1.8 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-7.3 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,FROM_LOCAL_HEX,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On 10/8/2026 2:26 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 5 potential issue(s) to consider:
> - [High] phy: Kconfig missing USB_ROLE_SWITCH dependency causes built-in link failure
> - [High] phy: DT backward compatibility regression for over-current polarity
> - [Medium] phy: ignored regmap_read return values cause uninitialized variable usage and info leak
> - [Medium] phy: regression in PHY reset fallback when clock polling fails
> - [Medium] PM/clock: PHY permanently holds HUSBH0_GATE preventing USB suspend
> --
>
> commit dce53df5cfe4dcfac8af16f8b29743a3f4e147e0
> Author: Joey Lu <a0987203069@gmail.com>
>
>      phy: nuvoton: phy-ma35d1-usb2: extend to dual-port with OTG support
>      
>      PHY0 and PHY1 use the same power-on/reset sequence in USBPMISCR, with
>      PHY1 control bits shifted 16 positions relative to PHY0.  A separate
>      driver for PHY1 would duplicate this logic, so the existing driver is
>      extended to manage both ports.
>
>> diff --git a/drivers/phy/nuvoton/phy-ma35d1-usb2.c b/drivers/phy/nuvoton/phy-ma35d1-usb2.c
>> index 0b9976fb15c17..25bd0a7a1314b 100644
>> --- a/drivers/phy/nuvoton/phy-ma35d1-usb2.c
>> +++ b/drivers/phy/nuvoton/phy-ma35d1-usb2.c
> [ ... ]
>> -static int ma35_usb_phy_power_on(struct phy *phy)
>> +static int ma35_usb_phy_init(struct phy *phy)
>>   {
>> -	struct ma35_usb_phy *p_phy = phy_get_drvdata(phy);
>> +	struct ma35_phy_port *port = phy_get_drvdata(phy);
>> +	struct ma35_usb_phy *p = container_of(port - port->idx,
>> +					      struct ma35_usb_phy, port[0]);
>> +	unsigned int n = port->idx;
>>   	unsigned int val;
>>   	int ret;
>>   
>> -	ret = clk_prepare_enable(p_phy->clk);
>> -	if (ret < 0) {
>> -		dev_err(p_phy->dev, "Failed to enable PHY clock: %d\n", ret);
>> -		return ret;
>> +	regmap_read(p->sysreg, MA35_SYS_USBPMISCR, &val);
>> +
>> +	if (!(val & USBPMISCR_PHY_SUSPEND(n))) {
> [Severity: Medium]
> Is this code branching on uninitialized stack memory?
>
> If regmap_read() fails, the return value is ignored and val is left
> uninitialized, leading to non-deterministic PHY state handling.
Leaving this as is.
>
> [Severity: Medium]
> Could this strict condition remove the fallback reset sequence?
>
> The original driver would reset the PHY if the clock failed to stabilize during
> polling. By encapsulating the reset strictly inside this block, it skips the
> reset entirely if the PHY is already running.
>
> If the subsequent clock polling times out, the driver immediately returns an
> error. Can this cause a regression where the PHY fails initialization permanently
> if it was left running but unstable by the bootloader or a prior kexec?
PHY reset fallback: valid, v7 dropped the old reset-on-unstable-clock
behaviour. In v8 I'll restore it: if SUSPEND is already set, poll the ready
bits first and return on success; on timeout (or if SUSPEND was clear) 
run the
POR assert / udelay(20) / POR deassert sequence, then poll again and 
fail only
if the second poll times out. This covers a PHY left running but unstable by
the bootloader or a prior kexec.
>> +		regmap_update_bits(p->sysreg, MA35_SYS_USBPMISCR,
>> +				   USBPMISCR_PHY_CTL_MASK(n),
>> +				   USBPMISCR_PHY_POR(n) | USBPMISCR_PHY_SUSPEND(n));
>> +		udelay(20);
>> +
>> +		regmap_update_bits(p->sysreg, MA35_SYS_USBPMISCR,
>> +				   USBPMISCR_PHY_CTL_MASK(n),
>> +				   USBPMISCR_PHY_SUSPEND(n));
>>   	}
> [ ... ]
>> -static int ma35_usb_phy_power_off(struct phy *phy)
>> -{
>> -	struct ma35_usb_phy *p_phy = phy_get_drvdata(phy);
>> +static const struct phy_ops ma35_usb_phy_ops = {
>> +	.init		= ma35_usb_phy_init,
>> +	.owner		= THIS_MODULE,
>> +};
> [Severity: Medium]
> Will the removal of dynamic clock toggling in .power_on and .power_off cause
> a power regression?
>
> Since the clock is now acquired permanently via devm_clk_get_enabled() during
> probe, the USB host clock gate (HUSBH0_GATE) remains open permanently,
> preventing it from closing and consuming unnecessary power when the USB host
> controller (EHCI0/OHCI0) suspends.
HUSBH0_GATE: valid. devm_clk_get_enabled() keeps the gate open for the
driver's lifetime. In v8 I'll use devm_clk_get() in probe and restore
.power_on/.power_off doing clk_prepare_enable()/clk_disable_unprepare(). 
Both
ports share the one clock; the PHY core calls these per port and the clk
framework refcounts, so the gate closes once neither port is powered. init
will also enable the clock around its register accesses and polling.
>> +
>> +static int ma35_role_sw_set(struct usb_role_switch *sw, enum usb_role role)
>> +{
>> +	return -EOPNOTSUPP;
>> +}
>> +
>> +static enum usb_role ma35_role_sw_get(struct usb_role_switch *sw)
>> +{
>> +	struct ma35_usb_phy *p = usb_role_switch_get_drvdata(sw);
>> +	u32 val;
>> +
>> +	regmap_read(p->sysreg, MA35_SYS_PWRONOTP, &val);
>> +
>> +	return (val & PWRONOTP_USBP0ID) ? USB_ROLE_HOST : USB_ROLE_DEVICE;
>> +}
> [Severity: Medium]
> Can this leak uninitialized stack memory to userspace?
>
> If regmap_read() fails, the return value is ignored and val remains
> uninitialized. This uninitialized data determines the returned USB role,
> inadvertently leaking 1 bit of kernel stack state to userspace via the sysfs
> role attribute.
Leaving this as is.
>> +
>> +static int ma35_role_switch_init(struct platform_device *pdev,
>> +				 struct ma35_usb_phy *p)
>> +{
>> +	struct usb_role_switch_desc sw_desc = {0};
>> +
>> +	sw_desc.set = ma35_role_sw_set;
>> +	sw_desc.get = ma35_role_sw_get;
>> +	sw_desc.allow_userspace_control = true;
>> +	sw_desc.driver_data = p;
>> +	sw_desc.fwnode = dev_fwnode(&pdev->dev);
>> +
>> +	p->role_sw = usb_role_switch_register(&pdev->dev, &sw_desc);
> [Severity: High]
> Would this introduce a built-in link failure if the driver is built-in
> (CONFIG_PHY_MA35_USB=y) and the role switch framework is modular
> (CONFIG_USB_ROLE_SWITCH=m)?
>
> In this configuration, IS_ENABLED(CONFIG_USB_ROLE_SWITCH) evaluates to true,
> so include/linux/usb/role.h declares the external functions instead of providing
> inline stubs, causing an undefined reference to usb_role_switch_register.
>
> Should drivers/phy/nuvoton/Kconfig be updated to include
> depends on USB_ROLE_SWITCH || !USB_ROLE_SWITCH for PHY_MA35_USB to prevent
> this invalid Kconfig combination?
Kconfig: valid, thanks. In v8 I'll add
"depends on USB_ROLE_SWITCH || !USB_ROLE_SWITCH" to PHY_MA35_USB in
drivers/phy/nuvoton/Kconfig. With the role switch disabled, the existing
-ENODEV handling in ma35_role_switch_init() still lets probe succeed.
>> +	if (IS_ERR(p->role_sw)) {
> [ ... ]
>>   static int ma35_usb_phy_probe(struct platform_device *pdev)
>>   {
>>   	struct phy_provider *provider;
>> -	struct ma35_usb_phy *p_phy;
>> -	struct phy *phy;
>> +	struct ma35_usb_phy *p;
>> +	struct clk *clk;
>> +	int n, ret;
>> +	u32 code;
> [ ... ]
>> +	regmap_update_bits(p->sysreg, MA35_SYS_MISCFCR0, MISCFCR0_UHOVRCURH,
>> +			   of_property_read_bool(pdev->dev.of_node,
>> +						 "nuvoton,oc-active-high") ?
>> +			   MISCFCR0_UHOVRCURH : 0);
> [Severity: High]
> Does this unconditional write break device tree backward compatibility?
>
> If the optional property nuvoton,oc-active-high is absent, this explicitly
> writes 0 to the bit, forcing the over-current polarity to active-low. The
> original driver relied on the bootloader's configuration.
>
> Will this cause a regression in over-current detection on existing boards that
> use active-high hardware configured by the bootloader but lack this new
> property in their older device tree?
OC polarity: the unconditional write is intentional. The binding in
patch 1 defines "property absent" as active-low, and writing the bit in both
cases makes the result independent of what the bootloader left in MISCFCR0.
This bit only affects the EHCI/OHCI host ports' VBUS switch and is 
irrelevant
to the gadget (DWC2) use the old driver supported, so existing gadget-only
users are not affected. The old driver never touched MISCFCR0, and no 
mainline
DT uses this PHY with host ports, so no mainline board depends on a
bootloader-programmed polarity; nuvoton,oc-active-high is new in this 
series.
Out-of-tree boards with an active-high switch need to add the property. I'll
state this explicitly in the commit message and binding description.

Joey
>> +
>> +	for (n = 0; n < MA35_PHY_NUM; n++) {

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

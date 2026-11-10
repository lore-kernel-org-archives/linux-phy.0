Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E6B606A31C
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 01:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TozUDUuB;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=sPs9wpbl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=n00il5WVPTTGqDdgj78g+1r63FUoFpTZ9IyjwfvaJGA=; b=TozUDUuBVtX6cXjB7Ig+jqOVov
	ZenRmxJtE2lxky2ykO5WAHXnZeprCqgg/ajaemIpe0RJaqKSqggChRqs6OwWjbHXUe+2LoaSSgnyK
	Yfy4y/6AdUGqfFbNQDT+i0uO/odWM8RQgwrsHsT0F6WsbWJINhbWU9XCNXiPdhBqm9iRbO5Kcodfo
	dmBm0zmkESFxxLFaYx5D1bTCwE2i7OYqF58JBABcjtv8qDfzdbPI120vIkdPDW/O4to5uoGRFErIs
	AUuZTsvgJRARB2nzrsxhYzlSpZ4bdW4qxS4xNAiZFo1mrA++1MEFZyoP928apLwr1rsEDFhziU767
	SJzkdC/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQanu-000000026Bg-3cYC;
	Tue, 10 Nov 2026 01:37:42 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQans-000000026BK-1dpD
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 01:37:41 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-3b08cf16decso975147a91.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 17:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794274659; x=1794879459; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3ifG6N3GjuE9TBQMDJaU7DFuzuDNphSyfQc7VRPrMxs=;
        b=sPs9wpblf5k2UkL2LNvVz/4hMgIwjzj5Bdjs5J5g7nouzzPd9Cun5ApTzGyAq6Yyx7
         +EjmAuXA83EVV7uth4yVhxNfdOWL0dfvxppWvXdUyJFMcg8Iv5hmPduQaDSbpUVTTi2M
         OF/MF0KNC4lwMajfzu/zss7qmLy1Zx/ASxgN7ooPqi6+9VSgMbVyXHn4KLWGTMpJdUac
         zTBdkdLW6XmvlAhcFqiYJNXAykbG/SZoJmT/KAHXZaTtn0HgBMD/AZhZrsqgwn3C5zCV
         UoHA+oZ6rNjBWmkRdYwIn/tqO2Ly97eYmP3iVrzTNuDxfGhffruStpZXgVtn1wguLwnX
         JQ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794274659; x=1794879459;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3ifG6N3GjuE9TBQMDJaU7DFuzuDNphSyfQc7VRPrMxs=;
        b=YEAA2VrZAU2qNzJUvurlv4L4nVVfudfJbmCrKHPdqQDNh67JALQaY6VyPzNXIcgOi8
         Odim5aNLJS+osx3VOsWr23vA3WZ8Iysyt8oHT9sIqQ7uIL+dlMtTfop1GGMXlbCAgO9E
         uDXORdyEIZi6pc2bdq3HtXHZ0duM2Ll3yB1gkXGm4/qzj2PWgR1eeFiPB4plTGzOZzsf
         aksHUIOmdAb6fFzPT63pDphBvlIFBXRuQ45V+c43HUyQaMXhZmJiir7p27ooyJr4GSIP
         3bX2EvMOy44VZ7V4KmGpsP1ISIMjlhOOmTOsVJqgJim6q3oF6vvBOUav5bzci6aEVXCT
         T9Zw==
X-Gm-Message-State: APuU4Z92UeNIE3jzZ55Jvkjy8Y3Ab03NUaMwcTZmjeUt6cyobRTdJnbi
	jVBOFyf24S+LSQNMcthYupoCLNCduQXo8PGmEV4yTEXXipKaYxSP3/zg
X-Gm-Gg: AYBFou1jpSORUJ4qFpXFSAej4fYpNS9Oh/Nenj47r6jdK+8EuxBhTmmBIexSskEuTRg
	zaOoOntFgdYOswH6kz8pDeZ3+dnYQqdZNAaTI1iPIwPMiLieaBKvhcTPpuI/vbAwqBQDostDWeR
	bICyTfO8wvIizlK79+0gU2x4EeVDXuFA3fHQVQuGSshG0jOhi1SJym9v32cBQj5YKbrA8tzJvtp
	84s7SOae4/Cmfs1tUWk5XZXvAht1WwT8ASlTcxc+ZLx9JTQIP+wdcz0Q1N0sKGokhEA/WQqq7Dw
	xAMEWEghmmWHoZmYqklfs4JJCmqeel++tNP0nPg/vkI++4GZCdnAwOvNkzAvnZ6k9NwgNeIdUO6
	d6EN0It+Nw3Fk6thv7dhlIHLt6xVL6lXgatISIUlYofQBnZeaxAfzs6Tq3Xn85K8w7br/0IgWGw
	vDEOEUh4lt54b5Y2X1WFntIWdvjPl9CPnpc9AkBnMzMnE+zPEXet9ohs83rrhSol1mY01FwOTLX
	20T+acXnqoV+kp6zdolLBTXLohid/7DUm5/qZsqpGgjAt60EbI9DUBcfnzXYIoQRY6F87mldYTX
	WJIpFri3yivIuXHiC4FKpHkhAFAp5PrNQ/fMqkqnNv8ZC73lbh/HcV6JJZaXj0k15C+BI897pNx
	/+FhCKIRSPA==
X-Received: by 2002:a17:90b:2e49:b0:3ae:8106:6074 with SMTP id 98e67ed59e1d1-3b166c92193mr1307280a91.16.1794274659234;
        Mon, 09 Nov 2026 17:37:39 -0800 (PST)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b16792aabfsm1657287a91.12.2026.11.09.17.37.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2026 17:37:38 -0800 (PST)
Message-ID: <81e91f05-f172-4bbf-b5a6-76f2767ea82b@gmail.com>
Date: Tue, 10 Nov 2026 09:37:35 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 4/4] phy: nuvoton: phy-ma35d1-usb2: extend to dual-port
 with OTG support
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
 neil.armstrong@linaro.org, olteanv@gmail.com
References: <20261109065606.62641-1-a0987203069@gmail.com>
 <20261109065606.62641-5-a0987203069@gmail.com>
 <sashiko-outbox-204535@kernel.org>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <sashiko-outbox-204535@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_173740_466705_F6DBCB66 
X-CRM114-Status: GOOD (  20.68  )
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


On 11/9/2026 3:14 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential
> issue to consider:
> - [Medium] phy: nuvoton: missing MFD_SYSCON select and unchecked
>    regmap_read()
> --
>
> commit ce87e45e509dca5386021bb0dd4e3bb91e3935d8
> Author: Joey Lu <a0987203069@gmail.com>
>
> phy: nuvoton: phy-ma35d1-usb2: extend to dual-port with OTG support
>
> This commit extends the Nuvoton MA35D1 USB 2.0 PHY driver to support both
> PHY0 and PHY1, updates clock-stability polling in phy_init(), registers a
> read-only USB role switch for PHY0, and adds resistor calibration and
> over-current polarity device-tree properties.
>
>> diff --git a/drivers/phy/nuvoton/Kconfig b/drivers/phy/nuvoton/Kconfig
>> index d02cae2db315a..1f37e860de507 100644
>> --- a/drivers/phy/nuvoton/Kconfig
>> +++ b/drivers/phy/nuvoton/Kconfig
>> @@ -6,6 +6,7 @@ config PHY_MA35_USB
>>   	tristate "Nuvoton MA35 USB2.0 PHY driver"
>>   	depends on ARCH_MA35 || COMPILE_TEST
>>   	depends on OF
>> +	depends on USB_ROLE_SWITCH || !USB_ROLE_SWITCH
>>   	select GENERIC_PHY
>>   	help
>>   	  Enable this to support the USB2.0 PHY on the Nuvoton MA35
>> diff --git a/drivers/phy/nuvoton/phy-ma35d1-usb2.c b/drivers/phy/nuvoton/phy-ma35d1-usb2.c
>> index 0b9976fb15c17..bc706356c4341 100644
>> --- a/drivers/phy/nuvoton/phy-ma35d1-usb2.c
>> +++ b/drivers/phy/nuvoton/phy-ma35d1-usb2.c
> [ ... ]
>
>> +static int ma35_usb_phy_init(struct phy *phy)
>> +{
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
>> -	}
>> +	ret = clk_prepare_enable(p->clk);
>> +	if (ret)
>> +		return dev_err_probe(p->dev, ret, "failed to enable clock\n");
>>   
>> -	regmap_read(p_phy->sysreg, MA35_SYS_REG_USBPMISCR, &val);
>> -	if (val & PHY0SUSPEND) {
>> -		/*
>> -		 * USB PHY0 is in operation mode already
>> -		 * make sure USB PHY 60 MHz UTMI Interface Clock ready
>> -		 */
>> -		ret = regmap_read_poll_timeout(p_phy->sysreg, MA35_SYS_REG_USBPMISCR, val,
>> -						val & PHY0DEVCKSTB, 10, 1000);
>> -		if (ret == 0)
>> -			return 0;
>> -	}
>> +	regmap_read(p->sysreg, MA35_SYS_USBPMISCR, &val);
>>   
>> -	/*
>> -	 * reset USB PHY0.
>> -	 * wait until USB PHY0 60 MHz UTMI Interface Clock ready
>> -	 */
>> -	regmap_update_bits(p_phy->sysreg, MA35_SYS_REG_USBPMISCR, 0x7, (PHY0POR | PHY0SUSPEND));
>> +	if ((val & USBPMISCR_PHY_SUSPEND(n)) &&
>> +	    !ma35_usb_phy_wait_ready(p, n, &val))
>> +		goto out;
> [ ... ]
>
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
> Can val be used uninitialized in ma35_usb_phy_init() and
> ma35_role_sw_get() when regmap_read() fails or is stubbed out?
>
> Neither PHY_MA35_USB nor ARCH_MA35 selects MFD_SYSCON, so PHY_MA35_USB can
> be built with CONFIG_MFD_SYSCON=n and CONFIG_REGMAP=n.  In that
> configuration, syscon_regmap_lookup_by_phandle() always fails with
> -ENOTSUPP, and the regmap_read() stub returns -EINVAL without writing val,
> causing the compiler to flag val as uninitialized in ma35_usb_phy_init()
> and ma35_role_sw_get().
>
> Selecting MFD_SYSCON in PHY_MA35_USB and checking the regmap_read() return
> value (or initializing val) would avoid both issues.
MFD_SYSCON: valid in part. Neither ARCH_MA35 nor PHY_MA35_USB selects
MFD_SYSCON, and with CONFIG_REGMAP=n the regmap_read() stub returns -EINVAL
without writing val, so the compiler can warn about val being uninitialized.
In practice the probe would already fail at 
syscon_regmap_lookup_by_phandle()
(-ENOTSUPP) and never reach those paths. The missing dependency is the real
problem, so in v9 I'll add "select MFD_SYSCON" to PHY_MA35_USB (it selects
REGMAP_MMIO as well). I'll keep regmap_read() unchecked as discussed with
Mani, since once syscon is guaranteed the reads are plain MMIO and do not
fail.

Joey

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

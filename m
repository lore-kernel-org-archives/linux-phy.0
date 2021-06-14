Return-Path: <SRS0=iPW2=LI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD761C2B9F4
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jun 2021 18:20:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6B101613B9
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jun 2021 18:20:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6B101613B9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9t7rfG5eINq+lKbW1XIu4bArU+vps2+PVmPow6PZtlQ=; b=RD0FJ+P7QtvdmQUZaHm/JeZK7c
	bA40VqHBYYM8gCS8HvWE7nW6edjwR01/AUwYMv71vvMVbP1TUk1YWvmJB1YCOOwaORpTQoQLbpWZ5
	LmqeO+cCWFbfgYaNYu8VhqwSY3NZDXdK+1TXcxhRS/4GR7E4AVdBEd7FYibfF4qH1OP2shA88rfGj
	ZopNZH9J8t4GUvcefE+K2JIknEz9j4qOpSMwzjaMPgj6WQz1E4+z1UEUnDOhItjr0KA2ya2jk1N7+
	AydbCGRWPwaZdpvAoTlUYKdE9nEOPB+uhDVHye6hMkqG8SRhUByWldK+Z5A/aWozPNnkFqkqWDh3l
	Ab+TpFow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsrCZ-00FgVJ-0o; Mon, 14 Jun 2021 18:20:47 +0000
Received: from mail-ed1-f45.google.com ([209.85.208.45])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsrCG-00FgQT-9v; Mon, 14 Jun 2021 18:20:29 +0000
Received: by mail-ed1-f45.google.com with SMTP id t3so47783481edc.7;
 Mon, 14 Jun 2021 11:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sKSZ9wrMXoxo+h1UMeYe3Rp56xWJodwZ6blQ9Pbkae8=;
 b=DwLMaLaoTbeUAvGOTsy/SkYIvnv7XHKYUmQVkojwNz2xTkjCo0I82BSarS/GJ56dOQ
 a+x0WZyUvdUbpPLY9cjEBE7+3OJ0yacsfJjc+5HbEHxdHvFSfZUjphFvYR2iCeJutkXV
 WuRkE2BV7pOhksYfqRxrFuLujd9mhozA1mDbd188ZS2GqDVndSwhXtA0FAG2hYx/tQ0T
 IUDCmZOiWZBDk+qeArrz/zKdiLJ7NNuVo0nEjrsveX4d3XqV8NbDQjFwdWOW/oT+DaWL
 5YJ5Gu/YNlqBRwS4PAE5ucDaaoI01xCo3G1dwO/HA2KCewxaDY+01R9NZSzrXDSKS4ha
 AZSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sKSZ9wrMXoxo+h1UMeYe3Rp56xWJodwZ6blQ9Pbkae8=;
 b=t+e1men9bhPBWrtq8WqyvRCZuC5DcfNNEsVzHYk8AubRItTibIPoz8E4e8edZoB3Tz
 KS5kQrarO9d7dkZdamxiLKdB+++fbZkt+Ku25l3zfPHFwHiIN6e4AQ3b1stw2+G7US22
 WFOvIbEc97zWnJYU+3y4zYaFXO2BybX+U5UZuon6OPtmlG2oyNH5Lt0znhCGo7g1ou+T
 Yb+MxwFGax3QQbMd3a31CWPcKrkuEpzIYG9L+MPXcnC2gtp4rJUcgdUKxYYI+g1pG33+
 nWQSlUt1ul0Thklc5khnycMVaWPRwj9/XA1iDNRinlvGrfI8zCtNMRzYu/NCn2Kn1w+g
 5KZQ==
X-Gm-Message-State: AOAM531ykGstuSKQ3PuVxm5tIZ2OrDYJOdsxAvEcGHx4DQsJ6Wf5f56A
 hUh7HWGAYRiotuEs314leGo=
X-Google-Smtp-Source: ABdhPJxjFyQMJJItkqPMDa3/jwo2ml924dXRR4tAnILyTLhDLOQC+wm2EDJZDic0Yd6fMVifQmcGEA==
X-Received: by 2002:aa7:da4b:: with SMTP id w11mr18983039eds.272.1623694765194; 
 Mon, 14 Jun 2021 11:19:25 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 au11sm8135373ejc.88.2021.06.14.11.19.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Jun 2021 11:19:24 -0700 (PDT)
Subject: Re: [PATCH 2/4] dt-bindings: phy: rockchip: USB2: Add compatible for
 rk3568
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, kishon@ti.com,
 vkoul@kernel.org, robh+dt@kernel.org, heiko@sntech.de, pgwipeout@gmail.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20210614154359.805555-1-benjamin.gaignard@collabora.com>
 <20210614154359.805555-3-benjamin.gaignard@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <2d1e35d1-92ab-7ca2-d2e7-13b3885adaa9@gmail.com>
Date: Mon, 14 Jun 2021 20:19:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210614154359.805555-3-benjamin.gaignard@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_112028_396588_D5760AD3 
X-CRM114-Status: GOOD (  14.14  )
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

Hi Benjamin,

The '#phy-cells' in [PATCH 1/4] are already gone.
The nodename is renamed to pattern "usb2phy@[0-9a-f]+$".
phy-rockchip-inno-usb2.yaml is now also part of grf.yaml, so must take
care of both.

From rk3568.dtsi:

	usb2phy0_grf: syscon@fdca0000 {
		compatible = "rockchip,rk3568-usb2phy-grf", "syscon";
		reg = <0x0 0xfdca0000 0x0 0x8000>;
	};

	usb2phy1_grf: syscon@fdca8000 {
		compatible = "rockchip,rk3568-usb2phy-grf", "syscon";
		reg = <0x0 0xfdca8000 0x0 0x8000>;
	};

	usb2phy0: usb2phy@fe8a0000 {
		compatible = "rockchip,rk3568-usb2phy";
		reg = <0x0 0xfe8a0000 0x0 0x10000>;
		interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>;
		clocks = <&pmucru CLK_USBPHY0_REF>;
		clock-names = "phyclk";
		#clock-cells = <0>;
		assigned-clocks = <&cru USB480M>;
		assigned-clock-parents = <&usb2phy0>;
		clock-output-names = "usb480m_phy";
		rockchip,usbgrf = <&usb2phy0_grf>;
		status = "disabled";

		u2phy0_host: host-port {
			#phy-cells = <0>;
			status = "disabled";
		};

		u2phy0_otg: otg-port {
			#phy-cells = <0>;
			status = "disabled";
		};
	};

	usb2phy1: usb2phy@fe8b0000 {
		compatible = "rockchip,rk3568-usb2phy";
		reg = <0x0 0xfe8b0000 0x0 0x10000>;
		interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>;
		clocks = <&pmucru CLK_USBPHY1_REF>;
		clock-names = "phyclk";
		#clock-cells = <0>;
		rockchip,usbgrf = <&usb2phy1_grf>;
		status = "disabled";

		u2phy1_host: host-port {
			#phy-cells = <0>;
			status = "disabled";
		};

		u2phy1_otg: otg-port {
			#phy-cells = <0>;
			status = "disabled";
		};
	};

rockchip,rk3568-usb2phy-grf must also be added to grf.yaml.

See linux-next.

https://lore.kernel.org/linux-devicetree/20210601164800.7670-2-jbx6244@gmail.com/

Johan

On 6/14/21 5:43 PM, Benjamin Gaignard wrote:
> Add "rockchip,rk3568-usb2phy" in compatible list of the USB2 phy.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  .../devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> index b14387a48f6a3..a1420d5e44be7 100644
> --- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> @@ -18,6 +18,7 @@ properties:
>        - rockchip,rk3366-usb2phy
>        - rockchip,rk3399-usb2phy

--->

>        - rockchip,rv1108-usb2phy

> +      - rockchip,rk3568-usb2phy

Please sort in alphabetical order.

>  
>    reg:
>      maxItems: 1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

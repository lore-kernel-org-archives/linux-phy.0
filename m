Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74181E7717D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Dec 2024 12:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTbEahjtym9uk/MOLCFlpBunpNFy/kEsNLL5C35UsyQ=; b=QGMJLI5tgR5MR5
	9AwW5ksCP5TTVHemBBydhZqS5DaYN8dy9/Wmse7LW4n7fok/Io5vFt16zg2RqD/He4SRsjGVUs8PH
	X/PXfYm6ZhmikRs7+RrkMAg8JTZCcQrelI05Uq+KMal19z0W7qaR9tJompWMntChRAK3b3nHA2fga
	2d8U6mLgaeNjlzP+wmYechgi2qUAON4PuIyjJCEF2Kofdu9i0F3dMl+z4qd8pRJ1O2TCLNaP5yEY8
	HHOJrKhxNW/l4of26O0ltVevycFXyhewCjiCrqY9dMpZm6dHj8I3WyDE+m5fq2pXcOvRMsyCmLyJw
	xdvUspjt4ojXUroQ7x5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLLkG-0000000EoYA-0OI2;
	Wed, 11 Dec 2024 12:23:12 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLLkE-0000000EoXa-0Lwq
	for linux-phy@lists.infradead.org;
	Wed, 11 Dec 2024 12:23:11 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-5d3ea065b79so5715568a12.3
        for <linux-phy@lists.infradead.org>; Wed, 11 Dec 2024 04:23:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733919788; x=1734524588; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ASQKGpCO7s4KPkalfOXfelNyrTTyYMkGNmfArDEmeBM=;
        b=reZe0RijiO3wCKXHb/2k8aKqmUFbfqxp5rIHuJdOPiwTj/HuF3eBwBV118euNxADV8
         4aBXpu71jDFz/EyP8zzYdo1qc4zVn6ENpEhePJGLSFNow6kv3wIn+b5VWU+jb/PT/TR/
         jeTnb/K5IDXVk/Lejv/PeJG1at5RlWiI+Xtro/c4J+PtUMg9+0pjUxtVpLZw7ozF/hAE
         BdxRNgzkwDClSxbzCecm+2WHJfne6t+CsYbbFTD3aFCoULyRYNBeeRzkk3bjpqpLX0h5
         u9dAtX2Zzxthpj5jusbbCgU7A+6eQE0ZdYtuhFB4HILBj6ve1MjgGrfh9+p8EgkFsy+h
         uzvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733919788; x=1734524588;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ASQKGpCO7s4KPkalfOXfelNyrTTyYMkGNmfArDEmeBM=;
        b=Bc4fRajE6o3IOJvEBa8TxO8asAx+GH8uf8XOsN0z1fyZZ6Q0DzMmBsqkkWHBnpUhJE
         GKpsQZc+uSfE1ON7rMsiPGil3DSRIe9d0pzNVQ8ohkwFH2OrfPDZZl9isetrf9u7s/5y
         NUHWvU9YWKCYJh9fb3/68mnT/jcM2iAvpWMp3QWHyJqWwdQcq4XXfH44J39Q89/PiZhb
         rPOflftvL/7yY8OpmckSQW43DjWGZlg/4hPwPejw63P1SuEeu1jMlx6IhxBUbfivjtCt
         +xKr9PsbxNWMQ0Im807c3eQtT1uETg7J7AqnXgeQ8VfIFq13ba5RZR/8Jkiu2LRI4Juu
         ph9w==
X-Forwarded-Encrypted: i=1; AJvYcCVgIVsQ+JySZpBxnX/Ipmuth+FtOX8VDIzO3W5q5Mp67s9T2HEmzOw5T11AOMeR/KhNdgT2PfHgnM0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyWkfMlpEzK7Vz+ekKnq3vx6xEB/oMai3DdLu6ESY7PgiU6+dYB
	/6r5mJzGVC3uWfQ6UdZ7hlRwQqNG8MiVltlpg2nGel6pJ2R9lYP0BTqFviRFOQU=
X-Gm-Gg: ASbGncv7xm/w+Z+xCMssD2EllLvnJhVVkg0fuHQIUHvEmJN1WnFpURZRfLAzkDN8aEo
	l8ikwqih1DpfolzgOysPI1ZmVNmuNRcnIf0p1qbImF0u5v8KzvWceY+duwzP45FXIsZmbAaAlTx
	FJapdo8PBUVcdksIbsfRxbQh4C59sfXBC/VZ011OWC/HvjBW4b17vyfLcbQPKcwD/9RrtbtyS8L
	+XQFUw07CvNZq20AqUDwQEETXoBuXldqRwTmkLNraXyzojmY9MWkCUCTQS55BI=
X-Google-Smtp-Source: AGHT+IGes3nVxEDSBxlaHGZVONLhxg58Ob1fOjsVMtO4m5ilIn457hh6A+FzVBWpzlcY83VX6o4HaQ==
X-Received: by 2002:a05:6402:4305:b0:5d0:8498:8bed with SMTP id 4fb4d7f45d1cf-5d4330a5ce2mr2727865a12.15.1733919787869;
        Wed, 11 Dec 2024 04:23:07 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d14c7aa441sm8847370a12.72.2024.12.11.04.23.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 04:23:07 -0800 (PST)
Message-ID: <437b8d13-8ec1-40c7-b95c-ddb836e123d6@tuxon.dev>
Date: Wed, 11 Dec 2024 14:23:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/15] dt-bindings: soc: renesas: renesas,rzg2l-sysc:
 Add #renesas,sysc-signal-cells
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, gregkh@linuxfoundation.org,
 yoshihiro.shimoda.uh@renesas.com, christophe.jaillet@wanadoo.fr,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
 <20241126092050.1825607-2-claudiu.beznea.uj@bp.renesas.com>
 <20241210184542.GA4077820-robh@kernel.org>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20241210184542.GA4077820-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_042310_129775_37ADE026 
X-CRM114-Status: GOOD (  29.59  )
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

Hi, Rob,

On 10.12.2024 20:45, Rob Herring wrote:
> On Tue, Nov 26, 2024 at 11:20:36AM +0200, Claudiu wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> The RZ/G3S system controller (SYSC) has registers to control signals that
>> are routed to various IPs. These signals must be controlled during
>> configuration of the respective IPs. One such signal is the USB PWRRDY,
>> which connects the SYSC and the USB PHY. This signal must to be controlled
>> before and after the power to the USB PHY is turned off/on.
>>
>> Other similar signals include the following (according to the RZ/G3S
>> hardware manual):
>>
>> * PCIe:
>> - ALLOW_ENTER_L1 signal controlled through the SYS_PCIE_CFG register
>> - PCIE_RST_RSM_B signal controlled through the SYS_PCIE_RST_RSM_B
>>   register
>> - MODE_RXTERMINATION signal controlled through SYS_PCIE_PHY register
>>
>> * SPI:
>> - SEL_SPI_OCTA signal controlled through SYS_IPCONT_SEL_SPI_OCTA
>>   register
>>
>> * I2C/I3C:
>> - af_bypass I2C signals controlled through SYS_I2Cx_CFG registers
>>   (x=0..3)
>> - af_bypass I3C signal controlled through SYS_I3C_CFG register
>>
>> * Ethernet:
>> - FEC_GIGA_ENABLE Ethernet signals controlled through SYS_GETHx_CFG
>>   registers (x=0..1)
>>
>> Add #renesas,sysc-signal-cells DT property to allow different SYSC signals
>> consumers to manage these signals.
>>
>> The goal is to enable consumers to specify the required access data for
>> these signals (through device tree) and let their respective drivers
>> control these signals via the syscon regmap provided by the system
>> controller driver. For example, the USB PHY will describe this relation
>> using the following DT property:
>>
>> usb2_phy1: usb-phy@11e30200 {
>> 	// ...
>> 	renesas,sysc-signal = <&sysc 0xd70 0x1>;
>> 	// ...
>> };
>>
>> Along with it, add the syscon to the compatible list as it will be
>> requested by the consumer drivers. The syscon was added to the rest of
>> system controller variants as these are similar with RZ/G3S and can
>> benefit from the implementation proposed in this series.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>
>> Changes in v2:
>> - none; this patch is new
>>
>>
>>  .../soc/renesas/renesas,rzg2l-sysc.yaml       | 23 ++++++++++++++-----
>>  1 file changed, 17 insertions(+), 6 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
>> index 4386b2c3fa4d..90f827e8de3e 100644
>> --- a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
>> +++ b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
>> @@ -19,11 +19,13 @@ description:
>>  
>>  properties:
>>    compatible:
>> -    enum:
>> -      - renesas,r9a07g043-sysc # RZ/G2UL and RZ/Five
>> -      - renesas,r9a07g044-sysc # RZ/G2{L,LC}
>> -      - renesas,r9a07g054-sysc # RZ/V2L
>> -      - renesas,r9a08g045-sysc # RZ/G3S
>> +    items:
>> +      - enum:
>> +          - renesas,r9a07g043-sysc # RZ/G2UL and RZ/Five
>> +          - renesas,r9a07g044-sysc # RZ/G2{L,LC}
>> +          - renesas,r9a07g054-sysc # RZ/V2L
>> +          - renesas,r9a08g045-sysc # RZ/G3S
>> +      - const: syscon
>>  
>>    reg:
>>      maxItems: 1
>> @@ -42,9 +44,17 @@ properties:
>>        - const: cm33stbyr_int
>>        - const: ca55_deny
>>  
>> +  "#renesas,sysc-signal-cells":
>> +    description:
>> +      The number of cells needed to configure a SYSC controlled signal. First
>> +      cell specifies the SYSC offset of the configuration register, second cell
>> +      specifies the bitmask in register.
>> +    const: 2
> 
> If there's only one possible value, then just fix the size in the users. 
> We don't need #foo-cells until things are really generic. Plus patch 
> 8 already ignores this based on the schema. And there's implications to 
> defining them. For example, the pattern is that the consumer property 
> name is renesas,sysc-signals, not renesas,sysc-signal.

OK, I'll fix the size in users.

> 
> Maybe someone wants to create a 'h/w (signal) control' subsystem (and 
> binding) that is just 'read, assert, or deassert a h/w signal'. Perhaps 

Until then, is it OK for you to keep it as proposed here?

> even the reset subsystem could be morphed into that as I think there 
> would be a lot of overlap. 

The USB PWRRDY signal handling has been initially implemented though a
reset controller driver but, after discussion with Philipp it has been
concluded that it should be handled differently, since it is not a reset
signal.

> Maybe that would cut down on a lot of these 
> syscon phandle properties. I would find that a lot more acceptable than 
> the generic 'syscons' and '#syscon-cells' binding that was proposed at 
> some point.
> 
> 
>> +
>>  required:
>>    - compatible
>>    - reg
>> +  - "#renesas,sysc-signal-cells"
> 
> New required properties are an ABI break.

I've added it as in the old DTs the system-controller node is disabled.
With that, do you consider it OK to keep it?

> 
>>  
>>  additionalProperties: false
>>  
>> @@ -53,7 +63,7 @@ examples:
>>      #include <dt-bindings/interrupt-controller/arm-gic.h>
>>  
>>      sysc: system-controller@11020000 {
>> -            compatible = "renesas,r9a07g044-sysc";
>> +            compatible = "renesas,r9a07g044-sysc", "syscon";
> 
> What happens on a new kernel and a DT without this change?

The older DT have the system-controller node disabled, thus nothing will be
probed for it.

Thank you for your review,
Claudiu

> 
> Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

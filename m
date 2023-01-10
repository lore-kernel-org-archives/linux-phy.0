Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E4A3C46467
	for <linux-phy@archiver.kernel.org>; Tue, 10 Jan 2023 14:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fW8MY9HgiPEdRFsgoj3Gx9XUCbUtRrO+gOWeQHVKd+Q=; b=kxRQSj9rYeUcO1NRQrqGkhZqsk
	8iz8bq+WwpYPe/buQBEo/Ta6640yI9x3xlYi7ziGd+we/GQW6qhBc7GDNvAEBH3T1pgtN8lLYMBg3
	0camSGtSoNpn+Fgf57zKK37lUdzbTYCQZTh+N735oPOHncBm6hCiYAje8WyDeRYGM4tamcrzA1rqD
	zw0XjRsMF7G2OOSJUqrGFcLAzVHaP+tT13w4fBSz5k6LDfgP7mRoxJQ//d9r0jyRhq/osG6LBvSDr
	hj8n1jOsUuFcZa90KYRIxpcXMSBnmKnWHDkYtEr3YvMQnkQQ+8+M2ibVN5vrty8LpaAId8KWUoKie
	aAR9M35A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFRg-007GVW-28; Tue, 10 Jan 2023 14:17:44 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFRb-007GTb-LG
	for linux-phy@lists.infradead.org; Tue, 10 Jan 2023 14:17:42 +0000
Received: by mail-wm1-x335.google.com with SMTP id o15so8884214wmr.4
        for <linux-phy@lists.infradead.org>; Tue, 10 Jan 2023 06:17:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=eHZb7U5oDjEwOOYPDL1qKh2dxxJE4/1ANjgPMf5V1yY=;
        b=fTRvcYCK+eENINzdvpT5NHT0wfYm1n3I5kSok/46mEYtVclqXC7smkLGa3XIEa74h8
         pa7vm2MsAjsI/cBelw5bGsc9I2eqetFlYlumH4/lm4MrpkqG9t+Yo0qdg5Wnaa5ROnk+
         jk5if7eruDCSwTvNARxIO86xgemjnjk0GsLpdYo148YKsCWzHsOmV0v7ExzDydbgMmjB
         xBEDTBdANuYQT914B1YF5HhzI8DZFH0C2v3VudioXDxD6KAU63mcGUTJkptYXI3ghV99
         jzEBpM1Oh0TlusLugEYK7urTdrOuYWsOoldXD7wFgQwqC6XBXhxwFnxQYHc85Xv7KEWj
         Y/iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eHZb7U5oDjEwOOYPDL1qKh2dxxJE4/1ANjgPMf5V1yY=;
        b=8E2gX9RFZPYQ44gSk7EZ4pqwBnwgB7Lr5sWr5RlFkpdgKqXsmaFdSUdwDHAlWZpM+g
         6x5Ltg+kf+oMxTzyB8tD/rkPJrnL05G4l4wC2jmVAXj3a6tcS3mhTrR/YmFyqgKUEWcs
         64sJ6H/Fb/V0XqB/XdXDNlhFad+TqVZ5lFtbMgmVkFpv1QQd7TkD8kPveI2Lh4itwkqS
         NUV3fZ+CtzhArsz3DbCNgd87O4+ZYG5G0T/paDCzUMBRY4kOEnK963QeeBj26JkyGEX6
         4rXNF+85j/oEsMlQc1rE1zK5HZtRb9ItZ/pH0r+o0r50t2FIkSeoxERUw2ZykLWqwf/3
         AiRg==
X-Gm-Message-State: AFqh2krFquQGK3co+eDJuk+0ZjbCMsei0VViDczjOi49Y0Pg8oh7me4+
	KCxZBU1lKW19eBJLdvHkHNyA2A==
X-Google-Smtp-Source: AMrXdXuqOXk2/au6P9zSAZ1Xnbpze8DuH91lBlkaSOKHoQSBiUFp/tny1iYv4yZOeDxUI/obplpd0Q==
X-Received: by 2002:a05:600c:1f12:b0:3d2:267d:64bd with SMTP id bd18-20020a05600c1f1200b003d2267d64bdmr59388593wmb.3.1673360256638;
        Tue, 10 Jan 2023 06:17:36 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:26cc:e5e1:3044:b226? ([2a01:e0a:982:cbb0:26cc:e5e1:3044:b226])
        by smtp.gmail.com with ESMTPSA id t12-20020a05600c198c00b003d9de0c39fasm18780848wmq.36.2023.01.10.06.17.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 06:17:36 -0800 (PST)
Message-ID: <2037156d-5113-4b96-8f86-c8ef1c1fdf96@linaro.org>
Date: Tue, 10 Jan 2023 15:17:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 09/11] dt-bindings: mmc: convert amlogic,meson-gx.txt
 to dt-schema
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-mmc@vger.kernel.org, linux-pci@vger.kernel.org, netdev@vger.kernel.org
References: <20221117-b4-amlogic-bindings-convert-v2-0-36ad050bb625@linaro.org>
 <20221117-b4-amlogic-bindings-convert-v2-9-36ad050bb625@linaro.org>
 <e3d32fe1-9f2b-09fb-d7e0-2c8f42e5365c@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <e3d32fe1-9f2b-09fb-d7e0-2c8f42e5365c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_061739_704801_B591FFCA 
X-CRM114-Status: GOOD (  18.82  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 10/01/2023 11:17, Krzysztof Kozlowski wrote:
> On 09/01/2023 13:53, Neil Armstrong wrote:
>> Convert the Amlogic SD / eMMC controller for S905/GXBB family SoCs
>> to dt-schema.
>>
>> Take in account the used variant with amlogic,meson-gx-mmc.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   .../bindings/mmc/amlogic,meson-gx-mmc.yaml         | 75 ++++++++++++++++++++++
>>   .../devicetree/bindings/mmc/amlogic,meson-gx.txt   | 39 -----------
>>   2 files changed, 75 insertions(+), 39 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml
>> new file mode 100644
>> index 000000000000..30228964fd9c
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml
>> @@ -0,0 +1,75 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mmc/amlogic,meson-gx-mmc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Amlogic SD / eMMC controller for S905/GXBB family SoCs
>> +
>> +description:
>> +  The MMC 5.1 compliant host controller on Amlogic provides the
>> +  interface for SD, eMMC and SDIO devices
>> +
>> +maintainers:
>> +  - Neil Armstrong <neil.armstrong@linaro.org>
>> +
>> +allOf:
>> +  - $ref: mmc-controller.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - enum:
>> +          - amlogic,meson-gx-mmc
>> +          - amlogic,meson-axg-mmc
>> +      - items:
>> +          - const: amlogic,meson-gx-mmc
> 
> This does not look correct. Either gx is alone (not compatible with
> gxbb) or it is compatible with gxbb. Cannot be both.

This ishow it's used in DT:

arch/arm64/boot/dts/amlogic/meson-gx.dtsi:                              compatible = "amlogic,meson-gx-mmc", "amlogic,meson-gxbb-mmc";
arch/arm64/boot/dts/amlogic/meson-axg.dtsi:                             compatible = "amlogic,meson-axg-mmc";
arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi:                      compatible = "amlogic,meson-axg-mmc";

So I'll drop the amlogic,meson-gx-mmc in the first enum to have :
+properties:
+  compatible:
+    oneOf:
+      - const: amlogic,meson-axg-mmc
+      - items:
+          - const: amlogic,meson-gx-mmc
+          - const: amlogic,meson-gxbb-mmc

It's right ?

Neil

> 
> 
> 
> Best regards,
> Krzysztof
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

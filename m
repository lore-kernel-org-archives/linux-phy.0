Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BDD4C6FD1F
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 08:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LvTctqOw1Vceg17dn2TOkkvcEJPL9fSg6TQ+Ke2U4Y0=; b=DL/b9AtgYwQAN7
	zVDB7zdUPYqtTFmT5v10XcFcv0+3ceXZBMkWPHAqR3KSs1We+nJ5AkwUZKbwOUBcYuF0gbH3CsPdO
	RlqIvGRsgBFgQw50FLSw4jMllHutwLRWBZp4ZaxTHAYbK7BBICoNfpB7XnqZH8FNObTJLj94Al3Ax
	SOXCP0fVinCoe6xIJPq8jA07cudE51pwmafneXzY5CP37mETk01h3tcRiIkVwb0jOxV2YxS1sC2Lc
	Pscyl2pVP7f7Hy4/NU/PSZsfRzzvcOuU8ffVoNn0Q55Wgn5mp7vgkxksFdKnb0cR0TCcyNz6HD0If
	k+tdDe6L7w3edrMPujDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZpTe-00439v-PA; Wed, 08 Mar 2023 08:48:50 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZpTM-004349-FQ
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 08:48:34 +0000
Received: by mail-ed1-x536.google.com with SMTP id cy23so62493520edb.12
        for <linux-phy@lists.infradead.org>; Wed, 08 Mar 2023 00:48:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678265307;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1IW/RS0aLSSxBgB22OqTCxBSr+YdxHtk+0LFWe36vG8=;
        b=fWi10K1WTyMK+4gDA9j0bPprPuyGTBeu+XpocgR0cj+w9BYHj8UpNgU5t7v3PylQf4
         wY74bZ0VgPsmZ8GVnLZyawG4vExQk4VcpD8Sy0ZZgjLsoHTB/p4JGasSRwFQVP8ViAYf
         WHpwv0Mg5L+yjUF3WBMF54f2a2kM7teDdMKvcEZ8x1/hxlvMOJa3ayKvTtSdw6XnOinN
         42qPZITrCQ9SggMQB/mIKJWFKZbdt8OCZwawYh2mDlhPjzhsD2B27DiZmPzywHUBFkmE
         JZqgDm/dydu/Ju6adDOlnoDIvWPGAZEA9meFjPpRMZWO92uiHM2/um7Ka996PE42nENe
         VcMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678265307;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1IW/RS0aLSSxBgB22OqTCxBSr+YdxHtk+0LFWe36vG8=;
        b=lj5r/QNP8ni3u79jI6OooJcYQpipM4cWde87Z8mHH52hd1/9iLt8ifIl4ItJGlUO7F
         WXlio1Q41qHvsD48RvfmqWEKPrev1rLuHrJYfG5a/W1HJAQK4sZFncM/Ga44lp6hrQwz
         e7Ht2dMPWYNfxArEdI081468skYagJs7G2x1upB0PJVEhRXwcjPWNE796hXTWovYmwp5
         n7KBdCQp0lPbPmr67PVPnJQsVKm8Yh+/fWjw+YhzFhl1KeMU55Mn/Y1hpStiUymJG4Nc
         tkbfJ+mUFIoLZlL7vHrYyBS7S4w/AVTRM3FVFFoosQ7R6WvXhpv/ooLIEjDX+absqAX/
         FD+A==
X-Gm-Message-State: AO0yUKW4Z/Lteex3uWz3R9Prl7XkYa0nGfh+IDCT5I3GCBjWzPQhL8m4
	39EdOhLM0g3SWvaHyGxwnJa01A==
X-Google-Smtp-Source: AK7set+/a5vYatHyXTm+A6Q49AO+MfL5eXvY6zaULzOwyp5e47XvyDA35K8uivkmDjkP8sa9O9411w==
X-Received: by 2002:a17:906:1846:b0:8b8:c06e:52d8 with SMTP id w6-20020a170906184600b008b8c06e52d8mr16121027eje.36.1678265306937;
        Wed, 08 Mar 2023 00:48:26 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:bba:fbfa:8aec:a133? ([2a02:810d:15c0:828:bba:fbfa:8aec:a133])
        by smtp.gmail.com with ESMTPSA id a4-20020a17090682c400b008d4b6f086c9sm7141528ejy.185.2023.03.08.00.48.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 00:48:26 -0800 (PST)
Message-ID: <0013ce4d-d4a8-2a82-c72b-042dd4d9779c@linaro.org>
Date: Wed, 8 Mar 2023 09:48:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v10 03/13] dt-bindings: Convert gpio-mmio to yaml
To: Sean Anderson <sean.anderson@seco.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org,
 Niall Leonard <nl250060@ncr.com>
Cc: Madalin Bucur <madalin.bucur@nxp.com>, linuxppc-dev@lists.ozlabs.org,
 devicetree@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Rob Herring <robh+dt@kernel.org>,
 Camelia Alexandra Groza <camelia.groza@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Bagas Sanjaya <bagasdotme@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, =?UTF-8?Q?Fern=c3=a1ndez_Rojas?=
 <noltari@gmail.com>, Jonas Gorski <jonas.gorski@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org
References: <20230306191535.1917656-1-sean.anderson@seco.com>
 <20230306191535.1917656-4-sean.anderson@seco.com>
 <4c039e53-e3ca-29d7-e5ea-f24e385d28b0@linaro.org>
 <42ccbac0-53e2-f599-fb3d-064b896bde4a@seco.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <42ccbac0-53e2-f599-fb3d-064b896bde4a@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_004832_550049_14C7D64E 
X-CRM114-Status: GOOD (  17.00  )
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

On 07/03/2023 16:35, Sean Anderson wrote:
> Hi Krzysztof,
> 
> On 3/7/23 03:42, Krzysztof Kozlowski wrote:
>> On 06/03/2023 20:15, Sean Anderson wrote:
>>> This is a generic binding for simple MMIO GPIO controllers. Although we
>>> have a single driver for these controllers, they were previously spread
>>> over several files. Consolidate them. The register descriptions are
>>> adapted from the comments in the source. There is no set order for the
>>> registers, so I have not specified one.
>>>
>>> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
>>> ---
>>>
>>> Changes in v10:
>>> - New
>>>
>>>  .../bindings/gpio/brcm,bcm6345-gpio.yaml      |  16 +--
>>>  .../devicetree/bindings/gpio/gpio-mmio.yaml   | 136 ++++++++++++++++++
>>>  .../bindings/gpio/ni,169445-nand-gpio.txt     |  38 -----
>>>  .../devicetree/bindings/gpio/wd,mbl-gpio.txt  |  38 -----
>>>  4 files changed, 137 insertions(+), 91 deletions(-)
>>>  create mode 100644 Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
>>>  delete mode 100644 Documentation/devicetree/bindings/gpio/ni,169445-nand-gpio.txt
>>>  delete mode 100644 Documentation/devicetree/bindings/gpio/wd,mbl-gpio.txt
>>
>> https://lore.kernel.org/all/20230126-gpio-mmio-fix-v2-1-38397aace340@ncr.com/
> 
> Thanks for linking to that.
> 
> I believe this patch should be applied instead of that one because
> 
> - It documents all the registers, which were previously only documented
>   in the driver
> - It handles the endianness properties.
> - It consolidates the various descriptions of this binding into one
>   schema.

Sure, sounds reasonable. You can just quickly check if my other comments
apply here as well (but seems not):
https://lore.kernel.org/all/4df3ec7a-e4af-89bc-9eda-21150395a935@linaro.org/

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

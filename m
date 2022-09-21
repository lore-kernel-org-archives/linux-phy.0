Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16B05C6FA82
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 07:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30sQ0C6zWCP1knPkwptcQZG1Q0wZ1yBbTm5SSTXp5LE=; b=VVtC6YiBNUiobl
	uig7/L0cZeuPgyFy9s2P3U7iHV1FgBEzgDEoGqfp+idipeOOMxyY7juprcMHbIFZ6KiXMUdz1XSl2
	fuMEmTyoUoxKX1Lzc0hzSV8SzDZCcKJ8nGHoV2C11huu8CizaD8q+VhCzyLMrjAgGDdjcOOAKTK9n
	b2WNeJFSrLdz6CreKtlQZw786Qhm+/Jt6XHPO1t4uUA8qv3ZYk+srUueu4QkXgpyDVSs37G3tm6q7
	uiIireiPWAvpHDwy8pwtJERTt5+HYwmgsS6gtfF8s4fkKCdJ27CJMxHvc9rWw24irh9mXHdBGW2IZ
	Oe3zcTqzM3U4+rS29KdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oau6M-009Zoc-EN; Wed, 21 Sep 2022 07:24:58 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oau6J-009ZmE-QN
	for linux-phy@lists.infradead.org; Wed, 21 Sep 2022 07:24:57 +0000
Received: by mail-lf1-x132.google.com with SMTP id a3so7716662lfk.9
        for <linux-phy@lists.infradead.org>; Wed, 21 Sep 2022 00:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=bFJYG4PVqHBTVTlENsGYmbnITZO/CIPfqSC0ocjrjBw=;
        b=PNb0mK3OrJ4YcwIRdrsHRakGLywEGmQt1IIEtdw52ex8fbqnxhkqjENdlaWJM9jnAL
         Wq6+Eq9Wwmz5ff+1BAMBmEtyDqWUNl0D1gQO1C3OzBcx/jObUWy+owPth/8P3t4KX3li
         D8VmSiMB4M1H4omLiPoYJ8K+IcdBklh41ZkiD/qcG7Ffy2dgJkUP5IxLjAWpHeuXBnQI
         i2jLLmEWPfonwKnAc7XsMN30gKBDRr4K2gf8q+5YfanprtU/tDhI75Ga6zqkcM3FvZW3
         FAOoXGhrYjkVs4QGRFhv5ijj82TJAhQJNhXLrBTfwXNGUZx9vHJIhk0AZFXGDGrciip2
         e9ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=bFJYG4PVqHBTVTlENsGYmbnITZO/CIPfqSC0ocjrjBw=;
        b=F3MuzQwUGKn0Cyix4J00G2Yu321jI2L1VWcU/1xLElIin7X6ZjJm5wiTzVrAVrtXIu
         c72zVlNgQNu+7s1rXcITLMgnKlIMMmfwuteCHQXfgiWvrhZ+bE6WxwnAMSIWLY8Z111X
         Yq8C+g0hfjmtreDilZq1s3+uB11sPSrHyLxkcDi7/Bd8opKN4oQb4ohoGkVMQRgRfSQC
         mvOzN/HSuJ8z9KVyQdY2RMQyYiyRcreoj9vFjZULWuRhwlL5aYk0gSzEkwSpfEpH4YCs
         RNs8G3jjocsBIu5DIi5RH8pZqmIcwjVS7zoYc2kG2+Zy6AGy9SDFPae/0ULfG8DP2KXG
         RCTw==
X-Gm-Message-State: ACrzQf35TMdcuy1svg6bRX1Vnnv94IheVIH4hJlyDN1RDxgFG/9dWOVe
	V6fbaac6Kv5bwUUpUbSElll65A==
X-Google-Smtp-Source: AMsMyM7AA/q1qWS+D/jrpdkjuMOdY9vnfSG/BqIGL59pYeC6eo/uWtVTrWMMF3B7MxVAzIFcpSwafw==
X-Received: by 2002:a05:6512:13a1:b0:48d:f14:9059 with SMTP id p33-20020a05651213a100b0048d0f149059mr10599822lfa.110.1663745091970;
        Wed, 21 Sep 2022 00:24:51 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p22-20020a2eb7d6000000b0025dfd2f66d6sm310330ljo.95.2022.09.21.00.24.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 00:24:51 -0700 (PDT)
Message-ID: <74b6b670-747a-f326-44ea-7588c3989b0e@linaro.org>
Date: Wed, 21 Sep 2022 09:24:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 3/4] media: dt-bindings: add bindings for Toshiba
 TC358746
Content-Language: en-US
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Marco Felsch <m.felsch@pengutronix.de>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>, mchehab@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, kishon@ti.com,
 vkoul@kernel.org, hverkuil@xs4all.nl, jacopo@jmondi.org,
 kieran.bingham+renesas@ideasonboard.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kernel@pengutronix.de
References: <20220916134535.128131-1-m.felsch@pengutronix.de>
 <20220916134535.128131-4-m.felsch@pengutronix.de>
 <YyZTCsflWtUbo2ld@pendragon.ideasonboard.com>
 <20220919100844.bb7tzbql2vpk76xz@pengutronix.de>
 <YyhDO4ohv47uIij2@paasikivi.fi.intel.com>
 <YyhKoDxFoobY9vBd@pendragon.ideasonboard.com>
 <20220920152632.mjpgpmelvx4ya4k7@pengutronix.de>
 <Yyn5MqqKYH7VpFhw@pendragon.ideasonboard.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Yyn5MqqKYH7VpFhw@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_002455_932434_A5F95537 
X-CRM114-Status: GOOD (  14.86  )
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

On 20/09/2022 19:32, Laurent Pinchart wrote:
>>>
>>> Explicit bus types in DT indeed makes it easier for drivers, so if a
>>> device can support multiple bus types (even if not implemented yet in
>>> the corresponding drivers), the property should be there.
>>
>> Okay, I will make it required.
>>
>>>> Why do you have hsync-active and vsync-active if both are always zero? Can
>>>> the hardware not support other configuration?
>>
>> Sure the device supports toggling the logic but it is not implemented.
>> So the bindings needs to enforce it to 0 right now. As soon as it is
>> implemented & tested, we can say that both is supported :)
> 
> Bindings are not supposed to be limited by the existing driver
> implementation, so you can already allow both polarities, and just
> reject the unsupported options in the driver at probe time. Future
> updates to the driver won't require a binding change.
> 

+1

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03D21ECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Sep 2022 11:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UsBiUTkL5qwZ7k1uIP1XQNppcy3BQx+HXpdWC8BQciE=; b=UungcrVYviPuNh
	XXeK1dq0GLYn8RI/xLM9xO8hinzXVwN931GIGnAohBai791EY2YNugmz0mbE1A57l3/YpPYjkIHO8
	1l6IkoiabXyAWI98209/112gyNWmV0ni70GshVWSLK8rnU9kILmqR1kmkiuHgnyIRRxbHMYy3rxz9
	5mpKb+CXR0y6Hc5LsBp3VJU1uaYAoik5wdpFMDBWMYvEPe5DttLmKnYjDm5lZtnIJ8BwbXoX3/n5B
	OffQJlbXvNG8j75ksTS6FFaZ08+0puKMKlaI6PkdYjuTTuG3Cx80JLwCYReJP0QPJ/8vPrnwoOGUj
	3XwUJMT3VvKxCpJFNGTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXhJe-009AA1-DD; Mon, 12 Sep 2022 11:09:26 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXhAZ-0095Kp-3i
	for linux-phy@lists.infradead.org; Mon, 12 Sep 2022 11:00:05 +0000
Received: by mail-lf1-x12c.google.com with SMTP id k10so14195384lfm.4
        for <linux-phy@lists.infradead.org>; Mon, 12 Sep 2022 04:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=4DmliD4/zIbuq1/hYo/pvsJYEUacMOuT576x7WYBpkI=;
        b=xYUh82Zyx9wOjMvPUvP+6d7lEmi4uSdWgPAbfRDS31BFI3WiHx1bLSVHb04/dG4Xjt
         Oz0XaMRqI+RVrljbCSOuNVrEXkRG6q3MW/uEvM5yMMIhf8rOP9XqaO6tvsqfkGdWAgNl
         YOPs4EXq7jJo1pJe+u3F9jG4xAJOnlBk1Ng++dbH2681nHE3h5HyiBiJS0997Sc6nZvq
         V/alJlR3RKx8runQp//qjUyRQL7hwXkgJfs/Pj+qPAbWTfgmLxWtnVJjAmhPV6/Pivla
         5WvQaYYrwngfOq4GFdJDVGptZt+d7WaDa8SGOzspQ0HKtlyGhwmWTkHzuZYCGTsWlfXb
         hxbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=4DmliD4/zIbuq1/hYo/pvsJYEUacMOuT576x7WYBpkI=;
        b=7uqXULnDVjlojRfAjhI5mf+3bPbDFag6JRPJBqhGnR4NOvBmaZALwsfM9pQ3iLLrGW
         qxuut7VSymGpV2Zf9L3H2htpeZ4y6BP/JpIjK1zVYh/7JaALkIguF7qryswuIHfAI7nM
         1Oi52tyLxMhX5tJMjVn53p75+8dfztw9PkXylEB74kK/ygKv0XuuQtdkxLTtnd74PICx
         VESf0X9oH6Ov0ehniMWD8LNHFH3VyF9RqDFi1r0k2JN78Zj8RzAnkKMRF7DJasGsfhBS
         CryoB0lpTf9EyVup+eSdtTlDulU5yky81Z6iwQ5BLGVa4raNRrHV07VvOk7LSwP2jY/2
         MEFw==
X-Gm-Message-State: ACgBeo0pF8eunDsb6Q3zeXBkcAnGfr5KRwy2GPGhoIJo7iw0GloIRxd8
	c+2GgpXNEJyw+QNntNO3Q3gILw==
X-Google-Smtp-Source: AA6agR7JWVX4/4qKNWe/mwV9K0XiykbUAzUfMg4rLs8KCX/XP+IHWn3pNWkdAf9vO1D8pXUcvatRGA==
X-Received: by 2002:a05:6512:c18:b0:49a:d44b:435 with SMTP id z24-20020a0565120c1800b0049ad44b0435mr1144873lfu.468.1662980399214;
        Mon, 12 Sep 2022 03:59:59 -0700 (PDT)
Received: from [10.129.96.84] ([109.232.243.34])
        by smtp.gmail.com with ESMTPSA id s15-20020a056512202f00b0048b003c4bf7sm1002592lfs.169.2022.09.12.03.59.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Sep 2022 03:59:58 -0700 (PDT)
Message-ID: <0826b754-4027-bda3-b8ab-06dcb7292c90@linaro.org>
Date: Mon, 12 Sep 2022 12:59:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/7] dt-bindings: usb: Add H616 compatible string
Content-Language: en-US
To: Andre Przywara <andre.przywara@arm.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, Karl Kurbjun <karl.os@veroson.com>,
 Icenowy Zheng <icenowy@aosc.io>
References: <20220911235945.6635-1-andre.przywara@arm.com>
 <20220911235945.6635-2-andre.przywara@arm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220911235945.6635-2-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_040003_224956_A75D24C2 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
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

On 12/09/2022 01:59, Andre Przywara wrote:
> The Allwinner H616 contains four fully OHCI/EHCI compatible USB host
> controllers, so just add their compatible strings to the list of
> generic OHCI/EHCI controllers.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

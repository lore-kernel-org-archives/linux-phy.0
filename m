Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06751C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 13:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvkkfK5fX6ET6G6un9Csg5njqlUd5z/X1ezerJ5YPAY=; b=pdtvN36FeVTVrw
	7kexSQbxthssdIkMf2oSwJM2WNlHPMDHBwsI+JC8jg/pkKrESsoYi1O3ih54rnTbTj7NmoQoIHljU
	O50m7/e3wo9p5zu8WYIudUoiKkRJ3mTobcZNvzJ621S7clTvnP2Uf3UYteTBWR/5XJTN0HI1/75CE
	J2WOdzQe6nrdJGic1mmWPFE/EnojtMKQ7lOhxZMhDDCeiy61zIFau16kpajOGSca5BM8wfdFfa4qg
	r6EbWJkbp9dl1+iHPeyu4Q42Qcb7+aGmKQR1o/KeNBmQAkpC9YDH9BicCmFxUcBv9z6ar/zq5T/+i
	0wmFtHCPSNLZmIl2no1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oibVa-0085eN-0N; Wed, 12 Oct 2022 13:10:50 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oibVX-0085dU-8C
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 13:10:48 +0000
Received: by mail-qk1-x736.google.com with SMTP id z30so10360565qkz.13
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 06:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C7G2Yq+rJ1ZhtKUz9+hk3hjumuAmKCtJeLM6FaHLR48=;
        b=EBBu9Jumc1NjlI14sXDx18bN/BhlEoRIemgjAThwEMFR4FDMdr837XPmF153c97kiv
         KgcAuD/nM2Euj12kgMiaOXwAOTRq++/xwzxIHQmpe6xRr1dqHJ9MqCeA0wdscFQgL02T
         CF1Hk19v2NS1ExOdWA0ZFZYbLAmAIWU+Xr5GoCiIpHRVVNzhVvWjKtRJH29P+eGXrADl
         6nbKtAfmckcRubnodOptTE8/cnKXnI8/6vjIoMXu3UUADv+mF4+YcqeTq3/VO7ndRtX1
         hOhdAW3sgs2C1nkaSDXIr6P4rIAH1T94fuJJEAZ3zc7ZiMBzfB3S499/GZOz10ZE7NX6
         cigw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C7G2Yq+rJ1ZhtKUz9+hk3hjumuAmKCtJeLM6FaHLR48=;
        b=52hlMJ1LRz0sG+BaIL49VJsMU4H7OyqRSeOk90Zu4BCjfSwSgkmslskC9KcchEZABV
         TXBAKwzA+PSmFEfHRWyAdS/D7EnVQJsqmA1NeHmKPdWvaPLtVwElKsZfyc0paKv6drtN
         HBCcSaGr3hc42m+ypoqyCwloKCz5gs1QLch+gCtRUpz8T3sqXuJ+iEvxKcIEMUVYzZP4
         DBm9idTgp/cRJYgmfurDJwh9CEYXahcF4ZDgdYtRzqOg49nX5Idn/YXAuh1xfmWuBToZ
         iU1+EgFSlSkovMCEYDJDTYVR91fRhRmJ0HtKbV/VMdc964OeuhXbv0u/wNlN6AKc+W6/
         nyfA==
X-Gm-Message-State: ACrzQf0wKlx6z9tht2kAczXsoSuE9cMU5cEzWb7PEq4Ewb8fjjjQrUgH
	5j24MK7CAQiumek4faXyCgcXiw==
X-Google-Smtp-Source: AMsMyM47s2HEd/ei/G/HHcLx+xnZuL6fbjDhrLQjxBM2msx4b/k/ATJETtbWtIuy6tjp4xspUJ11Ug==
X-Received: by 2002:a37:2e84:0:b0:6cf:8dd4:7adc with SMTP id u126-20020a372e84000000b006cf8dd47adcmr20148712qkh.723.1665580244143;
        Wed, 12 Oct 2022 06:10:44 -0700 (PDT)
Received: from [192.168.1.57] (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id br7-20020a05620a460700b006e9b3096482sm13642940qkb.64.2022.10.12.06.10.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 06:10:43 -0700 (PDT)
Message-ID: <4e5ed6bf-8af1-d8b9-b89a-e9207a6ea756@linaro.org>
Date: Wed, 12 Oct 2022 09:08:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v2 03/10] dt-bindings: usb: sunxi-musb: add F1C100s MUSB
 compatible string
Content-Language: en-US
To: Icenowy Zheng <uwu@icenowy.me>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andre Przywara <andre.przywara@arm.com>
Cc: soc@kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
References: <20221012055602.1544944-1-uwu@icenowy.me>
 <20221012055602.1544944-4-uwu@icenowy.me>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221012055602.1544944-4-uwu@icenowy.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_061047_341806_EA480718 
X-CRM114-Status: UNSURE (   9.98  )
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

On 12/10/2022 01:55, Icenowy Zheng wrote:
> Allwinner F1C100s has a hybrid MUSB controller between the A10 one and
> the A33 one.
> 
> Add a compatible string for it.
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

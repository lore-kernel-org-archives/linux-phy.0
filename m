Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1030C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 18 Apr 2022 15:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rchj4TnHE6ctFx+/f+K5fpeR7TuVdaxEA5o+2Sn6nZ0=; b=NxEq9kZ8o1wT14
	tlPD8uAgA9TeWgqxAiunV62Evq8+Kry4v27ImptNH08PQxsNW/PbL7hjqLxY2puIiX51prES4q+HV
	AOkPj0xvO9VkpUNMLXiKiws4o5pQlA/lZvsLKjRAxnSCDIiLHi3UlP/yH1jaYPA94mX+8wciLOg7D
	gplUDZi3jVhwfdFs3ELbgMPD6S1rRFWgzebRkAvO5N0P94F7KaY/H6tHeBqzph1W23skW9xwz8WKb
	/stOBoHQGXmr7HGMODTcBPy27Uh7YA9MopHR1YsYtrRFkAiLKxv5fqb/xzdW8oVP7eMwsecARUY8D
	wy7SwUcXzQrx00A13ahA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngTiA-00HYY1-4Y; Mon, 18 Apr 2022 15:54:46 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngTi6-00HYUN-Sj
 for linux-phy@lists.infradead.org; Mon, 18 Apr 2022 15:54:44 +0000
Received: by mail-ed1-x52b.google.com with SMTP id z99so17919788ede.5
 for <linux-phy@lists.infradead.org>; Mon, 18 Apr 2022 08:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=vExbQgWTmo9cdYRjO3lZaZafAOj+3myJ54HYnxwjwJU=;
 b=wuoq961CO62wyGxE5bgeAgujXr7zZQiAQ5NJ7ce4QC79dgFvD2vhmS3tQuQ0jzoarp
 rAlPTLhDe7CAX/VpoRcnBxqvMQfU6In9g+pE9BcRciHJmYL4niuCUA2d+HXs6VQHSJl+
 zZiNnwwYfrfCGkaYVOSESqazWzKQl48myzXFkhAqnlrCUvAFqyEp+saWlcENjnyFhmZt
 lW5n5Fc16/wwCAMqB4k6vzgVq572yFU9vk5K5C2tY3mVAxLuYI5m9S9P7JmUX13ZCKX6
 i9j2JU5yA5jOIURyyBLPevztjcqODsHGgQZ0hrqv4rw/OTNWPRte7UuQfM7lYtW0x0sY
 gHCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=vExbQgWTmo9cdYRjO3lZaZafAOj+3myJ54HYnxwjwJU=;
 b=xyL3tt6gQPKq3IXYvFiylYrZRiTqHyDxD+2jDr+ljYOVzsXfGbV0vjsTSC9k5AAQks
 uMNIiZq/QZbUO9UmpEe8Ua514tA6uFANUaAyjeNEW9D9oB5kSQeobIP/LnoTWYwZl8zi
 S5gpW6zFG2N2ZkB6nc1/WmrA1FoJLhRfhZ9AWvTJcKBsEuucvcmQidd2zjseNLHAXhYM
 iLhQGIONJiWfi5nsucUeEq5SOVKMiFvh/uwP/hPrdgSoW1yXr3dYPrkjhZzRESbaNade
 T0//Q7HaiyfVLFVRi/D/d9RQF9HtCQcyI95MiSat828l8j4A6d9EhgT4ET1gIcdO+kRt
 94lg==
X-Gm-Message-State: AOAM5312dl/nzVodYxaRSnG8/mesV0SwJ2P/0VsCac20zg97AP+5xSU4
 qO+IeGpSDwJDMUbS7QT1iA5+8Q==
X-Google-Smtp-Source: ABdhPJxOU8XpoJAVWxnURpK73rhpEpQrFHR9tM8mD6DChWAt5Z1BftpA7RiDI3n7wvUfSZnXuXn8mQ==
X-Received: by 2002:aa7:ce11:0:b0:41d:5b84:eecd with SMTP id
 d17-20020aa7ce11000000b0041d5b84eecdmr12739801edv.15.1650297274423; 
 Mon, 18 Apr 2022 08:54:34 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 p2-20020a056402154200b0042323822e15sm4584540edx.74.2022.04.18.08.54.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Apr 2022 08:54:33 -0700 (PDT)
Message-ID: <02b3fe1c-12f9-8f96-a9b5-df44ca001825@linaro.org>
Date: Mon, 18 Apr 2022 17:54:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC/RFT 2/6] dt-bindings: soc: grf: add pcie30-{phy,pipe}-grf
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
References: <20220416135458.104048-1-linux@fw-web.de>
 <20220416135458.104048-3-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220416135458.104048-3-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_085443_012267_350A7B67 
X-CRM114-Status: GOOD (  11.99  )
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

On 16/04/2022 15:54, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add compatibles for PCIe v3 General Register Files.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> index 3be3cfd52f7b..ae48b58bd062 100644
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -14,6 +14,8 @@ properties:
>      oneOf:
>        - items:
>            - enum:
> +              - rockchip,pcie30-phy-grf
> +              - rockchip,pcie30-pipe-grf

These are without SoC parts. Are these PCIe v3 General Register Files
part of some PCIe spec?

>                - rockchip,rk3288-sgrf
>                - rockchip,rk3566-pipe-grf
>                - rockchip,rk3568-usb2phy-grf


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

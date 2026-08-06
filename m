Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15E6FC56208
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 16:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJqvmQqneVROYKBavEPlvUNINR2aP30ra47kJMmT8Z8=; b=ArmM3S4ERdacre
	1o65l27qdijs9Tcq9MPTcladndKiiUS1Iu99ZNNXpRbUG0Ztwst0qAn+Kwkqg09V791f3iIbeTQw2
	rGXv3Ij4g5JTE4ZmjKqt66ABckiHV+3TTkpqpWjrY6rXLX3LRoaJ6er4eLcAK4X5BakGx3lh2XTw9
	JJVOsjnxLMyvqq8ZD1725A0eWPcEN2glNdg4WKqEvIqXUDc7/jJfEEgl2j26p3nhAEWfd/JdT+n81
	Ec6hbUPWl64wbVKBWtnqeJr+fBng5qHTJGbkknQKlf2nidsbI5YUGfqUpQwAxMnEzXml/CvaUgKBD
	mLhK1LMcvtX359MDI1tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0jT-00000006BIh-3EuF;
	Thu, 06 Aug 2026 16:14:11 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0jQ-00000006BHA-3vwZ
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 16:14:10 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-493b966dd74so14789465e9.3
        for <linux-phy@lists.infradead.org>; Thu, 06 Aug 2026 09:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1786032846; x=1786637646; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=tXxkSVa+2eu05dZjUDlR4s5Kc7ssR4Aj7dZF9elDO2E=;
        b=Km1yso2zg5iV7C9xhh3PhRiJelF4SCzfzAgFp5R1Ug224sOkQS5Z0X+urZKIFbWf1I
         3WPzbE1oRl7IWovRgoFQTc4N+d+vNANJqiJq2LNhIa6RuRxNs4TcAz9uMqx5QT3PgjJC
         W872uBtjByDW+ejf0jaslXcKDvaOd82a50VFZfpNfxkVCPtHrweY5C5XAyPe9c0NPxM6
         y8W+tg/KkgwBdIWoaFhHlt8NnSKz6VaSvLm0ARfYamSLSAQDpCotD+dnUAgQTQKpv3EU
         FcccuyBjLZeQV59awNqBSjzetFhyoFU4gQIZ4n5Hq7ezY04NUCJ0nKRVgGfr/7yb5eD0
         uNMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786032846; x=1786637646;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tXxkSVa+2eu05dZjUDlR4s5Kc7ssR4Aj7dZF9elDO2E=;
        b=dSKsleHj251IHxo/KZx1ghy+GU6RGTGLowBHkcCWt3Om6MlrG/6ZSPY9CqC3g9FWP0
         ssFXDNMgHApzC2W+uKYBCxpqtu7mMAiGgj1SOJ5UbIFwaNRB2FJt3Au/MhnbwwuNbnvN
         G+veYMnE/zhPr+IWxCMUXTkSDH6P0THpUgwlnQJWEIPT7WsZnCX0jAeLZD597MKSmWCm
         niFH0CDNU3cfRtXRqQhWsAhkT793YN65pxMkbfsnixmZPHNeL9er8hYvd9vHgc2gCV8t
         llvT7Pq/zjwts3LWRfrXsVJ0VGNnuLE6KT1T5FtO7ztoCphp6m4WmoGwV9KGa+mQ+KEW
         E7BQ==
X-Gm-Message-State: AOJu0YxV4HX1D1iO/YfOyyQvF8isTRYUwtjeJG/SnhHtmm9Hn96Xch5B
	jy4YIXsmLM9VDIuzZ+9l+JrjMbbKqkqApzHgM+sEc3TsrzcaZTgU3h/FNdvwLtScGpA=
X-Gm-Gg: AR+sD13xJ+55pW8PVatRebZ0f9Zrq3wmXnFP1H4JuzAunV0bFwDMfk9L4uflK9HSkVK
	PggWUxMLP6DmODSPRdkzuQLIkQHHIsltGJ/jVuIzGh/yCQjOm/l7iGDv5l0D1uHnzPf+7xbV+8f
	vO8kF9ZZWFQXkqjx/4BkdCoE1pnKWIAE+rIg4FNmwn+6Z00OPjMdtWnokKnXGyexdVHX6yy2Kv7
	cbWABCdHhTFE3XsxfqvYdBgQbaxmpi8Ynne4cE0aoe40foHGsltbDUD+MXhVGL0504niXv1fm+P
	GdPYAGY8rHbCoh6j2cewx6xVUKJdYokEWDa0Zqi+AIv/6cCMq0CMLUaT/XgRfgm3MjnW+HjUxFZ
	gt8Zca7FyQdMQ7qSTQlNiQmobrLpT4E+6K6ZGxSGChrt76P1TRbj7S2HdDerweIXyI3gav9hF8L
	ozN4oKJB6AxPZt8fyvRw9Y8nzaYbrZ8R3QcsOGMUfNPgtQ0J/ka3pmsd7OrPzw54FFUBOrmZ0CG
	Q==
X-Received: by 2002:a05:600c:4ba2:b0:493:b6ee:fcb7 with SMTP id 5b1f17b1804b1-4994e7d3434mr142978515e9.14.1786032846564;
        Thu, 06 Aug 2026 09:14:06 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.115.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4995421b198sm84909005e9.7.2026.08.06.09.14.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Aug 2026 09:14:06 -0700 (PDT)
Message-ID: <ccf41669-685c-4657-9ffa-7053719bd539@linaro.org>
Date: Thu, 6 Aug 2026 17:14:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: rockchip,rk3588-mipi-dcphy:
 support per-direction phys
To: jason98166@gmail.com, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Guochun Huang <hero.huang@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260726-dcphy-rx-v1-v2-0-cf9cc34a412a@gmail.com>
 <579EMzIB4QpX971YyewFrke7qDRTnb7VISWtBI86oM2PJpls9AOXn5nKFyv8PA9EiZWOiczXm9LbDAO8XTkrig==@protonmail.internalid>
 <20260726-dcphy-rx-v1-v2-1-cf9cc34a412a@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20260726-dcphy-rx-v1-v2-1-cf9cc34a412a@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_091409_003690_4C69ABF8 
X-CRM114-Status: GOOD (  11.74  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 26/07/2026 15:55, Jason Yang via B4 Relay wrote:
> From: Jason Yang <jason98166@gmail.com>
> 
> The Samsung MIPI D-/C-PHY block on RK3588 drives a MIPI DSI transmitter
> and, on the same PHY, can receive a MIPI CSI camera. Describing both as
> independent consumers of one PHY requires the direction to be expressed
> in the devicetree.
> 
> Allow "#phy-cells" to be 1 or 2. The existing single-cell form still
> selects the PHY type and refers to the transmitter, so shipped DSI
> device trees stay valid; bumping the cell count unconditionally would
> invalidate them. A second cell adds the direction, letting a DSI (TX)
> and a CSI (RX) reference the same PHY node as separate consumers.
> 
> Add include/dt-bindings/phy/rockchip,rk3588-mipi-dcphy.h for the
> RK_DCPHY_DIR_TX and RK_DCPHY_DIR_RX direction constants.
> 
> Signed-off-by: Jason Yang <jason98166@gmail.com>
> Assisted-by: Claude:claude-opus-4-8
LGTM

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

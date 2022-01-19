Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 667D3C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 19 Jan 2022 07:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ho/hbTyQAkMSAGuwZZ6YqJYGa9LZkEuph6aC4by0RpE=; b=LhHbwM3stYxAF6
	6ArWbNlDFpnxFJXWVwhK1XScQbPSCfrWVYN0hOw1pQUlyxSSKGLRBkmLUiEFf3HiZaYw0Pci4dQ5w
	r7ebgrLHC4TUSZpSKPdIYHUT9hOniW1NKFNszLxShEHj1ySi4GbEwcLd2mJY3aiQhNcrBlaPOfx9q
	KvarJLtsm/so+E/8Tc10zlwurHPdCLIzoRgcK+9BTBpRmrH+t4GAeH/fwSI5OXeUYQ4sKkwjdOTm6
	5yX/it6aevxrLcBGUD+sRUqJkjxkQVeCP6iDUHl6M68mDoG+sMTMAH2V5gaufRBz6FhyQmPZzACiR
	+1aF7WcSYNgEQJDdDNrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA5ak-004D7f-Qm; Wed, 19 Jan 2022 07:41:14 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA5aa-004D2m-SH
 for linux-phy@lists.infradead.org; Wed, 19 Jan 2022 07:41:06 +0000
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id ED6094004F
 for <linux-phy@lists.infradead.org>; Wed, 19 Jan 2022 07:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1642578062;
 bh=KOwrbfmVaaY4sfUgcL8mu/NpRfAwFGVtSAETT0kqBAg=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=tM4hYFUmnVKwE6JtmTgY2vHw1PlK/BJcgXkScI3R6HS5KGJFxTgLLpAdWyovVJAm1
 xW3fXPKfjneZ5tun3ELc++2tlgnenxd8vXA4YGe5tI661o8vzIu+vZLlj5C55JcSdm
 +NG3SXq9rdN7ul3MviN9y3h7uRQmpQwfIlIbWlkESXcRbVNK0Z2RVt/nrC/mETjTLr
 gkuyV4fXRsL6lg8U7LL1Mk3weGsDERUtcwFxDV6fmPlCFPd89xxzDAOXzrmjl/STGE
 c2y+KggX0wjG28JBpDLhmML72Co2pWizSlAqCr5t4iJuawalNjYtpqToLwvbyiM3iW
 tVPFETDBZ5eUA==
Received: by mail-lf1-f69.google.com with SMTP id
 f10-20020a0565123b0a00b00430a73a67f0so973890lfv.14
 for <linux-phy@lists.infradead.org>; Tue, 18 Jan 2022 23:41:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=KOwrbfmVaaY4sfUgcL8mu/NpRfAwFGVtSAETT0kqBAg=;
 b=CVARkQZLu8lmMUFT3vqL1JhtavqwKI+CfqIfWLU7LLrRXuiNo5xnqZ+ruCHVYSroDK
 szgLNvxE01PzgE1BiPwKU7ptusIsFnfMv7lAd0qLActt/3C0kM8JH7zYETPELd6sxmv+
 oPOLD4fvb02P08XSazV8MGcUvF1pj2gxvrjOVef3AXRn+1ZCy9B4oM4Kmy8YkJ2aFxUl
 P21JIeGgH2vZ1jb1510n3FNR16J9xPc+PiL7Z/WjIIri2LzTQUm65YiPUcHQCmKHKvOC
 MW8kmAQgqTO0TcDD2OcPSA2ZIiEj+Qnusr/hUXsF7OuMyD5B+gxUm+/3sBkoSGgvbArL
 1Eug==
X-Gm-Message-State: AOAM531b1farmq8DpD7N39h8bBzwYJ4tmhQ6ZLfdCOIePo91n+dPa1xW
 jPSZxgMdyBPUXp4iIrqRHgxBc5Ots9O/BnHOl+lhN2HUg2lmLYhtXF9z91Q+puC8rmD9FFPHWbr
 Ybt/hnnm6+vSFLF85SM4StN7bTUdUyVziaTaYiSz2PEs=
X-Received: by 2002:a17:907:7ea6:: with SMTP id
 qb38mr23673577ejc.557.1642578052199; 
 Tue, 18 Jan 2022 23:40:52 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwcC/F4TT/k1wEFa2HsX2oDgdxrLKxkyNjrLq8ReErAXQsVWpB2ePW4VmJCVcsiAdC0JWuWGg==
X-Received: by 2002:a17:907:7ea6:: with SMTP id
 qb38mr23673541ejc.557.1642578052033; 
 Tue, 18 Jan 2022 23:40:52 -0800 (PST)
Received: from [192.168.0.42] (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id d2sm791994edy.86.2022.01.18.23.40.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Jan 2022 23:40:51 -0800 (PST)
Message-ID: <21b72055-e158-6586-f48a-17695128b507@canonical.com>
Date: Wed, 19 Jan 2022 08:40:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH] dt-bindings: Improve phandle-array schemas
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Vinod Koul <vkoul@kernel.org>, Georgi Djakov <djakov@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Lee Jones <lee.jones@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Jakub Kicinski
 <kuba@kernel.org>, Wolfgang Grandegger <wg@grandegger.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Vladimir Oltean
 <olteanv@gmail.com>, Kalle Valo <kvalo@kernel.org>,
 Viresh Kumar <vireshk@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Kevin Hilman <khilman@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Sebastian Reichel <sre@kernel.org>,
 Mark Brown <broonie@kernel.org>, Mathieu Poirier
 <mathieu.poirier@linaro.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Zhang Rui <rui.zhang@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-ide@vger.kernel.org,
 linux-crypto@vger.kernel.org, dri-devel@lists.freedesktop.org,
 dmaengine@vger.kernel.org, linux-pm@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-leds@vger.kernel.org,
 linux-media@vger.kernel.org, netdev@vger.kernel.org,
 linux-can@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-remoteproc@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-usb@vger.kernel.org
References: <20220119015038.2433585-1-robh@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220119015038.2433585-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_234105_068462_B1478AD2 
X-CRM114-Status: GOOD (  14.75  )
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

On 19/01/2022 02:50, Rob Herring wrote:
> The 'phandle-array' type is a bit ambiguous. It can be either just an
> array of phandles or an array of phandles plus args. Many schemas for
> phandle-array properties aren't clear in the schema which case applies
> though the description usually describes it.
> 
> The array of phandles case boils down to needing:
> 
> items:
>   maxItems: 1
> 
> The phandle plus args cases should typically take this form:
> 
> items:
>   - items:
>       - description: A phandle
>       - description: 1st arg cell
>       - description: 2nd arg cell
> 
> With this change, some examples need updating so that the bracketing of
> property values matches the schema.
> 

Samsung and memory controller bits look good:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

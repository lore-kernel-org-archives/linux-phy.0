Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57383C7EE26
	for <linux-phy@archiver.kernel.org>; Sat, 13 May 2023 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=clWvcCWLKpsJjp2Ke0zJv2lPcT5zCPkMPxTraHZHxvc=; b=CT1vZAhOPTrcBH
	JEsi7DRT2z1/pi2rRtnlcswp8M3RiqHeJ0UZwSyRDkatlp1orvxBzPJ8eH3ECt2oC19jVaV430fwn
	Z42anejFhoD8l5Yn4wwrd1MVHUNSjz/cXF8FZO2wtXFL70sCjmmBeGVX2zVd0UNGUU60iHksbqV68
	9W6nTOI3J9M16+RHALXrrrs0s819KZVm/nxs5sInqIdFF/hU0gXwvcUJqULD+/BN/1bWCElmAlNsJ
	mHKOr6BzRCffTl6Y5jqE/7ktf2sxvH1qSwOpDAsZplwhK5/g3X9qhIq8qRrhoYQEBsC9UsYLuL0Wi
	uis72n5UsbLhsH0+IyNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxtyq-00FZqT-2k;
	Sat, 13 May 2023 18:28:32 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxtyn-00FZp0-0E
	for linux-phy@lists.infradead.org;
	Sat, 13 May 2023 18:28:30 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-50bd37ca954so99296871a12.0
        for <linux-phy@lists.infradead.org>; Sat, 13 May 2023 11:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684002506; x=1686594506;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/skyL1sLWdeVWQOTLH4B/eNUzzrc9hV+v4n2aX70iXk=;
        b=G0WSmFIDrbVpJnxA9vpq/+boMjF9sbPpuRcq/wRTF+rvSiPClVefSbA/Jm14QEe6PX
         BXt+NA2Bbavm3P/r6lUp+m42FltmWO2O2Eo+W9Y2YjVaObvHtfcVQeKMGEkhMIP1EvHr
         RxYaVGxah6XG4y7V8ffKGPej4l7rM/TxK2jSHEWLR6AIplNAhqjjLptXJAfQnbBd6ooD
         dk71FI55LsAlOFey7nU7iP4DPulUDmZiLTi9pfMSkcXAZ4VYcABlBQM1RiXRIfEy0JJN
         snHoVzbzI6sxKlgJO4SlWsiBWaJXpjiaSjNi02viIIhOjY7O9QniU+IXRz7CDIAVh2c1
         n5vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684002506; x=1686594506;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/skyL1sLWdeVWQOTLH4B/eNUzzrc9hV+v4n2aX70iXk=;
        b=h5s5m4asSOzhgx/QLs1m0TA0jwAntq8JxwjwUGMD3klUxwHXeY9k6NtiP/bHvBVzA+
         3JzhJ6yqAI4JluwmYt0LnTXCGQ+N8cl9c8crvqYZ4LCEYk64G/pT7+Js/0DrRBuP8EHg
         IqGhiUO+P09v9VEWMiT8gfQVLoH4+cpF+o78oQ3Z155ndFrIsP3pCcnb+9UNqlWgYcgF
         ARMlntjnc2FNrX9Yk4busqSzG0CgVUmeAzqw6XXeg0oRyevUmDh9ziloA069SU3wvrJQ
         I+jzyxtD3Ot2Et2IwHquJvpUpQr+W2X8Wl2lKD+aj84L8TC5m71/7hNdJhEoYctRA9k5
         wO5Q==
X-Gm-Message-State: AC+VfDwrglt0qTOjHqr2tMG0qPgNVybpZNNqDjiSaX0l3tTcKrEjARG3
	ozX7AxUpN23sblGiOFFgcMlk/w==
X-Google-Smtp-Source: ACHHUZ6BZjAGfoNRaV4SZYpzLVlE5wxvvxIlWnwclnXWyUvW+KjYeL4jTHPXBIuhzNmNzRxBc6Fsmw==
X-Received: by 2002:a17:907:1c8c:b0:965:cac1:53ad with SMTP id nb12-20020a1709071c8c00b00965cac153admr28615039ejc.8.1684002506136;
        Sat, 13 May 2023 11:28:26 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ba68:e5c9:694e:c6e4? ([2a02:810d:15c0:828:ba68:e5c9:694e:c6e4])
        by smtp.gmail.com with ESMTPSA id de9-20020a1709069bc900b0094e6a9c1d24sm7172177ejc.12.2023.05.13.11.28.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 May 2023 11:28:25 -0700 (PDT)
Message-ID: <5cb38be4-a27f-dc1a-cbb9-c195505a9e7c@linaro.org>
Date: Sat, 13 May 2023 20:28:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v4 01/13] dt-bindings: clk: g12a-clkc: export VCLK2_SEL
 and add CTS_ENCL clock ids
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>
Cc: Nicolas Belin <nbelin@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org
References: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-0-2592c29ea263@linaro.org>
 <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-1-2592c29ea263@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-1-2592c29ea263@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230513_112829_156956_2C8F5602 
X-CRM114-Status: GOOD (  10.33  )
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

On 12/05/2023 15:11, Neil Armstrong wrote:
> Expose VCLK2_SEL clock id and add new ids for the CTS_ENCL and CTS_ENCL_SEL
> clocks on G12A compatible SoCs.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/clk/meson/g12a.h              | 1 -
>  include/dt-bindings/clock/g12a-clkc.h | 3 +++
>  2 files changed, 3 insertions(+), 1 deletion(-)

Bindings must be a separate patch from the driver changes. If this
causes bisectability issues, this means entire solution breaks ABI and
is not appropriate anyway...

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

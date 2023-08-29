Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D651C83F12
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 17:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QGI3LGZ65r9IFV4vw7o0/m0t47fxlga8nUM+YLan0/8=; b=2mO9uvagS4JLTl
	Wq5MmbW5K2WEj7nfvY19uz0ZnVpBwjZpZfrm74MYxTviDhEgWn1AnYBZIvQF6KaeNBhnpYQyxBWfX
	oasuQcZWFDvTt2Ggs5Y5uQod9RnH+gmI1Khf5h07E6HEKtepgEzJEIT00DuJy6/lgAUX0uVCgE5o/
	wkejlQTc0uDGDqtiUwVLyXTXSDfqLjX84eOtmpAScKscKtJF6n3yeGOFiIwJfaIeAgsENGPr8G43Y
	JuTFsGwNmm8JovPIaCeouCng/sambojMOsKp0Fifglpnl6nTmMjx7agwIi80qidCh53Pa4h95l4n1
	vSxC3BQuh79Exiqd4FWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2T6-00BzJP-2c;
	Tue, 29 Aug 2023 17:25:32 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2T2-00BzGc-2F
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 17:25:31 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-51e28cac164so62011a12.1
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 10:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693329926; x=1693934726; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AOsSOchRRigf+GMT70wdUDRGXijaBiL95u8f9cme2Mo=;
        b=CUejCbYIeBC4sUKctyaGbT0YAsGIBO5ELCJv0ulyJ97v0J3A/58jrSAoJHZyYogVHY
         T/CJMJcw489Vj1GQqjWHAT51Jxw+QlySys8n09aWsx6FwC9klxeI04HWx/xFaYPgS+F9
         voPEjl0SfsRBDQqQTuJwImlJ5Sx3bKaRaMNLOmhgnwSFaJEdGPeyPQo0lHJsfTf7ISxp
         UIQHuN6hxbeqoXixkiszdvmGR8nCh2YvmRAZOnitI2VpAE5P3TjBaAK+2GyJ3o5mqRXg
         x87FvrfaJTkwXYZjjRWU8mUE0B90u9VMeuuvhv9+p1Exn9XLDdX7w3cL/K+qcT0nimxD
         iY7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329926; x=1693934726;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AOsSOchRRigf+GMT70wdUDRGXijaBiL95u8f9cme2Mo=;
        b=ZXHp19r6S+UhW7JGMrkfO6BaDSj8s937uf8EAviRJXW0QZ902EtfCZUbhLLR4jSxRf
         d31br5N90S6svni6/Pfr1pnObd1X4t8O0srFDOsJqYUY1ywdEsTQHn9CtLrgyp+fPNHK
         WWK8qQE4UBMwQgY8jiCZ49X5eKq+8Lv8wZZB1NVuS1UkmHVGFvzr3h4TGtAD2P7ryyPA
         LvnmFnpQ0tKItDl7c1rUoRe8NkxkKTxuLFs33YS1D51pMS8a6tCN7Jpxk+Gb2/0FGGNA
         f0vUyASv7QP4hU2eRQztMfOybZWg6MNFYr8vU/ZCUaBZnw611a8lo5hazpw6Djq/JqRA
         r/wA==
X-Gm-Message-State: AOJu0Yww0azmSda+L9l5rhPCYQx9sNn4fWEgAdN/PYzsUqJxbpcFosa0
	csBCRHEJyAtm+K2q7ZTDbuSlbg==
X-Google-Smtp-Source: AGHT+IF3yG8pM/1QQYR3cM78PgXLt47SF3cJUeeTGTYGaG5gDIhDp0rbhT11KNATVil2Mt43nb0AVg==
X-Received: by 2002:a17:907:6d0d:b0:9a5:7b9a:f32f with SMTP id sa13-20020a1709076d0d00b009a57b9af32fmr3582562ejc.1.1693329926489;
        Tue, 29 Aug 2023 10:25:26 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id v17-20020a17090606d100b0098669cc16b2sm6103226ejb.83.2023.08.29.10.25.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 10:25:26 -0700 (PDT)
Message-ID: <771e116c-7e0d-d238-d35a-c5e9a44ce571@linaro.org>
Date: Tue, 29 Aug 2023 19:25:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 16/31] ARM: dts: rockchip: Add SRAM node for RK312x
Content-Language: en-US
To: Alex Bee <knaerzche@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Johan Jonker
 <jbx6244@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 alsa-devel@alsa-project.org, linux-clk@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20230829171647.187787-1-knaerzche@gmail.com>
 <20230829171647.187787-17-knaerzche@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829171647.187787-17-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_102528_729445_A27AEC6A 
X-CRM114-Status: GOOD (  12.16  )
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

On 29/08/2023 19:16, Alex Bee wrote:
> RK312x SoCs have 8KB of SRAM.
> Add the respective device tree node for it.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---

This really does not depend on your MFD, GPU nor ASoC changes. Keep
independent work for different subsystems separate.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

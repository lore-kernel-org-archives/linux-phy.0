Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B72FC83F18
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 17:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W5WSctq1WMjLfOSImfLPVtukDET4rdEdClnZqaTlfSM=; b=bn6ozloXLEBshk
	gfo5tIiR2oGN0fXwhcMP7khRpW3BOXhfmNdwa9IcPyNCnVOIgva0BGPOmNgMAUYqiCYRlC4KD/h6Y
	qtLxvZL1ZIwnT7a7pacybwzBnchXyxbXr9/tV9T5OqF7dNLYFmAtdK7q+ir7c1ctN/ecBv8eLohld
	Z60jAzshxNPkPpEoaba9Xt1wZ5Z5G8DMsF25apXVp1sb5FW0CMhXwBzH94gPGiMPlxkBZBM8wnswn
	tW8Ld7jTNFn0z8Re5x5xRJgoUfkBoJdnf4Zm3HQ8Y7v7F45Sntpclf2zvuVtSVc2QxeeS9ujMV5Gb
	l1Wj2yHAA8ybG/8uviFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2OS-00ByKX-0J;
	Tue, 29 Aug 2023 17:20:44 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2OO-00ByHZ-2T
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 17:20:42 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5007f3d3235so7382688e87.2
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 10:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693329638; x=1693934438;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2gJh7hh3Cv4MKGAYWWiEyZbDkr75Vxh68gw9dOhliEo=;
        b=svFv/Z9pr7z+fE96FtSY4wNw5Qa2yWz9MMDZgo8e5txPC7jOPprZ+/VfkDOhO9+5ff
         JZbANOmLFqeO8HbS9PoJbKb8b3ziDDnQyTUOlfVWdJ5IBXengbnaH+UBjH1U6aFAEsWo
         H0F44cpGBCVK18gmBV0dWJi1qVfi3txaFE2I4YM9onDQB2OfMS4VTVoCQQQJgZhD8dhi
         aq57PQjk/nBpwCbPwjSHfVxNMRTfNVqOiqu600sz3+nNxjjDIs7GU6nLF0fFWuOKdgm4
         k2Nj6XlyP0xiztq8gbA+3vi2kXSKxd4ze0yumQ8Hz9IDWAknT7KaS9nXgckiNRTMnjdh
         HJRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329638; x=1693934438;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2gJh7hh3Cv4MKGAYWWiEyZbDkr75Vxh68gw9dOhliEo=;
        b=GdF4d7QHG0o121tg7WzHfg6/5EG0glDOr6/3FMYtt8p4/7Z2uOCq0nrxumB167ZDU4
         KWuZiR3StCLihb3VxPbyhy5JTpNMxtvvLyVnSCEHxFFbTyOcXRNdRA6ouG93/lsz53+b
         zRWhl5Qg5lQ4qse9VjoiNU45eX5lr95hnvo+wk9wczQsu5It1GQeMiHl7uzK9SlutnTn
         T67jRL7xSu6c9uTjaJlsXuex3OTF5f44n/0C07feebHuHKOt5tczCXtItq5a8hwl8AWO
         A5z76cWS6eFhmO1kcaoDk/Z4t7trtZwbArD2jG1UqCnMfTaPkSS2rvF+J2RBd/Dbio1D
         Gzbg==
X-Gm-Message-State: AOJu0Yzpp+R8Ee6lC1YFJ17C4SLVJAThwrM3ajYWhgBNefgAnyGMo9J/
	bAvYkpjhoGuwRAJh3ahuhk+Qnw==
X-Google-Smtp-Source: AGHT+IGlVnUWA48hZ1fV2ZgoaAUWDkmNEboaK1aSOxLC5DhzgZm2KyvX6J5uG+IbCKz7WrZM5DcSfA==
X-Received: by 2002:ac2:4985:0:b0:4f9:51ac:41eb with SMTP id f5-20020ac24985000000b004f951ac41ebmr17504153lfl.16.1693329638491;
        Tue, 29 Aug 2023 10:20:38 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id u18-20020a1709064ad200b0099bc08862b6sm6299274ejt.171.2023.08.29.10.20.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 10:20:38 -0700 (PDT)
Message-ID: <20308990-0701-6dae-a5f3-b0c5d6cccbe4@linaro.org>
Date: Tue, 29 Aug 2023 19:20:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 01/31] dt-bindings: mfd: syscon: Add rockchip,rk3128-qos
 compatible
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
 <20230829171647.187787-2-knaerzche@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829171647.187787-2-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_102040_811024_7EF39E41 
X-CRM114-Status: UNSURE (   9.23  )
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

On 29/08/2023 19:16, Alex Bee wrote:
> Document Rockchip RK3128 SoC compatible for qos registers.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +

You should probably split patches per subsystem, if you want it to get
applied.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

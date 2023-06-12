Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E77D2C7EE2E
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 08:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeQ1eMfEdZBoo9h0POTrUeIg/RcEJBlDfU/xgwtqbXI=; b=Ok0o9k9swlpldn
	rXFXIJ1D1s0ckZ3+ESoWDf764gDuTm2FPBR6tPMdZNWRlxoSaVrHM4IBQpIyhNJ75BlQx1mTr9FcP
	asojdzuVlVud4BMp2fdnXSW+8rvD3B7hEmiWoRxFI+ggsQs/5lUi8VneCTjaNgSYCXzP2wG8I6fLt
	3+d75Ivg0YZVZOVnUQKekR7ba8I3x4xNN2l76H284GJe32j33p3acegJm+4xTRSgXOLPhvergqB6B
	EWFqiH/fsPQml8fsCPrb/VjsPDuPEtHCLKm9vcaXtpoYPTwrmZZ9I45+IbysMZv5PrBJ0ppsg8Yb1
	3Hs6Lm11apx/gUpb5AWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8cqz-00368Y-1t;
	Mon, 12 Jun 2023 08:24:45 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8cqw-00366O-1D
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 08:24:43 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-51458187be1so7275351a12.2
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 01:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686558279; x=1689150279;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7D6Fyjiom4mYpRNDGxmJ+4tkPJWamSoxinWl7N6B39g=;
        b=VMvW2ldCRLA4FS6P7F+8G3PCEY0tb7Iu8cL59lJycrVCfw/5IYyNMSAqeVLQJnkT1G
         niO9MMRSIz9o/yvfgmeKs7p5YCLZgp+AzSJxMWpW0IHxChy4pV3Jma4m2pLJOcuZAiUc
         HZLai9VZSbkQTVz43k8xCehT/XQM9QjZEtPMJXpiy1YQCdyrwRz2QS3qUSP+B1F73anB
         rxhJN47WVWZJDttOgsyYqw5ZQdnRJwz2mqUpyO4OyJNeMrJd0lD5GPHguucrtX40VJie
         YpYmWj1F+iIHE+uQF9uCofEhvLvc64D0CIiivNtxVpSKLcgB3RJcnJbtvTmLHP+VWmHU
         eQ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686558279; x=1689150279;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7D6Fyjiom4mYpRNDGxmJ+4tkPJWamSoxinWl7N6B39g=;
        b=lXxgmTljsGvWA7ayCs/IVQmDLKcjeDlpXhVR/8PglZiNJoSyGLFBYYUx6A5kxe0L//
         SalVBHAjVSlEo1DBcc3VcGcpYa1JQdL1VPG8brs6Xn7EI0iEZ36YuIGIudAz3xTtvpMv
         5vcdSUWAqu1D0az9ceCKiYXCOxbdvyGQ/4FDO0xK2hhJvdj37CW00wlRzVb8uW5P+tQ4
         FZRt9kSv11SYHlIIZZmNiPa08VIA8u0tYgmhR7DWqM6MZtfpMOxyUrLqW8iRje/IRbmK
         Ch0E2UID6BgJKPuYd7JuLlzWDX2nWYCMMge1bye5LNAnKEJ/t12lrlHr2tmMUNedZ6LW
         +DvQ==
X-Gm-Message-State: AC+VfDzt2M246TiJofy3sBdDfgKAI85r1L8krqZ/nRCzHTcGrXWMwBdT
	Pz8+majwqRdjFdcPqvUKXZCfZA==
X-Google-Smtp-Source: ACHHUZ4fZFtU0nuw4O03Q2YBjYiPLMxR/evqGLuCK0fv5OjI6AlCOdT/nQI4kM3M9h2oNHciSBdreA==
X-Received: by 2002:a17:907:1c1f:b0:982:21a1:c4e0 with SMTP id nc31-20020a1709071c1f00b0098221a1c4e0mr1221846ejc.56.1686558279550;
        Mon, 12 Jun 2023 01:24:39 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id i25-20020a1709063c5900b0097899aa737esm4956590ejg.147.2023.06.12.01.24.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 01:24:39 -0700 (PDT)
Message-ID: <e132676c-af02-4309-dbef-f1cad2157253@linaro.org>
Date: Mon, 12 Jun 2023 10:24:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 3/5] dt-bindings: phy: rockchip: rk3588 has two reset
 lines
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Serge Semin <fancer.lancer@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-ide@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230608162238.50078-1-sebastian.reichel@collabora.com>
 <20230608162238.50078-4-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230608162238.50078-4-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_012442_412409_DF3FD8D9 
X-CRM114-Status: UNSURE (   7.50  )
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

On 08/06/2023 18:22, Sebastian Reichel wrote:
> The RK3588 has two reset lines for the combphy. One for the
> APB interface and one for the actual PHY.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

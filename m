Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44196C77B6E
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 08:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EgphSuu9x05O9z6fsT6rAu/YP5peronW4X1nQCn5iUI=; b=hD3AYuktgylDsX
	WQYA2l+OW1XEQNrt7q0E4xhj/gppk1smG6Y+QMzKHK3nRa+X07Js8QNPshu0WgrVU8TmFEiFP14nT
	fmyt9JJBXcStD/a5uXeNp1OAnMKz4KI4+txmZHDTFtOuzl64AWGBvNXUyBBAbD8CwkpRaYpL6MQi7
	o/GcTwezF1V3WYEycq7ODHAa6yKj2ABejB/xxwC/PmHnkT5K7Nkl/JLNLNiekuwn77zgFZ1+/YCC9
	fUaA0AkPV9IVLd0pLfmDH+0dRB/bvt1CjsiOYFSUV1ra6XF+AC4ZkFICqq0omGQ+DZLP+jIbYmOZC
	DJY7H1N3+r9LQuSTl8yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmVoa-002Fh4-2z;
	Wed, 12 Apr 2023 08:26:52 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmVoY-002Ffl-2d
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 08:26:52 +0000
Received: by mail-ej1-x636.google.com with SMTP id kt17so14580563ejb.11
        for <linux-phy@lists.infradead.org>; Wed, 12 Apr 2023 01:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681288008;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hMWwvJSoPwKHnqvGb8XJbpQWFhUmBxXG2ION9BwWYgo=;
        b=WK/FDp+Tl2Ed7T3aBlcejCbbqL7ed+dzTD2hjOiuNFg15S6gnQqK78s1PbCu6x5Zhd
         VhmFw5he/pO3oTFEJqLfZ+MeRHs+ykAHs/rqNaV5/DCNLua3DsSrRd3XRVllYvaqH2VS
         H4fgmEAxTFLtnxGdOqhSzZCAhgdnJwlTYV9arrrFtg+p7GU9+j3f0V+PzWl7NIgJ/JZ2
         g5iuvnLVMHGzVg1A6W0x1aQysj0l4tzr72r4MrW9eSDuM95nVGT0LAzYRhm3oIkozK8+
         9VM7xyszT3o5K/CGIhNGMkMaQmE5u0Z49EqJFAOxlVAeAeDBXBywqsur0lUNO+GM+qMv
         OWUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681288008;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hMWwvJSoPwKHnqvGb8XJbpQWFhUmBxXG2ION9BwWYgo=;
        b=nR3Cmb1642N2zNJ81whHbRjNYm2NahI3nLRXZ73sefOxHCts6sojOkxZwArirYvQiy
         5n4++uWUr2elcM/WWYe05B5vXQfKWuVskXnyA9oBF5WpUvmChCHFV6PWKJA1NMTADp3x
         k/4/eImoxhQYluhbhdXCb1HuEYFy8qZftDsHG2lPLxGeuaH4faREFwN/74fWzTHMVujL
         S11ojxzpxQfvNg0IU4Rau/1HSgXM1zx2NnDCJzcTabJHbo28NYHR5GzuHYn+HEd19VpK
         C7jtDUsWcjjjlYtcTTRPphQYltaJ/IW8yfcCWwxmjcrW9WvgQfdaSArTeuteteCBfcoE
         AyvA==
X-Gm-Message-State: AAQBX9enp3VeGq2nLm7ADTeQ+xjkxNbzY6wlNmG+pZH3eDdkmLGSjhqe
	9oOV1xSnG1cm4hkJ5iAH62UyCA==
X-Google-Smtp-Source: AKy350aSpn6IBfYoqOrlQzXnS7Z0c4dRP9jbb3No1mXXaRs8vawGd2eCrz6GKriL9sBKdDPEJd/6ZQ==
X-Received: by 2002:a17:906:4e95:b0:94a:5c39:fdce with SMTP id v21-20020a1709064e9500b0094a5c39fdcemr11272322eju.24.1681288008375;
        Wed, 12 Apr 2023 01:26:48 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8fa0:9989:3f72:b14f? ([2a02:810d:15c0:828:8fa0:9989:3f72:b14f])
        by smtp.gmail.com with ESMTPSA id ig13-20020a1709072e0d00b0093210cf625bsm7044930ejc.187.2023.04.12.01.26.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 01:26:47 -0700 (PDT)
Message-ID: <2b263c46-2b5e-341b-cb10-bf3b88f6632f@linaro.org>
Date: Wed, 12 Apr 2023 10:26:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v4 1/7] dt-bindings: phy: Add StarFive JH7110 USB document
Content-Language: en-US
To: Minda Chen <minda.chen@starfivetech.com>,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Conor Dooley <conor@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Pawel Laszczak <pawell@cadence.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Peter Chen <peter.chen@kernel.org>, Roger Quadros <rogerq@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Mason Huo <mason.huo@starfivetech.com>
References: <20230406015216.27034-1-minda.chen@starfivetech.com>
 <20230406015216.27034-2-minda.chen@starfivetech.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230406015216.27034-2-minda.chen@starfivetech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_012650_859658_1119ED9E 
X-CRM114-Status: GOOD (  13.33  )
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

On 06/04/2023 03:52, Minda Chen wrote:
> Add StarFive JH7110 SoC USB 2.0 PHY dt-binding.

Not much improvements in the subject. I asked to drop, not replace
document with document.

"Add StarFive JH7110 USB PHY"



> 
> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> ---
>  .../bindings/phy/starfive,jh7110-usb-phy.yaml | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
> new file mode 100644
> index 000000000000..80604dfe01f0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/starfive,jh7110-usb-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: StarFive USB 2.0 PHY

Missing model name.

> +
> +maintainers:
> +  - Minda Chen <minda.chen@starfivetech.com>
> +

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

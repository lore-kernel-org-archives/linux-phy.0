Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1639C4345F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Apr 2024 07:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m0L9CZ1YqhHVc2tt8MGTsBSO5nH7122R6hCs9MClmHY=; b=3EkgkNDg+ZVnrE
	651HZje5Jt4ox3mRnlgYwobcyd6fvpL2F1X0pZ2OuIR8qNZQJnxG2kQWVLDq34N4ujAUhZvESavFp
	5uCpsOs5FnzVy/o4OxdIVRNm6FyBMsBKH0YPATUhgGWrL6V3phcJ6GyfULdHWwxOtQmv5NKLzE16Z
	WxbquinzQ6TCgzrO0KQy4uiZI9pZR7wWV/wIsCSX8OprIVliFriYIWYwbemYHQxgyt73TyCkoEXi2
	ElzeV5Ymby28o0egcQDzQVNqA5oA+FlDl+sHWN8lQzxxFbnmwVH1i+bvx3aunOdBADfPrzQnNyxYO
	MIsipY5MhsjTIhBAILtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvBiH-0000000FvcR-1wuD;
	Fri, 12 Apr 2024 07:52:45 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvBiC-0000000FvaK-40TG
	for linux-phy@lists.infradead.org;
	Fri, 12 Apr 2024 07:52:43 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2d485886545so8660841fa.2
        for <linux-phy@lists.infradead.org>; Fri, 12 Apr 2024 00:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712908354; x=1713513154; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=giJMkGssm6/duPUNFaOzoIsvxz4lued6lu1kczarmh0=;
        b=Z9dpPQRmWURg34qdEpx28Vf45Z8GHsgk+0sT4OzX3y9XogDun6Dvs2XvLMYTPzec61
         WDcCqeow8VD/hcIGgzfiPDATM/KsSSIpr/95Bwplje939kp8qGc8YIBd1c5Eh3eMUd/Q
         n+iZvdij3zR2phYmQ91EisooYNejgJEVGYS0rtlzxAKBXxPgxo1q3uPhZihv8Hk31zDD
         QnNo2aKORxNlpnN5kOqbKL0aopkd2B73gG085ZUIMCV23Cz9Uswm4C91sxAIDHH6U/UE
         sq/OqFs/NWXJYucMymdsJgnz7u5BOYNrS8jyZdT+ZE1f43+GG6+Kj0ztm3IgNYlSHpKZ
         5awQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712908354; x=1713513154;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=giJMkGssm6/duPUNFaOzoIsvxz4lued6lu1kczarmh0=;
        b=rIMMJKkC7+w955lcoH6dvWX9DX7W54Er02Z5ifR1qJTYClPTlNMHBn51DZhJxpAeGW
         jxYEDKnVrVhsHcbILsmQXenUpHFIT4fK+chtnxq+xvt036Pn9q0JdXPzL2necVQhTnjr
         0dh1ETM7IVyEkt/APUqs2Ce6V3EvRhUwzIX1W9okJQIL6kKj6JPPkbW0wczVAtL5wZtn
         2tce6kxiv/F9VSehOMQIketJGBqZl61C+PHbZC6czo3RyTFqKXyHdTJdMfZjJgD/ei/P
         /r0i0rj/vSexL0HdVb1nb7NYlLP7kt7c25cYl/n3bFLz+rkkrRp+vPa18ulYK3nXWoH6
         eA1g==
X-Forwarded-Encrypted: i=1; AJvYcCV5MIwio4d23kyySIj3BiDaWeFGC0Q1IEJEjLmRU0HgOgArrkg5bfZyjmtGBl+xNk5a1w5j+wD66O56j0adHQETcmyE32YsJbRvO7++1Q==
X-Gm-Message-State: AOJu0Yz57H7YDb0J1Zh51DaWjLhzzKM5VuQiTzBqV18y6DJRpPi0vRBL
	h/3VW2DEcyCL9Ul8MHaoCYFBkwyQ4O3LPvdlP0ZZ8An9IG+s3MhFFAmH9Aav5ng=
X-Google-Smtp-Source: AGHT+IHA+cea6E1eQRrGXyeVe8q1hZnZecEOtSDS+wQmtjjgqazlpOyJxB/FBYCCKid58gcaF9AW2w==
X-Received: by 2002:a2e:9ed4:0:b0:2d9:fd90:af57 with SMTP id h20-20020a2e9ed4000000b002d9fd90af57mr1148441ljk.51.1712908354132;
        Fri, 12 Apr 2024 00:52:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id xi3-20020a170906dac300b00a52228ce058sm1356123ejb.46.2024.04.12.00.52.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Apr 2024 00:52:33 -0700 (PDT)
Message-ID: <45534bbb-dc29-49bb-b36f-0f254d825fd9@linaro.org>
Date: Fri, 12 Apr 2024 09:52:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: rockchip,pcie3-phy: add
 rockchip,rx-common-refclk-mode
To: Niklas Cassel <cassel@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Michal Tomek <mtdev79b@gmail.com>, Damien Le Moal <dlemoal@kernel.org>,
 Jon Lin <jon.lin@rock-chips.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20240411130150.128107-1-cassel@kernel.org>
 <20240411130150.128107-2-cassel@kernel.org>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240411130150.128107-2-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_005241_098608_B54C916C 
X-CRM114-Status: GOOD (  10.36  )
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

On 11/04/2024 15:01, Niklas Cassel wrote:
> From the RK3588 Technical Reference Manual, Part1,
> section 6.19 PCIe3PHY_GRF Register Description:
> "rxX_cmn_refclk_mode"
> RX common reference clock mode for lane X. This mode should be enabled
> only when the far-end and near-end devices are running with a common
> reference clock.
> 
> The hardware reset value for this field is 0x1 (enabled).
> Note that this register field is only available on RK3588, not on RK3568.
> 
> The link training either fails or is highly unstable (link state will jump
> continuously between L0 and recovery) when this mode is enabled while
> using an endpoint running in Separate Reference Clock with No SSC (SRNS)
> mode or Separate Reference Clock with SSC (SRIS) mode.
> (Which is usually the case when using a real SoC as endpoint, e.g. the
> RK3588 PCIe controller can run in both Root Complex and Endpoint mode.)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

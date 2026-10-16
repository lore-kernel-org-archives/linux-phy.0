Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 484D9CC6B38
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 10:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d0z6ujpSPJFkjBk3t2VwyklRzqhTC2dG11zd6km6//g=; b=dik6xhftgsTfve
	H8m9O/jwlLD2WZYU1s9oN/LA6fg2KFApgWl+1FlgCXOIIoOm0mlUVc3L/jiCcsoOUtfMcSnyV5ej9
	AGeLCDNYpLEZbEQDJeapA1vBSyMxpg7VXp5zEL1NDG7DCPS8HrIMpMHEzR5JzzWdICzSQzHy3N66v
	M0Jp6La8JzyT9/g2D6PEwsJarTcxF1WFphCn04qHbsHUFEJS2lw3vsCsjBFvhAVKyuAF1VCs32/nN
	vrE0yauDCOf6hgN2BcSneDvHWfn00Odg4o98X/nFyO114IpemhFeiqJZomx9LYHFPxUMVhHM5cCY7
	tl9MgcIU5yl3OmMISCdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfKH-00000002fA4-3Vc3;
	Fri, 16 Oct 2026 10:38:13 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfKF-00000002f9Y-1X6G
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 10:38:12 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4a16bc2278aso45282235e9.1
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 03:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1792147089; x=1792751889; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=6nGmaW43TFsY8203dyOJ+Nrc5EUvdzx8Ca6xsjCPHmQ=;
        b=qSEMOPoy0di1fSChhX5qAZDyjRvOX0AUiXWTwUI+HNeEG39q0aIicyT5kuVKh4AYWu
         miw/EoeBRMo9LJ80udrgXGORd6MzuePFzB9mOvj+kPAdQhrcOiNCvak4tAQdM795jJUx
         qq52W3TzIHDe2lNWneTQ1iMv1NcPTxSr5k3o9wnopZn+NcASzIbLIzTzeqswPbej73aB
         0luznByx55IAplKd0tQzHLKIz6sPuB0k/Njm2AJOf71vfOe86yStfVArYFNQr6qU3Ts3
         kHOjwTBAsSN/cBeYAMgVKvnAO9tZ1CFUm3HHf+nDrSndLBU8AiRk4O0US9yeK/zoLuNX
         W45A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792147089; x=1792751889;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6nGmaW43TFsY8203dyOJ+Nrc5EUvdzx8Ca6xsjCPHmQ=;
        b=2bRFVBVIPE9oSg1GlHzDfr6uGN7y9il/cf+ZYC3vWe0KFxpL5lfYFDcNY4kcUopIF6
         5evwJ4Ph3wjoVb+ANNFBpJxkOJCr7xiGVlLlzvYpd8pJv3QvFgOKKxRYhvwsv3arh65u
         dAayn574T81yoRtWvZstY5+t+IxZUjZBLJ0tW6M51L/x89oVP5boaxaobf2KKDD4B+67
         EUBcuE0JB2PLivvqGs1Jt2AurAZnglN84imZUQgP3cRMmVeo2WfJgyltEGxQ+saRvC5u
         Zys676o6Hu3SFceGdG6Y0ZU9UK90sUMM132pnYqvwewpr8/dt0CSPRR3EcOrGORe7hEv
         Xcfw==
X-Forwarded-Encrypted: i=1; AKwUvBxXxn598gjSFEgAiUehUzbKtjarDVFq5zoeiBqYWH3o/Dja/kL/QVsoAzqnJRKn9YPsPKQtXIW4x9Y=@lists.infradead.org
X-Gm-Message-State: AFq9FYIS/I6BBTpHZQQhDay729SbicZVCmV7V9ymkjqteT1h6ilOoOu2
	Ub+bKf+COfi6V2glqmb1ljdh4hE0fuTJmRWeYPE9gH0pWuF17y/YNgTwitYMDNJiI6E=
X-Gm-Gg: AYBFou02BkiszYsDs1e+2Ac1it8QCNpzRLwYhVauq8pjqk5tHWiLOFKvyugxp5UgVOg
	X5jZJfS17qDfKqIe1MoUK56lzbmCrpaqD0TtYECRxxzXlhtA7d/FmkdCB3TT0gsxfPggaiXewaz
	MmSNi0h49wqnP6lhceKEemai85wVH75IF9oJeMXOI8lfbFNGucZpoRgdudpxjtVF3KFa41z9B9a
	R5nW+Ir1oIZUosPv6bJv24Y1GzQPIef+vm2EhbbotS0D/SMmieAyd2Uv/Cswyb9jRUOM1fwhwmg
	c1k6EdA+Mx09vzszkb/+qFeL7e+modcV1FZ94xSbCchxNAqapYjFJWY0u854KP8BJNRUkoGoNoi
	tBAw5aqMoVCIgyUBVDRN5/xw8Ef0brvK3E0Ta7y6iVWWRzqVDnDEjx0KZiCXEYH9bwa/TOKUAIS
	dkbpBtZlUKMPI3nUQYXp+BnQrsUBYZMikqsWXeUzBQZZMMnrGACFE2fqW7muuhXz/foVV672Xs1
	mZs36lo2U0=
X-Received: by 2002:a05:600c:1c23:b0:4a1:cef3:fb3a with SMTP id 5b1f17b1804b1-4a1cef3fd00mr28299025e9.9.1792147089174;
        Fri, 16 Oct 2026 03:38:09 -0700 (PDT)
Received: from [192.168.0.167] ([109.78.92.136])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1ce02d619sm26430935e9.3.2026.10.16.03.38.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2026 03:38:08 -0700 (PDT)
Message-ID: <b4a76677-0929-44bb-9c94-7ceb09952168@linaro.org>
Date: Fri, 16 Oct 2026 11:38:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/8] dt-bindings: phy: Add PHY_DIRECTION_TX/RX
 definitions
To: Jason Yang <jason98166@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Guochun Huang <hero.huang@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <20261016-dcphy-rx-v1-v5-1-e63b49eabe2d@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261016-dcphy-rx-v1-v5-1-e63b49eabe2d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_033811_430246_868CF141 
X-CRM114-Status: GOOD (  15.84  )
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

On 16/10/2026 09:56, Jason Yang wrote:
> A MIPI D-PHY or C-PHY can be a transmitter or a receiver. Some PHY
> blocks have one of each and can use them at the same time, so one PHY
> node offers two PHYs. The existing cell, PHY_TYPE_DPHY or
> PHY_TYPE_CPHY, selects the mode of the whole block, not one of the two
> PHYs.
> 
> Add PHY_DIRECTION_TX and PHY_DIRECTION_RX for a cell that selects the
> transmitter or the receiver. The first user is the Rockchip RK3588 MIPI
> DC-PHY, where the transmitter serves a DSI host and the receiver a CSI-2
> host.
> 
> Suggested-by: Michael Riesch <michael.riesch@collabora.com>
> Link: https://lore.kernel.org/r/7425ac83-f6d8-4443-a26e-a47f9306aa24@collabora.com
> Signed-off-by: Jason Yang <jason98166@gmail.com>
> ---
>   include/dt-bindings/phy/phy.h | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
> index 979b5dfd8353..9ead74d9a172 100644
> --- a/include/dt-bindings/phy/phy.h
> +++ b/include/dt-bindings/phy/phy.h
> @@ -29,4 +29,7 @@
>   #define PHY_POL_INVERT		1
>   #define PHY_POL_AUTO		2
>   
> +#define PHY_DIRECTION_TX	0
> +#define PHY_DIRECTION_RX	1
> +
>   #endif /* _DT_BINDINGS_PHY */
> 

This looks like a neat solution to your problem.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

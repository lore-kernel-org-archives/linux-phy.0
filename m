Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6BC3C531C9
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jul 2026 13:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3nvpPmO5Pw4W9Etzc5aj6pQCUyVdIw/Splp2mDyvoA=; b=2/ubVu3mEur6Qm
	OQPVzotC3zI0UzKQ+c/D3lBF2ht1w5PcG7RoD+vql9FYSaqaXs0XZIIPsprlt2O5eaiIzj1Y2MqAT
	RllKJwsaahVv0hpckDNxOKK3S0srheBHuJsnPaigteb2oZMyHB4luq+FDqQFJA5aSfIypoQJpvROg
	NwPDd65sbH/U7B1/ysGEbInY4bb57p8CapLC24CK2YyFUlq4dLlfpAfiZDopCTTEz2T6Piud2ZQQ1
	mGtk9bCkFRBT550W87Mypodp034iur9W5W2g/7nlP8YHXXLkkjXiiJbi4yQp1ZFy7+DsTHIFEM7d/
	Xoz9deIbcJZ6xwgxZywQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnc2L-00000000MVP-0J1z;
	Sat, 25 Jul 2026 13:03:29 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnc2J-00000000MUy-15AG
	for linux-phy@lists.infradead.org;
	Sat, 25 Jul 2026 13:03:28 +0000
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-ca80d708489so893129a12.1
        for <linux-phy@lists.infradead.org>; Sat, 25 Jul 2026 06:03:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784984606; cv=none;
        d=google.com; s=arc-20260327;
        b=a2WoMvk4vOJT7yyZkcTEdG574k1S0bxhLtBd9DxpBplccvscmV7GW1buakE+M0m4bz
         catdnhFaV2sfELvRrSbM/rnPBcscnZG1nUIqz9Yg3X7Efj4BgMJ5pVXnxGY0wQZJW7Vi
         Mlon5EjzypesSvzcQeMVQnlBmMyRfDxPk0FxkipTrGDhdwl8CmteT/dmvPi/n+5g9hAY
         gg9PyTAc4kNHIWxg8C1vnofrzULS7TSWXkcR7XfksFHRBjxVn0SVeCyLjCAdFHQRtXom
         pVxsZ3Axaz0zHlsQ9cx+x/1zpFI1IkwW/sKzCUTw6es7KhtJMIj1LKzBLnkSr4pPQBhj
         2kKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6s4tv0lqxlKjKfIg1m/4hOF+FjqSFcDxkpdQkfgs7fs=;
        fh=I7RCdNmnWElhtHKnhfkcnBoX0WDkxaB/fG1nfd1lTAw=;
        b=OXDZ8o7Nva53sUeV5DCi6wucebkG9MuIeBT0z3ulona2FYzNr02fRYOI9RpD3xxCVt
         S/1HwtCEfOya+ARq+rKYRxACoh9HC2t5Afm6/1q3C2zy5z1xE3cAWM7/hh81v4QPcr1Z
         nH0gFhpU18w/ynaSdzhw1GDbVWc7Ik2E37lIZtTg/VxzmEi6R9zfv1h2EFnvga+HcmZQ
         /IObygRUR0vhRE6yKCLjs0Zaw5aKBaT43x/jugH2XttCNFtVhURex76nywQgx2mFvYL5
         KvyeOnqe7h5FVS29k/qxH4ifIbgz+FcGRzjr6EjKGlWk+K1IiOQxLO+XFobwlDQM8ldt
         jrsA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quora.org; s=google; t=1784984606; x=1785589406; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6s4tv0lqxlKjKfIg1m/4hOF+FjqSFcDxkpdQkfgs7fs=;
        b=kjyLzTZJYwAHGn0mlOohtuQwBdzW98mrybwcY8djh2OH6ZYpBFtuMDWB1+MJq+5qgg
         toaZrIeXtZolI3p7apbwaUHQek2L6O5/asonKrr4I/U0GZENpUVqAeburFA4vo4PF/bA
         Mxeqqf42PtEH43pK5V+JjRUMpk6XKWFbbjuV4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784984606; x=1785589406;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=6s4tv0lqxlKjKfIg1m/4hOF+FjqSFcDxkpdQkfgs7fs=;
        b=OQeFAvjPXD0DwypxSM5U+ocpS27G1VlZ4IKr4dhRRaGFFM+7AVOJz4JxN2HgmxOAT2
         zKXAwcXeS9k2ysyySc7gwvmrtx9B1shw/KEC1Ro68utkrMhzOwKtpvnS9tPfbMVJMGCT
         0iaXqBabgbrZ0dZray2FqLwyxXuddSfh+B+o0aOXHfB6bpCyj7Vy5U/olWEIBRTTrnk5
         flfnxxhX6MoPgVd82IN8CkvvHCoNG6GP23bqpP6EAfqw57Mi5RUzpQ+QdhBWxATbMyOI
         73p8CUFbu1n81sXnmiSzsADs7aH8FtMsSWgmpSUrPoqTa9uCowsUgq9dc2LFALhQTapV
         TM+Q==
X-Forwarded-Encrypted: i=1; AHgh+Rp+0PiYubKNrz5xbkJYSukuEH0fRTfnihJjtblzjxzvAMve63E8CBc1thYDms6OKoqm5xahZ53yvTY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwX2mQ+RZVI/ImTdZbhf4SAVs5xHiZQYwmt/YASJxY08Tq9UDko
	HdBUx55lyJS4Ds+wN6uHugJMl/zcnNzjYuYwCZ6yvF+XQ055MfJsg8jrhNHVqNTRfTu9JYm+fPW
	9z1RObrsfJU1S4V5TFndi12vboukcuhbBmhEXQQmUDw==
X-Gm-Gg: AR+sD10mc32P8YV7YVhfn3258Hbqlm8yO7FGjJ/TsGT5irtd88Ms99iDCxYbT8fVgZ/
	LpK/3xmwil4KiA9oNfYKRqufR+pn+iefalGtRLSw1XSqwuRHhGtBoquNcdx2mpkQn89byPf/Uf/
	6AI4po2s74bWkfEawKciLFF+vlZGK9vGvv7jkuU/NnCcGyEAT/Ug3i2Omb4crEzZY5HuaydzZE8
	qBx4gTTzFgxusj2XLTPo30Lc9jOgTAaTO/01yy+0WANWmp9sm1KzdkDdqqxSq/zGYY7xS2fDH04
	pttJu+1gGTN6RXu/lD3DsUk5mhXUQYIrYl8OSBuU9VWLBp1MK0DB3IVvRuc+mGNkCY+Lki3Y1ZH
	YFV1wnEXETWQ6DmNfaRbhf7mo7K1xIAV8PYw1K+yIIrDb3wO6bMMjppyOvBxVCOCJYaeKJqx2s5
	3IN/skxIIIbGIbIfNvI37iY7jnh+yrQ3qnwpnqLTwIcSlSxYDoP6Qh5Y6Gxxgdtpc8qTH6TA==
X-Received: by 2002:a17:90b:224e:b0:38e:c232:9d2c with SMTP id
 98e67ed59e1d1-38f2a90f031mr1691512a91.2.1784984606019; Sat, 25 Jul 2026
 06:03:26 -0700 (PDT)
MIME-Version: 1.0
References: <20260708-x1e-csi2-phy-v9-0-0210b90c04cf@linaro.org>
In-Reply-To: <20260708-x1e-csi2-phy-v9-0-0210b90c04cf@linaro.org>
From: Daniel J Blueman <daniel@quora.org>
Date: Sat, 25 Jul 2026 21:03:14 +0800
X-Gm-Features: AUfX_mz8NhtAru7ACt0Z-tRBKmj_hK1Y1jnq_iZl2mP2Qxsq6jEVKI3kIp6vQW0
Message-ID: <CAMVG2ssrwmWVApoYBKeWt=th1Pq7tj-t1jxCndsyZCmubS7cHg@mail.gmail.com>
Subject: Re: [PATCH v9 0/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, "Bryan O'Donoghue" <bod@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260725_060327_299189_4A81E60A 
X-CRM114-Status: GOOD (  12.36  )
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

On Wed, 8 Jul 2026 at 07:39, Bryan O'Donoghue
<bryan.odonoghue@linaro.org> wrote:
>
> Vinod, Kishon what do you need to take this for 7.2 ?
>
> Key advantages of implementing this logic as drivers/phy:
>
>   a) Per-PHY power rails become declarable and enforceable on a per-PHY
>      basis.
>   b) With future adaptations of CAMSS routing the PHY output to something
>      other than the CSI Decoders becomes possible.
>   c) Standard framework contract. phy_configure(mipi_dphy opts) / power_on / of_xlate.
>   d) Introduction of CPHY in this driver will elaborate CPHY for Linux in
>      general as there is currently no mipi_cphy_opts structure.
[...]
> This driver is tested and working on x1e/Hamoa and has been tested as not
> breaking sc8280xp/Makena and sm8250/Kona.
>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

Superb work Bryan! This works for me on 7.2.0-rc4 with 'qcam'. I
support integrating this dependency for 7.2-rc to reduce complexity
later.

Tested-by: Daniel J Blueman <daniel@quora.org> # Lenovo Slim 7x X1E80100

Dan
-- 
Daniel J Blueman

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

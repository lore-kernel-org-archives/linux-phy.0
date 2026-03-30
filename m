Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE6A61061B24
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 22:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GT7Lxhoo6139pBbyO+v345RYlLZf+VUoFbPwfgRUYzw=; b=RsfIAESXVgGtVD
	MB2UbMnQKi+BaYQTBycki2RpOhs4WN388rCJDJnijNWgNPRI/n8EehiivgRJx3hSljleklfoZHCgj
	OE37kYOCWZddtWZ4b8gUaW1vuR2MOsbYd0bNWFHFNV1hwneQu7nAaWeKYAuonVtWxxZtJOc/tzuFu
	4VOKOhWQXvdb68zq8cGWe92DrEdSi2tTQBhI2WEcHgScUxt/ZGPZ7EjWmUyX8Tj+xshBySHMwO/aV
	8CvhsV8Exv/UrIpuaVlc40Eak/p9qBe+wSqZia3N84MeQ8XFonhIzDl78qVJ8ULmF/L08f3nAbz81
	sxRecQtJeNLIPnOZaj5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7LF0-0000000Byky-1CJJ;
	Mon, 30 Mar 2026 22:37:50 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7LEx-0000000Byjp-0E4h
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 22:37:48 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-48533a598fcso9475905e9.0
        for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 15:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774910265; x=1775515065; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3jfJJje0KBtM9hz5w5lHt1nnYJf3r1NFmOVPbBE39ug=;
        b=kOM+5447/u7QXQRnIfn58Y5GqkAZ+XPOcO0jgx/oLuNh+jfSb2fa2CKmLq0Z3kF+0E
         1znoVIKiiaNGzb8GZrSrZj+yrpsOtHsbE2f1wxSm1SkxCTgfgrz1sJcE2QcArYvZ72HK
         f1LdrgoFwh30dNGcywWRXDTnMs5xmDh7qaNoPtPSqY65mobG5YvIGGtQsSMzSgh0z8VA
         UAM9hKx8f0UXM5F179MPtbmR+GG2kgy9A0cK8w3zJ44+EkSG0/K+/6NHSlnblnbjXf8V
         Z+158G3jBv+5TexDBMgtojThzqjVJ5He+vF7B+ye33K5em+mbMboJmzolPIXDtyHkOVg
         7HlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774910265; x=1775515065;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3jfJJje0KBtM9hz5w5lHt1nnYJf3r1NFmOVPbBE39ug=;
        b=VfT4vJw3U7qXIa+tq+a/v/+3qZnjtURBibQp7IJ6zudZvosRrebeYk7611vbsaaw8j
         +5X4qgobVuGocaOm+yeTRGv4hnrTRPR1SrnoitjvpYqo4oWe7XmGvEH0DEC76mtHuEBS
         FORjComTlrunI1erTPO1XF+RuuFdomDRXIS9uC8qt2dcJpNCEr/wI2DG5DREsTXUCIR1
         0459L4SY3SbtkGc4cXupFHeJGhEPtPTBhJLff/pxDh2+D4kZLhAn4+gecidNSqckUWNM
         gw8i9QLSfnoK+PO3Lms/HPzcd5q5eQ1uqu4g7lTh+0gw59skCXSwU0Mc13jJbGhRCEOj
         kVkA==
X-Forwarded-Encrypted: i=1; AJvYcCVCCyoJaibkwq7LdbZJBgutQoTzOvSV0CfR97IBTYzM9M1APGYNwfHe3+I5OsG4J5sCmntWepVP2A4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxLTttGfgIvebXc86Rr+uBZ5Xr2i4T5iF3XmYzH6Cu7Z+IUYxZD
	WHuwf/KBGu8MXjAHkWII0Hg64DuSOo28GiKHWMBs7jit5LmZNSkjGc+5
X-Gm-Gg: ATEYQzyejdgDD+Oxr8+epU56jM5wbvfQh90+il5xhcheUkZ8Qpd4brwRWAKGt07oAxt
	DfY5t7n/lve6CySExBjLPa69k2HtiaXhD8LCJ9rZwtRt67kcSpwsFfaPJdiYA3nuM9hTVNZ0gZL
	BuU82+fbcu2AirFUlpkzd7dU6NW/lvwNozg9PhI8sy+wM5In8LOzXrVIn43FDTx4uA5n0fzZhH/
	d3HgKrEFYV6Xu4BjHsQo5cLRs5U2Ieomez/rTGybKB4xXD+CY2z/nH2m1It870bfxKHiym4i1Bj
	RaZ8xuG2a6+dEG13RmCOqtVVI80WZ/+gqPuhoXNa5Roz/Klnoba3GJhkl7orSd3JmnQ29wAwt5I
	aVqSl3Gm2PknPr5fAiomm1FUjrDjBCsNznNMLOSdG740IoG9yoRMLXchYgraE91amhN20t7o4I6
	6BJPFuyfR612sU1rQAt5Q1fl/lPg==
X-Received: by 2002:a05:6000:4014:b0:43c:fd96:2b8a with SMTP id ffacd0b85a97d-43cfd963552mr5568854f8f.2.1774910265013;
        Mon, 30 Mar 2026 15:37:45 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d50a:b400:fc92:d05b:3301:b722])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43cf24739easm23222604f8f.30.2026.03.30.15.37.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 15:37:44 -0700 (PDT)
Date: Tue, 31 Mar 2026 01:37:41 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Nora Schiffer <nora.schiffer@ew.tq-group.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com
Subject: Re: [PATCH v2 5/7] phy: ti: gmii-sel: add support for J722S SoC
 family
Message-ID: <20260330223741.pmrx25cslrlpbcea@skbuf>
References: <cover.1774354734.git.nora.schiffer@ew.tq-group.com>
 <5d00697f133cd33a1df62ac7ebf73e507e49ed2f.1774354734.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d00697f133cd33a1df62ac7ebf73e507e49ed2f.1774354734.git.nora.schiffer@ew.tq-group.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_153747_112599_C68C5CC4 
X-CRM114-Status: GOOD (  17.99  )
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

Hi Nora,

On Tue, Mar 24, 2026 at 01:29:41PM +0100, Nora Schiffer wrote:
> The J722S gmii-sel is mostly identical to the AM64's, but additionally
> supports SGMII.
> 
> Signed-off-by: Nora Schiffer <nora.schiffer@ew.tq-group.com>
> ---
>  drivers/phy/ti/phy-gmii-sel.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
> index 6213c2b6005a5..4e242b1892334 100644
> --- a/drivers/phy/ti/phy-gmii-sel.c
> +++ b/drivers/phy/ti/phy-gmii-sel.c
> @@ -251,6 +251,13 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_soc_am654 = {
>  	.regfields = phy_gmii_sel_fields_am654,
>  };
>  
> +static const
> +struct phy_gmii_sel_soc_data phy_gmii_sel_soc_j722s = {
> +	.use_of_data = true,
> +	.regfields = phy_gmii_sel_fields_am654,
> +	.extra_modes = BIT(PHY_INTERFACE_MODE_SGMII),

I'm not familiar with the hardware, but "mostly identical to AM64, but
additionally supports SGMII" does not explain why j722s does not inherit
the features that am654 has (PHY_GMII_SEL_RGMII_ID_MODE and
BIT(PHY_GMII_SEL_FIXED_TX_DELAY).

The phy-gmii-sel from j722s does support RGMII, right? Because in lack
of the PHY_GMII_SEL_RGMII_ID_MODE feature, phy_gmii_sel_mode() will just
silently skip the regmap_field_write(regfield, rgmii_id) call, and
return successfully despite an incomplete configuration.

We have the phy_validate() call and phy_ops::validate() through which
the PHY can report to the Ethernet controller which phy_interface_t it
supports and which it doesn't. If the j722s doesn't support RGMII, maybe
it should implement this method.

> +};
> +

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

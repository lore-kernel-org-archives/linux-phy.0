Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D845BCAC587
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 21:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1kXdlsjQODSp3IAOnLSWRgzH+o8z9oA/9Mv6Qm2pAs=; b=j+7Lzw5Mwc3IPu
	XO2zMwH25ru1JKbaD/IsmmVuOdR1/SsZfXaEJvfy7OjAzF7Fg1qaQfgi4S/Gx1nwQBXkKXid2DuXo
	ArSkGoNFvtcfW46U0hu7rpnKlaF0zmTXL4Y8LpNaJjig7fFfsdUuEyEZRhggToynnJBJqJ7cIV7oZ
	pPLOOimVdNxRYCZLKYr1j8xyQqSaanmplppzI+JPVLs3KARB6tHEXaSSWTGwap8wvPJf5sRAZRjRr
	/pr3sBUDqe+UUuyoouy+nlomkxL+/reKzukp8NP9xkaqEsGqJpmFh8086sP9DDTY34keDCIyeFFs3
	s1LsaX5vdhHnC+S96ZVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwoqE-00000005S4w-1ate;
	Thu, 11 Sep 2025 21:28:30 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwoqB-00000005S4V-2oXd
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 21:28:29 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3e751508f15so948377f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757626105; x=1758230905; darn=lists.infradead.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0XmPWjwHkYZP0cjDM6/TOrZ9Pu7V+x53nqGWgCRHLe0=;
        b=zg/Xi9s1B1rBfbYWAHTJF4jEwOIYjW9CqzQfWxtO3ktfJL5FmENXYJHePFkNoNAdAR
         OG+D4p47WXFE2qtIYc8W8+y38k7JYniu4BwJ45uwowueTakvQcW/6WnCK/lPkDlc30of
         oAV08Ty+3vbGpAoFB8GEst5F+6jSEeiwUNeoUkXEHshomybsvrsxXi7oIjY7pjSutYmX
         x0vBufHcEkSrH0T9/SrlZfrZypuTBIwr5xlK2OD/nLXduylYexJ/bsE+w2dmxr/r7vMn
         6ot/Ng5ugviaqocpAZO3L2NaZrhYrWvf4oLbU3Msx9dQSmYtVU6Ie4mJZQHyNPb/8Ezc
         wsPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757626105; x=1758230905;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0XmPWjwHkYZP0cjDM6/TOrZ9Pu7V+x53nqGWgCRHLe0=;
        b=G61jDQdflO+2Bf+D7NSkh5bhHvMQlS7Enw9Rjbu9PC+ldbeomFXnw0ffF1TRgfrExv
         pnSPmDa41sHB4rlmDe9CSvzPgA52gvesZSDhVObrDE5O30K+huQqAh2CzIGfKIxbmkJI
         lVb+jMd915MhocVBjFcBQn5HQfCtykWuXR9NhR0WRl8SB3FaFICEUfU96xuVfUCOu9Eo
         NQmqsgpLnPtXswszmbCOHW6Mc4lTRKgwSkgJK/yzHA1g4lf6RusnU0ngE9Q8nYVQAPDY
         gv4dzxXPRbrvaC4Q5c3f8iTI2YGpW6wbiArE7J9X9NAuM36PLcM1pTyCPI8S8Kv+lXBg
         AWNg==
X-Forwarded-Encrypted: i=1; AJvYcCX2W3OVaSm3G3lEWi0G4KPBSjHr9kZBaPdrYoInNGKVp2xsuncu0uLj8TZkaN4q/pOG4GXUAb99hOU=@lists.infradead.org
X-Gm-Message-State: AOJu0YztCbAD0inriRN28WrUyUm8tk/dalVuo2+AWxPLhfxB5OSPnTum
	e5LauElhYBeZ+N6fUR3/zYO9HuvJzMG8K0d88JRAjlCUj9y8hTUvtTNQoQHViNH3/hY=
X-Gm-Gg: ASbGncsHtcMuR9a/OYm+BgZNwVKZzTu/UBSFcoZVs87JFTQ31avhe8XOgSqTYotreMc
	01bOPsb7VUO5U2M5UUgEoLT+DsDclI8U/02jtOBtSOU99D92aLC6n66aQoHjnzLEPlkgDPWtfUD
	AU+rCy50ztJsIBOZ7ldKW2B3bg8HafrN/2FfVSl3WiUQzP76VQ7sTAxM+Q3GnMfPfW+cDsMtqwV
	7T35abR8AlrK4LA7ST1HwaTnircCwnkqEQUKuX83xo3NB5NlAI8cPdcEztYlEr5sT9/m1a8h9ed
	na52NvC4hqkk3yf8YWFjoigSbw0aWyEoYl9v9b4x8Fiu2XS4PGUekCtgxB21IBz8blwwGoVUoKY
	/8Sflk6CBjIGIF+JjSdbPg6K+VIW2Gu8Zmuk=
X-Google-Smtp-Source: AGHT+IGTc0rcdmQ0qqcNXcSMBd6YBfVvs/8+uIuw4BgL2H05vO3tLXTMHz7QbjVlp6IDwRn3LlLQ6Q==
X-Received: by 2002:a05:6000:230c:b0:3dc:1473:18bc with SMTP id ffacd0b85a97d-3e765530b01mr725312f8f.0.1757626105382;
        Thu, 11 Sep 2025 14:28:25 -0700 (PDT)
Received: from localhost ([2.223.125.77])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e0372ae57sm36200245e9.8.2025.09.11.14.28.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 14:28:24 -0700 (PDT)
Mime-Version: 1.0
Date: Thu, 11 Sep 2025 22:28:24 +0100
Message-Id: <DCQAGDC63M8X.3DVH6I9FA0IZD@linaro.org>
Cc: "Johan Hovold" <johan@kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 4/4] phy: qcom: edp: Add Glymur platform support
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Abel Vesa" <abel.vesa@linaro.org>, "Vinod Koul" <vkoul@kernel.org>,
 "Kishon Vijay Abraham I" <kishon@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>,
 "Dmitry Baryshkov" <lumag@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Neil Armstrong" <neil.armstrong@linaro.org>
X-Mailer: aerc 0.20.1
References: <20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org> <20250911-phy-qcom-edp-add-glymur-support-v3-4-1c8514313a16@linaro.org>
In-Reply-To: <20250911-phy-qcom-edp-add-glymur-support-v3-4-1c8514313a16@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_142827_748925_3BDEB278 
X-CRM114-Status: GOOD (  24.33  )
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

On Thu Sep 11, 2025 at 3:45 PM BST, Abel Vesa wrote:
> The Qualcomm Glymur platform has the new v8 version
> of the eDP/DP PHY. So rework the driver to support this
> new version and add the platform specific configuration data.

It is a bit confusing. Subject suggests that it is an addition
of a new platform but patch itself and description looks more like a
rework rather than new platform addition.

The ->aux_cfg_size() rework here reminds me
913463587d52 phy: qcom: edp: Introduce aux_cfg array for version specific aux settings

Ideally this should be split into rework and adding support for a
new platform. Or please update the commit desc and subject to explain
why this is the way.

> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 240 +++++++++++++++++++++++++++++++++++-
>  1 file changed, 234 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index 7b642742412e63149442e4befeb095307ec38173..b670cda0fa066d3ff45c66b73cc67e165e55b79a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c

[..]

>  static int qcom_edp_phy_init(struct phy *phy)
>  {
>  	struct qcom_edp *edp = phy_get_drvdata(phy);
> @@ -224,7 +241,11 @@ static int qcom_edp_phy_init(struct phy *phy)
>  	if (ret)
>  		goto out_disable_supplies;
>  
> -	memcpy(aux_cfg, edp->cfg->aux_cfg, sizeof(aux_cfg));
> +	memcpy(aux_cfg, edp->cfg->aux_cfg, edp->cfg->aux_cfg_size);

So, if I understand this correctly, when or if init sequence will
span beyond DP_PHY_AUX_CFG9 and DP_AUX_CFG_SIZE won't be updated,
then we might end up doing something fishy here?

Maybe add an if-check or even
BUILD_BUG_ON(edp->cfg->aux_cfg_size > sizeof(aux_cfg))
or something like this? Or kmalloc aux_cfg eventually at least,
however it seems to overcomplicate things.

[..]

> +static int qcom_edp_com_configure_ssc_v8(const struct qcom_edp *edp)
> +{
> +	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
> +	u32 step1;
> +	u32 step2;
> +
> +	switch (dp_opts->link_rate) {
> +	case 1620:
> +	case 2700:
> +	case 8100:
> +		step1 = 0x5b;
> +		step2 = 0x02;
> +		break;
> +
> +	case 5400:
> +		step1 = 0x5b;
> +		step2 = 0x02;
> +		break;
> +
> +	default:
> +		/* Other link rates aren't supported */
> +		return -EINVAL;
> +	}
> +
> +	writel(0x01, edp->pll + DP_QSERDES_V8_COM_SSC_EN_CENTER);
> +	writel(0x00, edp->pll + DP_QSERDES_V8_COM_SSC_ADJ_PER1);
> +	writel(0x6b, edp->pll + DP_QSERDES_V8_COM_SSC_PER1);
> +	writel(0x02, edp->pll + DP_QSERDES_V8_COM_SSC_PER2);
> +	writel(step1, edp->pll + DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0);
> +	writel(step2, edp->pll + DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0);
> +
> +	return 0;
> +}
> +
> +static int qcom_edp_com_configure_pll_v8(const struct qcom_edp *edp)
> +{
> +	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
> +	u32 div_frac_start2_mode0;
> +	u32 div_frac_start3_mode0;
> +	u32 dec_start_mode0;
> +	u32 lock_cmp1_mode0;
> +	u32 lock_cmp2_mode0;
> +	u32 code1_mode0;
> +	u32 code2_mode0;
> +	u32 hsclk_sel;
> +
> +	switch (dp_opts->link_rate) {
> +	case 1620:
> +		hsclk_sel = 0x5;
> +		dec_start_mode0 = 0x34;
> +		div_frac_start2_mode0 = 0xc0;
> +		div_frac_start3_mode0 = 0x0b;
> +		lock_cmp1_mode0 = 0x37;
> +		lock_cmp2_mode0 = 0x04;
> +		code1_mode0 = 0x71;
> +		code2_mode0 = 0x0c;
> +		break;
> +
> +	case 2700:
> +		hsclk_sel = 0x3;
> +		dec_start_mode0 = 0x34;
> +		div_frac_start2_mode0 = 0xc0;
> +		div_frac_start3_mode0 = 0x0b;
> +		lock_cmp1_mode0 = 0x07;
> +		lock_cmp2_mode0 = 0x07;
> +		code1_mode0 = 0x71;
> +		code2_mode0 = 0x0c;
> +		break;
> +
> +	case 5400:
> +		hsclk_sel = 0x2;
> +		dec_start_mode0 = 0x4f;
> +		div_frac_start2_mode0 = 0xa0;
> +		div_frac_start3_mode0 = 0x01;
> +		lock_cmp1_mode0 = 0x18;
> +		lock_cmp2_mode0 = 0x15;
> +		code1_mode0 = 0x14;
> +		code2_mode0 = 0x25;
> +		break;
> +
> +	case 8100:
> +		hsclk_sel = 0x2;
> +		dec_start_mode0 = 0x4f;
> +		div_frac_start2_mode0 = 0xa0;
> +		div_frac_start3_mode0 = 0x01;
> +		lock_cmp1_mode0 = 0x18;
> +		lock_cmp2_mode0 = 0x15;
> +		code1_mode0 = 0x14;
> +		code2_mode0 = 0x25;
> +		break;

These sections for 5400 and 8100 rates seem to be the same. Is it correct?
If yes, then maybe join them together and drop duplicating lines?

There is probably similar thingy in qcom_edp_com_configure_ssc_v8() above.

Best regards,
Alexey


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

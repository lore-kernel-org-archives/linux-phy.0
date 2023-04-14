Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D5D9C77B6E
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 16:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I00Rs4EWvY7XZj1S6lDpu7NZJy3hXibwLTqJcD3vzgw=; b=nVmSZ7FqTERkT0
	VuAGIm45tHcfCz0OF5CiBOBohbGhL9uEn/GEQ/goRtYV7lYps/InQCTPmL+AJM00txwf/6p+TZNnP
	Wb1pnAOuQOgCpnapqUjQFTMk0raZL64Y2gEQjDgrNNxZUheOCSERiHZ5bwfpkURkI2bSnBkF21+4c
	lsI7t/IMP72sdcQQOfI3Y0cDBRhNZrE0FB8zsAq/doIz+BzzLYH4BePr7mkjbf6OzDyR+CaWw3Gmq
	NtadZwOqp7V299mOefY7Zmyy64FDFB16QJrONHtvjGKGZqVbG/KeQtwZF6+yeUcH3rnjsEFNIXm2j
	IzV6K4VT18/VEvDshSYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnMXR-00A8pG-2Q;
	Fri, 14 Apr 2023 16:44:41 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnMXM-00A8n8-2c;
	Fri, 14 Apr 2023 16:44:38 +0000
Received: by mail-wr1-x434.google.com with SMTP id e16so4882377wra.6;
        Fri, 14 Apr 2023 09:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681490673; x=1684082673;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/ExngqUZl/pg1Kd6E34uU7m6iwz6q/2qwB8gBrD6lrQ=;
        b=GhkswUhAKDkCiKoc9t/eyiaF53+6JyxpB18rycr+qlp/lNeetlGLuu6GC3ZG8hfb3p
         fqfpoGQ1pqAOcdlI8Y+sJ72mfNnaJ4FPwqnqMuQ+izLObeSwa41gXQt8sJodv5jGa/0T
         DCHyxVmFTXoiZAJKFeYg2l3HyO7R7QqyznuMMRwhr31tpWeC+kKGYa4XZgae5wk9hU5v
         VC7eE6Gxz4FTNBR5+PHuTW33T3KogEu+IssYXh1wsleN/owJgoVClrGYWJ1UOi2BxTfn
         OAH2m6K62WkIgosirUt4RSz7l1iPN9jNIyueDp5i7cjxMfGJCzjb0B8HHgaz47wDrAyd
         iNkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681490673; x=1684082673;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/ExngqUZl/pg1Kd6E34uU7m6iwz6q/2qwB8gBrD6lrQ=;
        b=A64x2V9SId03yf8vYto2lhCFRIFl9vTx6MjIY/3+mBU1G6pBCokOvD4Wy78wx8Cyfg
         XksnN2Kzj4piPb2VXEx01TAkRmvNP6zc+aXGXEHHBhx9/hA2xaJyPkqBQAz1KbalSpr/
         BI+9X+6nxXN0Wyf6hBTE7HdHTAk6HBLncXzbZOHPOXSw9mm293WAuePVba4Bje1i4DUR
         sQ/VEQpPPM/8CPZTGjN3cFO0+E0OrQ8UReYA0k7ktnqvhfb32VTsymC4SMx0UVxVr3M/
         UU2njhh3qfkZ59l9uwFKVNxAoyXkjqMbPMDKWXKUesJ4kpGlblucnzKM0x2kMtK7zUNW
         p7Yg==
X-Gm-Message-State: AAQBX9dFWPVIV869oG6x0AKqyllX+PwiT+ay822elryEFVPVicwCoJf1
	i8WGBzbgkZqjhOYDbJZs7Z/rwP6THJCFRg==
X-Google-Smtp-Source: AKy350bpkl/XH9EejX97SLMedFqNtcocLz0dofiURStn1ZlIYfmxrsXsRPyGC/UDwV0n9ZyuKK9coQ==
X-Received: by 2002:adf:ed45:0:b0:2f7:faa0:3f19 with SMTP id u5-20020adfed45000000b002f7faa03f19mr349951wro.28.1681490673410;
        Fri, 14 Apr 2023 09:44:33 -0700 (PDT)
Received: from [192.168.2.177] ([207.188.167.132])
        by smtp.gmail.com with ESMTPSA id r16-20020a056000015000b002f21a96c161sm3936139wrx.70.2023.04.14.09.44.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 09:44:32 -0700 (PDT)
Message-ID: <8e40e46a-edf4-96c5-7248-21f39a93a410@gmail.com>
Date: Fri, 14 Apr 2023 18:44:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 1/2] phy: mediatek: hdmi: mt8195: fix uninitialized
 variable usage in pll_calc
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
References: <20230413-fixes-for-mt8195-hdmi-phy-v2-0-bbad62e64321@baylibre.com>
 <20230413-fixes-for-mt8195-hdmi-phy-v2-1-bbad62e64321@baylibre.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <20230413-fixes-for-mt8195-hdmi-phy-v2-1-bbad62e64321@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_094436_853906_6BE4148B 
X-CRM114-Status: GOOD (  16.88  )
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



On 14/04/2023 18:07, Guillaume Ranquet wrote:
> The ret variable in mtk_hdmi_pll_calc() was used unitialized as reported
> by the kernel test robot.
> 
> Fix the issue by removing the variable altogether and testing out the
> return value of mtk_hdmi_pll_set_hw()
> 
> Fixes: 45810d486bb44 ("phy: mediatek: add support for phy-mtk-hdmi-mt8195")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>

Looks good, but got unfortunately already fixed 4 hours ago with
20230414122253.3171524-1-trix@redhat.com

:)

Regards,
Matthias

> ---
>   drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 8 ++------
>   1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
> index abfc077fb0a8..054b73cb31ee 100644
> --- a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
> +++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
> @@ -213,7 +213,7 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
>   	u64 tmds_clk, pixel_clk, da_hdmitx21_ref_ck, ns_hdmipll_ck, pcw;
>   	u8 txpredivs[4] = { 2, 4, 6, 12 };
>   	u32 fbkdiv_low;
> -	int i, ret;
> +	int i;
>   
>   	pixel_clk = rate;
>   	tmds_clk = pixel_clk;
> @@ -292,13 +292,9 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
>   	if (!(digital_div <= 32 && digital_div >= 1))
>   		return -EINVAL;
>   
> -	mtk_hdmi_pll_set_hw(hw, PLL_PREDIV, fbkdiv_high, fbkdiv_low,
> +	return mtk_hdmi_pll_set_hw(hw, PLL_PREDIV, fbkdiv_high, fbkdiv_low,
>   			    PLL_FBKDIV_HS3, posdiv1, posdiv2, txprediv,
>   			    txposdiv, digital_div);
> -	if (ret)
> -		return -EINVAL;
> -
> -	return 0;
>   }
>   
>   static int mtk_hdmi_pll_drv_setting(struct clk_hw *hw)
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

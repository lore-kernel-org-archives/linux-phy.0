Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53B39C77B72
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 12:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ECY7HTfOEg3Vlcmr4w/tRq/ktEb/5D/Hv9TOCevb6Yk=; b=2f53tyK3AGfyOqYjM3tQL1Szs3
	h+IxvtB5Uxwk7Dr1G2EYUxHFOkWNH6EcIxvTgXdJkM4qUdv2Y6Kyf6WBeZXJruIhOgHQrR1YhxSA2
	IIkI9hiLLrcfAOq0cvSHM9xIjLAGykfnv1to56dwC0+e8nuO2JFaRZsqH5B0dlCuGQ7R4UzcbWg9Q
	YtazBddLy4Z55cC0F0SEJsNCVCErBysfhEIdGGrksRx9HfY9NDtSdC5MM0ujx5rNQGPTa6OMdo54B
	RXakUBhGxBpv+HrN2vM9WcA6RetDsGZhAIqy6DVBGD4YnpazIgZfhDB5JtVRk4USyhKnzucMuPgku
	MV/jCn8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnIvL-009ZKd-2g;
	Fri, 14 Apr 2023 12:53:07 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnIvF-009ZIH-0U
	for linux-phy@lists.infradead.org;
	Fri, 14 Apr 2023 12:53:03 +0000
Received: by mail-qv1-xf31.google.com with SMTP id ks30so1004300qvb.4
        for <linux-phy@lists.infradead.org>; Fri, 14 Apr 2023 05:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1681476777; x=1684068777;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c1mRBvmkKWpgvM1gONebrVKM3TA+ePdq5Jwjyb83ndI=;
        b=hfxcYBA6wKz0ja41R5GILX3KMG8FLrGhi8JWeM0W+y08tHIeAr1vzeBz6MD4JxzdBF
         QIhHkA3pbw59fZMAbr6b0i7r250bHgCCQTtKAKttdlfD8JhZyvUmQNuAj/uhdZtlKR7B
         KH05LZDkOItVIJbkhdHUcPbhGF37Iuzi2x+KKmUQGbaXez7ZikZDtNYtH6a64wNFe3lT
         DhyEQk8l44mdyq2Y4kI730hkh110qFH4d7oMA7EiD2VeMU9FLouu/qguZi9jRdHRRWaw
         +3u1tDfvw2LIjhSEsl0CC8jA7Lp6j743ttLMCvJJ42APWUvnVVahAUfe6mF3GO9ThAtK
         ehnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681476777; x=1684068777;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c1mRBvmkKWpgvM1gONebrVKM3TA+ePdq5Jwjyb83ndI=;
        b=bkPKcM0ELF+5JGQwMpmPq6DcUTvTmSmRUVefwDTC5LpEcxGRNTfYLyGWncGvgHwMZ8
         6T+WkV+wFFy83QQFUG/OP9i7d+XY4aKVNabPfRDNrmO/RCJ25EYwLpjurElNLl4Lrj3d
         mfRfEWLGJWVO0rVPRG6lbyLbY6f/YvRvPCv328tcTbb76nweM8XWHOEO//So753EB1cR
         ersg4T0uMeFNLsSKc/IAKgbAXMwtX12BqJxVzf2xzYbeVMtAvm9hgIZbVUHNCt9WT86C
         MdMX9NfZKosut1dYXwloZB33bEcKKIz/Jp+ZlDX2i54azgP3LLYOmYajBo+80onmVlmB
         m8fA==
X-Gm-Message-State: AAQBX9fl8Mu2VP3aTDZjYxbii+QLJ5U3sSe/w2s2aFsGId+SZ4OgSSsY
	ccuyy7F+joErn8MesBPPospIKiNaixL7PnplEOC9MA==
X-Google-Smtp-Source: AKy350bwrlQ1k6Id6taPs74WKZ2MYVEoCM7n+Fk3n2G+lg7Txm3HQS1LILK4QlW1vfVH9uPVwc8hFNllM10fhh8EPyk=
X-Received: by 2002:a05:6214:2504:b0:56f:728:19d4 with SMTP id
 gf4-20020a056214250400b0056f072819d4mr3900460qvb.26.1681476777521; Fri, 14
 Apr 2023 05:52:57 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 14 Apr 2023 05:52:57 -0700
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20230413-fixes-for-mt8195-hdmi-phy-v1-0-b8482458df0d@baylibre.com>
 <20230413-fixes-for-mt8195-hdmi-phy-v1-1-b8482458df0d@baylibre.com> <ada769e0-0141-634f-3753-eb3a50f0eee3@collabora.com>
In-Reply-To: <ada769e0-0141-634f-3753-eb3a50f0eee3@collabora.com>
MIME-Version: 1.0
Date: Fri, 14 Apr 2023 05:52:57 -0700
Message-ID: <CABnWg9v+DXatKqUkwDZBRxivtg869SocPGtHibtFNr7tnyVggg@mail.gmail.com>
Subject: Re: [PATCH 1/2] phy: mediatek: hdmi: mt8195: fix uninitialized
 variable usage in pll_calc
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_055301_393812_2D1D3148 
X-CRM114-Status: GOOD (  14.99  )
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

On Fri, 14 Apr 2023 12:31, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>Il 13/04/23 14:46, Guillaume Ranquet ha scritto:
>> The ret variable in mtk_hdmi_pll_calc() was used unitialized as reported
>> by the kernel test robot.
>>
>> Fix the issue by removing the variable altogether and testing out the
>> return value of mtk_hdmi_pll_set_hw()
>>
>> Fixes: 45810d486bb44 ("phy: mediatek: add support for phy-mtk-hdmi-mt8195")
>> Reported-by: kernel test robot <lkp@intel.com>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>> ---
>>   drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 7 +++----
>>   1 file changed, 3 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
>> index abfc077fb0a8..e10da6c4147e 100644
>> --- a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
>> +++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
>> @@ -213,7 +213,7 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
>>   	u64 tmds_clk, pixel_clk, da_hdmitx21_ref_ck, ns_hdmipll_ck, pcw;
>>   	u8 txpredivs[4] = { 2, 4, 6, 12 };
>>   	u32 fbkdiv_low;
>> -	int i, ret;
>> +	int i;
>>
>>   	pixel_clk = rate;
>>   	tmds_clk = pixel_clk;
>> @@ -292,10 +292,9 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
>>   	if (!(digital_div <= 32 && digital_div >= 1))
>>   		return -EINVAL;
>>
>> -	mtk_hdmi_pll_set_hw(hw, PLL_PREDIV, fbkdiv_high, fbkdiv_low,
>> +	if (mtk_hdmi_pll_set_hw(hw, PLL_PREDIV, fbkdiv_high, fbkdiv_low,
>>   			    PLL_FBKDIV_HS3, posdiv1, posdiv2, txprediv,
>> -			    txposdiv, digital_div);
>> -	if (ret)
>> +			    txposdiv, digital_div))
>>   		return -EINVAL;
>>
>
>I don't get why we're returning -EINVAL unconditionally in the first place, here.
>
>Function mtk_hdmi_pll_set_hw() should return zero or a negative error number: in
>that case, the previous *intention* was fine, so this should be
>

Hi Angelo,
I was maybe a bit too quick on fixing this that way.
Anyway it doesn't change a thing as mtk_hdmi_pll_set_hw() eitheir
returns 0 or -EINVAL.
But I agree that the logic is dubious and propagating the return value
is the right thing
to do.

I see that Arnd and Tom posted versions that you might prefer:

https://lore.kernel.org/linux-phy/20230414075842.4006164-1-arnd@kernel.org/
https://lore.kernel.org/linux-phy/20230414122253.3171524-1-trix@redhat.com/

Thx,
Guillaume.

>	ret = mtk_hdmi_pll_set_hw(....)
>	if (ret)
>		return ret;
>
>	return 0;
>
>
>Regards,
>Angelo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

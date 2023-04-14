Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2807C77B6F
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 10:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wuQjfHhrbP1BF3w21VoGbzCEZgg9TPWStA8QMSsnCk=; b=4jgfDrArKdMOj2
	N3GncsQd5f6mg9Y5V9otcIn18Ccm4etsJX0lQWEeNZsuJ11D729H9t4bLOo+WrTJPEbGbimB4ypCi
	lwJn/e5tiwXdYnVFpWcpodYKgfjGM++HS5qhqcGbNvNvWcW/1d3NBKx+pRaqs1eR9ZJ8GATgxq1wu
	x0cn7QVZoJ8XR8+71tfWeCqh9USzS/HweHhCoPuugrSAGy4Elx6tG+9Dvz8jnfOKadAm3Tdpd8rX7
	0OZbkk3ZDj5GvULpCHfZq7ONIJ0Kn00yH9rk71XDvuOUuvP+C9YW67MJ9Tj0J1ntDMnLWCOS21Rka
	7FIorDvYFkZe2BjDDK9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnGlT-009AYj-1N;
	Fri, 14 Apr 2023 10:34:47 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnGlO-009AVu-2N;
	Fri, 14 Apr 2023 10:34:44 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8BE516603222;
	Fri, 14 Apr 2023 11:34:38 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681468479;
	bh=Wv3E9PUWrZb1LypVjlRkJKgongoVuhTGI7YvkuT0r4E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Ym8z5pIXYeL+KxgD1J/F6kLUdC8NENeAzIH6DimNp3bWQPI7DtYYqhnEEfjXzR+lg
	 EKsap0k2N7IrlsgxkT1X1o+GswaNAwhC6gVQ+X2q3vBIBVR+7oW9lCUmLU8glTKtZ9
	 ddf+0HVpsMl+o32s1J+cp/q/Zjbzq/lnNxH59SsTbOGtS4WbjJdRU77q33eS8YvD4B
	 ad2qUc9E3vYPmAefMvBL9BkD+HUrWQus4t9zve069FCYXxN/0ON9nb0n4v1IwvEWA3
	 3CYrEedDnt/9nNDbF3/iV/VoIGc9TSjhSsYw+eHpY+3xQWOOKTs9yttvjj7NRaiPB0
	 bDrMCafVaienw==
Message-ID: <52440231-bbcc-48f6-fe47-a554cade8d73@collabora.com>
Date: Fri, 14 Apr 2023 12:34:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 2/2] phy: mediatek: hdmi: mt8195: fix wrong pll calculus
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230413-fixes-for-mt8195-hdmi-phy-v1-0-b8482458df0d@baylibre.com>
 <20230413-fixes-for-mt8195-hdmi-phy-v1-2-b8482458df0d@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230413-fixes-for-mt8195-hdmi-phy-v1-2-b8482458df0d@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_033442_919123_B8FE4E8E 
X-CRM114-Status: GOOD (  15.08  )
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

Il 13/04/23 14:46, Guillaume Ranquet ha scritto:
> The clock rate calculus in mtk_hdmi_pll_calc() was wrong when it has
> been replaced by 'div_u64'.
> 
> Fix the issue by multiplying the values in the denominator instead of
> dividing them.
> 
> Fixes: 45810d486bb44 ("phy: mediatek: add support for phy-mtk-hdmi-mt8195")
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> ---
>   drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
> index e10da6c4147e..5e84b294a43e 100644
> --- a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
> +++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
> @@ -271,7 +271,7 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
>   	 * [32,24] 9bit integer, [23,0]:24bit fraction
>   	 */
>   	pcw = div_u64(((u64)ns_hdmipll_ck) << PCW_DECIMAL_WIDTH,
> -		      da_hdmitx21_ref_ck / PLL_FBKDIV_HS3);
> +		      da_hdmitx21_ref_ck * PLL_FBKDIV_HS3);

How did that even work?!?!?!? Because ... it worked, I did test it. Bah!
Luck was on your side :-P

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

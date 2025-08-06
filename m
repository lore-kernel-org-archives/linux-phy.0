Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C895DC87FCB
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 14:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/C3XijSTEEtBCk+yMArESZrwT6TIIHEq8X8mumtD5s=; b=E7XsXFNMQy/ysb
	sfTUnuMhQVeLspycsY13XDbWayp6IFByQdh6ZA2qsk19qAnGMf+mfTwT542OXXfH7sRCGt5yxK+Qt
	51AieMtanYrROWZHmcbzE6SzFzyPZAUeGlRHhjVxEFRXapkSMxY1eH9/BoP78jg/yziA9Uv6I1HQw
	ABY12XkmQKTz/Am+CIkWc/4/k9xSSW1WQH9LNEiHQ9grBIlEsBQuom254tkh9I1jJHN6XCjVzYYW8
	dU/IqYzZnZvcwROgshnHVfUWgDU75ZT8LJn275Gx8hmWN3YNGowLwJn4JKDjg7KLBN+0zn9imSuOP
	/Hda6/gQ6aj4UJQHffRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujesJ-0000000FPPy-2NYK;
	Wed, 06 Aug 2025 14:12:15 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujemM-0000000FOJu-2h7B
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 14:06:07 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3b783ea502eso679055f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 06 Aug 2025 07:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754489164; x=1755093964; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x0bYBE5Rc8e/M69cHJLVxN5LPW+suPMaRJRi77jUT+M=;
        b=nPDPne/qBKDVjz+WClkfwRPeWCtWZEmUXaRpk95G8XXjo7yREbFjo6IlWlAeZuqIEs
         EU+ZWSux/b2AD1IAWRlgtzl0ANL5HxZaOI8XX3xDzx3UBbkBwK2Vn6bAQ8WUJPCdXWkH
         9NizntYHmdXa2+VCtRMAkyWDTpfn41IKps+f8k79hm17muQs6z5OFmH4h+gYUbO3I5Dq
         dkRPmxPpjI4QGZ7m+9tBDHQeBUZ06GUTO95HjGmJ+5EmEaedPrJfJoEmL8fjgW19zjAv
         F45wyj/B/tbGszzSgy5Md+Rxw/EAwdqdzzhUYfwp4+rq6LiRXC+AL8iXUZvFDpjA9qXW
         iMdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754489164; x=1755093964;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=x0bYBE5Rc8e/M69cHJLVxN5LPW+suPMaRJRi77jUT+M=;
        b=rLvrtm0EIueWRmoO8KG2SqCdrXzssH+ksXkE+sjzCsfQVf2xuzSON5Isig8wuK9GXE
         TVQnc1z70j1nGNUF2LpilBy/KsmdUcQRHLeezYaBOxFfpRixLyduZEHg59fUK5M4jOha
         mU4Bd+n4+IZbrMEpi3cWR9/VfVCUvfQhuOJk3bzFscw46NNM4Uxlkb0huprTWfVXDtV8
         nOBljgE2Tiy6ycKgDSHGN3IZn3ecvEpu0OAxgmevqKLvsy938St7Z1V6xpIsEspIdcXM
         yTvzeRs6YGIcrJMA8WIdn8XlGhAcxFPDLG71DBOzf8VYTtFiK4ITeaI3cX+0VAyE0hn7
         DN6Q==
X-Gm-Message-State: AOJu0Yw+xdpUmlfKnWakLfL5ADhPK4fMloM0UBpkukprfbUhT1zYynki
	mpy7AcrRZ8rp+khuqv8JnA8NlY8E4aGCJYffKcXX8ydw9+MhaZlRB68xhRapUBfnojQ=
X-Gm-Gg: ASbGncv3r+Y5BDcUIrEi5p43gNk3Zr1bA/NyvKy2DT4wUyPVhfJpYPzSYrs9jrEAm51
	bgW4XaI6PZlZHgnCZH2/iXU59HYymYdMzyGM+TDItnlMdYrLR9LHx7WWhtJ9ivvuPVsRGAD6f7f
	MCASGKOp7nYkXdgW+HZSPKcCmsFyb2mXkXwhHJiGgX8sFSRzHXCa3M/v5So9cLcxhDGOIXswiOv
	3inCEcSCaIwnJIN8E7bWbkn8rCOkJT4DhTpPB2YJ8XFTNRL+bedq+nlTNaJI3fzFXwjmyODfAfv
	arlflBX6+0SwF16BEUJaak936FJppfuC4y7lGmOHSn2fbktiAVTJqWSeZbQUaty7P+ThIbtRXM0
	XQ+1x+JIPXEac38PFro6630Y4RublfIHL12se3CeBt12vb2wZiht7RXfuVYBQ21908lhFSiAc2h
	E=
X-Google-Smtp-Source: AGHT+IFNsliaM3HeXRT/UHT5m1XgR5iHXWuzq/oQl+/FUCSRikpLg+toUiaSdpLaWfkqAlyBTDQVWQ==
X-Received: by 2002:a5d:5f8b:0:b0:3b7:8f49:94e4 with SMTP id ffacd0b85a97d-3b8f4316157mr2597397f8f.7.1754489164429;
        Wed, 06 Aug 2025 07:06:04 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:96df:e381:55b8:1990? ([2a01:e0a:3d9:2080:96df:e381:55b8:1990])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458bd5a11d3sm94964895e9.0.2025.08.06.07.06.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 07:06:04 -0700 (PDT)
Message-ID: <9549b800-2205-428a-8056-cfc6b5255850@linaro.org>
Date: Wed, 6 Aug 2025 16:06:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] phy: renesas: rcar-gen3-usb2: Store drvdata pointer
 in channel
To: Prabhakar <prabhakar.csengg@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Biju Das <biju.das.jz@bp.renesas.com>,
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250805122529.2566580-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250805122529.2566580-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20250805122529.2566580-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_070606_689670_4C8A67E8 
X-CRM114-Status: GOOD (  20.84  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 05/08/2025 14:25, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Store the SoC-specific driver data pointer (struct rcar_gen3_phy_drv_data)
> directly in struct rcar_gen3_chan instead of copying individual flags
> into separate fields. Update all references to use channel->drvdata->flags,
> removing the redundant soc_no_adp_ctrl and utmi_ctrl members from the
> channel structure.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>   drivers/phy/renesas/phy-rcar-gen3-usb2.c | 17 +++++++----------
>   1 file changed, 7 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> index 47beb94cd424..cfa9667c7680 100644
> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> @@ -122,6 +122,7 @@ struct rcar_gen3_phy {
>   struct rcar_gen3_chan {
>   	void __iomem *base;
>   	struct device *dev;	/* platform_device's device */
> +	const struct rcar_gen3_phy_drv_data *drvdata;

Why not phy_data ?

>   	struct extcon_dev *extcon;
>   	struct rcar_gen3_phy rphys[NUM_OF_PHYS];
>   	struct regulator *vbus;
> @@ -133,8 +134,6 @@ struct rcar_gen3_chan {
>   	bool extcon_host;
>   	bool is_otg_channel;
>   	bool uses_otg_pins;
> -	bool soc_no_adp_ctrl;
> -	bool utmi_ctrl;
>   };
>   
>   struct rcar_gen3_phy_drv_data {
> @@ -204,7 +203,7 @@ static void rcar_gen3_enable_vbus_ctrl(struct rcar_gen3_chan *ch, int vbus)
>   	u32 val;
>   
>   	dev_vdbg(ch->dev, "%s: %08x, %d\n", __func__, val, vbus);
> -	if (ch->soc_no_adp_ctrl) {
> +	if (ch->drvdata->no_adp_ctrl) {
>   		if (ch->vbus)
>   			regulator_hardware_enable(ch->vbus, vbus);
>   
> @@ -290,7 +289,7 @@ static bool rcar_gen3_check_id(struct rcar_gen3_chan *ch)
>   	if (!ch->uses_otg_pins)
>   		return (ch->dr_mode == USB_DR_MODE_HOST) ? false : true;
>   
> -	if (ch->soc_no_adp_ctrl)
> +	if (ch->drvdata->no_adp_ctrl)
>   		return !!(readl(ch->base + USB2_LINECTRL1) & USB2_LINECTRL1_USB2_IDMON);
>   
>   	return !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_IDDIG);
> @@ -421,7 +420,7 @@ static void rcar_gen3_init_otg(struct rcar_gen3_chan *ch)
>   	      USB2_LINECTRL1_DMRPD_EN | USB2_LINECTRL1_DM_RPD;
>   	writel(val, usb2_base + USB2_LINECTRL1);
>   
> -	if (!ch->soc_no_adp_ctrl) {
> +	if (!ch->drvdata->no_adp_ctrl) {
>   		val = readl(usb2_base + USB2_VBCTRL);
>   		val &= ~USB2_VBCTRL_OCCLREN;
>   		writel(val | USB2_VBCTRL_DRVVBUSSEL, usb2_base + USB2_VBCTRL);
> @@ -487,7 +486,7 @@ static int rcar_gen3_phy_usb2_init(struct phy *p)
>   	if (rphy->int_enable_bits)
>   		rcar_gen3_init_otg(channel);
>   
> -	if (channel->utmi_ctrl) {
> +	if (channel->drvdata->utmi_ctrl) {
>   		val = readl(usb2_base + USB2_REGEN_CG_CTRL) | USB2_REGEN_CG_CTRL_UPHY_WEN;
>   		writel(val, usb2_base + USB2_REGEN_CG_CTRL);
>   
> @@ -778,6 +777,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>   		ret = -EINVAL;
>   		goto error;
>   	}
> +	channel->drvdata = phy_data;

Replace the whole block with:
	
	channel->drvdata = device_get_match_data(dev);
	if (!channel->drvdata) {
		ret = -EINVAL;
		goto error;
	}

and drop the local phy_data.

>   
>   	platform_set_drvdata(pdev, channel);
>   	channel->dev = dev;
> @@ -788,12 +788,9 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>   			goto error;
>   	}
>   
> -	channel->soc_no_adp_ctrl = phy_data->no_adp_ctrl;
>   	if (phy_data->no_adp_ctrl)
>   		channel->obint_enable_bits = USB2_OBINT_IDCHG_EN;
>   
> -	channel->utmi_ctrl = phy_data->utmi_ctrl;
> -
>   	spin_lock_init(&channel->lock);
>   	for (i = 0; i < NUM_OF_PHYS; i++) {
>   		channel->rphys[i].phy = devm_phy_create(dev, NULL,
> @@ -808,7 +805,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>   		phy_set_drvdata(channel->rphys[i].phy, &channel->rphys[i]);
>   	}
>   

Thanks,
Neil
> -	if (channel->soc_no_adp_ctrl && channel->is_otg_channel)
> +	if (channel->drvdata->no_adp_ctrl && channel->is_otg_channel)
>   		channel->vbus = devm_regulator_get_exclusive(dev, "vbus");
>   	else
>   		channel->vbus = devm_regulator_get_optional(dev, "vbus");


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

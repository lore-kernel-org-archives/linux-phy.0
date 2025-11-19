Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 791D9CF34C9
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 15:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KkuTrSSqm2I+v5kf3PDkeE65qhG+y3xvbUNFyP8OfBo=; b=GRrHtzknEDQLhC
	XeHnp1lGVmUwTzGK2+dZqq8OfM4IfLOeSXaTxTyvpyKhW8hffstVxdPj/27oSAZljypxUCHVPJeGa
	K/cf58+GIQXm+LLZytkVBlw/F+7eNNJj0+b2/c8DRIf9c91cZritZyqYD3DSc9wCkw+vgGp5O+ufE
	aQxqvpv5a9tbeqTTq+bXhL8gdIkhtBiozAQNk5VuCO+X4kISzIQGd90OS9yZ5K5gjiYboBLJ1taOv
	3yHOzUaOr4VBCilfMAdyemiVMMiCQQxAA2SDjoMjmy8J5z3vaas6X0bMagSBWFuxBXHzWfd9KR/oY
	dCT98wrS4ipvQ/1BXsfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLjt4-00000003TKf-0MOX;
	Wed, 19 Nov 2025 15:14:26 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLjt1-00000003TJU-3ywD
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 15:14:25 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-42b3c965cc4so582084f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 07:14:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763565262; x=1764170062; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lkHlND8AocQhZqckGnaaNO+3qDUjMRfPMX7RKCDl4Hs=;
        b=IPZ7shpsBpflBTVBFn+9BA3CvPV/DmK3Oi1+i1EpzTy2OPULT9s/dNxY/uVrrUYPh3
         5p4g57oi36biaL1C5qVhfjZUCR66K+KTKNXiLpETlkNo7inDQmYgBzuOydTNqalzS9Us
         zpge5M+cNhDsacK2tAa2OPxYtvZoUI8SMI2ijIeqlyGwCfD9I10bXdXFWs7sMt0ciA9a
         tH9riYJxhbxMP1rRDot2WzggZ6QLFS/W/2LTPJFoY2s9M/5grfJy2GGaWTcER/xO35Bz
         QUE3oQnGMIXewJymlwMqacO8ntr/el0eK0fT3tyw1r8exxbpor8MRSS7AhJ7NDhYzEJa
         yNdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763565262; x=1764170062;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lkHlND8AocQhZqckGnaaNO+3qDUjMRfPMX7RKCDl4Hs=;
        b=v5xXhxjy9p2JSUrn3FC+zHaQYx5GQioyc7SM+Mrd/RaYS/LDH5cLPy8XEBNLCVRyaS
         llEsYuGPaRPch3Qxu1IBqVsFxdQ3NceZRGfkMPsTcSK4rGMGMnJzJHMTG9F87xuLP3Ih
         XfhA5YHxuPbdF2gz+CMRyl+gtZCSZtSYM2bQ5BZ+RCNiDrvZrbVh9zK+Oma+Z8SYCfcX
         LmoOr0PrI4ihdz4/ADjjqUNnqwd1SR9Y1wfRpjdXK6hVCsEUpIx1OrIonO8SprV1eO1B
         Rn36LnxmiKA8ymx3L0NCh67vNS4EC+l3gxK7vrfwv0qXNbwkrUXiCa7gBLUa+5/0YSGo
         0QJA==
X-Forwarded-Encrypted: i=1; AJvYcCX+sOUfqhd1QOe3bgJf5JXyFZmw0LwejDwEM7sT9tG9tQ/GVy5XPcVJI88haLgyRRboznsPwGxdc0Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyu7wjB/c+4biJH+aK18iuXZODK1wB0Lb2OxciQA4mL3qka2otS
	rhfq4BuXFXPJcykDSzuBmizIbaxjGS9J4B3gQwthXQyLKM8bFeUN428LTJ+u68TDORI=
X-Gm-Gg: ASbGncuB7Ov1v7C5ef477QNLyPF+AZnRrINGyk1zybaqrc1cGdror1xdNf6cZs/bOv/
	SSD7ZzW53uKbpggQ3/p/xiwKL5DG/KDfiC5dYn5AxdLP5JjLWq+z2KQRYlpbuODTH53af87r8Ly
	VAD8tSsDLMPYEXuoJC2vZba1Xxyey+GRUCy44Xk0dX+ms9F27PFlPwwf46BS+4G+lCF/G4BupNs
	UDO6Y9h744pR35AXwghf93WwvDFGUbL6jHf4pBzQzTEGdkJW0cANNmkzzfVZZfHmfsjvRTpE4Zr
	6ld4Zs7Zb7WXlGnu/wFVnAel8wk3a04jU4ZyIYJ+z4+w6Jj9BYqZQ9p9PfaJmJ4QbUj2+PPIazw
	zhJWcr9y3oOxF/kyo3ZjyGYQUc72DNxTked1EiOTKj/uaHTIDzBJ4cDuRgHSw1noUe8cMpzYbMa
	3EdrnfNsfqxOT7Ac4joPSSMSVu2P/7+QLmuFxy87t6hLoKxJ4w+HI1oFzD2pSJnZ4jmNhMXOvrn
	A==
X-Google-Smtp-Source: AGHT+IGrnkcaARv5IxTtNZ8mZofbwJq+G/I7rO36uq8AMERCsRXjwtLlV07M5eZa+gjQ6GroqAvyvQ==
X-Received: by 2002:a05:6000:1ca:b0:429:b8c7:1848 with SMTP id ffacd0b85a97d-42cb220e976mr2816927f8f.19.1763565261828;
        Wed, 19 Nov 2025 07:14:21 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:263d:925b:a11f:ae36? ([2a01:e0a:3d9:2080:263d:925b:a11f:ae36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e845bdsm37266810f8f.12.2025.11.19.07.14.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 07:14:21 -0800 (PST)
Message-ID: <d737b075-ca2f-483e-833f-c8e8a4cbc31d@linaro.org>
Date: Wed, 19 Nov 2025 16:14:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: cadence-torrent: restore parent clock for refclk
 during resume
To: "Thomas Richard (TI.com)" <thomas.richard@bootlin.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, Udit Kumar <u-kumar1@ti.com>,
 Prasanth Mantena <p-mantena@ti.com>, Abhash Kumar <a-kumar2@ti.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251110-phy-cadence-torrent-resume-restore-refclk-parent-v1-1-1be87af7d19e@bootlin.com>
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
In-Reply-To: <20251110-phy-cadence-torrent-resume-restore-refclk-parent-v1-1-1be87af7d19e@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_071424_024001_51C1DE02 
X-CRM114-Status: GOOD (  16.41  )
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

Hi,

On 11/10/25 15:07, Thomas Richard (TI.com) wrote:
> While suspend and resume, parent clock config for refclk was getting lost.
> So save and restore it in suspend and resume operations.
> 
> Signed-off-by: Thomas Richard (TI.com) <thomas.richard@bootlin.com>
> ---
>   drivers/phy/cadence/phy-cadence-torrent.c | 11 +++++++++++
>   1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
> index 37fa4bad6bd7..17d09e7d866d 100644
> --- a/drivers/phy/cadence/phy-cadence-torrent.c
> +++ b/drivers/phy/cadence/phy-cadence-torrent.c
> @@ -384,6 +384,7 @@ struct cdns_torrent_phy {
>   	struct regmap_field *phy_reset_ctrl;
>   	struct regmap_field *phy_pcs_iso_link_ctrl_1[MAX_NUM_LANES];
>   	struct clk_hw_onecell_data *clk_hw_data;
> +	int refclk_parent;

Can't this be stored in struct cdns_torrent_refclk_driver ?

>   };
>   
>   enum phy_powerstate {
> @@ -3329,8 +3330,13 @@ static const struct cdns_torrent_vals sgmii_qsgmii_xcvr_diag_ln_vals = {
>   static int cdns_torrent_phy_suspend_noirq(struct device *dev)
>   {
>   	struct cdns_torrent_phy *cdns_phy = dev_get_drvdata(dev);
> +	struct clk_hw *refclk_hw = cdns_phy->clk_hw_data->hws[CDNS_TORRENT_REFCLK_DRIVER];
> +	struct cdns_torrent_refclk_driver *refclk_driver = to_cdns_torrent_refclk_driver(refclk_hw);
>   	int i;
>   
> +	regmap_field_read(refclk_driver->cmn_fields[CMN_CDIAG_REFCLK_DRV0_CTRL_4],
> +			  &cdns_phy->refclk_parent);

Can't cdns_torrent_refclk_driver_get_parent()/set_parent() be used instead ?
Or even better add cdns_torrent_refclk_driver_suspend/_resume() functions to handle that.

Neil

> +
>   	reset_control_assert(cdns_phy->phy_rst);
>   	reset_control_assert(cdns_phy->apb_rst);
>   	for (i = 0; i < cdns_phy->nsubnodes; i++)
> @@ -3349,9 +3355,14 @@ static int cdns_torrent_phy_suspend_noirq(struct device *dev)
>   static int cdns_torrent_phy_resume_noirq(struct device *dev)
>   {
>   	struct cdns_torrent_phy *cdns_phy = dev_get_drvdata(dev);
> +	struct clk_hw *refclk_hw = cdns_phy->clk_hw_data->hws[CDNS_TORRENT_REFCLK_DRIVER];
> +	struct cdns_torrent_refclk_driver *refclk_driver = to_cdns_torrent_refclk_driver(refclk_hw);
>   	int node = cdns_phy->nsubnodes;
>   	int ret, i;
>   
> +	regmap_field_write(refclk_driver->cmn_fields[CMN_CDIAG_REFCLK_DRV0_CTRL_4],
> +			   cdns_phy->refclk_parent);
> +
>   	ret = cdns_torrent_clk(cdns_phy);
>   	if (ret)
>   		return ret;
> 
> ---
> base-commit: 415559c31bd4f19fde440f759d529a448743fc8c
> change-id: 20251110-phy-cadence-torrent-resume-restore-refclk-parent-f59fb5fc69fa
> 
> Best regards,


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

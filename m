Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33A7DC7EE2A
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jun 2025 07:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eZYA3SMMiNbnsI72mJi4zGb4EDnrTH9Y4BYvUosgPxk=; b=2fBRj5I/vd1Bj34o5M4o5ChrAA
	87NE52Gpi7lrEoFEGCmVrjmmO4M2WpMiRkvScUm+EcHajt+TNz9hur71NTGW/16s1PhuFL5ChyiZt
	PUpV6kLq9CvDGNGM4OnBLzTZavOcO9QJxcFbR/TYp58PMPQpm76kb7bLnT/5fVTeZMdGvCAbSiSIU
	sHJMt8jcl1RKgDyqNrUYoHsj2+OaofVgYZhb+hu0yr1+dVFvDTsN9dpLWn4QJ+waljxTqAIqPBVZX
	m9sH9j+KyfO4Q6xx4vJuyt1X83+rcjSTG2EJpeExyy/yDeEDtvuX6RSXxG6gxdhV5GNV7CsrmYHCn
	ga95HN9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTyGC-00000004u83-3OUK;
	Tue, 24 Jun 2025 07:40:04 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTy2P-00000004rTe-2VEP
	for linux-phy@lists.infradead.org;
	Tue, 24 Jun 2025 07:25:50 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3a4fb9c2436so62052f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 24 Jun 2025 00:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750749947; x=1751354747; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FtgIGNczssYUGYgBiPeFqClBJjbBAECDcaII7sn4pOg=;
        b=VTw366XO5VJIVJwlk5pDuB2EUuVHzNcTBylrSQagEtCu2l3Wrz711U1Nvwrm4DaBus
         K8Q8hhb2I+ofuIPa4gMJv6i9wiWJDHmGQpNjn3Yt8SQnXM034GB64nP4BsySHVdE+gIZ
         LxbTIwFuNM4AznlL6YuOU+qLbuBq6tQmjS1Ibzt0a6ovTeyotXi9CU2z0NQtUSWNfoEM
         1cp3bxClx4KfVIoKXVgoMPGmyhieefKY9W1J5GvhbQi1Ww/8TZk4e1mCkJm8l6lxpqgn
         voIAPwMHdzhivFIdfxVrHWpLZooN+qacnkSrb7wfYgbow/sDVmWO7d+XNrrcL6jjo9k1
         uWAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750749947; x=1751354747;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FtgIGNczssYUGYgBiPeFqClBJjbBAECDcaII7sn4pOg=;
        b=cMxtmFBHrNpKpPzvWILAMphKHzZ9NFAy0YucQFT4D9A/BsJP1JyvMXFU6gnDCnDIpU
         98nQsIn2kYFtbGtGNor8r3L/XR8HldMkpM2cdtgGNQGaEOEXRApDGxzIACnQH0xjm09V
         iW4pZhqkiF2ufPwCC0qF0t4hAkojCwOWlwzMaMd036c9/mUxiQs9Sykp/tJyODYjA99c
         XWbp9VuIuNmO6mXSsSYLZfLdhqTKlQ6R7KqiQ3dtdRsnIApPW7wJM5lGUvjZWd0gZcrq
         Ql3bFN7LOoRN05qv/TjqbjZkxYBSIz6Mqcrx7fMaKDuKSzWL7A0GrCPxFNp5fm87zJ+D
         k6HA==
X-Forwarded-Encrypted: i=1; AJvYcCXfYy9jTJq3kYe3Um+TXrcnVIyUDj0cYc7QZNpnhs8FrhuG/B/mx40jVQnUpygPepMUdGl8Qk86tMs=@lists.infradead.org
X-Gm-Message-State: AOJu0YyLPw4ddtERDUIxyTzhC42KlhxWlyQPvdEzFYzAOLEAS1EH+30b
	haP+DubUJrEvobNtnPMMxa4jkSkxN34tZbKtAdeHnqq80QyWq3p5xESCzdJ/aXHTrjg=
X-Gm-Gg: ASbGncuHeaurRX7lJS7Sjd9tbdNDbgjd9gDjsEGDeVgvREBH0+8OtDqxNMm0kXL1+dr
	cqoWsmtEFimobYfW5ph76166zlsD6PZ26L3aeDbCzD0O6NmPrgLhnlALmxddctgHRMGqThX1oCF
	C5mlvynHIMSUTC3fLbPCw1ebF4bguFf8f3+ey6lTg1S+hKu55LCtk9FKyqTqC/EhvB6sxaOgsHS
	XW/UZGZI009LvZvRVvxNvUfTfDmF2ssv6BroP3lf+y9FgNoQyGXxiLCbX0oq/4u/SrrL5SRlqFm
	IprbyK7b0+kkSGE+rvcacV2CaS8Bp9zmuRYTyWzuIGb8MNZAQyWyK6jcAotBwjAPC/EdNzWxp2E
	15SwEw/GfmwMN/2uPvOTMm4hFrFDp7ac2e9soEbA=
X-Google-Smtp-Source: AGHT+IFAh6IcPckJtUb2REr21+qkeIcOv+2E3MpGel+3N0TmxwGvyzKEomHombfie38TZXzxxU5RLQ==
X-Received: by 2002:a05:6000:2084:b0:3a5:3b15:ef52 with SMTP id ffacd0b85a97d-3a6d1192980mr9358226f8f.8.1750749947067;
        Tue, 24 Jun 2025 00:25:47 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:6fea:600c:ca20:f54a? ([2a01:e0a:3d9:2080:6fea:600c:ca20:f54a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6e80fed75sm1215020f8f.66.2025.06.24.00.25.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 00:25:46 -0700 (PDT)
Message-ID: <bfba6751-2fd4-4183-b6d4-b1440a4fc98f@linaro.org>
Date: Tue, 24 Jun 2025 09:25:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v1 1/2] phy: mediatek: tphy: Clarify and add kerneldoc to
 mtk_phy_pdata
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 chunfeng.yun@mediatek.com
Cc: vkoul@kernel.org, kishon@kernel.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20250623120315.109881-1-angelogioacchino.delregno@collabora.com>
 <20250623120315.109881-2-angelogioacchino.delregno@collabora.com>
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
In-Reply-To: <20250623120315.109881-2-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_002549_690216_640E3784 
X-CRM114-Status: GOOD (  18.29  )
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

On 23/06/2025 14:03, AngeloGioacchino Del Regno wrote:
> As struct mtk_phy_pdata was almost fully documented, transfer
> the comments into kerneldoc on top.
> While at it, also rewrite the comments to both improve the writing
> writing and the actual information in the documentation, and add a
> description for the `version` member of the structure.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>   drivers/phy/mediatek/phy-mtk-tphy.c | 20 ++++++++++----------
>   1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c b/drivers/phy/mediatek/phy-mtk-tphy.c
> index 644a34bd2b0b..858824b4476e 100644
> --- a/drivers/phy/mediatek/phy-mtk-tphy.c
> +++ b/drivers/phy/mediatek/phy-mtk-tphy.c
> @@ -277,19 +277,19 @@ enum mtk_phy_version {
>   	MTK_PHY_V3,
>   };
>   
> +/**
> + * mtk_phy_pdata - SoC specific platform data
> + * @avoid_rx_sen_degradation: Avoid TX Sensitivity level degradation (MT6795/8173 only)
> + * @sw_pll_48m_to_26m:        Workaround for V3 IP (MT8195) - switch the 48MHz PLL from
> + *                            fractional mode to integer to output 26MHz for U2PHY
> + * @sw_efuse_supported:       Switches off eFuse auto-load from PHY and applies values
> + *                            read from different nvmem (usually different eFuse array)
> + *                            that is pointed at in the device tree node for this PHY
> + * @version:                  PHY IP Version
> + */
>   struct mtk_phy_pdata {
> -	/* avoid RX sensitivity level degradation only for mt8173 */
>   	bool avoid_rx_sen_degradation;
> -	/*
> -	 * workaround only for mt8195, HW fix it for others of V3,
> -	 * u2phy should use integer mode instead of fractional mode of
> -	 * 48M PLL, fix it by switching PLL to 26M from default 48M
> -	 */
>   	bool sw_pll_48m_to_26m;
> -	/*
> -	 * Some SoCs (e.g. mt8195) drop a bit when use auto load efuse,
> -	 * support sw way, also support it for v2/v3 optionally.
> -	 */
>   	bool sw_efuse_supported;
>   	enum mtk_phy_version version;
>   };

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

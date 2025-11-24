Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DE67CFD317
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 10:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZEDSr2pc/untm5HkzERMIR043ll556KeKREHpTyeko=; b=sHD6I/IEVFMQmi
	B5MbFba8YSG1qPu+QJtcTRPAOefIqQ1/THvv3b5NMuz9vVX7KfIrCJKMAgwuCwP1JMKH8CdTGVfPk
	d7MfBcpC8qWKb4sM4k63tatnwm13HvISXlwVWuZDrUe/QGh+NLzKcPwylV86WWVcWf2KJF0WMhjCp
	xfe3E4DyZlCRmLiIllrA4DEOrKgNB7m3hP6Kz85QTyiYU5vyOh+OQ520qEwGm+c59bMEhQxHSscSV
	hwbjBKC4dIreLBrHSE1Ef5XBTpaUrlikD2c523EfNwwh2cftreUGs4ZdU+vpCoIIHghh/E82i8bak
	w7sJCgUVcfRYPlbTUuuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTvB-0000000BQyF-1Fn3;
	Mon, 24 Nov 2025 10:35:49 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTv6-0000000BQwX-0AYj
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 10:35:45 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-477770019e4so36276815e9.3
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 02:35:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763980542; x=1764585342; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HAIKS+tQIq5G6QZu607XSH9VxwKXNkvRuOzR0ldY0uA=;
        b=aCefX6nblJIiiXGNepHVRsNtEmeSm33vHJkTU1qAsJvS1xj3c4iBaB3SYVI4yI6ZvS
         1aoLivyLpAVq2k72s9E1U3iXxNW2Q12ae7OHHZ2xGiiv3EvNWu5j5dGo9cz5VvxwCBFP
         Lkrd+oslmcKCb5OEf4sbrAtzxN0nCZK20F5XZiZgxnFWTypN19ukt/6N7grUMMy3v+Wq
         BujoEZbTt5k8KhOU8cz7neQD2t3spXJjw1M3Wk8V2EugwrtkmYdho4APG3SXXgfCoCAd
         wUfEqHBgOz/0GGvMzAk8BV7YaxlLDYBp3qSORXXxBTu4yo7UYJvRcDnMnC1v+yeSkqHd
         ukFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763980542; x=1764585342;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HAIKS+tQIq5G6QZu607XSH9VxwKXNkvRuOzR0ldY0uA=;
        b=mm92N0DyxnOSoperqTRfGu2ynjvkncI92wrYGS//9U2tvhg0c5uKANMpWJn69ws7lv
         vwwFNSHjCb1SNl+zbAaf2CTWZfasvglBFFeo5nT1tuzZ1sPBjOzs6AdrdtvPpzlY51v4
         WOE7c4OOj9jPYM1IvWuYzhB3uXfuQQyU+/r/Zq5i4AXTbc0L/ptuoDKBr0KkLMJ1EoqG
         Yj8a7SWnfVpzF5DTDLhIcbW+0gtpPNb1rhgJ7Dg7rq17p3qs1MPEjf65SguGXp308fTj
         VsIu/ZcL3Lyk5YH3BgVv0W/ZvLsQuUO/enapr2WUfc4OWYM6SI2OhLPO4t8LrOi66vt0
         YdtQ==
X-Forwarded-Encrypted: i=1; AJvYcCXK0ohw8n3VLkcfXymLwDQn+Tf50AFHpwqrlqsB5eHr7PVpgh0HzevVZ7MbsgnaiqZdymXO0TSBwf0=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywknq1W1o6lPUBzoDiTbkV52zVqx74TI4t/kf7tGedVNSSFrJI8
	KbhYyNwFbuYUz5bf4coOmmcmgBQV9MkB/nRF2ELWit9eku7PPNPwh0utKOQG9RJYmXs=
X-Gm-Gg: ASbGncsoGQ2f1MgwtDfEuVwhZLOf57YpbkomHPvo5TZ+CM20AhpBAYefqoi1qKzdMm/
	3BOgp+pH9QWBoeWagoEgYj2NZIppXB9VpYgW1iznvjMpfxMegeoG0YY0P0UKHJKpm+Ny/6+YXGd
	Tr/nlf5S9j7C4WtVlgsj7mWH1+mt3QcR5NRd779sASxteyJ0OhbV3lX4bCHIJ6HwjWeObppgeS+
	H6xDRD9YOYAurCi5LCGBIx2Akkd6HZNrKkso7cJ6Ih/My7fgIxUGMp8XsHwSijCHyI07ZFIPNfK
	1FziQ0PP06Ttc6Juece/zWBy33DETUooqzHPJTbF/kz/IzxGlEEsFcqcDsTb2FCXPz6IeZ9GSIA
	/r5Y4aSRd1uo6qJ1EOu5T15s4Dc9R/xGMF0HOWi8Lg1/pSZs6AKhFk/y+egtfOwEXD9RSduP4S2
	g5jUtOpvwPKAXI3eW9PFTrDEkNhxy+YpupRG18ZkFxaYzomJFtZWcz6eZ49nVBfeVvJhS9aY0z9
	g==
X-Google-Smtp-Source: AGHT+IHGv4bbS+3bVyw0pYcsA3BeS6dNhxGlltqoLwAE51qnNbKpUpuxJhUkaEhMz5T/wEJo8trcPQ==
X-Received: by 2002:a05:600c:a01:b0:477:7f4a:44b0 with SMTP id 5b1f17b1804b1-477c01f5980mr97488605e9.33.1763980542060;
        Mon, 24 Nov 2025 02:35:42 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:ab13:96f5:1459:8396? ([2a01:e0a:3d9:2080:ab13:96f5:1459:8396])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a9dbec2bsm150012445e9.5.2025.11.24.02.35.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 02:35:41 -0800 (PST)
Message-ID: <1d0ccc76-bc19-4446-926f-a12a16a3f88e@linaro.org>
Date: Mon, 24 Nov 2025 11:35:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] phy: fsl-imx8mq-usb: fix typec orientation switch when
 built as module
To: Franz Schnyder <fra.schnyder@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Cc: Franz Schnyder <franz.schnyder@toradex.com>,
 linux-phy@lists.infradead.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Francesco Dolcini <francesco.dolcini@toradex.com>, stable@vger.kernel.org
References: <20251124095006.588735-1-fra.schnyder@gmail.com>
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
In-Reply-To: <20251124095006.588735-1-fra.schnyder@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_023544_107462_35E55BD5 
X-CRM114-Status: GOOD (  15.97  )
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

On 11/24/25 10:50, Franz Schnyder wrote:
> From: Franz Schnyder <franz.schnyder@toradex.com>
> 
> Currently, the PHY only registers the typec orientation switch when it
> is built in. If the typec driver is built as a module, the switch
> registration is skipped due to the preprocessor condition, causing
> orientation detection to fail.
> 
> This patch replaces the preprocessor condition so that the orientation
> switch is correctly registered for both built-in and module builds.
> 
> Fixes: b58f0f86fd61 ("phy: fsl-imx8mq-usb: add tca function driver for imx95")
> Cc: stable@vger.kernel.org
> Signed-off-by: Franz Schnyder <franz.schnyder@toradex.com>
> ---
>   drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> index b94f242420fc..d498a6b7234b 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> @@ -124,7 +124,7 @@ struct imx8mq_usb_phy {
>   static void tca_blk_orientation_set(struct tca_blk *tca,
>   				enum typec_orientation orientation);
>   
> -#ifdef CONFIG_TYPEC
> +#if IS_ENABLED(CONFIG_TYPEC)
>   
>   static int tca_blk_typec_switch_set(struct typec_switch_dev *sw,
>   				enum typec_orientation orientation)

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

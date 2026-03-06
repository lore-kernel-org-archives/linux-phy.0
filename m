Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F229EF01825
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 10:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FQ/3zUOrL9uKQ4etL3Ph72akneAjkkmn0H0jRqczjsI=; b=QPvzaHMhTh9WBjqSlEQoI6Gvu6
	iatywbi3AulsrCcD2pju6c3R675vI6A7uI8+TU9Lp05CJ83obiml/zB7mQzPJaX8MlB5g0d3ovKx5
	l0ryHQckpI9CbhFIjxjT36sWxfb3jJYoQ0xxTBZBAi748jR+nWi0zZX8Yqg5E8OgeZIt8w9DqZPqS
	AvlFhEtrMfC6CR9Z6nAeGeJZotIms1QQ8JuQNJckLQ+uJ6z9sjTnUpl/Hp/xJ4LZTf6ucGnTVwo5D
	+n2SpvWr6+dGo+mObma1rhslGb8V1VAZ1ukO5L2PBWPrth6jtMAGVmCnnqpTYTTdMJGqm9NMbq41N
	v/vgGIgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySWu-00000003U1G-1kJE;
	Fri, 06 Mar 2026 10:35:36 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySWs-00000003U0k-0uVN
	for linux-phy@lists.infradead.org;
	Fri, 06 Mar 2026 10:35:35 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4838c15e3cbso82965055e9.3
        for <linux-phy@lists.infradead.org>; Fri, 06 Mar 2026 02:35:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772793332; x=1773398132; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=esFAJAECIS5DMa99l6UrhVMfqbrM8y+wZ60LQuBZn4Y=;
        b=iuoEh7/n9Nw9mhPssW55xMAXmizu6zt9neO4ENo9qu7xpNU6uCoyQCYB8vYO+Xu5Rx
         ciPf0iVMnSmPvAnJZUCtHzuNBqVua2oc73eNzmOs8DAblncbxrp/OGZAW3D/OyzIWsyW
         Y5UzEzA1dh2m5j7ekTSAV5L7u8lmMA9CLZ8qZBuoivhA0zn1wjgQ1aP69nhjrTTTJ56U
         8BJ1H1YGdfCqu3Ek6Avzr6KbMo2gM67XyQJfnesShsmvzIfNOfqVIv7myuG++JfcjDrW
         MHdAo/csyBR/xJlR4Ga6ipWRAqncyru+7qv1W9N6giJxJ3CpxUbbVOnXIUVg0ZFUgpOz
         PPAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772793332; x=1773398132;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=esFAJAECIS5DMa99l6UrhVMfqbrM8y+wZ60LQuBZn4Y=;
        b=a4BzJ3oVKe4LPqDb6QsLmUTuI0lJFd1hCoPwIkjK25X6Uxv9jF7YCguL9mpKGBakrt
         y6H9TBkxezWl6ZH2cUzaV+adgqNDCXof5sMM/nZRnSqsZFVPOLwrNehdGNvTMYGpkQ0Y
         Lyyoc9fdCoa8Zxik6o3wxIgQm0ZbIyKBEhFDwOsUNDE8NcL+AiwLavtBUxOYt/V8XVh3
         xw17YaA0oqqcJtoYQZADdSScQ2dh5v9y1mjUuH+JPSzohTH6OS7kyXJ0vDB5hScRCP5a
         ss1BjrzTqAUkaB4JwyCpBc4xbADGnoXSVhVP80ms6YPvssKkBTywuRDb7GNTMev9hZF0
         9xMg==
X-Gm-Message-State: AOJu0YzDF9+uTXwCa8rMh4ejI+r12mI+cV+4UVzSnV5JCQ0pk8l2OPwQ
	mKoAQUNHzega02qWTHoIUgwBSM1hS7yvRZQamNN5xMvRLm410+Q3c+/aDhsTpMXaTMI=
X-Gm-Gg: ATEYQzx9Pmfimn8gyoDfbaAd+yUF9a/DXIUZnqJerQkB2i11hK06FNn+qwLhDUvZNDo
	F493cBhmk2m79iARg6WpP7v9UsEYJosDcuUf74ew1ovJV4LZ6JCLx21vyYB4Y4qWoOFVKfXhEA6
	0WEGe3FVELdtJ0CCtXcYnZPtW+EU0/s6NDSW01RnJtZDthEFj3svR6cRRpwb6061M2Uw39UKXZq
	DNvz5nAaiKjE6yS/uXwhYjuh3X6ceUeSG4/KXOnuqxnXxVaC9Uo2MTHS4iNSPcBZ5BHy65E4yCB
	UKvsJKTFfNCVRlnPg4hpLdIsCLOqsl8koOWhSf5+bcaBV/5qZF4ZNJzULhhQvdxLyKz1d9DhYpQ
	SHu7GNWlCQls+MzeZuGIhGwhj5InbNWm9r0RBgxTvEQxKVW5qPlBzJsaWe35TvZXOWT31XHYlGn
	m2ZXwSa6l/NOm9CPghuDYl4Xl7jt5pSLJG1RF6aLDW5iTsaIqbLQhZ43jYWl/pNysiXDkR2jDtw
	Cf9
X-Received: by 2002:a05:600c:870b:b0:47e:e8de:7420 with SMTP id 5b1f17b1804b1-48526957c7bmr24484715e9.22.1772793332295;
        Fri, 06 Mar 2026 02:35:32 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:cbfe:649:7f17:8b95? ([2a01:e0a:106d:1080:cbfe:649:7f17:8b95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4852470620dsm14181495e9.27.2026.03.06.02.35.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 02:35:31 -0800 (PST)
Message-ID: <95d92da9-cb70-4101-9451-ea7ad42e2169@linaro.org>
Date: Fri, 6 Mar 2026 11:35:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] phy: renesas: rzg3e-usb3: Convert to FIELD_MODIFY()
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Vinod Koul <vkoul@kernel.org>, Biju Das <biju.das.jz@bp.renesas.com>
Cc: linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
References: <a52020ba597e2e213b161eee21239f10e6057d9d.1772705690.git.geert+renesas@glider.be>
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
In-Reply-To: <a52020ba597e2e213b161eee21239f10e6057d9d.1772705690.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_023534_279235_D9540A13 
X-CRM114-Status: GOOD (  10.24  )
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

On 3/5/26 11:15, Geert Uytterhoeven wrote:
> Use the FIELD_MODIFY() helper instead of open-coding the same operation.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> No changes in generated code.
> ---
>   drivers/phy/renesas/phy-rzg3e-usb3.c | 6 ++----
>   1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/renesas/phy-rzg3e-usb3.c b/drivers/phy/renesas/phy-rzg3e-usb3.c
> index 6b3453ea0004cf59..7f809ef1bb5135ec 100644
> --- a/drivers/phy/renesas/phy-rzg3e-usb3.c
> +++ b/drivers/phy/renesas/phy-rzg3e-usb3.c
> @@ -78,13 +78,11 @@ static void rzg3e_phy_usb2test_phy_init(void __iomem *base)
>   	writel(val, base + USB3_TEST_UTMICTRL2);
>   
>   	val = readl(base + USB3_TEST_PRMCTRL5_R);
> -	val &= ~USB3_TEST_PRMCTRL5_R_TXPREEMPAMPTUNE0_MASK;
> -	val |= FIELD_PREP(USB3_TEST_PRMCTRL5_R_TXPREEMPAMPTUNE0_MASK, 2);
> +	FIELD_MODIFY(USB3_TEST_PRMCTRL5_R_TXPREEMPAMPTUNE0_MASK, &val, 2);
>   	writel(val, base + USB3_TEST_PRMCTRL5_R);
>   
>   	val = readl(base + USB3_TEST_PRMCTRL6_R);
> -	val &= ~USB3_TEST_PRMCTRL6_R_OTGTUNE0_MASK;
> -	val |= FIELD_PREP(USB3_TEST_PRMCTRL6_R_OTGTUNE0_MASK, 7);
> +	FIELD_MODIFY(USB3_TEST_PRMCTRL6_R_OTGTUNE0_MASK, &val, 7);
>   	writel(val, base + USB3_TEST_PRMCTRL6_R);
>   
>   	val = readl(base + USB3_TEST_RESET);

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

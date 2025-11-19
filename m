Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ED49CF2599
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 08:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NcClONPTp/zl7OGNNnvNnFbAVCkUXhbU2N+gub6Q5Jg=; b=yS5sB0i+Phr6aN
	lAorJFEiP5u0vZds5vma6FBtRR4xn6VbSJDQ66p3rz/69+ZwLylK1LxMHsfMcmYljyrMagZdQiEDr
	F2+MtkU/ci7fI0rN1Lu97VP4D/iN+BJ01QQp9RTA+jGzE4UHg1EMzpzEFn6KhT/UWHF5svJqWPmpS
	d2MnAw7wT/ahUKXOvBDVYngiErgLSMRJJtLSDJBmVY+8eMnb54LSTpLrkBqEr0FxD3DUOGxnYJVL+
	PVNrUDxjV3sANOJhbgX91nRYryJCZH+j3UUnQbndClywQlFKEX9kiiKz/IEcKDwu/KK6581J27ywj
	0+X/5Xd8Z+/aDGHFERzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdVV-00000002mvT-0Lbj;
	Wed, 19 Nov 2025 08:25:41 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdVS-00000002muT-2Tux
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 08:25:39 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-42bb288c219so3147999f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 00:25:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763540737; x=1764145537; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xBBcd3+nheVdQUVhqxqKoLH5dFTFqo2xtG50pxJYM/k=;
        b=URT/sys9RL2TqxsBspGP19AqkblJtZZUIYi0gL9bcoH6bPwfRev/2sDqgBcA2k89EB
         zNgHfKkuiqOHyfBynCkHi4GXI2c1004FqviB+m7FTbGveSHj2yNOZ18PH3BSy03N31u3
         GqpW2ntzCRWGlou1dv4saNzThTfdtXOhxhwhjuijdioj/L/W277ktOvo9mOffnHRVCyv
         X1W9nI0XuIPC73W+h1PXTGpCB3dwWcgpPZR8fFzE21njE+2Xevf2nMD8MU9eR2X0r7dP
         DpoFK+xruazZ4GZRFiQNu55XGfXbzjQYKf8oaf7hw37a5w7bNmm1IjwVdHbCO2cL9LYh
         G8uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763540737; x=1764145537;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xBBcd3+nheVdQUVhqxqKoLH5dFTFqo2xtG50pxJYM/k=;
        b=l0gfbla2tEgHDF+5JcQBU+TyfdC3QLDe/bhO8hEz2ivw2JBoZ+aStty+XfH5v7IfOy
         lmnfuqGSNVTnYxZoEKVCvWnfQWeLjlRWilhFcZ9/3DjvpXXkLKltp9IqGAOF5FKhTW5Y
         bzA3+H1SXrdsbaPJkeUnjE9ZSlj0ylYrU1F7c51ZRgPPcuJrjb8VcobsS53LsT5hrKcY
         8fKIw9MlI0416DjmCVay9TcGjPA014eIXyYCTH2VKTQGpcpwMC6TtZkMPVN+s9auf+MK
         pX5uWEcJhsO6qh33pCjLJKuhlDueDhRj4KTplxCpeUb8DSphwxZ1hnHu1ryCcl/1ueFj
         75+w==
X-Forwarded-Encrypted: i=1; AJvYcCXCkPg6zK3t1LCmR4ys/54Aly9Dvk6AExOPO1G2H24TTixZv99mrz4aQg3tpzFQGkzx0Zi3zt4sV88=@lists.infradead.org
X-Gm-Message-State: AOJu0YxRu++8nwNlzzdrcYU1Qn+NVYVLzhdxyVDRficUaTaWApHO5Pzc
	fwhUCAopIsDZf5cW9DwK76IxNsBeMtn5cpbXdASNDscdlvDh+o96fZRrTY8s+F2vvCtsy2KpssZ
	5lgF4
X-Gm-Gg: ASbGncu8rbnfmsZ5Akp65s7Ut5XzZOueYWOSwOkMb3U70QjyORwA2stblGqVyWEcobn
	5JDhugI8m2l1OpSMu7WtEyRt7qvlfXAYMOt+lFbb0rm0BJfCm/s14l5qWtE+z0C6QTqNlwl91KI
	NmpCaDynr54lcorAulDhXnDOrZeocZPLdb3pMS8wKvq+832sC27r5VqajMj5FVSHIHDbCd1Vs7C
	2ISUyW681jBqRDwOWxEeHjNTGtV2nUqiFevSZ3lxFGQT0gkiO08ZTqK/kB/sTqRCbeX4SqR7XFv
	WDBzBtAT1lI2nbDVKSXJO4CLAaUbV6cp9MTBgs8QnNzcc2Va4e+0yv8pvWSweZxnstiONMpdVfx
	Hq4pA8Kxg3OmcpZ601T3ljxY1081/m9kc/UxtuhzHyfOaV7UCEOiDTKcGz9RKV4RS99S4keDEYA
	0pjXTCboi7WunJdb37TwBsWOWXydAX8r3j5+1vHabGWfzPN3KGg4AcpXrxAOp6nns=
X-Google-Smtp-Source: AGHT+IF/Pf8OhHHAkH/l86ffTNQDrKGEqlTVtrpGBWQTevcyQWVHh3qnGd6Me/o5osf1E2M94f66fw==
X-Received: by 2002:a05:6000:24c7:b0:42b:3dbe:3a43 with SMTP id ffacd0b85a97d-42b5938fa99mr18992058f8f.50.1763540736555;
        Wed, 19 Nov 2025 00:25:36 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad? ([2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e846afsm35816408f8f.13.2025.11.19.00.25.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 00:25:36 -0800 (PST)
Message-ID: <25e9e2ae-d280-4022-8c8a-41df5009011a@linaro.org>
Date: Wed, 19 Nov 2025 09:25:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND 0/3] Fixes for phy-rockchip-samsung-hdptx
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Dmitry Baryshkov <lumag@kernel.org>,
 Algea Cao <algea.cao@rock-chips.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Andy Yan <andy.yan@rock-chips.com>
References: <20251028-phy-hdptx-fixes-v1-0-ecc642a59d94@collabora.com>
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
In-Reply-To: <20251028-phy-hdptx-fixes-v1-0-ecc642a59d94@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_002538_656759_C5FBAB91 
X-CRM114-Status: GOOD (  10.53  )
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

On 10/28/25 09:00, Cristian Ciocaltea wrote:
> These patches were initially part of the HDMI 2.1 FRL support series [1]
> aiming to provide a few fixes for the Samsung HDMI/eDP Transmitter Combo
> PHY.
> 
> I'm sending this as a distinct series right now, since the FRL part
> might require additional time for review.
> 
> [1] https://lore.kernel.org/r/20250818-phy-hdptx-frl-v3-0-c79997d8bb2b@collabora.com
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
> Cristian Ciocaltea (3):
>        phy: rockchip: samsung-hdptx: Fix reported clock rate in high bpc mode
>        phy: rockchip: samsung-hdptx: Reduce ROPLL loop bandwidth
>        phy: rockchip: samsung-hdptx: Prevent Inter-Pair Skew from exceeding the limits
> 
>   drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 27 +++++++++++++----------
>   1 file changed, 15 insertions(+), 12 deletions(-)
> ---
> base-commit: 33bcf93b9a6b028758105680f8b538a31bc563cf
> change-id: 20250902-phy-hdptx-fixes-7308ffea4c6a

For the serie:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9B8606A31F
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 15:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hxyn3mAk;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=al5lznDp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jghUy1ubTqDxKtKVFydfmSJa2RBdaD82SWM0x4QKXCU=; b=hxyn3mAkMcKT5E6ETkQCJDkhNh
	wNhQ4QbcDzQx/wfTqRSDiRu/o5b24IG+mdUrFUm5jgUkk1zsulkEKIigv6SPTJCaMyiefd22EaHmy
	vEZ5HGFXzWLbu+eFAnm3Uwgefh9B+xXhYKXa2gYlc3V2weIEeYUq0zWS7bIfo0aHQhccSW4hoICRA
	RMhMczTF4wNXrNAZ1Vsfbxt9fy2bnyYOGJ05YwoMI/Z8aKFUT0TtGq/Hjj3HvLdyOP/uethyP1rBg
	lTfoG5dCHbUOB90mf2vZu6hiihNATiDUBnaD9Cyz3SaPVv8GGIJKYvS8v4JnC320JrfqEYmoa3O+/
	Zg6BirVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWxy3-0000000Gqni-0KQo;
	Fri, 27 Nov 2026 15:34:31 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWxxY-0000000Gq4t-2my3
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 15:34:11 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4bb64ef5a14so80747435e9.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 07:33:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795793638; x=1796398438; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qTJK+XH+ZOTU8gAK0q7vkyGI0JnK1yiEcA7kRxssOjw=;
        b=al5lznDpVogAo4I63SuzkcMJy73duwucSq8x8/FM49KF5sQkLX1Ykg+wxixM/d3+hn
         OxKXx6cNWpIaZOuaeiZ0Dl2veukrxO+mfKtsSj5snst9fjjPMohFFlc1qNW6zbSgWB3u
         6+rzasjx1Xe9wuO9c5FRXxsSaKMG7Bw2G17TQW8QG7woazW05f1YIeCIUuq4Of9uOrL0
         nF3V+l6yHXNYQRG8sqY7YJvbpxsqM9MvEPHXLxS3Im0S/TbTXcBRSq7cK8+hrMyD0vPq
         IX2TfFlo1i0UfCJ9DnfMpwwqz5dr1nFakp8ZJuHjVQR0X74wffqQ35w92wZE/AGhxoyt
         wUUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795793638; x=1796398438;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=qTJK+XH+ZOTU8gAK0q7vkyGI0JnK1yiEcA7kRxssOjw=;
        b=QL5/2ET600/W+cyuKH3WIMYYx1o9MYuAKa/q466ZXj5JIRFAj1+Fh5YLUI3XivRoY+
         tXNN2cPr1mRQfVSfglj3SdS4ZXPsIhsQTmRHuIT5TJdFMHhoDNlAJmlD7FSqZvYN9qL1
         b9RQvk8nu14dK69IenAFzSolwxJbVCFwdP0s44On2vMhxwV5yz14yhpU8z5XCYcBXzJJ
         HhHgd5/ZipmG2dPrOTX4WW1vHAvc+v/frWI6WPdugxLqw3BvtQgxmvoOkvqRFo9+1/nY
         j6KNYGsxezgSkDl6dAcnpqMeqeCnAgmtXF9d/aKtnE9VJ9H4jhCcSiGckldOxdIwsTNC
         9b9Q==
X-Forwarded-Encrypted: i=1; AL+hErENjGdtrVu8c5kd/69P9zdSbGrJ9FSnLCNtJQng1/dK17z7Jq33s1CgTzQzX3uY8ErRTeUR75u3YgM=@lists.infradead.org
X-Gm-Message-State: APuU4Z831j44nKzMi9cWjGTlA4UkX6CWj7B/BggWgHcNIcx/IEoyd2no
	Mktm5hBpPVxsXNmbtOoXZZfLfTdY2QTy3hSVV6Y9+1Fl6cZUEtFrSunFiggrx13gaX8=
X-Gm-Gg: AZFdTZeOD+t1DG0rvGtzdpZDaqxoHWFYHMBapUGRKaJVVRhdAzIHTio4h2K8Q+VKq2U
	0qCQzG6ciHqRUHbGCjQ+mKiGbW50kyfF63nX8T41nYABGqUfKQIPyHUP7RCgZYoiaKL1mdlMkdJ
	2W+4fsTCwBq/RDscowPXVTSsRveZ20gFYcFhSp0zoOhi2bfFKHDpjhWscpA18MPHTJL9bYUHCiV
	9e3a+LGwGJaWur4I5UvJcChfGmHVjoxNCaixukH4QAhi0NztV8t5+DMKxbmp//8f4nHHnfKHnPh
	K/yfrXf/uE8sh68pDf7JhCO7HpccAhniNamrEJMEHoqIN1BW+KQYjfp87o+11TTI8YPzPrR5jdI
	fniKk2o0nlKk7jJ12ADmu5L7JN+gokPqDjvxC4glkodOiOjIkZW0oj2kwcephAdJF9bxY4GyI1k
	hk9tNeHuhOLB0O7I+7n4ZUtK/WYpCHHV2Vw8Ywc8U/0BymA07Bu1hFMIgNKSjZSNI8oTMpqr11A
	aaCIvqhCYKPC2HZUENdjJwxq35GPF94i9d+bkUYThj7oduaAOfo/Ez6O+HiZQ/RZxkGq1MsQv/h
	z8eSpHb+3z9Q9OIkx8UjCJ+CB6SuPIH2BdqrfiyGmPDoJWPdQB8Xioxe9eqgls3ry9mFzxMJxhe
	3+kPSozu2zc9aIYs3Sr2rZc5K1QoJ7A==
X-Received: by 2002:a05:600c:4e4c:b0:4b6:5dac:b61e with SMTP id 5b1f17b1804b1-4bb88938d2dmr469383675e9.32.1795793637832;
        Fri, 27 Nov 2026 07:33:57 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:c897:5d9b:d0a4:e684? ([2a01:e0a:106d:1080:c897:5d9b:d0a4:e684])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab658e2e6dsm46147475f8f.6.2026.11.27.07.33.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Nov 2026 07:33:57 -0800 (PST)
Message-ID: <aecd4578-7131-4c23-9bec-a2573c0e25e0@linaro.org>
Date: Fri, 27 Nov 2026 16:33:56 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v5 04/12] phy: amlogic: rename Meson8 HDMI TX PHY driver
 to be SoC-generic
To: linux-kernel-dev@aliel.fr, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Vinod Koul <vkoul@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Ulf Hansson <ulfh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-pm@vger.kernel.org
References: <20261127-meson-drm-create-hdmitx-phy-v5-0-88c43eb95468@aliel.fr>
 <20261127-meson-drm-create-hdmitx-phy-v5-4-88c43eb95468@aliel.fr>
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
In-Reply-To: <20261127-meson-drm-create-hdmitx-phy-v5-4-88c43eb95468@aliel.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_073400_875435_6583FD2C 
X-CRM114-Status: GOOD (  28.26  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/27/26 16:27, Ronald Claveau via B4 Relay wrote:
> From: Ronald Claveau <linux-kernel-dev@aliel.fr>
> 
> The HDMI TX PHY driver is currently named after the Meson8 family
> (Meson8, Meson8b and Meson8m2), but the same IP block is found, with
> SoC-specific register programming, on the newer GXBB, GXL, GXM and
> G12A SoCs.
> 
> In preparation for adding support for these SoCs, make the driver
> generic:
> 
>   - rename phy-meson8-hdmi-tx.c to phy-meson-hdmi-tx.c
>   - rename the Kconfig symbol PHY_MESON8_HDMI_TX to PHY_MESON_HDMI_TX
>     and update the Makefile accordingly
>   - drop the "(ARCH_MESON && ARM)" dependency in favour of
>     "ARCH_MESON", since the driver is no longer ARM32-only, and
>     select GENERIC_PHY
>   - rename the phy_meson8_hdmi_tx_* symbols to meson_hdmi_phy_*
>   - update the platform driver name, the Kconfig help text and the
>     module description
>   - drop the unused <linux/property.h> include
> 
> No functional change intended: the only supported compatible remains
> "amlogic,meson8-hdmi-tx-phy".
> 
> Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
> ---
>   drivers/phy/amlogic/Kconfig                        |  9 ++--
>   drivers/phy/amlogic/Makefile                       |  2 +-
>   .../{phy-meson8-hdmi-tx.c => phy-meson-hdmi-tx.c}  | 54 +++++++++++-----------
>   3 files changed, 33 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/phy/amlogic/Kconfig b/drivers/phy/amlogic/Kconfig
> index ce7ba3eb2a8e..294996869e83 100644
> --- a/drivers/phy/amlogic/Kconfig
> +++ b/drivers/phy/amlogic/Kconfig
> @@ -2,14 +2,15 @@
>   #
>   # Phy drivers for Amlogic platforms
>   #
> -config PHY_MESON8_HDMI_TX
> -	tristate "Meson8, Meson8b and Meson8m2 HDMI TX PHY driver"
> -	depends on (ARCH_MESON && ARM) || COMPILE_TEST
> +config PHY_MESON_HDMI_TX
> +	tristate "Meson HDMI TX PHY driver"
> +	depends on ARCH_MESON || COMPILE_TEST
>   	depends on OF
> +	select GENERIC_PHY
>   	select MFD_SYSCON
>   	help
>   	  Enable this to support the HDMI TX PHYs found in Meson8,
> -	  Meson8b and Meson8m2 SoCs.
> +	  Meson8b, Meson8m2, GXBB, GXL, GXM and G12A SoCs.
>   	  If unsure, say N.
>   
>   config PHY_MESON8B_USB2
> diff --git a/drivers/phy/amlogic/Makefile b/drivers/phy/amlogic/Makefile
> index 91e3b9790c03..2611ec8a056d 100644
> --- a/drivers/phy/amlogic/Makefile
> +++ b/drivers/phy/amlogic/Makefile
> @@ -1,5 +1,5 @@
>   # SPDX-License-Identifier: GPL-2.0-only
> -obj-$(CONFIG_PHY_MESON8_HDMI_TX)		+= phy-meson8-hdmi-tx.o
> +obj-$(CONFIG_PHY_MESON_HDMI_TX)			+= phy-meson-hdmi-tx.o
>   obj-$(CONFIG_PHY_MESON8B_USB2)			+= phy-meson8b-usb2.o
>   obj-$(CONFIG_PHY_MESON_GXL_USB2)		+= phy-meson-gxl-usb2.o
>   obj-$(CONFIG_PHY_MESON_G12A_USB2)		+= phy-meson-g12a-usb2.o
> diff --git a/drivers/phy/amlogic/phy-meson8-hdmi-tx.c b/drivers/phy/amlogic/phy-meson-hdmi-tx.c
> similarity index 68%
> rename from drivers/phy/amlogic/phy-meson8-hdmi-tx.c
> rename to drivers/phy/amlogic/phy-meson-hdmi-tx.c
> index f6b5df74a58f..e4e606ab4eef 100644
> --- a/drivers/phy/amlogic/phy-meson8-hdmi-tx.c
> +++ b/drivers/phy/amlogic/phy-meson-hdmi-tx.c
> @@ -1,6 +1,7 @@
>   // SPDX-License-Identifier: GPL-2.0+
>   /*
> - * Meson8, Meson8b and Meson8m2 HDMI TX PHY.
> + * Amlogic Meson HDMI TX PHY driver
> + * (Meson8/8b/8m2)
>    *
>    * Copyright (C) 2021 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>    */
> @@ -13,7 +14,6 @@
>   #include <linux/of.h>
>   #include <linux/phy/phy.h>
>   #include <linux/platform_device.h>
> -#include <linux/property.h>
>   #include <linux/regmap.h>
>   
>   /*
> @@ -32,30 +32,30 @@
>   
>   #define HHI_HDMI_PHY_CNTL2				0x3a8
>   
> -struct phy_meson8_hdmi_tx_priv {
> +struct meson_hdmi_phy {
>   	struct regmap		*hhi;
>   	struct clk		*tmds_clk;
>   };
>   
> -static int phy_meson8_hdmi_tx_init(struct phy *phy)
> +static int meson_hdmi_phy_init(struct phy *phy)
>   {
> -	struct phy_meson8_hdmi_tx_priv *priv = phy_get_drvdata(phy);
> +	struct meson_hdmi_phy *priv = phy_get_drvdata(phy);
>   
>   	return clk_prepare_enable(priv->tmds_clk);
>   }
>   
> -static int phy_meson8_hdmi_tx_exit(struct phy *phy)
> +static int meson_hdmi_phy_exit(struct phy *phy)
>   {
> -	struct phy_meson8_hdmi_tx_priv *priv = phy_get_drvdata(phy);
> +	struct meson_hdmi_phy *priv = phy_get_drvdata(phy);
>   
>   	clk_disable_unprepare(priv->tmds_clk);
>   
>   	return 0;
>   }
>   
> -static int phy_meson8_hdmi_tx_power_on(struct phy *phy)
> +static int meson_hdmi_phy_power_on(struct phy *phy)
>   {
> -	struct phy_meson8_hdmi_tx_priv *priv = phy_get_drvdata(phy);
> +	struct meson_hdmi_phy *priv = phy_get_drvdata(phy);
>   	unsigned int i;
>   	u16 hdmi_ctl0;
>   
> @@ -85,9 +85,9 @@ static int phy_meson8_hdmi_tx_power_on(struct phy *phy)
>   	return 0;
>   }
>   
> -static int phy_meson8_hdmi_tx_power_off(struct phy *phy)
> +static int meson_hdmi_phy_power_off(struct phy *phy)
>   {
> -	struct phy_meson8_hdmi_tx_priv *priv = phy_get_drvdata(phy);
> +	struct meson_hdmi_phy *priv = phy_get_drvdata(phy);
>   
>   	regmap_write(priv->hhi, HHI_HDMI_PHY_CNTL0,
>   		     FIELD_PREP(HHI_HDMI_PHY_CNTL0_HDMI_CTL1, 0x0841) |
> @@ -96,18 +96,18 @@ static int phy_meson8_hdmi_tx_power_off(struct phy *phy)
>   	return 0;
>   }
>   
> -static const struct phy_ops phy_meson8_hdmi_tx_ops = {
> -	.init		= phy_meson8_hdmi_tx_init,
> -	.exit		= phy_meson8_hdmi_tx_exit,
> -	.power_on	= phy_meson8_hdmi_tx_power_on,
> -	.power_off	= phy_meson8_hdmi_tx_power_off,
> +static const struct phy_ops meson_hdmi_phy_ops = {
> +	.init		= meson_hdmi_phy_init,
> +	.exit		= meson_hdmi_phy_exit,
> +	.power_on	= meson_hdmi_phy_power_on,
> +	.power_off	= meson_hdmi_phy_power_off,
>   	.owner		= THIS_MODULE,
>   };
>   
> -static int phy_meson8_hdmi_tx_probe(struct platform_device *pdev)
> +static int meson_hdmi_phy_probe(struct platform_device *pdev)
>   {
>   	struct device_node *np = pdev->dev.of_node;
> -	struct phy_meson8_hdmi_tx_priv *priv;
> +	struct meson_hdmi_phy *priv;
>   	struct phy_provider *phy_provider;
>   	struct resource *res;
>   	struct phy *phy;
> @@ -128,7 +128,7 @@ static int phy_meson8_hdmi_tx_probe(struct platform_device *pdev)
>   	if (IS_ERR(priv->tmds_clk))
>   		return PTR_ERR(priv->tmds_clk);
>   
> -	phy = devm_phy_create(&pdev->dev, np, &phy_meson8_hdmi_tx_ops);
> +	phy = devm_phy_create(&pdev->dev, np, &meson_hdmi_phy_ops);
>   	if (IS_ERR(phy))
>   		return PTR_ERR(phy);
>   
> @@ -140,21 +140,21 @@ static int phy_meson8_hdmi_tx_probe(struct platform_device *pdev)
>   	return PTR_ERR_OR_ZERO(phy_provider);
>   }
>   
> -static const struct of_device_id phy_meson8_hdmi_tx_of_match[] = {
> +static const struct of_device_id meson_hdmi_phy_of_match[] = {
>   	{ .compatible = "amlogic,meson8-hdmi-tx-phy" },
>   	{ /* sentinel */ }
>   };
> -MODULE_DEVICE_TABLE(of, phy_meson8_hdmi_tx_of_match);
> +MODULE_DEVICE_TABLE(of, meson_hdmi_phy_of_match);
>   
> -static struct platform_driver phy_meson8_hdmi_tx_driver = {
> -	.probe	= phy_meson8_hdmi_tx_probe,
> +static struct platform_driver meson_hdmi_phy_driver = {
> +	.probe	= meson_hdmi_phy_probe,
>   	.driver	= {
> -		.name		= "phy-meson8-hdmi-tx",
> -		.of_match_table	= phy_meson8_hdmi_tx_of_match,
> +		.name		= "meson-hdmi-tx-phy",
> +		.of_match_table	= meson_hdmi_phy_of_match,
>   	},
>   };
> -module_platform_driver(phy_meson8_hdmi_tx_driver);
> +module_platform_driver(meson_hdmi_phy_driver);
>   
>   MODULE_AUTHOR("Martin Blumenstingl <martin.blumenstingl@googlemail.com>");
> -MODULE_DESCRIPTION("Meson8, Meson8b and Meson8m2 HDMI TX PHY driver");
> +MODULE_DESCRIPTION("Amlogic Meson HDMI TX PHY driver");
>   MODULE_LICENSE("GPL v2");
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

LGTM

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

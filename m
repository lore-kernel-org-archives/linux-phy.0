Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48480C982D8
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 14:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EqF1MkcaVap1eqcxslmc7AmWvw2gDEM5lRePBBqxYqw=; b=3BYOZw5oNLgLGwKObh7HTRQyQK
	JKzntC47GjxVbkNJBWRt0Bdwy59PcWA91iaPCnjfPKGNvCJRZ4Sl2zkyCUOAoUPI2bRdhUhNZMI8i
	PdhMLHo1xU2gjk079s/FmE9Wb5w65z9bylxdtWYJtnorX8qMFtRmxbP1Pv2XLI+ZeH4YBE5fMzI7E
	KTP4hZ0xwAniIY4C6xwHjF6eF23oyoiqyPmMsZ15qvJ2NnOrrepcLIQoW9FTV2KZjy0ZtDjOS0Hp1
	bt0lBoY4dTJjQGZ6G4RyI+WTgGSiShZF5N8MkmEk978rYvOgskvcd7hp1hFVYuzT2El2X4CoYPXSM
	pzVHY6JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7ZJ1-0000000Efej-03Ke;
	Fri, 18 Sep 2026 14:11:11 +0000
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7ZIy-0000000Efe8-36om
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 14:11:09 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49b912d3931so5893655e9.3
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 07:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789740667; x=1790345467; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rZDArOD6oUtLoBClWun8adFJ2+P8oUmKoeUV5u5X2Qo=;
        b=oULgrElgC7bhR7mIqA97j+u8heukl4wrCdpadgeDJH9KVdz7RT7VavaIzzr+dsX/jq
         6arYQxt3KtNECqynUUx5+te3EWEAQnG9+MrWAB5ww4ckRg+8GhYer04FChqXChV+LFBo
         JW9taJ55aJK5OX4gmC/2+LvaYR3E9jb8YEULnVRHBy33oQRdozb2gf6EpIShWZwT2Ebu
         0xf+7irUebdwM75+CCDkJWpLNKOb2jzBH6wXr+GEG6cyX3b5MNrWffOLJYT/QBHDiq77
         v7fyFqme27gZ29cUF9LfPeWeooHNaaSd/ugrRL9offvKzng9HWApb/DvgRqfUZ9c7dFl
         zmuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789740667; x=1790345467;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=rZDArOD6oUtLoBClWun8adFJ2+P8oUmKoeUV5u5X2Qo=;
        b=TvJ7iYiSb3rUd9h3T9MYuQMx7x1yR1es3w9xZBZtYkmNXrv3uSJ4LfPgCsVHRGPsYF
         88RKJjbzj3tQXcJuN02NuEC9Eay9a7pZssiYSWoXoV6snkSPU1C26SwVKLUhtwDOdsfo
         X/ZKMPfbjixLW+NSoNCP2f3Q9wghDWsNZ1hQrXf8kqEU38Uquv2VzwRboKRhqpK/NA3D
         A6xZSb8Qb0n/wFVbr0ho977hHTcM2A4HI3E5SSHdB9KUk+vvo5+NJb5QAhHl6mObv2C+
         7Nw4fgptkcC9aL74zlOn9MV8ZaFLOTgfpX7vWzAeWOrFf8qgXxbWMjEvDwvWMvMXwSHb
         JOng==
X-Forwarded-Encrypted: i=1; AKwUvByLAWX6ELthRSmqMKGmIAiV1s9jTVNSYqiYsQL2vcFC91DKmdWYm5/J21mFagLvVcEFyikor14ttpQ=@lists.infradead.org
X-Gm-Message-State: AFuF++nXx7wbRxhiXC1tkc/6PPiSQm5G/muKvESfrvuxYvbkGKKGjR0W
	MYnQsq/cfPvshqdNKauieYMOmVV0Bl6VRe6UR4qSChucFZEjAr7BZrDSFBowcQbWgBk=
X-Gm-Gg: AYBFou1hFpjstp/j9Xc9gceelpnv7WtP62SEYf1Bk1bRJ+gneWOACv7AwkBsrv3yMUi
	VheCOWkBQQIRdQNHssqdwwzjB3ll/bAWPtsRhvrOooJa3GxtDwNpNKG0fAQT069dBkM4l0+2JNR
	3aO8UiOHR5rKrE6HngZgWtdW6uA1j2zyFWs/fFB37tgUA/UdCM0XWlEJBHnPk09Ne17H/AZgs2a
	Lhpfh5bZtFoWsvMtcIwFY/UsX2mQ84/3J/mlSl/pLJn3o37YX0Djy7uzi87wlp4vdDc5M4kxWgq
	oWe1HpUOXe6dUyjk6U0d5iqfaxg0BeAt6vCg/O8xKnenRI80cwt10IjSvZbTSUAxsf6PG4+N0gg
	jBVuVq62TxHOboPA7WUl4N/WwW1mi020FyJxrMR/NUTR7746wP9jk7mquBcRAE30FLbnrDDhCLf
	m6lxTS0wpgPMR6I4PAdX9pnF/GlPuPhJVGi/Z9+UroVjZ9HCPc5yWTgqeaLUyxqrAAgYsvlc0uG
	SlZ+LkOH8bhP+ftxk/2mc/rqOsTqPoNRS5wVKUqBZ1yD4BJqYbfkIg3XWPiSN+a
X-Received: by 2002:a05:600c:3b04:b0:499:900c:9c69 with SMTP id 5b1f17b1804b1-49fc56aab52mr32285045e9.9.1789740667003;
        Fri, 18 Sep 2026 07:11:07 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:c55f:cb91:1ca5:54dc? ([2a01:e0a:106d:1080:c55f:cb91:1ca5:54dc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fbd24034esm193508035e9.15.2026.09.18.07.11.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2026 07:11:06 -0700 (PDT)
Message-ID: <e93ea498-d71a-4b1d-8064-42cc465afe57@linaro.org>
Date: Fri, 18 Sep 2026 16:11:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v20 4/6] phy: core: Add missing kerneldoc colon in two
 locations
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
References: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
 <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-4-dc244e124e71@linaro.org>
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
In-Reply-To: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-4-dc244e124e71@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_071108_810465_A118487B 
X-CRM114-Status: GOOD (  19.36  )
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

On 9/18/26 15:56, Bryan O'Donoghue wrote:
> Correct missing colon after Return in kernel doc.
> 
> Suggested-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   drivers/phy/phy-core.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index f0d2b50d1c76b..597e6b234f5ef 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -643,7 +643,7 @@ static struct phy *_of_phy_get_with_args(struct of_phandle_args *args)
>    * @np: device_node for which to get the phy
>    * @index: the index of the phy
>    *
> - * Returns the phy associated with the given phandle value,
> + * Returns: the phy associated with the given phandle value,
>    * after getting a refcount to it or -ENODEV if there is no such phy or
>    * -EPROBE_DEFER if there is a phandle to the phy, but the device is
>    * not yet loaded. This function uses of_xlate call back function provided
> @@ -681,7 +681,7 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
>    * @np: device_node for which to get the phy
>    * @con_id: name of the phy from device's point of view
>    *
> - * Returns the phy driver, after getting a refcount to it; or
> + * Returns: the phy driver, after getting a refcount to it; or
>    * -ENODEV if there is no such phy. The caller is responsible for
>    * calling of_phy_put() to release that count.
>    */
> @@ -797,7 +797,7 @@ EXPORT_SYMBOL_GPL(of_phy_simple_xlate);
>    * @string: the phy name as given in the dt data or the name of the controller
>    * port for non-dt case
>    *
> - * Returns the phy driver, after getting a refcount to it; or
> + * Returns: the phy driver, after getting a refcount to it; or
>    * -ENODEV if there is no such phy.  The caller is responsible for
>    * calling phy_put() to release that count.
>    */
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

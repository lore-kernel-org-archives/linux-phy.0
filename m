Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70A20C48BF6
	for <linux-phy@archiver.kernel.org>; Thu, 29 Feb 2024 13:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AVNr5CPlXPbg2Wb31EJ3nRAamDZmUNyeQ5Kss9yk+Xs=; b=V2/pUWxFfs8L0wZNuInxZQlLqw
	KjVWLfdJyIOqjWrRN0uscBC1FafdceMIN8bdMDfYOKHKF5zefvxGgn/NhlK+DLNgMdxBpgU2pw1P9
	2194J4SB0h1DfgYuj7Bnx/gVQ2eEx5+ZrIQlR9Gz+Ec0BGVQOXgo4Sq/UxizP8sW3VUlvqQv4dCS4
	GrADp1phCcrw9Jp8Iz+KviTC7bATg06KhtcED3E/GN9FH00g48JE+QQNvSU05HUvtcLBpNgpI5+AZ
	wK7ydkC1/MpfT4Vn9szJ0ooR0Ib9bB9L2hJP6yO6CQPFMph/3aiN5WMMQxzw6eBF9WmESrRqSXaut
	9OFYCe4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfgCC-0000000Dc9Y-0LyQ;
	Thu, 29 Feb 2024 13:11:32 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfgC8-0000000Dc7d-1a6V
	for linux-phy@lists.infradead.org;
	Thu, 29 Feb 2024 13:11:29 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-412b68d1a42so6710755e9.0
        for <linux-phy@lists.infradead.org>; Thu, 29 Feb 2024 05:11:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709212286; x=1709817086; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h6M8B4BfVBtOt+STshPGZoAe3kMEQJjnBG/nPTu0M2I=;
        b=LjTSnuNJmvbgBABbg3W+tM++L9N3rC00+LfALWzmZC2TUctF/tkwXmT3ovMN2LjKPm
         uJP/pNxAmkqgaWp43Z8WWavkPcdpFXFltl6OqhDudqWM7/+S6sBfUoZwiOGifoermGRO
         bHNuhmaA3lY2QeLN395yO/SJ/cpKb0Se7SiqBdxFG2McwoRQcZ6pC+Up/w1GEIKpbyWN
         RHW8+XP2qmOSx8ocejIlspy2e9e60ldLErAjZUeeG9olPYfrjhLixNcHYPynEkoFDyj8
         UEQqPDld7I31+vcKp6M3akzfrwQyjN1EefoQ8UXCW6uFlRJlz9mw8X3UuHcicd1rpZh6
         0j9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709212286; x=1709817086;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=h6M8B4BfVBtOt+STshPGZoAe3kMEQJjnBG/nPTu0M2I=;
        b=EJOWqOsLvkqtFtwvFXYWOfOxsztAKWdhObpZJKHGIpAwW9KY3sgFqnbN3i1fKu/UHj
         IK2woowurptwezhoq07bbapxpvzb2vo3rh6mFeZsZnx7mXUo4C3z8liTI7NO1QqLpmJT
         CSr/myzFy3IvRVCOrsWE712OQbO2ag3vJZSdlgyIFtH57eBjQuyKPsZzWz8TBjqZd5rw
         HJREMiy2vcaYs53C4FSLRgAWnCzGHd4nR4XuqiuOMNI5RBfcZdy4DH59GSPV6UwhERpX
         GTt6QjYHObeuI4mXSUW5nB/UhDDD+4S+DKv8IbfP0/UAKYgeFhoaO/g12BEi9ciMorTB
         M5qQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPweEPnZeSJH5+9YVPQjBESZu4p985p+O5qwK3cDA6Eob7xFz6J2V4InbsrT4FCNRGcmhN2fsqGmCu+HGs4CJsUgicsXdjrRP5OqQYEQ==
X-Gm-Message-State: AOJu0Yxp6l3IAB+oHZ3S2i0/QWlHdn4MDp7T8WhS2TN2hucWK0MNt2k5
	JOnEwLIGgdf6e1xBZwZHB2sLXX9Xbdn0fpD3bEQ7+oub5pAr0NPCHC6jxidXmeU=
X-Google-Smtp-Source: AGHT+IEBAMt+2DVoMzLFB2ujBnCPkPwxCpwtsJYFq8Gh+tlnMzHg/PTvDQu0GO3Pn/Hbi9aHlCngRg==
X-Received: by 2002:a05:600c:4f51:b0:412:6dd7:1d44 with SMTP id m17-20020a05600c4f5100b004126dd71d44mr1651953wmq.17.1709212286296;
        Thu, 29 Feb 2024 05:11:26 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:651:5318:b12c:be82? ([2a01:e0a:982:cbb0:651:5318:b12c:be82])
        by smtp.gmail.com with ESMTPSA id hg14-20020a05600c538e00b0041228b2e179sm2046504wmb.39.2024.02.29.05.11.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 05:11:25 -0800 (PST)
Message-ID: <15239863-4e89-4322-8dc5-297661e22b40@linaro.org>
Date: Thu, 29 Feb 2024 14:11:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH RFT 7/7] arm64: dts: qcom-mode-switch: allow 4 lanes for
 DisplayPort and enable QMP PHY mode-switch
To: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
 <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-7-07e24a231840@linaro.org>
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
Organization: Linaro Developer Services
In-Reply-To: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-7-07e24a231840@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_051128_484918_BECF4157 
X-CRM114-Status: GOOD (  11.51  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Bad copy-pasta, subject should be:
[PATCH RFT 7/7] arm64: dts: wcom-sc8280xp-lenovo-thinkpad-x13: allow 4 lanes for DisplayPort and enable QMP PHY mode-switch

On 29/02/2024 14:07, Neil Armstrong wrote:
> Allow up to 4 lanes for the DisplayPort link from the PHYs to the Controllers
> and allow mode-switch events to the QMP Combo PHYs.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> index a0fdef55a40a..6c73e0fc001f 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> @@ -556,7 +556,7 @@ &mdss0_dp0 {
>   };
>   
>   &mdss0_dp0_out {
> -	data-lanes = <0 1>;
> +	data-lanes = <0 1 2 3>;
>   	remote-endpoint = <&usb_0_qmpphy_dp_in>;
>   };
>   
> @@ -565,7 +565,7 @@ &mdss0_dp1 {
>   };
>   
>   &mdss0_dp1_out {
> -	data-lanes = <0 1>;
> +	data-lanes = <0 1 2 3>;
>   	remote-endpoint = <&usb_1_qmpphy_dp_in>;
>   };
>   
> @@ -1112,6 +1112,7 @@ &usb_0_qmpphy {
>   	vdda-phy-supply = <&vreg_l9d>;
>   	vdda-pll-supply = <&vreg_l4d>;
>   
> +	mode-switch;
>   	orientation-switch;
>   
>   	status = "okay";
> @@ -1149,6 +1150,7 @@ &usb_1_qmpphy {
>   	vdda-phy-supply = <&vreg_l4b>;
>   	vdda-pll-supply = <&vreg_l3b>;
>   
> +	mode-switch;
>   	orientation-switch;
>   
>   	status = "okay";
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

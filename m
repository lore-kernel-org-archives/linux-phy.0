Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D2D2CA0FE8
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 21:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oDI0oZ78CJWxcHYS14f7YBEYtbyJOayK1jhSgdcbY3I=; b=qgUYMLbRp6deGi/gVu3xb17Jz6
	DEmp1RqWmGvdMX29x5W3VGfKisT5orAnLvdIjbRfgVYea8vdyKUPUXmstC5bptdWdsbcjeSXZjLgc
	QccGQoVbaweTwOtkUdbQQt8r0xcvhYkfc7BP3SlwWfD5g1oqp2PCDDpOPSK+CxMH9Qpm4RJ7TmByZ
	U0HUcdiAw7JsHSDAgrWOcIY4dWHdzylB1A8ORaWNaAV8/NMyMXFownaQ4lxrTsS/lK4ibwlpJefdL
	gQE5HE6H5k2zKNWvgBzNH3y49soLd9DMJ4iBTKNx6PQUuOOcM/xuQ39Pq/68WwgBqvmkEKIqsfMRn
	W4Jga91g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upZca-00000003Ywi-1qOx;
	Fri, 22 Aug 2025 21:48:28 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upPXu-00000002Gb7-2aft
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 11:02:59 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-45b4a25ccceso11291195e9.3
        for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 04:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755860577; x=1756465377; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cSPNDRQEXSByP3k9ud61Mdrc8MbERDVLg0jj88ZjWgE=;
        b=I+6yVlu8PjyAU2Gis7ek+Ug3Pa7YhL+JGhX7pGUT4xJ1hH6W9Oq37hh5tmkOoCmTOk
         jERq9Q1GYUsHWtHuGWgcM3ddz2efvIyQhtYR86yaU6Gd9ng4FaxMCLBYMn2jdMVEkIVx
         LGua7GC1wXnqOcZx+ysno0WU+1yeIUvGO6sf+SC5pCItYu7E0xcT5bA8PCDjKQSGHtM3
         CEecY24aQiSN5crxSnsWyVBbEfaKL7MPnSQcBDbn71AqC+mTZE9BQ7YLUfFIDOno0qyb
         5NlJmHBCEqY+udRxxUXqT2yHRah6WPt8NG/RZIb2REyjVqfGBB/tflIzWlFGZ0yqRZuG
         anPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755860577; x=1756465377;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cSPNDRQEXSByP3k9ud61Mdrc8MbERDVLg0jj88ZjWgE=;
        b=uGdgw7MHwjwA1yjjz8FBsT0w3uuu1GwnjpKxjuevM0Y6bhS3gCodB8MfUGYgrtgqD3
         /DhMqZW6Zd0g5+IN7i1vy1Za5o+UJOhR4x6L/6UVLjB5QcCW469cGu++meRfwqUiTqlY
         CZO9URQNVxDC6yi6n5ABFqUTgbrpxehcb/ueoOsAdv8w5SAyRhcveBdjApygyfeu9x3A
         9xyxXJ6Ohh3I954rQKmod6UIUpoZ1pY2pqzizgcRQ61D6hsJdmBCZ6G1NeFLBQja89Nk
         W7S06/a6MPXPWx8tBqrbTfOyounH1EiqTwV6UyjXByXlWpV0mbBWOQ5dXEkfdYryBN8h
         zfBA==
X-Forwarded-Encrypted: i=1; AJvYcCUiutBpeKwEhtwdQIGluQb2OqyxyS/g++oJXwL1F9UlYS9+fpGSW3ForYBaCTp8LvQaVHMNX0Uv2MQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1PI+CD+HoRRZwnjSlAK8LGevWaMWhv1OPSr0C2q/+JmA/sFxF
	vkt4EZNz9O9eXiDRop2zMHxiyUqrTogyE/Xr7t/C8TKq7qAs+svGHMKa2Xdi37DORj0=
X-Gm-Gg: ASbGncuxbJhKFh/2OhX24EIlv0PqoNyJeL3ydsvOexhInwELfUk2tDoI4h8FWRSCWKC
	62Aj54oOWccOMRtARJDjPaLZbhR9GhB7+GlTp8s8Hz7TRqHAYSwvkkRfzY5NlzKDPLjKeutt4rp
	XpB7ttaInCd8dEF8L28+zkk3dD45xGJUW4C+AUC9GLSfbyn3i6wZF4ejJ+OUjhNUOsuuK+eJm5p
	ez1HxGKNK/gEPo0NLY0HaTD38ajZsn3mOmvvtXDUl3JWFLjqpMroHio8+9HxD/9otQKQRg8E9WW
	8c1BlWAfSJ8RkEpry3qY+upsozqmVSPI0a6XXc2Kufpi8BQo9M4yYQeWy7vYSfE7doFo9DQQhLR
	RqdqtUp8vNjW/S8b+HtFxDrDFAHIazh+LaJ0QpARnmEjx+GnKNNBW0BNOc9W/Zok/Rvmr2QRThf
	Q=
X-Google-Smtp-Source: AGHT+IE9PTwlyQ2HBsXoeltYN2/3zplP7/7veKdqNUYfYAOzMFeQKW/6u0My0eAnWH9Eypu5kHR5qw==
X-Received: by 2002:a05:600c:3b22:b0:458:c002:6888 with SMTP id 5b1f17b1804b1-45b517d9ef7mr18067295e9.32.1755860576998;
        Fri, 22 Aug 2025 04:02:56 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:3dd7:7361:c101:6a77? ([2a01:e0a:3d9:2080:3dd7:7361:c101:6a77])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b50e3a587sm35232305e9.18.2025.08.22.04.02.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 04:02:56 -0700 (PDT)
Message-ID: <431de5f8-2dca-4ec0-9b94-fcc12480e8c9@linaro.org>
Date: Fri, 22 Aug 2025 13:02:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <as7pbmhfgsg3ht3s5lu25pfjjamaxyonuohkuohono3kr2mxii@posspuko4vwa>
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
In-Reply-To: <as7pbmhfgsg3ht3s5lu25pfjjamaxyonuohkuohono3kr2mxii@posspuko4vwa>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_040258_670777_AA4A3721 
X-CRM114-Status: GOOD (  17.27  )
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

On 22/08/2025 13:01, Dmitry Baryshkov wrote:
> On Thu, Aug 21, 2025 at 03:53:28PM +0200, Neil Armstrong wrote:
>> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
>> connected to the third QMP Combo PHY 4 lanes.
>>
>> Add all the data routing, disable mode switching and specify the
>> QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
>> the underlying DP phy.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 44 ++++++++++++++++++++++
>>   1 file changed, 44 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
>> index 4cf61c2a34e31233b1adc93332bcabef22de3f86..5b62b8c3123633360f249e3ecdc8ea23f44e8e09 100644
>> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
>> @@ -62,6 +62,20 @@ switch-lid {
>>   		};
>>   	};
>>   
>> +
>> +	hdmi-connector {
>> +		compatible = "hdmi-connector";
>> +		type = "a";
>> +		pinctrl-0 = <&hdmi_hpd_default>;
>> +		pinctrl-names = "default";
> 
> If this is a DP HPD signal, it should be a part of the DP device.
> 
>> +
>> +		port {
>> +			hdmi_con: endpoint {
>> +				remote-endpoint = <&usb_1_ss2_qmpphy_out>;
> 
> Please describe the transparent bridge too. It can be covered by the
> simple-bridge.yaml / simple-bridge.c

Ack, indeed it could take the pinctrl thing.

Neil

> 
> 
>> +			};
>> +		};
>> +	};
>> +
>>   	pmic-glink {
>>   		compatible = "qcom,x1e80100-pmic-glink",
>>   			     "qcom,sm8550-pmic-glink",
>> @@ -1007,6 +1021,14 @@ &mdss_dp1_out {
>>   	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
>>   };
>>   
>> +&mdss_dp2 {
>> +	status = "okay";
>> +};
>> +
>> +&mdss_dp2_out {
>> +	data-lanes = <0 1 2 3>;
>> +};
>> +
>>   &mdss_dp3 {
>>   	/delete-property/ #sound-dai-cells;
>>   
>> @@ -1263,6 +1285,12 @@ &tlmm {
>>   			       <72 2>, /* Secure EC I2C connection (?) */
>>   			       <238 1>; /* UFS Reset */
>>   
>> +	hdmi_hpd_default: hdmi-hpd-default-state {
>> +		pins = "gpio126";
>> +		function = "usb2_dp";
>> +		bias-disable;
>> +	};
>> +
>>   	eusb3_reset_n: eusb3-reset-n-state {
>>   		pins = "gpio6";
>>   		function = "gpio";
>> @@ -1486,6 +1514,22 @@ &usb_1_ss0_qmpphy_out {
>>   	remote-endpoint = <&retimer_ss0_ss_in>;
>>   };
>>   
>> +&usb_1_ss2_qmpphy {
>> +	vdda-phy-supply = <&vreg_l2j_1p2>;
>> +	vdda-pll-supply = <&vreg_l2d_0p9>;
>> +
>> +	qcom,combo-initial-mode = "dp";
>> +
>> +	/delete-property/ mode-switch;
>> +	/delete-property/ orientation-switch;
>> +
>> +	status = "okay";
>> +};
>> +
>> +&usb_1_ss2_qmpphy_out {
>> +	remote-endpoint = <&hdmi_con>;
>> +};
>> +
>>   &usb_1_ss1_hsphy {
>>   	vdd-supply = <&vreg_l3j_0p8>;
>>   	vdda12-supply = <&vreg_l2j_1p2>;
>>
>> -- 
>> 2.34.1
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDDC8C28B30
	for <linux-phy@archiver.kernel.org>; Thu, 20 Mar 2025 22:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kFQpJV2So5Heh3lYBWxEtEZUIVNKMImHFW80N/boOv4=; b=vZCvFMGPjZw3zr
	4eh/VEzg2q4C30rVruIZKsCAAYueXkYyclrja9KiSRIGQ7GhUXCWqAgl2doobMCw79noHg+aI94TS
	7HDi5XHgpaUK2jji3e6uT502jPy/SV7tccBp/QEXW5ROfILmHDs4c+ElPQd6r04iDRMD14jPuMQA2
	HfWLCNONkA2wCpqdIoAG/0bnHpqM+oJFO49x5pFmcDC13czA1Vj9+nNyk3kpBUOFj2+jl40o3SAvv
	YXc6rRhSUhIsAZ0G1sKWzR1nInHr3wj2DL6Nctqt6pr10wKFekEMzSBZd1PtjkXAYqZ36GrbsCmUp
	qApKYixGy336erkClWjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvOJI-0000000DMAD-2YSK;
	Thu, 20 Mar 2025 22:24:21 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvOBq-0000000DLFI-0Lrz
	for linux-phy@lists.infradead.org;
	Thu, 20 Mar 2025 22:16:39 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-43cfebc343dso9661235e9.2
        for <linux-phy@lists.infradead.org>; Thu, 20 Mar 2025 15:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742508997; x=1743113797; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WfPnk7WQgtcfoHo8JXsI+oWzDaDs3bw9jASaZ3sIJgg=;
        b=w3WGelmgebScGUQZmyRkVEbr+P0cZRVjoQeLfUqcMUBIPu+UhMoVbGLjWXAm1NVuBe
         w8UPCmwJCr4mRc2p87mbVVY0tYlFhPs1OxM3rUKrf128prO9Ib3CzfgSDZM4uvUZkBsk
         vw6HKQ2VUojOQYRaoJJvdlmtFRsQDI79aMeGcWNl/Tr3N2Ol1OHcPNTdvwa5Ag7zG2Hn
         ijRGVPjVsTvbXGp0d/Rism7LErqF/h6JgKacMJJv/flPTiFfcuoc2HHpWEJQaTXYbOWl
         tmEwjdeAS3WNm7Thn+hy2GWs0DSnzTjL5WRbCdfP3lgKg9AHrpuAWTlrqnXSpTRR0Wgq
         V15Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742508997; x=1743113797;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WfPnk7WQgtcfoHo8JXsI+oWzDaDs3bw9jASaZ3sIJgg=;
        b=LsC76PFBdtSya7cLUyp2dWVfYZqnA4LevfGf2lwywcBvEZZczyy0ve4cy7F7qhSMuT
         3DUPwPbzxj277cvSEpmftQKn4x9MHrnWtOuJnBlyyyLHhzDRy7G6Tb26FeOplSwg+i9E
         MYHMwlhyZ2xqAF25U9VjIlpkkCD0eg/urexsjPkRWvcK7dKzB97ukML3jCMJFn+Enp0p
         uv4GSPemXURXmcrlzChYBFbaABTaF+PNl0q9MASXDzKS3LZTCoJv5vi+OF1HOn2exVKI
         7Zp9UqnM7WooT2ftVqxWF9E9lHvTHcCKwZSbBG/wI9XiOdUipZYKIJoKaC1onuOBzn7g
         9kAw==
X-Forwarded-Encrypted: i=1; AJvYcCXpJLCQbDcHcC7z4MExreoeZx41RBtGlxhy2ug10s6chrvidl6pQig7gqm9tk5tKA2z/AZnLRk0zBo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwpnJH91KYlor5IUWJSitz4199Gl0hg9eHzZLek4H2i3K7h8+SI
	16k6vs21liJ8lG1NKMTBp8ww3gxKaIiDpd0nUYsaRkTq3/gftTbhvUeYXpF1QXg=
X-Gm-Gg: ASbGnctD7u9lC+sfoTi44f0ao66zqE1anUadvHKSp8Dd7gwShewXH4TfyAeR8Oe1YwD
	anRIUXNwAtrHUS5SAbMXmv6PL2UEaLKVb0ZTXj5LiKet735BmqsPlf09/MXQeYpsr9/jqfrrbYx
	rlTdyWr9tSJMmqMfgztaCG57exFb3VGmhOK1ipAF/vq3xuDWLgOZneo504oYmx1kvyEWLeKil3P
	Fp0b2ZZOJID8MXQKvEVv3YmgBhDZj8NTc4gn4vAmgULYOGvQaJfHc9T8HtcYBsu18Pq918s5FnM
	xH+kkddl5jnRwm/no8PmO0wGsruNIcbajuJasw41QPLKi5FCTOYvsXkcctsS4I1441PWa3W8Z2u
	Fokg3qWbplg==
X-Google-Smtp-Source: AGHT+IHNuD3oxALNHIxu9dYwYRUPmP+cyvEmCJ1ayFakdYJH3c8S+O6yOUzhs//I8smCyDXpzHD2VQ==
X-Received: by 2002:a05:600c:3155:b0:43c:f81d:34 with SMTP id 5b1f17b1804b1-43d509eae2dmr5415125e9.9.1742508996459;
        Thu, 20 Mar 2025 15:16:36 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fdbd348sm9042715e9.39.2025.03.20.15.16.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Mar 2025 15:16:35 -0700 (PDT)
Message-ID: <d64b222b-0b4f-4a17-a4db-74079502f7f4@linaro.org>
Date: Thu, 20 Mar 2025 22:16:34 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100-dell-xps13-9345: Enable
 fingerprint sensor
To: bjorn.andersson@oss.qualcomm.com, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250318-xps13-fingerprint-v1-0-fbb02d5a34a7@oss.qualcomm.com>
 <1nCVo0cfBlz7dR2Jqu8M0rjyv_aRuYvO5M8Ho3sHTuU7-BfteG7JQ6iklpXIsiVEheMKOx4-JSJNsdf37ObJag==@protonmail.internalid>
 <20250318-xps13-fingerprint-v1-2-fbb02d5a34a7@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250318-xps13-fingerprint-v1-2-fbb02d5a34a7@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_151638_130089_6164A858 
X-CRM114-Status: GOOD (  17.60  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 19/03/2025 03:22, Bjorn Andersson via B4 Relay wrote:
> From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> 
> The fingerprint sensor, hidden in the power button, is connected to one
> of the USB multiport ports; while the other port is unused.
> 
> Describe the USB controller, the four phys and the repeater involved to
> make the fingerprint sensor operational.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> ---
>   .../boot/dts/qcom/x1e80100-dell-xps13-9345.dts     | 59 +++++++++++++++++++++-
>   1 file changed, 57 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts b/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
> index 967f6dba0878b51a985fd7c9570b8c4e71afe57d..a35557c562d771e2ce209fca05b82c1943d70f63 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
> @@ -744,8 +744,21 @@ touchscreen@10 {
> 
>   &i2c9 {
>   	clock-frequency = <400000>;
> -	status = "disabled";
> -	/* USB3 retimer device @0x4f */
> +	status = "okay";
> +
> +	eusb6_repeater: redriver@4f {

How about

eusb6_frp_repeater: redriver@4f

leading to> +		compatible = "nxp,ptn3222";
> +		reg = <0x4f>;
> +		#phy-cells = <0>;
> +
> +		vdd3v3-supply = <&vreg_l13b_3p0>;
> +		vdd1v8-supply = <&vreg_l4b_1p8>;
> +
> +		reset-gpios = <&tlmm 184 GPIO_ACTIVE_LOW>;
> +
> +		pinctrl-0 = <&eusb6_reset_n>;
> +		pinctrl-names = "default";
> +	};
>   };
> 
>   &i2c17 {
> @@ -967,6 +980,14 @@ edp_reg_en: edp-reg-en-state {
>   		bias-disable;
>   	};
> 
> +	eusb6_reset_n: eusb6-reset-n-state {
> +		pins = "gpio184";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +		output-low;
> +	};
> +
>   	hall_int_n_default: hall-int-n-state {
>   		pins = "gpio92";
>   		function = "gpio";
> @@ -1172,3 +1193,37 @@ &usb_1_ss1_dwc3_hs {
>   &usb_1_ss1_qmpphy_out {
>   	remote-endpoint = <&retimer_ss1_ss_in>;
>   };
> +
> +&usb_mp {
> +	status = "okay";
> +};
> +
> +&usb_mp_hsphy0 {
> +	vdd-supply = <&vreg_l2e_0p8>;
> +	vdda12-supply = <&vreg_l3e_1p2>;
> +
> +	phys = <&eusb6_repeater>;

phys = <&eusb6_frp_repeater>;

That's how I did it on Insprion14 and it helps me make sense of the dts 
back to the schematic.

> +
> +	status = "okay";
> +};
> +
> +&usb_mp_hsphy1 {
> +	vdd-supply = <&vreg_l2e_0p8>;
> +	vdda12-supply = <&vreg_l3e_1p2>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp_qmpphy0 {
> +	vdda-phy-supply = <&vreg_l3e_1p2>;
> +	vdda-pll-supply = <&vreg_l3c_0p9>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp_qmpphy1 {
> +	vdda-phy-supply = <&vreg_l3e_1p2>;
> +	vdda-pll-supply = <&vreg_l3c_0p9>;
> +
> +	status = "okay";
> +};
> 
> --
> 2.48.1
> 
> 
> 
Completely optional obviously.
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

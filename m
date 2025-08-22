Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91AAACA0EEB
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 21:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EcS3yUPjJkb0pNYKoDraElPKBfO8za4gHf1gxaTJFYc=; b=j/EANJlzpgUWSv
	HaXkKakISgG0Q/86eUZb+7jrt8eBi/IcFtqpeBX7rWyM+zZnpF9Hgozoivpt97rX7s3tw51ziH/Ju
	SiK5T7FN8W9Z0ejJbcZaam8ceq9iE3ZrQwJllMMNmKUtbfs9UXbgc8cLwy3iNajoehPUXDOKgr169
	b7qbaaalvf/gJr+7qKyn9H3QR9AoHJ61kQYsaGG3+XZYW3QW8AYpTgNQVi4cP3Kl176xGSoNIXHpr
	M39Z3JmqdJAgsv/7m7hoC8r85qklAHF1b3kmeYPEzo7B8icWEU20f0DjIKiYzWcUhCzcbXFlUtqGv
	DYHvoPRVywBOxiC98vSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upZcY-00000003Yu1-06VD;
	Fri, 22 Aug 2025 21:48:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upPWb-00000002GR8-3zLO
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 11:01:39 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UKRh030504
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 11:01:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bpyG7EvRpdOl447CLef2b+TR
	MD4CwJUfVvwhnQyhNYo=; b=M13f2elAZwJeBzFTRWQHhrh8/YiTCcU3LZMX6Q+b
	YJgJ+Zj/y3EQZSu2nA1ab2Z5lh7Q2TXzK33X7Y/FmG2ifkpjWrPkZoUKwkCvynRz
	HpDeiwYLkySl8NDF9qTWo4yS/M1wSH1as+5heu3/tNWoCbUwYcvwU+aYbBxY0/Vv
	ak9BoBlYJmZUo+RktuZvgV9whYe7O2YzGQLYTAcH2mIBKZoV7wnaJ0WgXEF7tnH1
	3r0IZhNsDxJY6C3HNbUIx5yb4iG+ykPn+FQ4+KY80d3Bzy6PEvVErS8QuAK1lI9Q
	2l7C1lK5cHeTWswpIs1v7EWb+LV9LfXPAjYWuVsokH0aNg==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ngtdpt6k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 11:01:37 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-51a28774cf7so1808574137.0
        for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 04:01:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755860495; x=1756465295;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bpyG7EvRpdOl447CLef2b+TRMD4CwJUfVvwhnQyhNYo=;
        b=tZ7e5VHsWKbGLBbYVtxMnC9v53/Rl7UkGl7Vt/o1UruDX+aNhz5yWW1ITM7p4NcboM
         HCIlJ65OqO8bTMk4g7SQndyRF5VDB8Wcy8z3s9/ttPJ/ltKyiyCW157LxahyWFntyVbf
         xlPtu98GU1Gc7zcOm/BHaWvB38BDg+Bii/haxoZ5BTAp78dLrzgiXulDzGJw2ULB2ZSs
         IYZ4Xbt0Rqk78eJWxAQcXQTzuedP2RBeLQ+MZRXtNuh9oCzF2BaKmAZIOAa47WUKxfYv
         peufcar2FuSJGME581zpVlVDnqDDremsIp1Z8r8x+0KrXpOXq24IMs8lTpfSKsrbPiuL
         dp8A==
X-Forwarded-Encrypted: i=1; AJvYcCUrPHzRy8s24wwolnZnw9iT161nltndLXucA4POlAV92IfUsWpf0JTW4tMWQS8GmcK1tNnIoaHWBSc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwSXd61K5Bdct5c58jebMwspcMTwRaMuglBQZncgvaoQD7+1/7y
	ubFAL/edPnO/5hHXhAmDbmrJ+Cc24HDnxEACG4P7PSy+BA8VFQMdNgnxh2z2X1aS59tro+2C/aO
	brjz3+7tgkfrq4YPEwPzIlnyqv/ZXA1BwDLJXGkzS8y4fV1G03r8+0OWUiWG9V8Godvp/
X-Gm-Gg: ASbGncs1QOAG7HrwcMQynwSSjU4QS8cpmU0K7V/6pTjazR9SJCGixSJsqKLWprYL+PL
	YUvj/1xO2UX1mNQtjpaN5C9F5kQAAv/eYLX87f8Og9J3OhvMqUNWHgNae6gQ+KqqX8xezpA6c4l
	ZMPGAa/OeMHkejQ96qJHxUqkzeWV576U9FxiR3U2Wzs2Z41IFKdrVXIPrUaTRnQMGmuRFQv+uMu
	e09oj6X89pTCvnssiLOYc28huzBr/97Ch9XDaVIngd1Pw2ENmewpZxd4ZjUyTvPQiMeEbblJu8h
	9wdtpvYvj2tc7vrF/DOzzeKUy4jQSC2Ku7xxemAco7tUQVIHogI9Pvf4JWzJqBOgzzs/NPJPh0J
	PJmNrivTxRYO8UnVNopDuxeZWYhNsqpDhtsUGvBZO02/IkWxBg9D5
X-Received: by 2002:a05:6102:5a8d:b0:517:1303:630f with SMTP id ada2fe7eead31-51d0cce4e4amr593611137.5.1755860494956;
        Fri, 22 Aug 2025 04:01:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGweYGL+U+B5slkwqq57ojJOnyc8XShcyRzoQeep4TEQavSriPWgyaDDgBU9fPmTMKCGI8tOw==
X-Received: by 2002:a05:6102:5a8d:b0:517:1303:630f with SMTP id ada2fe7eead31-51d0cce4e4amr593584137.5.1755860494355;
        Fri, 22 Aug 2025 04:01:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef351685sm3539569e87.36.2025.08.22.04.01.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 04:01:32 -0700 (PDT)
Date: Fri, 22 Aug 2025 14:01:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
Message-ID: <as7pbmhfgsg3ht3s5lu25pfjjamaxyonuohkuohono3kr2mxii@posspuko4vwa>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
X-Authority-Analysis: v=2.4 cv=LexlKjfi c=1 sm=1 tr=0 ts=68a84e11 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=DvVwCw6QEd6eSbBiarEA:9 a=CjuIK1q_8ugA:10
 a=-aSRE8QhW-JAV6biHavz:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: VHb1Ch8XcnPfMMNIbp_EdZHeqhDAgieS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDEzNSBTYWx0ZWRfXwWJYP3FNKk2I
 +aWZEMmxwx9/Sr64J4De5VOW5qj1DqQr+JwcsYG1jK3uvNVlXFYAl7n5yj+yZHs6osXz4JwYTuG
 xRQh/C4ItNsE14T57uiYh4MjUGo+1bYKtHzh8WNhOCtWLuhiM82AXUtmmr/SMWqaYn7NxeOJ+B5
 GKcD6RStbkF9e8TY7mV0c9vL/Denjb1SU3RsMSDWgOD3rCLSM+SZjyMtREv8dyPd58ZXVcog3eD
 0ICjieIwncX/t3+tnW2179gdXyJSlifZ4Du8YT36LrSpAmeZ7P5qyt7swKwUTlQ3V/cA6XmciER
 UhDz7YKFEUngK7eZhdOTbv09Nmz9mcOPWEFvJWD4lceExRSLncnDzX3KF6G3XZhbNlI2KIniVne
 FGnCvsvdj0YnX1yaMdEafM7xmxvYUw==
X-Proofpoint-ORIG-GUID: VHb1Ch8XcnPfMMNIbp_EdZHeqhDAgieS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0 malwarescore=0
 spamscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_040138_008763_567171F1 
X-CRM114-Status: GOOD (  22.32  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Thu, Aug 21, 2025 at 03:53:28PM +0200, Neil Armstrong wrote:
> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> connected to the third QMP Combo PHY 4 lanes.
> 
> Add all the data routing, disable mode switching and specify the
> QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
> the underlying DP phy.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 44 ++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> index 4cf61c2a34e31233b1adc93332bcabef22de3f86..5b62b8c3123633360f249e3ecdc8ea23f44e8e09 100644
> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> @@ -62,6 +62,20 @@ switch-lid {
>  		};
>  	};
>  
> +
> +	hdmi-connector {
> +		compatible = "hdmi-connector";
> +		type = "a";
> +		pinctrl-0 = <&hdmi_hpd_default>;
> +		pinctrl-names = "default";

If this is a DP HPD signal, it should be a part of the DP device.

> +
> +		port {
> +			hdmi_con: endpoint {
> +				remote-endpoint = <&usb_1_ss2_qmpphy_out>;

Please describe the transparent bridge too. It can be covered by the
simple-bridge.yaml / simple-bridge.c


> +			};
> +		};
> +	};
> +
>  	pmic-glink {
>  		compatible = "qcom,x1e80100-pmic-glink",
>  			     "qcom,sm8550-pmic-glink",
> @@ -1007,6 +1021,14 @@ &mdss_dp1_out {
>  	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
>  };
>  
> +&mdss_dp2 {
> +	status = "okay";
> +};
> +
> +&mdss_dp2_out {
> +	data-lanes = <0 1 2 3>;
> +};
> +
>  &mdss_dp3 {
>  	/delete-property/ #sound-dai-cells;
>  
> @@ -1263,6 +1285,12 @@ &tlmm {
>  			       <72 2>, /* Secure EC I2C connection (?) */
>  			       <238 1>; /* UFS Reset */
>  
> +	hdmi_hpd_default: hdmi-hpd-default-state {
> +		pins = "gpio126";
> +		function = "usb2_dp";
> +		bias-disable;
> +	};
> +
>  	eusb3_reset_n: eusb3-reset-n-state {
>  		pins = "gpio6";
>  		function = "gpio";
> @@ -1486,6 +1514,22 @@ &usb_1_ss0_qmpphy_out {
>  	remote-endpoint = <&retimer_ss0_ss_in>;
>  };
>  
> +&usb_1_ss2_qmpphy {
> +	vdda-phy-supply = <&vreg_l2j_1p2>;
> +	vdda-pll-supply = <&vreg_l2d_0p9>;
> +
> +	qcom,combo-initial-mode = "dp";
> +
> +	/delete-property/ mode-switch;
> +	/delete-property/ orientation-switch;
> +
> +	status = "okay";
> +};
> +
> +&usb_1_ss2_qmpphy_out {
> +	remote-endpoint = <&hdmi_con>;
> +};
> +
>  &usb_1_ss1_hsphy {
>  	vdd-supply = <&vreg_l3j_0p8>;
>  	vdda12-supply = <&vreg_l2j_1p2>;
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

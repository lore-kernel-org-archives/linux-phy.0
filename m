Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6461EC5AD55
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mXmANDGoTQEJlJeLS+hk/6X2lFhGsrRiDxsBh4mCN7s=; b=AjpCdTH3sdxlvRP2KXSEAIh0ue
	A7jG/B29d4DA3MU8Et7or7vFyOlZg9952P3XpdYX1ezOKYM8XtEz8OepvdBDXd+1ZS3o+e3G/UkhU
	Z4pTZgPUUToopXJa7KEoDj2FLrx1c6JhrsGwRh1Ixd57SKRtv1eKDXRXSHEv4dFc5tbGdOLLW+xHV
	8EtUsVrQtq3V5ufq9wBitJrM2HUHYFqKRi1mSOAh+nB1UudC8DLKCmVHCtnJw+N0ZAgRWvdw2SELm
	0aj+bndgNaoHWboBitXy9LPniPjRntudKac2yX00rbUsY3vHWyjBfG8QsOD1BIzCJIDUyyXrPNEcb
	ymO1Q0jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtNyv-0000000Ba3J-0epP;
	Mon, 10 Aug 2026 11:15:49 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtNys-0000000Ba3A-3oTI
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:15:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A14EE43F81
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:15:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 896121F00A3E
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786360546;
	bh=ctBC48NfaDxfgnTVz5af5ouIXmkk32F3lLulKRkoUJg=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=UcYbVv3iH192KTvaESXNDdkUl9s+fgxdqwObI1CCrVCXfL57dvPcPPhV1sKvhcPUf
	 vUizlO3clDeamSuCJKejBodHmJWG8d9+3flJEtWg9wiJpI+Ad1EUE0LMOB5BYo92BB
	 xw/mAxDW856YlptJRjAnIYDkciTQkOIa+BT0+l1TZQivBWK0Rfpl7UnBeuN9NR1jGj
	 Pm7KD5GV6HWZvXlCNPvqRSAYnXBZj87xcPg8koPKH/MLFgs585363oKHLEd2vQxu70
	 MUqkpxh6+/JXiW5Hi9BNdxA2tJ3rlRHTwKujcPMy9yXao5vvadBhY+YbQyPeLiQOhV
	 3gLmxCUntQzVQ==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-39da69c5ba3so16021551fa.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 04:15:46 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RrtzxGXHXYawfLFUCvHIliM8oIEef6ML4VCm/BFxw/ay1Qf/N2gUzxkvxU77rl7+2tSQNF9yyyM9iA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyKMf4p8al5KIIYOd3Cwb09i8hxqv5LR6OScjE8B0kCVlD3SpBn
	pNCGLbEjtGCqi1EkdC6W7g5AkrGntbtFOUvYylf9j8vG8EjlIQX2Z4S9FpV9OXA0HU+09Nu4Mx3
	rYiymo44RDjGMAFoFDLD2gwBwSlV6lJmzmG2JTawayQ==
X-Received: by 2002:a05:651c:1547:b0:39e:ec1a:3a38 with SMTP id
 38308e7fff4ca-39fd685d861mr26951671fa.23.1786360545111; Mon, 10 Aug 2026
 04:15:45 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 10 Aug 2026 06:15:42 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 10 Aug 2026 06:15:42 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-4-c4bc688177dd@oss.qualcomm.com>
MIME-Version: 1.0
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
 <20260804-b4-sgmiieth_serdes_regulator-v2-4-c4bc688177dd@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 06:15:42 -0500
X-Gmail-Original-Message-ID: <CAMRc=McU53T7htpXkqwLUD1xLs0bignVdDsMHrASg25hHto7zg@mail.gmail.com>
X-Gm-Features: AUfX_mx4xed83HkjA-Shp3wdKfG7HxoVe0OC0Q7Cb74CDg4FXKd0uqwuGlZCvzw
Message-ID: <CAMRc=McU53T7htpXkqwLUD1xLs0bignVdDsMHrASg25hHto7zg@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] arm64: dts: qcom: lemans-ride-common: fix SerDes
 PHY regulator supplies
To: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Wasim Nazir <wasim.nazir@oss.qualcomm.com>, 
	Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>, Umang Chheda <umang.chheda@oss.qualcomm.com>, 
	Yijie Yang <quic_yijiyang@quicinc.com>
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

On Mon, 3 Aug 2026 21:28:00 +0200, Mohd Ayaan Anwar
<mohd.anwar@oss.qualcomm.com> said:
> Both SerDes PHY nodes were configured with 'phy-supply = <&vreg_l5a>',
> which was incorrect on two counts: vreg_l5a is not a supply the PHY
> requires, and only one rail was described where the hardware needs two.
>
> The PHY requires vdda-0p9 (vreg_l4a) and vdda-1p2 (vreg_l1c). Replace
> the incorrect phy-supply with these two named properties on both nodes.
>
> Fixes: 5ef26fb8b3ed ("arm64: dts: qcom: sa8775p-ride: enable the SerDes PHY")
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
> index cefb8ff0080631e25e9dd3a05cd810c6955bf1fe..923fd8736f31df2eb5198b27ddf52c171f7b2943 100644
> --- a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
> @@ -856,12 +856,16 @@ &qup_uart17_rx {
>  };
>
>  &serdes0 {
> -	phy-supply = <&vreg_l5a>;
> +	vdda-0p9-supply = <&vreg_l4a>;
> +	vdda-1p2-supply = <&vreg_l1c>;
> +
>  	status = "okay";
>  };
>
>  &serdes1 {
> -	phy-supply = <&vreg_l5a>;
> +	vdda-0p9-supply = <&vreg_l4a>;
> +	vdda-1p2-supply = <&vreg_l1c>;
> +
>  	status = "okay";
>  };
>
>
> --
> 2.34.1
>
>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

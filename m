Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4CABC5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LrDtaS0bzv4wPYDzwWFKsbfvU1pxrackr/RGllC1QEE=; b=h1mw2HTk+bT//yyIl7DwAD30Qx
	/5ozV7T4IjSIIqT5l1L0mP1os95gdaLZvf8G4mtaqLZbNxTGvwvRlCoMm6ufQyXo9fOqEkpmH0Ht4
	IkMoBK8urqCXqsYKv3JMdS8z548q5skIp/sc9Dw22e2RLJa8+RSCUB0XhhZjNPykCKUTwTgkHukBv
	W2EaytpazbFMEaBvYR3ZYv/wh38D04DKJxzBJ8mAIeH3HwwwO5eegNfeRaALh7K9XJXSNOhhCsJ5T
	+enwUd8ELTJfwvV45y0i9SlBZYVvWYU5R13eJqsR97fezE4i6niNnl/exDPFzMcK4KYRhE8EtjgrZ
	1p3OVDRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtNyY-0000000Ba1j-1k6r;
	Mon, 10 Aug 2026 11:15:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtNyX-0000000Ba1K-1USs
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:15:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 086B343C9B
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:15:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1A431F00ADB
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786360524;
	bh=vhrx8DeAvw9uZMYwSNzW2M9NFfXSvO+hZMshnNaVKXk=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=hw61/ViSHiVGf8GH7Sb4G30pms5KQsm/e+G66NKSYqCT1Ix1BY3Dt5+fKXZjPGXhL
	 5ZhFX2nhHUMvTTjyJMPXrEQVYSsmOhVagmWXwjoE73SySr+1PcudE2axXJxMBtWiFT
	 bjJ4hisHuG+5IxVygd2+vfMNu+MLbPSi/qlQxiesNKi0dYqW2VSUZedzbq3kQYjFEB
	 qv2/5RLAjBmmvJAkI4Q187qg9VpST1UTY37wQVN59aruQMoNl5bR8QdLmwl6ieZF7k
	 HG7EXBZ1E5oLDtj7h3lL/uwo7UehsnmB7yG2N1eF7ZvNmuWTcYjiSKs1q3kLYKhhZO
	 FTl70HTUlYjCQ==
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5b01910b499so1470016e87.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 04:15:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RrB5pamULHXSqKEgF81HMVzrGnHQD/NPYPum8IyYxpxTScPUi1Q8gbX5PKBuhAMhXfVonf2DqXp4xE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwNkK86KazUwEbV+1lIQN1Mi5tkMu4LVeaYLnkj4oyHnt2zOWp6
	bsaY+740vRQVZ6KN8l5SrOYOLgp4CplStvWSZd/KpxKGNNyYQI3hhQIXVDRDpb8qc9rUYHxS7MY
	a8w0BGV77JJ9qdDLY/+TLwOLdNPs+sqiN/IsUSFBz9Q==
X-Received: by 2002:a05:6512:350a:b0:5ae:ba88:5443 with SMTP id
 2adb3069b0e04-5b30c03e7edmr2973614e87.16.1786360523676; Mon, 10 Aug 2026
 04:15:23 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 10 Aug 2026 11:15:22 +0000
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 10 Aug 2026 11:15:22 +0000
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-3-c4bc688177dd@oss.qualcomm.com>
MIME-Version: 1.0
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
 <20260804-b4-sgmiieth_serdes_regulator-v2-3-c4bc688177dd@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 11:15:22 +0000
X-Gmail-Original-Message-ID: <CAMRc=MfGO135r=_PuRUYmL8QkYTtw4vDrTWKEQO0R3pgHB=8iQ@mail.gmail.com>
X-Gm-Features: AUfX_mz7YbfQpGrxAfn0g3K5gHPEg8MpiJ4dCVlm-C7BXnVJ5BHj6wkG8MOKooU
Message-ID: <CAMRc=MfGO135r=_PuRUYmL8QkYTtw4vDrTWKEQO0R3pgHB=8iQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: lemans-evk: fix SerDes PHY
 regulator supplies
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

On Mon, 3 Aug 2026 21:27:59 +0200, Mohd Ayaan Anwar
<mohd.anwar@oss.qualcomm.com> said:
> The SerDes PHY nodes were configured with 'phy-supply = <&vreg_l5a>',
> which was incorrect on two counts: vreg_l5a is not a supply the PHY
> requires, and only one rail was described whereas the hardware needs
> two.
>
> The PHY requires vdda-0p9 (vreg_l4a) and vdda-1p2 (vreg_l1c). Replace
> the incorrect phy-supply with these two named properties on both the
> base EVK node and the IFP mezzanine overlay.
>
> Fixes: 71ee90ed1756 ("arm64: dts: qcom: lemans-evk: Enable 2.5G Ethernet interface")
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk-ifp-mezzanine.dtso | 3 ++-
>  arch/arm64/boot/dts/qcom/lemans-evk.dts                | 3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk-ifp-mezzanine.dtso b/arch/arm64/boot/dts/qcom/lemans-evk-ifp-mezzanine.dtso
> index 6cfa0bc1440e91d32df0695ae4059050e4e20b56..8651c412d0288fcf2ab69fbfaed86f68fb2b4fc5 100644
> --- a/arch/arm64/boot/dts/qcom/lemans-evk-ifp-mezzanine.dtso
> +++ b/arch/arm64/boot/dts/qcom/lemans-evk-ifp-mezzanine.dtso
> @@ -291,7 +291,8 @@ pcie@0,1 {
>  };
>
>  &serdes1 {
> -	phy-supply = <&vreg_l5a>;
> +	vdda-0p9-supply = <&vreg_l4a>;
> +	vdda-1p2-supply = <&vreg_l1c>;
>
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> index 0c53640c42a65c62375e71f7ae79cbc834a05888..5c046b9bfb3cdec59cffc1dfdbf9f2a51dc9721b 100644
> --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> @@ -978,7 +978,8 @@ &sdhc {
>  };
>
>  &serdes0 {
> -	phy-supply = <&vreg_l5a>;
> +	vdda-0p9-supply = <&vreg_l4a>;
> +	vdda-1p2-supply = <&vreg_l1c>;
>
>  	status = "okay";
>  };
>
> --
> 2.34.1
>
>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Tested-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

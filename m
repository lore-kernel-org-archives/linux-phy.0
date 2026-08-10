Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C0CFC5AD55
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0WJkV/xmvexa08mTXrKNxm43hiyUYFy5idKobGK+kv0=; b=GwstDT+77xqZTNtZoO8e1oICTf
	LHfN94zRlQ2KaoNqkuUrcVdCt1MPyMKcqGwm770SLKubsWLfjTyjpb6XnEtaPnCdh0OD1PdkfqiFQ
	tyt2MGtJ+4q6SD7qbX6X9bVflqHX66CxEApZ+2OXFaR36YD8/wja/o3x0ZDDFAMoRf3ZkBXEZSeJ2
	ny+iNm4FO4YwoljKn/FFSX05vVlgB/NB7wjVsiaYR6hV+QOQ90jInVHTctDcClfyRb42qXp39fhDV
	t1mPl8BVN81/2UoAeZJj9GfhQwZZXFRt6Ri/KB1zMwOLQFOfhdWAptDnjb5s6/91SrIZukJZMwEqb
	Hr0rglJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtNz3-0000000Ba3z-17Ou;
	Mon, 10 Aug 2026 11:15:57 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtNz2-0000000Ba3t-0zIr
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:15:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7CC3D60A5B
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:15:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 208331F0155A
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786360555;
	bh=Ree105FpZDD4Gdo/SFuh9gERvhFDmrcYOqBHPp8A6NM=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=IJU+pj4w9t8xYk+mYwihO1wBVuJ86Gjc4Q88gezEsDxXjBsrbNJuTeph6eLqsKzEA
	 JRlhSSiw6Oe9sEPoqEdTYc0XaxHzBJLpCu4JMLZ0ZTf+7iw9Pdb1yudOIQgfjhE966
	 qO0fG8YMCX5FncLYnGxV/s1sPk4kFhhZW92fOBfou4rxhJZB7mqWsiZcuQJZX8kU7D
	 dZ7jm1SjQ7zeK549Z7OAipfrKeuqnSk0YQamekeAhHkMhpkmqddQslavgOtd4c+ncx
	 6SogNaotKZJ5jo1xl45gjmR0N4IbT8eFUPlPtwySbGENqqyfSGtFXA9uJpQZJRvUIq
	 ZISq2yS7HWmpw==
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5b015b2d792so1635215e87.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 04:15:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RqEbQXMcayIfTmzH5ev9hfYEuy27kz6HQ/UOmqcD7MYe+le0fm3FRi6uTwRbprNO6Cf3NddiiFlBB4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxiBt+yhd38/YaCfBHMgARSH0LaPa69/YXWZgHZ20iD8Tu1d2fZ
	4zd64jWV+Hr+m+qqSmEJiiNm7dg5RrcIcmSVGtYOFuqXg/waPqfArika7MOre3ZNxLgon9NoLpl
	yXuwH0Wo7rWcIGy7+y1Yb3pmGOf14H8Xi+ZFTzhpvRQ==
X-Received: by 2002:a05:6512:6890:20b0:5b1:59ec:2452 with SMTP id
 2adb3069b0e04-5b2f4b803d2mr3556931e87.9.1786360553844; Mon, 10 Aug 2026
 04:15:53 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 10 Aug 2026 06:15:52 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 10 Aug 2026 06:15:52 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-5-c4bc688177dd@oss.qualcomm.com>
MIME-Version: 1.0
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
 <20260804-b4-sgmiieth_serdes_regulator-v2-5-c4bc688177dd@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 06:15:52 -0500
X-Gmail-Original-Message-ID: <CAMRc=MdF5spUDL3onVBxTzpcVkF1gAcv2ou8=iS+aMMRDPoCkw@mail.gmail.com>
X-Gm-Features: AUfX_mxL4wZkP-fvXu35X4Igj96F_u92cxpRY8MHEp3IGJ1ql6hpIkFfcfIxbME
Message-ID: <CAMRc=MdF5spUDL3onVBxTzpcVkF1gAcv2ou8=iS+aMMRDPoCkw@mail.gmail.com>
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: monaco-evk: fix SerDes PHY
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

On Mon, 3 Aug 2026 21:28:01 +0200, Mohd Ayaan Anwar
<mohd.anwar@oss.qualcomm.com> said:
> The SerDes PHY node was configured with 'phy-supply = <&vreg_l4a>',
> which only described one of the two supplies the hardware requires.
> While vreg_l4a is the correct 0.9V rail, the 1.2V rail (vreg_l5a)
> was missing entirely.
>
> Replace phy-supply with the two named properties vdda-0p9-supply
> (vreg_l4a) and vdda-1p2-supply (vreg_l5a).
>
> Fixes: 117d6bc9326b ("arm64: dts: qcom: qcs8300: Add Monaco EVK board")
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco-evk.dts | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
> index 9d17ef7d2caf130564efc2d0159ac0de39126e80..f787e78b35ce48d7544116e4383561b81def8ec7 100644
> --- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
> @@ -706,7 +706,8 @@ &sdhc_1 {
>  };
>
>  &serdes0 {
> -	phy-supply = <&vreg_l4a>;
> +	vdda-0p9-supply = <&vreg_l4a>;
> +	vdda-1p2-supply = <&vreg_l5a>;
>
>  	status = "okay";
>  };
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

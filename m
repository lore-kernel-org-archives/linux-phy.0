Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9057BC5AD55
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iqLN3+NvKkx4VaEhI8Oew2VQzolbMpyVwxXzw3WKo+A=; b=mBVeWNjsdGXQCIMWkw57AmPeFd
	kfvSDIZ7QoTMtGPm5xJ03SswYKGfscuU09l0TD6TOcxrZTOfpowru55XKrXEETVUB7k17jPqH+ihB
	n9Dlf6xOf8Ff3DSbE0krH2ItBug6FsgWYLhKBsfsnfdOaHVCEXAq9Lhy+6+IdQoTBzgv0/S53YJKm
	bTaf/WkHIqEtSAz3cpM/dOr88/l93gI1LXZrwPGYCjRFHmEXideEz6zHqguZakvLw6SAjW3NnvgKe
	01PCqywgGZkZZ1pQr+j7Em9PP25Ofcc0Kqh7JPE6hkSNt0Vt4xRWUNg5wbEWAaBxkEt6FsBBWmVEa
	pswItV4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtNzB-0000000Ba4b-1GjV;
	Mon, 10 Aug 2026 11:16:05 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtNzA-0000000Ba4V-1Qnw
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:16:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1120F43D77
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:16:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7F3B1F00ADF
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786360563;
	bh=KqqXjK5wKyje470GpH3zQbrt/NfiaPoZDgrm3GDppTI=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=mREg9nz3r8yXiZ3cn0P6ocvo/JVbB8mqbQvjL7/P1HymKkdAbjfs0Q+ylF11Xb8aN
	 Khj86WXmKiCrXATFwUGqmVsdfcnm+7LpB8XelP6GNs/IE4LyZ59vEThtDEHzcZ8mJI
	 WmyeJhgkwdDQ82+bP/t3xoBuDwnGcJ99FBXSESdI+K6aRLIrrCpdvQx0fDizqGQkfo
	 lBgpsUv5Otf9KCniNreoiIufyajjrnxpYYJgSIh8aFW545AyspSbU3RBTOivgj/taA
	 /vvLzLZ4F9CGXXFl41QZ2qtpVaI3/k9BOlrfsdELf/J2pnsjCH8OhaxvILIlhgHg1e
	 FjHJnyc8IG2Kg==
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5b0117d49dcso1407201e87.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 04:16:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RoGoOYv8atoLhvxjLnTJ5c4t6Vqrn9vjQBJUnhAzqvmqKy4HZubWQ6tSI0hIye69ty0n7Gi6jb4UDo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7/NZxbHFyi3OpmKeBPF/PQOOVUWEUskgKsQcZ2PYplol28T1S
	ALSDT5yhu1OOnQwMyav0lUGYLkSqb9eLw5fR/tvyboHGiUsT9lVzBe2B5YtVTdArddqKD8gO520
	NpwTjIKkjNaLaBjUhx/EspmCB/GHa3BZkcii1R+3TZQ==
X-Received: by 2002:ac2:5b47:0:b0:5b0:1708:afa6 with SMTP id
 2adb3069b0e04-5b3181cec8fmr107659e87.43.1786360562682; Mon, 10 Aug 2026
 04:16:02 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 10 Aug 2026 06:16:01 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 10 Aug 2026 06:16:01 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-6-c4bc688177dd@oss.qualcomm.com>
MIME-Version: 1.0
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
 <20260804-b4-sgmiieth_serdes_regulator-v2-6-c4bc688177dd@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 06:16:01 -0500
X-Gmail-Original-Message-ID: <CAMRc=McVMyM8vRq2JR8aCVvNKCutV9D+J4R8zizUG2kf7ra1xg@mail.gmail.com>
X-Gm-Features: AUfX_mxh8nhhV7PpY5aNGc_B2bOST12W9YV58LCffhOyHw53XBZ3qAYQYNo6m1U
Message-ID: <CAMRc=McVMyM8vRq2JR8aCVvNKCutV9D+J4R8zizUG2kf7ra1xg@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: qcs8300-ride: fix SerDes PHY
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

On Mon, 3 Aug 2026 21:28:02 +0200, Mohd Ayaan Anwar
<mohd.anwar@oss.qualcomm.com> said:
> The SerDes PHY node was configured with 'phy-supply = <&vreg_l5a>',
> which only covered the 1.2V rail. The 0.9V rail (vreg_l4a) was missing
> entirely.
>
> Replace phy-supply with the two named properties vdda-0p9-supply
> (vreg_l4a) and vdda-1p2-supply (vreg_l5a).
>
> Fixes: 787cb3b4c434 ("arm64: dts: qcom: qcs8300-ride: enable ethernet0")
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> index 1ff39530ea3deebe454416d70a289e44c2d89e3f..76c34215dbdf07e520fe96d350f52da8c4485c97 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> @@ -702,7 +702,9 @@ &remoteproc_gpdsp {
>  };
>
>  &serdes0 {
> -	phy-supply = <&vreg_l5a>;
> +	vdda-0p9-supply = <&vreg_l4a>;
> +	vdda-1p2-supply = <&vreg_l5a>;
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

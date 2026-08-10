Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 640BAC5AE5D
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IeIuBdARseVcwgpyQfUFPI/SYwLl3vzScNX+Gcbid4s=; b=FIf9oKl9ukysa/rJfzypjGh37J
	EUoLbr5JCncW+eFFpSLt0P8kj83jBPhS8qIuRh71cqKlfmeB6cVBnSaxiy3+0NJU6HiuIl3h8g9MK
	8njIDQTF/9r+1TIg7SA49NV8Shs/PA1lSLqzvK46L/kqaaw0ht+l1gfmZsMAjVL1Lv+mUAzWtBU+l
	y+WZzENNMMaXdNnvqfXgI/Rg9G9foBAKXTOnEle0EfIDxUn8WhLlBd5gV5Ms4YajXJWJvSL9qxw8C
	hQ6hXtr6c6j1qJvAmvT2LWuW1woKmrAmSnwlZLCZjCe8FZoMTjjPCC/TKu+b+5vB+xmxcpfJwbiPW
	8+ZvC6fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtNww-0000000BZrG-05cj;
	Mon, 10 Aug 2026 11:13:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtNwu-0000000BZr3-1END
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:13:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9056F43D84
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:13:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BFC61F00ADB
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786360422;
	bh=apJ+Wd3xen3OiCkSn7zvoO866Ug5lbpClYMSDMZySoE=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=Nw+HtS8HuhE+MDZdUnvaFuTM7dmOwksv1xz+De2T1NseC4/RztBkdOOCQkkp2mUOv
	 EbpqK10RGM++KomkBX/jFgCsn1Y7mc/s3lCC2X7QNMkgDS2bJI3ycMrbr3hoKFumYI
	 54VuZ5MqcmylwH/XCmAKTnHRZYkRxHQeq+cu1G9GKmNZ9BcWTztdwa4ydU+knzwrqY
	 j2QxQ6Zd3pJh+XHZfK0PnaXuD8+zU1z3xDbWc3XroDAYlDQHu6Dcj/dwF1bjmAs0Sr
	 +j5KMRc73vSfY9kJt/uEafqLtfPnctafHIZCoRMEswKTC9feCAJvh4J8meFxiHaa80
	 lR0LlGQh0fNkw==
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5b013aa02b2so4881642e87.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 04:13:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Ro7O3bLQycODEyirDBcD3BssrPBys/7ywiiSNpmGqjZS5vE/tkEzl9DbLhFtlTSqyhIAevxXNjVsLo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxxPoSrKdXFNeBcwCT0CWQoJbIfGGSao/t7rs2B65I+vtNpr+lF
	8+Jla92Y858SkHYtwtbqu10GqKNrDHp1Sw4V+llsWZpFYoNj5q8o0830ujwf9AB0zmO6d6GSvtK
	fD6D4IDnk40tG65jizAqYeURoZInLj0I9ET+XOBWReQ==
X-Received: by 2002:a05:6512:3986:b0:5ae:9be8:1ad7 with SMTP id
 2adb3069b0e04-5b30c156af4mr3019492e87.18.1786360421140; Mon, 10 Aug 2026
 04:13:41 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 10 Aug 2026 06:13:39 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 10 Aug 2026 06:13:39 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-1-c4bc688177dd@oss.qualcomm.com>
MIME-Version: 1.0
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
 <20260804-b4-sgmiieth_serdes_regulator-v2-1-c4bc688177dd@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 06:13:39 -0500
X-Gmail-Original-Message-ID: <CAMRc=Mf1Mk03YXa0aYPSwMr+iZxtUKaQR6Erp3m0oO=g1U4Qpg@mail.gmail.com>
X-Gm-Features: AUfX_mxgJ-CVdRVanRZmxExwdSzq95SDKkVdHawKuf8WIZ0HaFMuUt_H9gU2wxc
Message-ID: <CAMRc=Mf1Mk03YXa0aYPSwMr+iZxtUKaQR6Erp3m0oO=g1U4Qpg@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: phy: qcom,sa8775p-dwmac-sgmii-phy:
 add named voltage rails and deprecate phy-supply
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

On Mon, 3 Aug 2026 21:27:57 +0200, Mohd Ayaan Anwar
<mohd.anwar@oss.qualcomm.com> said:
> The Qualcomm SGMII SerDes PHY has two distinct voltage supply rails,
> vdda-0p9 and vdda-1p2. The binding incorrectly described only a single
> generic supply via 'phy-supply'.
>
> Deprecate 'phy-supply' and instead add two named supply properties. The
> 0.9V rail draws a peak current of 46 mA and the 1.2V rail draws 15 mA.
>
> Fixes: 97b795125704 ("dt-bindings: phy: describe the Qualcomm SGMII PHY")
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
> index 90fc8c039219c739eae05cc17108a9a2fc6193df..e573abcb937df914ced25ec87add7955bbba7b87 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
> @@ -35,6 +35,17 @@ properties:
>    phy-supply:
>      description:
>        Phandle to a regulator that provides power to the PHY.
> +    deprecated: true
> +
> +  vdda-0p9-supply:
> +    description:
> +      Phandle to a 0.9V regulator supply to the PHY, which draws a peak
> +      current of 46 mA.
> +
> +  vdda-1p2-supply:
> +    description:
> +      Phandle to a 1.2V regulator supply to the PHY, which draws a peak
> +      current of 15 mA.
>
>    "#phy-cells":
>      const: 0
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

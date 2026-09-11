Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99243C79FA1
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 07:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xw1qa1tRN3TanVt0kCehOEvFQfnpJW6suz4d0q0fkkE=; b=10uA6qFuD6pYtDlWEBJBk/nAet
	EF+/HPhX2DLI1ND7z5oV0N84Bt60JnaLLR6C7zbOKiXQFVnbPEwm/AhdjZexIW8QbWxapCH7QeweW
	zYDkMnbEdss3RujzvSlfetVljkQ9D8n3iPPjqguTbJxcDyqjnkhEF3zDYmAI/uL+/65wbeetugfWy
	Psko3wDSJAAikl78XTPwLlV6RrFlgEmbnjwww2lA6FndAANEyRxRrj1VKRDoEpoNBtc2ZAOPSX/KR
	vJj0zMEdCXxXW6oOojsmb/BYoNjFKVDAsKauRrdhPKnjt4yz4RR4/dmdAOQH47ddL1iupMUnOIk73
	CYZ3tUsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4w3h-0000000G4VB-1BjH;
	Fri, 11 Sep 2026 07:52:29 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4w3f-0000000G4V3-3SQa
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 07:52:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 119BE60216
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 07:52:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBDAB1F008A4
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 07:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789113146;
	bh=4OecTWo/Y8Np5+0axosfwjg63A8XkkZPfbCZcvmBsZs=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=RdWbZKo5vzMG2G8ITBAMmjuSAOEtRGQ+Oe7Cz8j9SuE2hj0mV5WcJXbnJQb0t7CwM
	 Xa/+/ZmsCgIrxT9VhtNXlOkJ14XMVBPNiAUDSfV1QTjC+a97SBov+l800uXzIFbaz7
	 NgrVAgFEJuq41awaugDPFsNDgLI7JH6EWdsmLlkLzSv9Xq6e0kvG5/pwtZjb3wv+62
	 BWa43n4HM4+iZmdquC9zHlxGUz7L1MbnWYh7oqrEgSEIvXzcuoAwFTUBuPATIUMhVF
	 sM+cobtTGPtxSLias/stMmGQL2UWE6e3LNNJ/0o/hRCNlVJwa6jUG6snfd1fD1Sz8Z
	 fO7tAbcc3DlKw==
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5b76679c0f2so639585e87.1
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 00:52:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBxeIgSoFA54J1Qtyuv87Y/7dtLc/+o0rqQgxMAmdJ7nsMdHwadc8RY9W3vSENiz6jZp98rl8T1Ys9g=@lists.infradead.org
X-Gm-Message-State: AFuF++mQhFtwvkYWLX7QWGp+k3N0izawnjBvApO4Nun7MeFeprgs8Rhz
	S5CDvqDmkzBXVYUG9Hqdc3EHSCzlbNMLUtJScFIaAQZ4kBqNTJ1F99wsvyQ46uDAckNJJlsNyMx
	ANsZc/Gj5/Pw5zZulXozXArAu1BSo+ybKhjixmpOB1g==
X-Received: by 2002:a05:6512:3985:b0:5b6:184c:7da8 with SMTP id
 2adb3069b0e04-5b8a0319cbemr545468e87.49.1789113145366; Fri, 11 Sep 2026
 00:52:25 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 11 Sep 2026 00:52:24 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 11 Sep 2026 00:52:24 -0700
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260831-shikra-upstream-v2-1-406661d75afa@oss.qualcomm.com>
MIME-Version: 1.0
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com> <20260831-shikra-upstream-v2-1-406661d75afa@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 00:52:24 -0700
X-Gmail-Original-Message-ID: <CAMRc=Mcn-N57xLjvSMDpCvMi2j0XfwWYnxS9F5n+_byhU2-GDQ@mail.gmail.com>
X-Gm-Features: AcwNN1XSGbuzsnev8U3uj75mzaFR2wp_Z_cABLAQ8sbelqvtbOt3aXcPWZLiJTw
Message-ID: <CAMRc=Mcn-N57xLjvSMDpCvMi2j0XfwWYnxS9F5n+_byhU2-GDQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: sc8280xp-qmp-pcie: Document
 Shikra PCIe phy
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, Bartosz Golaszewski <brgl@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>
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

On Mon, 31 Aug 2026 09:26:01 +0200, Sushrut Shree Trivedi
<sushrut.trivedi@oss.qualcomm.com> said:
> Document the compatible of the Shikra PCIe phy which supports
> Gen2x1.
>
> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index 108cf9dc86ea..b9b0fa26347b 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -34,6 +34,7 @@ properties:
>        - qcom,sdm845-qmp-pcie-phy
>        - qcom,sdx55-qmp-pcie-phy
>        - qcom,sdx65-qmp-gen4x2-pcie-phy
> +      - qcom,shikra-qmp-gen2x1-pcie-phy
>        - qcom,sm8150-qmp-gen3x1-pcie-phy
>        - qcom,sm8150-qmp-gen3x2-pcie-phy
>        - qcom,sm8250-qmp-gen3x1-pcie-phy
> @@ -166,6 +167,7 @@ allOf:
>                - qcom,sdm845-qhp-pcie-phy
>                - qcom,sdm845-qmp-pcie-phy
>                - qcom,sdx55-qmp-pcie-phy
> +              - qcom,shikra-qmp-gen2x1-pcie-phy
>                - qcom,sm8150-qmp-gen3x1-pcie-phy
>                - qcom,sm8150-qmp-gen3x2-pcie-phy
>                - qcom,sm8250-qmp-gen3x1-pcie-phy
>
> --
> 2.43.0
>
>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

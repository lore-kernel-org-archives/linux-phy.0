Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66EB8C43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 09:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+sqz0Ft99pq8+MdyhJ96BbEsX9Ld5GgDtc81OHtf1kw=; b=laDat+VTe30jznLMFyMhmhTin9
	CJwMvJLioOqjHSP2WTrFYSKzE6ZMeSH+WrB7T/5pzAhj+G3kod/BgEfcunEGQrezQB+fLwtROkeVo
	mGQLXK05zLbPjpVw0GUo2jc83D6vKmvT0kUgEENrW3OXQVUt6aH9/Onh3KTRagSVp0Hxie3Yq+NwA
	ed+0njCiEOKoP0Wg39izbNcA2rOmP83b3MEwPrv7osM+SQjed8t9Jw69FhwZ7+S8QR+Te00cPUwn3
	fXk1e6ur3IbxpBMj1Ib5VR9ymYN8HwJ5ZczFquPOygpZ3fsuHnqEo1dHTTrhn1CXZwcKx5NX+Gu5o
	4tbAPCNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werag-00000001Et1-3V8D;
	Wed, 01 Jul 2026 09:50:46 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weraf-00000001Esb-1FMC
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 09:50:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C317F601E2
	for <linux-phy@lists.infradead.org>; Wed,  1 Jul 2026 09:50:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7727D1F00A3F
	for <linux-phy@lists.infradead.org>; Wed,  1 Jul 2026 09:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782899443;
	bh=CYGZFzyPZ+A2YYB3ropIX8iebOcV3V3VZwIWp6S8JQM=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=ovsz+YelOrq+1skD75xSG5EORRjD0cTTOcWfjmNL1AE9OSsCsfZjJp8XxxnkiUAcg
	 P+abid/4QGDt7gX6rEmPOu/VcNzmUDeaCsph0bEI5G2ZBM756c+SPKBHfxhAfNqZVw
	 mElrkhKwEzEm8A6sScqGt9rfi2+uIc2CPoQ5vo4bi69uMhjvNM7S+laUTGgzHzhx+h
	 R38HmKICmEJs1YdCuGnRmbrznzgZczz/T7WE4l0mpNrxhJred0aed7bjS24lYbyHiI
	 1PmPdRZXOUVe38kyHbGRHLtz9q+GicbDgaldjuYPzchLjKtzQM/Em7bqSFFTRjfkQW
	 5xc/tFJrhG/sg==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-39b315585a4so3282541fa.0
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 02:50:43 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RqQHjOAf4tsZgjigvUq31SxGUhtRHhe/FgyXeTxdzN72AJr01VwlUDiuriyXIgKPD0Yvf99BFAaJdI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwU/p0DPMbCXXoRUKHMJfwQPJO9t9VvZoSVQ6DjJ7NQkBYuhFMM
	Q3UNKivZuODPbLGggAf6mIf2NdO2hyO6zXLDQIvTxBlzeKdIyy3FVJ5VfgSeiQRaU9rVCq1aMQK
	wC1KLNVPenM7meZOw0QcQSGIAzaIM4qok3uY6uJSliQ==
X-Received: by 2002:a2e:9a0e:0:b0:396:9966:50e4 with SMTP id
 38308e7fff4ca-39b33fcfac5mr2066541fa.14.1782899442056; Wed, 01 Jul 2026
 02:50:42 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 1 Jul 2026 04:50:40 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 1 Jul 2026 04:50:40 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260701-shikra-upstream-v1-1-e1a721eb8943@oss.qualcomm.com>
MIME-Version: 1.0
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com> <20260701-shikra-upstream-v1-1-e1a721eb8943@oss.qualcomm.com>
Date: Wed, 1 Jul 2026 04:50:40 -0500
X-Gmail-Original-Message-ID: <CAMRc=Mey1em0BBUUuyLTpVfq8u4Xn8jZMhE4g+HpdrojZ8MXEQ@mail.gmail.com>
X-Gm-Features: AVVi8CflDzWyc0cIuHDaH0TTpmlFBQDWQvxDBA8MQsFXpL6lUrYdBoN6qFDa_4c
Message-ID: <CAMRc=Mey1em0BBUUuyLTpVfq8u4Xn8jZMhE4g+HpdrojZ8MXEQ@mail.gmail.com>
Subject: Re: [PATCH 1/9] dt-bindings: phy: sc8280xp-qmp-pcie: Document Shikra
 PCIe phy
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

On Tue, 30 Jun 2026 21:02:43 +0200, Sushrut Shree Trivedi
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

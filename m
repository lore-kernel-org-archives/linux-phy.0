Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2248ECD5BD5
	for <linux-phy@archiver.kernel.org>; Wed, 27 May 2026 09:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SnNaTwfD1dXVGREr6WNDeuy74p2MTYCHoeiiYeSM6eY=; b=olc7hAvdIyvf0Q
	BuVNpjiIkMqwwkxEZFLzus9zVBei0F+trUWbh64BcnG7Loi8TwDMl10UOYC5H4Oz4QGfbF4LlDO0w
	Mbhs/WRG4+8Qd8sDrCnXap32SZJi4yZWgygN5Jit74wAIoI1YXSjVqiZJ4pVbh45LrmnFRn0u+si9
	wKk3QPzeE7uodGIrcfeVlnPNISpGeC4dZrUMyUpnSF+xnOWYp2MRVF4je/1Nc+omgGx95gl1nTHnI
	a6NLd+6Q8z5h73l41zpQdwYOyd+nEKVSVajeW4A04uev9C7EYWpzHBxEeGgiW4aiVO3R7t+vLuzcg
	/ksZElFIF0RnBX0zTjFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSAqu-00000003feI-2zZM;
	Wed, 27 May 2026 09:47:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSAqr-00000003fdk-1kXM
	for linux-phy@lists.infradead.org;
	Wed, 27 May 2026 09:47:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A9E6A4043F;
	Wed, 27 May 2026 09:47:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B3001F000E9;
	Wed, 27 May 2026 09:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779875220;
	bh=h4ygXi+M61Kh65pAlNbVGkkZk7Opw5+JbN1xsmPciA0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dztGWNBXJlrtM4TSWDh08qXRvph15INJ1Gv5A3AGaywUjyIvqklrgH6H1ao3LPfri
	 j/gEkobn6ZBREZx9MfeRbB5IoFN6NHeGDGJT8KW8YrUUg+QZ9MiTgxpErIak0ulq24
	 UEeZBX3HIJCg4tjmyVIPjyIrF+pXUJWrATBdZwSFbjmSIRhHdZpeJs24t51Bd3BWgz
	 wgY/iST2IURBxtJsYEcDrnbg+l1aIfY9NOsd3bd+jNumZ1iHBmrn3ey5htb5thXccX
	 bcxm04D7kpBhMmeH4LHeF20ECtxKiPbbpLeNABrc9zlGKrTT6X4Mk5nSLAJEzOkmnb
	 XisbgmYN1Mg+A==
Date: Wed, 27 May 2026 11:46:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pratham Pratap <pratham.pratap@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>, Johan Hovold <johan+linaro@kernel.org>, 
	Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Abel Vesa <abel.vesa@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: phy: qcom,qcs615-qmp-usb3-dp-phy:
 Add support for Shikra
Message-ID: <20260527-lucky-porcelain-bullfrog-185f1d@quoll>
References: <20260526184401.3959717-1-pratham.pratap@oss.qualcomm.com>
 <20260526184401.3959717-3-pratham.pratap@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260526184401.3959717-3-pratham.pratap@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_024701_499704_C4714FBF 
X-CRM114-Status: GOOD (  18.62  )
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

On Wed, May 27, 2026 at 12:13:59AM +0530, Pratham Pratap wrote:
> From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> 
> Declare the USB QMP Phy present on Shikra SoC. On this SoC, although
> there are DP registers, the required internal pins have been removed
> and hence DP wouldn't be operational.
> 
> Shikra needs 3 resets (dp/ phy/ phy_phy) to be asserted and de-asserted
> as per hardware recommendation. Extend the bindings to accommodate the
> additional reset.
> 
> Use QCS615 as a fallback since the software interface is compatible with
> Shikra.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> Signed-off-by: Pratham Pratap <pratham.pratap@oss.qualcomm.com>
> ---
>  .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml    | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
> index efb465c71c1b..65ae4c6e09db 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
> @@ -16,8 +16,12 @@ description:
>  
>  properties:
>    compatible:
> -    enum:
> -      - qcom,qcs615-qmp-usb3-dp-phy
> +    oneOf:
> +      - items:
> +          - enum:
> +              - qcom,shikra-qmp-usb3-dp-phy
> +          - const: qcom,qcs615-qmp-usb3-dp-phy
> +      - const: qcom,qcs615-qmp-usb3-dp-phy
>  
>    reg:
>      maxItems: 1
> @@ -33,12 +37,15 @@ properties:
>        - const: pipe
>  
>    resets:
> -    maxItems: 2
> +    minItems: 2
> +    maxItems: 3

So QCS615 has three resets now? This needs to be explained in the commit
msg. Or fixed with constraints, see writing bindings.

>  
>    reset-names:
> +    minItems: 2
>      items:
>        - const: phy_phy
>        - const: dp_phy
> +      - const: phy

Not phy_phy_phy? Joking aside, you already have a phy - "phy_phy" - so
this is not correct name. I don't know what is the correct name, though.
Please consult device manual.


>  
>    vdda-phy-supply: true
>  
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B9ECC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 05:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9O6N3ooEdd4t2FaM860UTGtAZqwl1Gswv1lt61vfdPQ=; b=uWYLw8+Fcsntsr
	CgrrIUIE2XNd27KQ+z9Fjm6uSK/oF793kh8QXGUYsQxiMI/wQ4tfEVtAcL4pQSIzBN52kHcsZjG9H
	ZL4wTVrQ1gkt+7kUfSvSO/zdnUjj33+3p/Djzi0lskkdsrafkKy24SPECm+nIn1fgfOxMPuv0wb/O
	oRG3WHQV6uKcumJSP5PVKjXsAOWagp2+UZCdYKasO13t49U878lA/SV7cwRQvd7D+ja/1LkrrvRTC
	OK87s2Wj6utsNNd8/kdoqPmy8ZHbrk7FuDUgPe+0DtWyHRNy0BD+qCUJbu0oO3pvkFVfZTgYJX2jq
	wh+0BJoVWHjOcSs/yZ0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8ayI-00EdUf-GV; Tue, 05 Jul 2022 05:19:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8ayF-00EdSu-Kd
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 05:19:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A6EB560B83;
	Tue,  5 Jul 2022 05:19:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E207C341C7;
	Tue,  5 Jul 2022 05:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1656998370;
	bh=Nan9B/WhP+R80VxCKfZuBKrlbu2KTkNVySZBPTQurr4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iDpdLIwL2W9I72GrLDRGUChEUERlHuAVoGfvfNCN1x6TXDlgw7YDLGnSq3RXmw+LS
	 MEYpmdBgAhZs2XbSKEDhXvXKtzHiX9UOx3lRjwPKi7oOUxmD3yHYZzeD5TkpJVXoyE
	 feE9Uh3m9NJ8FHM3cTYUB2roORHtAipczvvw8MoCNO5rcmxsJ3MZTEeXNj8oQSLNzM
	 RGQapQE8jbfrUonx55SR15avYqRpPosB3M2TOhE5GSwfDbXmPfsyqyPlXG7jZgEsri
	 9Fk1CJgZ87eZhPQBCwYq8nJRt09onEjvCR/FCI1S7U9fe6lYVCLSyJVQClTRC3v3nW
	 77R30MRF/uR+Q==
Date: Tue, 5 Jul 2022 10:49:25 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Stephen Boyd <swboyd@chromium.org>, David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,hdmi-phy-qmp: add
 clock-cells and XO clock
Message-ID: <YsPJ3Z5+N4ZmCmcS@matsya>
References: <20220704161148.814510-1-dmitry.baryshkov@linaro.org>
 <20220704161148.814510-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220704161148.814510-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_221935_764886_8C3AB4E8 
X-CRM114-Status: GOOD (  16.75  )
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

On 04-07-22, 19:11, Dmitry Baryshkov wrote:
> As the QMP HDMI PHY is a clock provider, add constant #clock-cells
> property. For the compatibility with older DTs the property is not
> marked as required. Also add the XO clock to the list of the clocks used
> by the driver.

Acked-By: Vinod Koul <vkoul@kernel.org>

> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../bindings/phy/qcom,hdmi-phy-qmp.yaml           | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
> index eea2e02678ed..83fe4b39b56f 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
> @@ -28,12 +28,15 @@ properties:
>        - const: hdmi_phy
>  
>    clocks:
> -    maxItems: 2
> +    minItems: 2
> +    maxItems: 3
>  
>    clock-names:
> +    minItems: 2
>      items:
>        - const: iface
>        - const: ref
> +      - const: xo
>  
>    power-domains:
>      maxItems: 1
> @@ -44,6 +47,9 @@ properties:
>    vddio-supply:
>      description: phandle to VDD I/O supply regulator
>  
> +  '#clock-cells':
> +    const: 0
> +
>    '#phy-cells':
>      const: 0
>  
> @@ -75,9 +81,12 @@ examples:
>                    "hdmi_phy";
>  
>        clocks = <&mmcc 116>,
> -               <&gcc 214>;
> +               <&gcc 214>,
> +               <&xo_board>;
>        clock-names = "iface",
> -                    "ref";
> +                    "ref",
> +                    "xo";
> +      #clock-cells = <0>;
>        #phy-cells = <0>;
>  
>        vddio-supply = <&vreg_l12a_1p8>;
> -- 
> 2.35.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

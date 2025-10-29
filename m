Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B88F6CCF9F0
	for <linux-phy@archiver.kernel.org>; Wed, 29 Oct 2025 16:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X6IKHWIbaqdH/QmyEC2Ow+mI0pZrFoAcc6kKM+d5mTs=; b=pmJyujBkSEMN4D
	VbHzPM50JcjHS1bRHqici/gLyHHFEX9u3cqmT0THJsjCcPmINJv2m4OQI35Dx5tRQrnZ5aSkrtzoE
	bG/UTZBtxiSLhkUx0TByb8KTk+9lBSa4mNJLT/OPLwi9V7gB0jWc3QvbfGIrcXERqz+GV33vAEYGp
	lT2Zjh9ljkKORVgvEhZpK+fwyRpikwHYGO+ZE/cBc5HTu36mcdBGuAu0ZMfgS/8kke2rIxtClz/ZE
	fY3qk5gJIF+vFVm+V4L4hEv7HWZ9B9jo+HtC2yGSt2K4ZlD/alwMk71VnbBquzwNE0WYVb8SJHOYJ
	UilrSP3ML0VuOWDS7oKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE99M-000000022uQ-1Gw4;
	Wed, 29 Oct 2025 16:35:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE99L-000000022td-190k
	for linux-phy@lists.infradead.org;
	Wed, 29 Oct 2025 16:35:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B07A860462;
	Wed, 29 Oct 2025 16:35:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E62C7C4CEF7;
	Wed, 29 Oct 2025 16:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761755750;
	bh=0Q/PAlu4iZpIV82jD8k6dHiUKuoh4pHxPPcM4tcBUsY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NgRt2n9HgH0vRqHxYhz3Lr6TAKP7un3xcoHpbjA68R4zjHC13K1RpKfPjRcI5jkgH
	 OlAsl5JDVWs02TZVc+yFC3F6vE8zR/tk1TYtUewekNtDP7xy5R2hYHCEJ6DF5VjGiJ
	 4fBaTv0nhLlEW3uVCvERmjhi0B0SpoKuIoRu/5uwRWLB8q2c22nrnB3LSaG3u9ci4R
	 tski/s7RMLi4hlefwtjE6fvEsWnBP5qOi7WuL48ETkAC7S1gHu42GDlsZasAJIPilg
	 k8b41RLT4IQSn/2r3OliTsdYWOXJAGNEHkcXPw49wn9b305spnHbwwhYK1gSB4tATc
	 OM3mD/z5ozVhQ==
Date: Wed, 29 Oct 2025 11:38:53 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rajendra Nayak <quic_rjendra@quicinc.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: qcom-edp: Add missing clock for
 X Elite
Message-ID: <bncdkcnbqnlz4rj5yhtgeey5d2ksuwpz7ms7kvkjci3p4gdtt4@e54svrukfobu>
References: <20251029-phy-qcom-edp-add-missing-refclk-v4-0-adb7f5c54fe4@linaro.org>
 <20251029-phy-qcom-edp-add-missing-refclk-v4-1-adb7f5c54fe4@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251029-phy-qcom-edp-add-missing-refclk-v4-1-adb7f5c54fe4@linaro.org>
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

On Wed, Oct 29, 2025 at 03:31:30PM +0200, Abel Vesa wrote:
> On X Elite platform, the eDP PHY uses one more clock called ref.
> 
> The current X Elite devices supported upstream work fine without this
> clock, because the boot firmware leaves this clock enabled. But we should
> not rely on that. Also, even though this change breaks the ABI, it is
> needed in order to make the driver disables this clock along with the
> other ones, for a proper bring-down of the entire PHY.
> 
> So attach the this ref clock to the PHY.
> 
> Cc: stable@vger.kernel.org # v6.10
> Fixes: 5d5607861350 ("dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles")
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

> ---
>  .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
>  1 file changed, 27 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index eb97181cbb9579893b4ee26a39c3559ad87b2fba..bfc4d75f50ff9e31981fe602478f28320545e52b 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -37,12 +37,15 @@ properties:
>        - description: PLL register block
>  
>    clocks:
> -    maxItems: 2
> +    minItems: 2
> +    maxItems: 3
>  
>    clock-names:
> +    minItems: 2
>      items:
>        - const: aux
>        - const: cfg_ahb
> +      - const: ref
>  
>    "#clock-cells":
>      const: 1
> @@ -64,6 +67,29 @@ required:
>    - "#clock-cells"
>    - "#phy-cells"
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - qcom,x1e80100-dp-phy

Don't we have the refclk on all the other targets as well?
I think we should proceed as you propose here, and if this is the case,
revisit the other targets.

Regards,
Bjorn

> +    then:
> +      properties:
> +        clocks:
> +          minItems: 3
> +          maxItems: 3
> +        clock-names:
> +          minItems: 3
> +          maxItems: 3
> +    else:
> +      properties:
> +        clocks:
> +          minItems: 2
> +          maxItems: 2
> +        clock-names:
> +          minItems: 2
> +          maxItems: 2
> +
>  additionalProperties: false
>  
>  examples:
> 
> -- 
> 2.48.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

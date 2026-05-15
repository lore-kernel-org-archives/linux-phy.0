Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05AC0CD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 08:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWpokoQwl/MrfeVnESBKFnJKLZZVGqtfWk7XLQrB/mg=; b=2PyzoSgNtssxyb
	3yDl0PTcRlWn/b3kW+ph0pxlrcZrJpGObNTzkzbVz/yx4skIRZmM8Tml6e4b+upxiD+/lfUbsNRJZ
	glK0sc6lypopoL5HhAB4xAyzBPS5nilL6DQ5QNteGYRTvB3PdovljEm79KnuSeWBkEkKHcYalx4rA
	9SC7RkbnvuwSaAOT3Be3iAp0Ag4BkA19hg/DGoH8xG0JMY7rKbNOjsj/ZHOwM9Bn+qtCXqdJgGmle
	KF867dmkVVJyOHH6eOIH5ADYn8H+W4ykryJWsliQDse2zegjc5DRFDNoyShOz1CY3uzuKiQrrZib7
	VRx2OTl52FfthygUvFAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNoGj-00000007mzZ-2BhV;
	Fri, 15 May 2026 08:51:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNoGi-00000007mzM-3wyp
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 08:51:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id F40C760252;
	Fri, 15 May 2026 08:51:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26B1DC2BCB8;
	Fri, 15 May 2026 08:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778835099;
	bh=GUDh7csve5Af1Ir+XPRcGhmpi3nn8y3D30mqwIhD+Co=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jvv1IfIX+ZBhMY8G9UetoR0uoqNjjcFeLAt3il2BC9JTuHY5MInnFdXZ5tUb8PqHg
	 qL3Xbyjy71xJ/jvam8M6axLkhOvI6jzCyY7lGZ6WYdD3tpb3boP8hVOIR66iwTPMlA
	 HSwD7I0xlCK7EYN19OEcbZxL3TeaRPzBBzQ2goIi8465urOFKL2mjRuW+J5zfmgyzA
	 ucOcDbsmWZszBqMwHqXhVa/dF3Y0+vGxMLPOEG8nKligwC/Im8jTjKaL+XLaRzK/ej
	 BfR/HZIkCLqLHchBHpMh/+pO2dxC4ExCtzME8dHmkZddGZUzepO7ryBrsEFq3+Fr6b
	 F4W/OWdBBTUhw==
Date: Fri, 15 May 2026 10:51:37 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-mmc@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: arm: qcom: Document Shikra and its EVK
 boards
Message-ID: <20260515-pumpkin-cuscus-of-expression-cec1ea@quoll>
References: <20260512-shikra-dt-v1-0-716438330dd0@oss.qualcomm.com>
 <20260512-shikra-dt-v1-1-716438330dd0@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260512-shikra-dt-v1-1-716438330dd0@oss.qualcomm.com>
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

On Tue, May 12, 2026 at 09:38:04AM +0530, Komal Bajaj wrote:
> Shikra is a Qualcomm IoT SoC available in a System-on-Module (SoM)
> form factor. The SoM integrates the Shikra SoC, PMICs, and essential
> passives, and is designed to be mounted on carrier boards.
> 
> One SoM variant is introduced:
>   - CQM: retail variant with integrated modem (PM4125 PMIC)
> 
> Two EVK boards are supported:
>   - shikra-cqm-evk: pairs with the CQM SoM
>   - shikra-cqs-evk: pairs with the CQM SoM, with no modem support

s/CQM/CQS/

but anyway I would prefer to use full product names from
include/dt-bindings/arm/qcom,ids.h (so CQXXXXM).

> 
> Each EVK provides debug UART, USB, and other peripheral interfaces.
> 
> Add compatible strings for the CQM SoM variant and its two
> corresponding EVK boards.
> 
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index 2741c07e9f41..f041d71d7957 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -963,6 +963,13 @@ properties:
>            - const: qcom,qcs9100
>            - const: qcom,sa8775p
>  
> +      - items:
> +          - enum:
> +              - qcom,shikra-cqm-evk
> +              - qcom,shikra-cqs-evk
> +          - const: qcom,shikra-cqm-som

This is not accurate. The SoM has physically different SoC - either CQM
or CQS. You either need two lists, like Toradex is doing (e.g.
toradex,verdin-imx95), or enum in the middle of the lists, like Renesas
is doing (e.g. renesas,rzt2h-evk).

I prefer the first option, so Toradex choice.

But for sure you do not get the third solution... Really, you are not
supposed to invent these things, but look at existing solutions (and I
was mentioning Toradex during internal meetings whenever someone asked
me how the SoM and carrier should be organized).

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

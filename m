Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B93BEC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 25 Nov 2022 10:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GWjtQJDBLmlm8OFS93TsWi1agEw483KLTATkIiBlb0U=; b=sx3//ugzYrXZCY
	Pw5aq+uoVB6/PDIX2/wnNqmAWbvvRBYa66Mpw2De+i/lFf6TxF/hGY8F0vZf2niptbpWfs2L19zrS
	aCjJAZw7X/5RsZkwLdbLRV/sbdArXYhJtXVQhkRk8HvlXkd1gKAHOYguLaFaWrJ5kDZlcl06czOiK
	H43GQ4SAE2xi0EWZNxXdktYwNccxICG+AwvgLPvfwshyhibFG44XFkudzNpNfv92QRzmWSw/9Fku8
	OQUK7BrqckGxqQRd6RmngLZI8IhE/GKCxbALAZLATyiAcj81binVkIyj9pLA7t7H1D+fe5ylADrLX
	R5ULTY/DLUP7CAz7pBJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyVli-00FIzu-2D; Fri, 25 Nov 2022 10:17:14 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyVMX-00F6Xi-Rk
	for linux-phy@lists.infradead.org; Fri, 25 Nov 2022 09:51:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id C0EDEB82A2E;
	Fri, 25 Nov 2022 09:51:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68E3EC433C1;
	Fri, 25 Nov 2022 09:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669369870;
	bh=EIs+1tSl2se+1S6jtiJO/zNYFoaJRPtl7dW2rnAh200=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ca2Sde3jfuFoOKzqrt0YRLMRyn1/QRJn9ASVpvW/Ldql5wYfi/HteTffTD79Xz5je
	 A9sKYTMudYBZhT3nPS+3TRUrKOkpHWoUeUBmvqfJeA7T1+FWrcbChVi6qfHoecpXsc
	 XtCmnlHmS3G4kqvZhKOQOyabasIQe4j9gzJqf4yqlsdz3alw1fna2qNV8MRvgDFKCi
	 6j/g7vJtl5mzCsSN3pzOpivdhgVDfyKFgW32LuyH5BrCJgxL1Valo/vBxOHf96KPNw
	 xwjUbSW0PgFGqujHJna+RFp4mftZcut9OGv7ZgFe9EqS+t49eRJkDJK9GyKgybcAQz
	 5DpRcJsj/jpQA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oyVM5-00027x-2U; Fri, 25 Nov 2022 10:50:45 +0100
Date: Fri, 25 Nov 2022 10:50:45 +0100
From: Johan Hovold <johan@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v2 1/3] dt-bindings: phy: qcom,qmp-usb3-dp: Add
 sm6350 compatible
Message-ID: <Y4CP9fwhDXsLu57Q@hovoldconsulting.com>
References: <20221125092749.46073-1-luca.weiss@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221125092749.46073-1-luca.weiss@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221125_015114_300787_7F4529F5 
X-CRM114-Status: GOOD (  23.78  )
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

On Fri, Nov 25, 2022 at 10:27:47AM +0100, Luca Weiss wrote:
> Add the compatible describing the combo phy found on SM6350.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
> @Johan Hovold, I've sent this v2 as RFC because there are several things
> where I have questions on how it should be done.
> 
> In this patch, you can see there's cfg_ahb (&xo_board) and power-domains
> is not set. In msm-4.19 &gcc_usb30_prim_gdsc is only used in the
> ssusb@a600000 node, or should I also add it to qmpphy?

Yeah, you may need to add a platform specific section of the clocks,
which appear to be different, even if I'm not sure they are currently
described correctly (xo_board as cfg_ahb and "QLINK" as ref). How are
they named in the vendor's dts?

It should be OK to include the power-domain also for the PHY node.

>  .../bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml          | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index 6f31693d9868..3e39e3e0504d 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -17,16 +17,18 @@ properties:
>    compatible:
>      enum:
>        - qcom,sc8280xp-qmp-usb43dp-phy
> +      - qcom,sm6350-qmp-usb3-dp-phy
>  
>    reg:
>      maxItems: 1
>  
>    clocks:
> -    maxItems: 4
> +    maxItems: 5
>  
>    clock-names:
>      items:
>        - const: aux
> +      - const: cfg_ahb
>        - const: ref
>        - const: com_aux
>        - const: usb3_pipe

So this would need to be moved to an allOf: construct at the end with
one section each for sc8280xp and sm6350.

> @@ -61,7 +63,6 @@ required:
>    - reg
>    - clocks
>    - clock-names
> -  - power-domains
>    - resets
>    - reset-names
>    - vdda-phy-supply

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

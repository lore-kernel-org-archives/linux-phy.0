Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B54B6C47075
	for <linux-phy@archiver.kernel.org>; Wed, 15 Nov 2023 07:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWcwHs/ebmmrV/a/owDP+xn+woOUrElsj9mGjynmCXg=; b=PkdKLT1qyHgsRk
	S1HixZIV8p9kZyJt4SK1tPTD5oRUfdkLt25MtKWJy5UkGZGV4wsyVszj4LsNjsqLVBMiRz5FAQDpQ
	1jh9cGO8fydV0iY3IW5r0jmmuOtGTuMG/l0ti/ofDV/oDHE9ECfOltkZvkJZZ+9154cclZeyWPAOg
	OL+mPD+boMpuJJSppOyZBZ9Ve9n59y0lJzdZvXaQewY/wgNnhrQa/5dfFJmuCu5Wm4AFU34WiDAeC
	Cn3nN4XQoo11cMPMEo5caebF/wvmqFsFfp/jxKyuZbMFQ4QkxXQv4UxAkTJ0nSGkY829UzYSHlb/9
	jNnhh0Z5sTsOeRoAyeyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3A82-00075x-1L;
	Wed, 15 Nov 2023 07:16:02 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3A7z-00073d-2a
	for linux-phy@lists.infradead.org;
	Wed, 15 Nov 2023 07:16:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id E2ADEB818CA;
	Wed, 15 Nov 2023 07:15:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38327C433CB;
	Wed, 15 Nov 2023 07:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700032557;
	bh=MqgzQQOu8k3naqWebde+daNwOSL9eli/d3myBSRtR24=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e7UTwy6SU73judLJIIm68X2W3qJppWcb4CM6fOQeLWa1Gt5Ev0KQk9ojN9NCJtKjR
	 Hw7u1aLwf0STckZ98EOd1CAnDPmo9QR1Xv4a2HnsKxOny5Kg/vwIphr17srpvZuqtF
	 e9471oeN9SFLWOSE8IFejUUd2O//US+rmSWJISf+XCGKfDv6t2254rKR0TCoE02qNb
	 tSpGvM0FrlP4Bi14MHQvSrOAZgvkmYprfwnWA0PGqYgQU0QmEYUd43Ls8pguP/Y8G4
	 URBRg8WM/i+kl+dzhGJyMkZqY5LqzW39fq+kB0e7NlixQ5LiAvAq6dNtBqvcPYyWle
	 8ZB3rR7YqE/DQ==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan@kernel.org>)
	id 1r3A7t-0007rg-2A;
	Wed, 15 Nov 2023 08:15:53 +0100
Date: Wed, 15 Nov 2023 08:15:53 +0100
From: Johan Hovold <johan@kernel.org>
To: Elliot Berman <quic_eberman@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: Document sm8450 pcie phys as having 4
 clocks
Message-ID: <ZVRwKaUTDBaYsnQS@hovoldconsulting.com>
References: <20231103230339.966792-1-quic_eberman@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231103230339.966792-1-quic_eberman@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_231559_987967_1FBC0921 
X-CRM114-Status: GOOD (  16.37  )
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

On Fri, Nov 03, 2023 at 04:03:38PM -0700, Elliot Berman wrote:
> I noticed while running make dtbs_check that
> qcom,sm8450-qmp-gen3x1-pcie-phy and qcom,sm8450-qmp-gen4x2-pcie-phy have
> 4 clocks, not 5. There was also a typo for the 8450 bindings:
> s/gen3x2/gen4x2/.
> 
> Update the bindings to reflect the correct number of required clocks.
> 
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Fixes: 505fb2541678 ("dt-bindings: phy: migrate QMP PCIe PHY bindings to qcom,sc8280xp-qmp-pcie-phy.yaml")
> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index 2c3d6553a7ba..1768f2016a9f 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -128,6 +128,20 @@ allOf:
>          reg:
>            maxItems: 1
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sm8450-qmp-gen3x1-pcie-phy
> +              - qcom,sm8450-qmp-gen4x2-pcie-phy
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 4
> +        clock-names:
> +          minItems: 4
> +

I'm not sure which tree you think you're looking at but this is clearly
not correct.

The phy nodes in arch/arm64/boot/dts/qcom/sm8450.dtsi have five clocks
defined.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

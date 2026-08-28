Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBCC2C61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 09:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5HlbqmnRoRvCUHGKK6xaBtpwNcTq2u/JASDZCj0bNFs=; b=cbqqdYxe5hMcRu
	ZhKN6X5kTOBj1bOJWw6z1zxP0er5yd6abUdrNQwZfbpAOvb7XQffJfvEknn1dodG/99RdixSn34x5
	CEaBNPWHFF5JgM7tIURI0GNdxlyM243nAtnsadPu3m2uFLzvXLH/C1jqIpaXHQykhhAfqF7dcl0hf
	gFQGzM6U8NNZyUHJR2zb16yM7W56ZDI5YlQNIINxoUi1Rq1bMYuR1K0Q13/ZTPL8+gio9+2WgpsaM
	MTGlRXFYPwdytk3TmPYN2k6ydv58vxWF8wZUCoV0yzYZEfY7WAFA2Ap2p/CmmmJNbAy5zc+uk5yxD
	GQFra71HYcjEHI0VzqVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzt0i-00000005UVN-0fZ3;
	Fri, 28 Aug 2026 09:36:32 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzt0e-00000005UUP-0s4Q
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 09:36:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 82E0C601F5;
	Fri, 28 Aug 2026 09:36:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 584221F000E9;
	Fri, 28 Aug 2026 09:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787909787;
	bh=MwjUAXNUUvz4D6ldzo7m5AsPVasm7oVJK4lkRaOM9Xk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=IJEvjfWqdXlStH93ycQd1tqLvl+vtd1gRjU9Xt0UMNq98BolvrQ3O7MqHpoqqJFH1
	 xQg2NPYkhkijl3LzoMhXFEnkgPvEoaYo7FeZ5k9qngwtt7x0Liz9AO0FjRZpo6UF7r
	 5yExlEtCBu6C02mbJ6s10cZ+qxv3lGvE/NfVj4QVbmUktAm89wWDrEZDXg2/+40tqG
	 u6uqr4PnFIPJ5JfX3T/vOkWWaVw2Vc3P86zNPNYnTWg62I8ubjnR/hynb0Ej/PggNa
	 rMDiPWlfSeHKaWB0YrDB+Wx9m2WhLSiAdz+nA2VlDI3ByFA5dN7XKpoWzJqhgq/+Yl
	 tlfmpXuIvDzNw==
Date: Fri, 28 Aug 2026 11:36:23 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 IPQ9650 compatible
Message-ID: <20260828-encouraging-cricket-of-energy-1b96c1@quoll>
References: <20260824-phy-v1-0-257d68a3210b@oss.qualcomm.com>
 <20260824-phy-v1-2-257d68a3210b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260824-phy-v1-2-257d68a3210b@oss.qualcomm.com>
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

On Mon, Aug 24, 2026 at 12:07:42PM +0530, Varadarajan Narayanan wrote:
> Document the IPQ9650 USB high-speed PHY compatible. The PHY uses the SNPS
> HS 6 nm PHY fallback, so allow it in the binding.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> index 661759b25064..405bfad2080e 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> @@ -20,6 +20,10 @@ properties:
>                - qcom,sa8775p-usb-hs-phy
>                - qcom,sc8280xp-usb-hs-phy
>            - const: qcom,usb-snps-hs-5nm-phy
> +      - items:
> +          - enum:
> +              - qcom,ipq9650-usb-hs-phy
> +          - const: qcom,usb-snps-hs-6nm-phy

I would prefer if we stop adding more generic nm-process-based
compatibles and use SoC based ones. Both as front and fallbacks, for new
devices. I know it will be inconsistent, but OTOH each of such pattern
encourages people to replicate it in new bindings.

Therefore, add simple enum at the beginning of the oneOf like:

oneOf:
  - enum:
      - qcom,ipq9650-usb-hs-phy
  - items:
       ....
     - const: qcom,usb-snps-hs-5nm-phy

>        - items:
>            - enum:
>                - qcom,qcs8300-usb-hs-phy
> 

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0525CA0EDC
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 15:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUcW4JjOM4/Jc56M80a22GyZYFicwHFmZHpisMRckx0=; b=cdcelaXc4OTmUV
	BFGdWe13IU1YQzJ3NkvPV2EMv8DZgTQAia8RSVeUa6ll9Ha9q137ePPc/gH8uV/CkVKizSQ7GrYKQ
	cXDOYOw5i1R0irF2qwJw2QwF6/CzOMiai349zfpGQN3Q0wosTekqw8CTWcgdoy94L1xWrHhm+GeP1
	vnS8K7dsWh9LmQG+bcC2PTatN0xACDIh1crnqOgjxH1uF6C9sINanO8md6V5iNXMTgjmVBigDN029
	LBl1789EDuvJ4SUsCYe5c+gdew64D0FSbHY6OUevd+wg53hZ4hXxdaP0FX6V3A3euF+CNbjMlzqqS
	B1L5SRFhfBqKJ+y0ix5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umZnG-0000000HQFG-2KTU;
	Thu, 14 Aug 2025 15:23:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umYlB-0000000HDFb-3znX
	for linux-phy@bombadil.infradead.org;
	Thu, 14 Aug 2025 14:16:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=vV6wVTLTtC47m8MAGeIMhZGYTNk3AK0p6ajLjVn9TFk=; b=VSXk3KLPtk33rGTnQQ8/0kI995
	EeKodNhUIKzTSPvvBjNWyE4S+/dbz07SCS0MXVf5trIK5HXiugyM7QyfYl5YiWfYsY4GTrNfsjGG5
	yFBKVqpvVLOdGkAZjc+ESVwHo6wYs0QPsCFPcdM/Tx1ePffWuU3xheKiLBVTbN83+x8MD8k8yzgYr
	Bv/8STEL1zZIDqMtJ6UUy4kOAZVbAeXGnuO/hnanX1UcDhTAfIYUFKtrxUAIwBSAdKEp9WddItrur
	dT/cLon6aXwBFAH6ziabHcT7cxYwPSxwZi3YrZG7Uq60HgQD6hCxgr5FzSNIuBzIPxkJUDa6otpce
	vVsN8PPA==;
Received: from nyc.source.kernel.org ([147.75.193.91])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umYl8-0000000GRHP-0n6j
	for linux-phy@lists.infradead.org;
	Thu, 14 Aug 2025 14:16:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 3F847A54976;
	Thu, 14 Aug 2025 14:16:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05C30C4CEEF;
	Thu, 14 Aug 2025 14:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755181005;
	bh=S7GgsxcKNtoORFbwkhFg/o2U/CGUU4Ner6zZ/evpaAo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SvihKLFO0reZ3355bGC3y/5Gq4H1ugK95PWcRDdlSxGJbhRdcR0O+V4/7Bh5WRptU
	 GV7EcxnYeZTVcDYJnqTPYlEy7bkxB10kCMBzJ4Zr0VRwrCygXo0CN1FnUlRkavnM08
	 jxldecqZWVvF95995uDgTIgI/IFXGl4RxGLnhyAFbFmyFWCa5BZQ+vBqOqD2vd4kTh
	 oCmFaeOUwBZzBSu54nhoPeBBT1J/tNUezQYn7X4sZUJngN9SplYGnBd4rILKQUfvT5
	 XTqU3y8pB4J+Tp7ze7yAftyrB5USXx4d2dZfaEmTs/CxVmFautbuxyfjjV5A9CTakd
	 spnRZK5r318EQ==
Date: Thu, 14 Aug 2025 09:16:43 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document SC7280 PCIe0 phy
Message-ID: <yncizuu6bhr3xvuzkb5xri4gh6mdjg4r4d4nkufgxxpquetyir@kiagpup6wqgx>
References: <20250812-sc7280-v2-0-814e36121af0@oss.qualcomm.com>
 <20250812-sc7280-v2-1-814e36121af0@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250812-sc7280-v2-1-814e36121af0@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_151650_503660_64758B4E 
X-CRM114-Status: GOOD (  14.13  )
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

On Tue, Aug 12, 2025 at 07:26:44PM +0530, Krishna Chaitanya Chundru wrote:
> SC7280 PCIe0 PHY is functionally compatible with the SM8250 Gen3 x1 PCIe
> PHY. To reflect this compatibility, update the binding schema to include
      ^--- I think here would be a good place to break for a new
           paragraph, to give separation between problem description and
	   solution description.

> qcom,sc7280-qmp-gen3x1-pcie-phy using enum within a oneOf block, while
> retaining qcom,sm8250-qmp-gen3x1-pcie-phy as a const.
> 

Isn't this the case for &pcie1 as well? If so, can you please fix both?


Also, before we do that, the fact that they are "functionally
compatible", can you confirm that these two platforms really has the
same PHY settings?

Regards,
Bjorn

> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 69 ++++++++++++----------
>  1 file changed, 37 insertions(+), 32 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index a1ae8c7988c891a11f6872e58d25e9d04abb41ce..1e08e26892f7b769b75bb905377d30a301e6631c 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -15,38 +15,43 @@ description:
>  
>  properties:
>    compatible:
> -    enum:
> -      - qcom,qcs615-qmp-gen3x1-pcie-phy
> -      - qcom,qcs8300-qmp-gen4x2-pcie-phy
> -      - qcom,sa8775p-qmp-gen4x2-pcie-phy
> -      - qcom,sa8775p-qmp-gen4x4-pcie-phy
> -      - qcom,sar2130p-qmp-gen3x2-pcie-phy
> -      - qcom,sc8180x-qmp-pcie-phy
> -      - qcom,sc8280xp-qmp-gen3x1-pcie-phy
> -      - qcom,sc8280xp-qmp-gen3x2-pcie-phy
> -      - qcom,sc8280xp-qmp-gen3x4-pcie-phy
> -      - qcom,sdm845-qhp-pcie-phy
> -      - qcom,sdm845-qmp-pcie-phy
> -      - qcom,sdx55-qmp-pcie-phy
> -      - qcom,sdx65-qmp-gen4x2-pcie-phy
> -      - qcom,sm8150-qmp-gen3x1-pcie-phy
> -      - qcom,sm8150-qmp-gen3x2-pcie-phy
> -      - qcom,sm8250-qmp-gen3x1-pcie-phy
> -      - qcom,sm8250-qmp-gen3x2-pcie-phy
> -      - qcom,sm8250-qmp-modem-pcie-phy
> -      - qcom,sm8350-qmp-gen3x1-pcie-phy
> -      - qcom,sm8350-qmp-gen3x2-pcie-phy
> -      - qcom,sm8450-qmp-gen3x1-pcie-phy
> -      - qcom,sm8450-qmp-gen4x2-pcie-phy
> -      - qcom,sm8550-qmp-gen3x2-pcie-phy
> -      - qcom,sm8550-qmp-gen4x2-pcie-phy
> -      - qcom,sm8650-qmp-gen3x2-pcie-phy
> -      - qcom,sm8650-qmp-gen4x2-pcie-phy
> -      - qcom,x1e80100-qmp-gen3x2-pcie-phy
> -      - qcom,x1e80100-qmp-gen4x2-pcie-phy
> -      - qcom,x1e80100-qmp-gen4x4-pcie-phy
> -      - qcom,x1e80100-qmp-gen4x8-pcie-phy
> -      - qcom,x1p42100-qmp-gen4x4-pcie-phy
> +    oneOf:
> +      - items:
> +          - const: qcom,sc7280-qmp-gen3x1-pcie-phy
> +          - const: qcom,sm8250-qmp-gen3x1-pcie-phy
> +      - items:
> +          - enum:
> +              - qcom,qcs615-qmp-gen3x1-pcie-phy
> +              - qcom,qcs8300-qmp-gen4x2-pcie-phy
> +              - qcom,sa8775p-qmp-gen4x2-pcie-phy
> +              - qcom,sa8775p-qmp-gen4x4-pcie-phy
> +              - qcom,sar2130p-qmp-gen3x2-pcie-phy
> +              - qcom,sc8180x-qmp-pcie-phy
> +              - qcom,sc8280xp-qmp-gen3x1-pcie-phy
> +              - qcom,sc8280xp-qmp-gen3x2-pcie-phy
> +              - qcom,sc8280xp-qmp-gen3x4-pcie-phy
> +              - qcom,sdm845-qhp-pcie-phy
> +              - qcom,sdm845-qmp-pcie-phy
> +              - qcom,sdx55-qmp-pcie-phy
> +              - qcom,sdx65-qmp-gen4x2-pcie-phy
> +              - qcom,sm8150-qmp-gen3x1-pcie-phy
> +              - qcom,sm8150-qmp-gen3x2-pcie-phy
> +              - qcom,sm8250-qmp-gen3x1-pcie-phy
> +              - qcom,sm8250-qmp-gen3x2-pcie-phy
> +              - qcom,sm8250-qmp-modem-pcie-phy
> +              - qcom,sm8350-qmp-gen3x1-pcie-phy
> +              - qcom,sm8350-qmp-gen3x2-pcie-phy
> +              - qcom,sm8450-qmp-gen3x1-pcie-phy
> +              - qcom,sm8450-qmp-gen4x2-pcie-phy
> +              - qcom,sm8550-qmp-gen3x2-pcie-phy
> +              - qcom,sm8550-qmp-gen4x2-pcie-phy
> +              - qcom,sm8650-qmp-gen3x2-pcie-phy
> +              - qcom,sm8650-qmp-gen4x2-pcie-phy
> +              - qcom,x1e80100-qmp-gen3x2-pcie-phy
> +              - qcom,x1e80100-qmp-gen4x2-pcie-phy
> +              - qcom,x1e80100-qmp-gen4x4-pcie-phy
> +              - qcom,x1e80100-qmp-gen4x8-pcie-phy
> +              - qcom,x1p42100-qmp-gen4x4-pcie-phy
>  
>    reg:
>      minItems: 1
> 
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C80EC54FD0
	for <linux-phy@archiver.kernel.org>; Fri, 20 Feb 2026 07:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+/Q5RG3TQ6JVa1EtEoHGwtUq6RC1bbgvrja2gytc78=; b=LLTSZjaOWiYoLJ
	Vi6s2vHntuzA91CEHkPzenmz7ifoVoU9Z+MaxHwAe5h4DAlZpkn7MdsKBfTmK3zpnm2nzhviNB6yS
	YlIjd1zs6b6k7Bdod2JboSeXacbYYft5pcLLfopq6b21/EERJ/NiwwXoXbI2c746oXto6031zvVuM
	HTip8R8TajoCRkJwcV6g11zpSvZgx9Q3JglP9H1GcHP6KXIhzzG+QJ59zftwK6eEc6ScJJOA6oEJ2
	pDKWzO/Hyu3WkE3HODpeP4aU17s58punsKwjMkTNDUjAogmeuIXDdqEO2KtYexuNK2Dy8XxXAwjAC
	jH+3VwZO82pmdIEjJ55Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtLH5-0000000DMoC-2MmS;
	Fri, 20 Feb 2026 07:50:07 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtLH3-0000000DMnm-2xbN
	for linux-phy@lists.infradead.org;
	Fri, 20 Feb 2026 07:50:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AADD940877;
	Fri, 20 Feb 2026 07:50:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F048CC116C6;
	Fri, 20 Feb 2026 07:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771573803;
	bh=9CqEV0xEEvFTXp/6GSO6dribJdzQCXBbPNBbhFU1v1g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tNYbR6AR8DOUNWidy12tXtsOx97WdIYH2gcaoRrvWq528C8Cw7sNSTkPSLrgUVY0g
	 ROmBkT1HGyz0OqU20tmaoLfhLfPwdqq+a/SUKt+nLmITpHnuI+Q+X/+BfLEPAZHvB1
	 Jo9B/N6kyGK3I+TpzuPK4A/tnLUVfOlEqYlAUSenUAR1bvD90eIVQ5rar9YLSmTA32
	 HWbTT+vn/cQZJiP3UtUMu2KO0btKdUiq9jU7NipZyLUtp6t3TOZKy/GIawkh2TAd0S
	 KD36Qr7kM/PTH7BosgfrzCw3ukPR0iECxdGQDkSbpXPBOMU2PuO2DQ34K1GwzAnhvX
	 n0coKc0JvbW5w==
Date: Fri, 20 Feb 2026 08:50:01 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nitin Rawat <nitin.rawat@oss.qualcomm.com>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document
 the Eliza QMP UFS PHY
Message-ID: <20260220-myrtle-pigeon-of-finesse-ab96d0@quoll>
References: <20260219-eliza-bindings-phy-ufs-v1-1-1635e7b53049@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260219-eliza-bindings-phy-ufs-v1-1-1635e7b53049@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260219_235005_772119_03B43126 
X-CRM114-Status: GOOD (  12.18  )
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

On Thu, Feb 19, 2026 at 06:17:11PM +0200, Abel Vesa wrote:
> Document the QMP UFS PHY compatible for the Eliza Platform. It is fully
> compatible with the PHY implemented in SM8650, so use the SM8650
> compatible as fallback.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> index a1731b08c9d1..7120741ea092 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> @@ -16,6 +16,10 @@ description:
>  properties:
>    compatible:
>      oneOf:
> +      - items:
> +          - enum:
> +              - qcom,eliza-qmp-ufs-phy
> +          - const: qcom,sm8650-qmp-ufs-phy

sm8650 > sm6115

Don't break the order.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F356C3ABA2
	for <linux-phy@archiver.kernel.org>; Mon, 16 Sep 2024 14:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFDxpHl0AV+8v08/eKImbnxW0k9A2DfXgIxfk8Lna00=; b=CNQQDRvKicw5A6
	3tIVXWqjeLAIaT3iTi9CCfVFku4IbknNVYz52nOwn4svi+jOxCR/ceFWTBy68t5Q6CQ1e4vdBZWpU
	Vh/flJ0TUJggrO9G6IVjaoCjPv3raGiJKgBjNSImMRxqTNUpETmNDMCmfsRMXf1xPz+xsn3/+SOfa
	c8/Inamw+CpyRaQDUNGyFyyYQnozyURakZVaz1VNu3E9bwX2bPDrVybU8fHq3yaILlgwAL9eUaAUO
	Xib7wOT7wwLQrdZX8DActIGrhazzw4MfxsIP5hev7JXWK+yg48d/fOB2eT4RFUS5udXsPjjs2In82
	duy8cX/GKBH0DpfVfd2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqD6a-00000004GWz-33hH;
	Mon, 16 Sep 2024 14:53:32 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqD6A-00000004GSZ-21Um
	for linux-phy@lists.infradead.org;
	Mon, 16 Sep 2024 14:53:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D1E0AA42911;
	Mon, 16 Sep 2024 14:52:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56461C4CEC4;
	Mon, 16 Sep 2024 14:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726498385;
	bh=ctZwLzZwC/S01hY87aaTXyQxeQL1P/gwLYvLGpwJ9ak=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CzYPAk6vU0dptH0UPZ7h+cKXnSR27tIxN6AzthzifB2bvw+U38KVuOX1ZzHumkhd2
	 P+E1PVKkXedgw0oJXY3T6nZfUEBrE0Gj5MOPRpwMOHVbEFm5fTY/4/GKg1jCJlrVZi
	 +mvh4Gz3TbgbiJgzR8Ua7kRxOXL09ODDu8R084FX+AYzOw9vtLZTL8KSIViFuyACN1
	 APHGWmCD1yG3UnebYl9SdaszcSHQMjs6vMrSzH9pbq7r5bSfh0h7sBVzGW1BQga6e8
	 gJkvJpLLWCy6pc/AyK8ZLwoV0hvr9aBJLgc1M8uonFXm7UdrkrSxOodM1AVEU2r3Vc
	 1lNAPMsxTK8GQ==
Date: Mon, 16 Sep 2024 16:53:01 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jingyi Wang <quic_jingyw@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Xin Liu <quic_liuxin@quicinc.com>
Subject: Re: [PATCH v2] dt-bindings: phy: Add QMP UFS PHY comptible for
 QCS8300
Message-ID: <ztpetznwid2om6vylyl2boi665ch3wnkprkmzcq6bem6cqhqtf@ogsi657y4kex>
References: <20240911-qcs8300_ufs_phy_binding-v2-1-c801a2d27a84@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240911-qcs8300_ufs_phy_binding-v2-1-c801a2d27a84@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_075306_682489_742969CA 
X-CRM114-Status: GOOD (  16.18  )
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

On Wed, Sep 11, 2024 at 02:56:16PM +0800, Jingyi Wang wrote:
> From: Xin Liu <quic_liuxin@quicinc.com>
> 
> Document the QMP UFS PHY compatible for Qualcomm QCS8300 to support
> physical layer functionality for UFS found on the SoC. Use fallback to
> indicate the compatibility of the QMP UFS PHY on the QCS8300 with that
> on the SA8775P.
> 
> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
> Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
> ---
> Changes in v2:
> - decoupled from the original series.
> - Use fallback to indicate compatibility with SA8775P.
> - typo fixup
> - Link to v1: https://lore.kernel.org/r/20240904-qcs8300_initial_dtsi-v1-0-d0ea9afdc007@quicinc.com
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 46 ++++++++++++----------
>  1 file changed, 26 insertions(+), 20 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> index f9cfbd0b2de6..626a2039e177 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> @@ -15,26 +15,31 @@ description:
>  
>  properties:
>    compatible:
> -    enum:
> -      - qcom,msm8996-qmp-ufs-phy
> -      - qcom,msm8998-qmp-ufs-phy
> -      - qcom,sa8775p-qmp-ufs-phy
> -      - qcom,sc7180-qmp-ufs-phy
> -      - qcom,sc7280-qmp-ufs-phy
> -      - qcom,sc8180x-qmp-ufs-phy
> -      - qcom,sc8280xp-qmp-ufs-phy
> -      - qcom,sdm845-qmp-ufs-phy
> -      - qcom,sm6115-qmp-ufs-phy
> -      - qcom,sm6125-qmp-ufs-phy
> -      - qcom,sm6350-qmp-ufs-phy
> -      - qcom,sm7150-qmp-ufs-phy
> -      - qcom,sm8150-qmp-ufs-phy
> -      - qcom,sm8250-qmp-ufs-phy
> -      - qcom,sm8350-qmp-ufs-phy
> -      - qcom,sm8450-qmp-ufs-phy
> -      - qcom,sm8475-qmp-ufs-phy
> -      - qcom,sm8550-qmp-ufs-phy
> -      - qcom,sm8650-qmp-ufs-phy
> +    oneOf:
> +      - items:
> +          - enum:
> +              - qcom,qcs8300-qmp-ufs-phy
> +          - const: qcom,sa8775p-qmp-ufs-phy
> +      - enum:
> +          - qcom,msm8996-qmp-ufs-phy
> +          - qcom,msm8998-qmp-ufs-phy
> +          - qcom,sa8775p-qmp-ufs-phy
> +          - qcom,sc7180-qmp-ufs-phy
> +          - qcom,sc7280-qmp-ufs-phy
> +          - qcom,sc8180x-qmp-ufs-phy
> +          - qcom,sc8280xp-qmp-ufs-phy
> +          - qcom,sdm845-qmp-ufs-phy
> +          - qcom,sm6115-qmp-ufs-phy
> +          - qcom,sm6125-qmp-ufs-phy
> +          - qcom,sm6350-qmp-ufs-phy
> +          - qcom,sm7150-qmp-ufs-phy
> +          - qcom,sm8150-qmp-ufs-phy
> +          - qcom,sm8250-qmp-ufs-phy
> +          - qcom,sm8350-qmp-ufs-phy
> +          - qcom,sm8450-qmp-ufs-phy
> +          - qcom,sm8475-qmp-ufs-phy
> +          - qcom,sm8550-qmp-ufs-phy
> +          - qcom,sm8650-qmp-ufs-phy
>  
>    reg:
>      maxItems: 1
> @@ -85,6 +90,7 @@ allOf:
>            contains:
>              enum:
>                - qcom,msm8998-qmp-ufs-phy
> +              - qcom,qcs8300-qmp-ufs-phy

Not needed.

BTW, please be sure you organize your patchsets per subsystem. IOW, that
you do not split same subsystem bindings patches into separate
patchsets.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

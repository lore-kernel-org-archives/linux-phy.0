Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEA17C7EE32
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 00:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TVUnWeSAfb4nkDKuqBK0I7aK5dGlJ32Q3tpWY7kNW1I=; b=bxb8gTJGKVQrIj
	U4p62YmYDup6VtXbcMemOrekvaSmoXrE65jL6akzMp65LolYRpuHgEVc9sVeSigmaPZCds5TDhUAm
	M3TgBhgQWf1biUg8YWk3tlAKaW/XeX8Ezf7QmXA4lgS0DfEG8cKAGJ3vVRM0FDRGwtUpJAMO0LhaS
	phCuqzJtya5oa+MANDTsvl99INYBSKd+VlWJG1d7ZSWz5UE7zVgEcXUUIorZXHgv373qAn7nR5tfw
	jvNvW75ibS/86NA2YdZzsrRPC8wELKK8cDJ5ie9MnRxJr6UaZ7lyLZ1O/lob+G/noCQKQLgtD11zA
	4cqx1VXuk5N+gH091APg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUx3U-0000000DDcO-1ubb;
	Fri, 27 Jun 2025 00:35:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUw08-0000000D3Vr-1sEs
	for linux-phy@lists.infradead.org;
	Thu, 26 Jun 2025 23:27:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 990CE5C69A4;
	Thu, 26 Jun 2025 23:27:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28831C4CEEB;
	Thu, 26 Jun 2025 23:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750980447;
	bh=GZeKfwcYIyYg2KRmewirfLTJlDky13ZS4q2GKR7Nsg8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fFNpmjA+64G/MZTnpAnPkqVrWDdMoagKyYZZ1ic8KscmIGnwnLJjFaJQt1I7OB84a
	 6LM/H8hIpoqw7EtsenAfgl7qMsp0mhTjv1BoCV6e/QWu0HKI1rv1Dvrj29dTgyfkmL
	 KVWfwD4NPCJ7WAESfk5xr3U/vTHTqFaoPLyd+M4SmEtp4kqNN7NFuRQW927dyn85XQ
	 6whnwdpJL94d9qcZ/VjlCF7oi2pcJkhcftvL1kUPfQNk595GXRO8ZcxWWtdTJO8keN
	 VtHRJYxW3hSxyXRSlIEXLegn1FflU2WYdzaa95Zh1E7wb8P4h1cVVRBY+McTdRr0vy
	 Ib2/++YtyNruA==
Date: Thu, 26 Jun 2025 16:27:26 -0700
From: Vinod Koul <vkoul@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
	mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	bhelgaas@google.com, johan+linaro@kernel.org, kishon@kernel.org,
	neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v7 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for qcs8300
Message-ID: <aF3XXpEwTcp3JnPt@vaman>
References: <20250625092539.762075-1-quic_ziyuzhan@quicinc.com>
 <20250625092539.762075-2-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250625092539.762075-2-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_162728_527288_FE7D3431 
X-CRM114-Status: GOOD (  13.50  )
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

On 25-06-25, 17:25, Ziyue Zhang wrote:
> The gcc_aux_clk is not required by the PCIe PHY on qcs8300 and is not
> specified in the device tree node. Hence, move the qcs8300 phy
> compatibility entry into the list of PHYs that require six clocks.
> 
> As no compatible need the entry which require seven clocks, delete it.

This fails for me on phy/next, can you please rebase
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 14 +-------------
>  1 file changed, 1 insertion(+), 13 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index 57b16444eb0e..10c03831f9e7 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -175,6 +175,7 @@ allOf:
>            contains:
>              enum:
>                - qcom,qcs615-qmp-gen3x1-pcie-phy
> +              - qcom,qcs8300-qmp-gen4x2-pcie-phy
>                - qcom,sa8775p-qmp-gen4x2-pcie-phy
>                - qcom,sa8775p-qmp-gen4x4-pcie-phy
>                - qcom,sc8280xp-qmp-gen3x1-pcie-phy
> @@ -192,19 +193,6 @@ allOf:
>          clock-names:
>            minItems: 6
>  
> -  - if:
> -      properties:
> -        compatible:
> -          contains:
> -            enum:
> -              - qcom,qcs8300-qmp-gen4x2-pcie-phy
> -    then:
> -      properties:
> -        clocks:
> -          minItems: 7
> -        clock-names:
> -          minItems: 7
> -
>    - if:
>        properties:
>          compatible:
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

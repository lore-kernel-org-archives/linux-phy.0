Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0AA8C83F1A
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 13:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mLzGOypWBx31gGF+vVtVD42ZkEyxWXQEIA8J7knQfuE=; b=0tsv5tYAiavQqh
	ps8otUF6AVBXr50ZKg+//y+JBEamvKDKGah3YKLIGo6yD7HCCbcv6xSC4oImuxt38Vr51DX/AxtVS
	FCBwZPB0lv87wPwloCsQrXbTmij3FKIU6L4eKvgpS3AAwVrxehYqY7hGlqmJ9YKqxc+Y06/2mx14N
	jUs8SglfjrwDZj+6rATcWvkEtJQsEyPw0sgdEFAv5HIZK2scge1j2SycY5xnlSEgtO0tUp/g1NN/q
	KSJVviB8E4krq/yqXpqeiILGaGnpj55LkwanpmHPZCTmr1zdrzHqb3tk84z+/SeZST2BDaWmEkHok
	aMKjnBi9WDx+qoMFRSAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDPh-00000002bPs-2LyT;
	Tue, 22 Jul 2025 13:52:13 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueCQC-00000002TkU-28C2
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 12:48:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C73AD601FB;
	Tue, 22 Jul 2025 12:48:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0BA3C4CEEB;
	Tue, 22 Jul 2025 12:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753188518;
	bh=Ywpj9KtSP+ovMY56xhAFq1DkwH1i/O2u+uNgff666K0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SDEg+MM6VDeLUdKeW5uBLBWR3OtMYDKzWlV9uvXMvgYTLpA0NAAwGHD+kDPZE+6eJ
	 nDH04FbpKs6PRBNHnlJYvJ9N9bXO/GJ4esbXgXaN2fB25rxNblCuQgPau4cinVAjxS
	 aPmjAj7z71rtPlQSRp2UUpXzeFF1ZeiJb2vjlIBM5GfiXhR+xCW9ZtLY+VTkmw/XxQ
	 b0gczj+ZscvHmmRv8FnixTLCEobQKZm/aR3Okeg9jzu85jfXQ2f0Q7grKTAP4KnXiI
	 pf8qOr0vIT9haHAil3ZbV3VYFYsDKMPUkgTIaflPVUTagbCo4bqAe0d0itbZYa3bUg
	 yZjVx51MzoW0w==
Date: Tue, 22 Jul 2025 18:18:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
	mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	bhelgaas@google.com, johan+linaro@kernel.org, kishon@kernel.org,
	neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v8 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for qcs8300
Message-ID: <aH-Ioi5WO6gA_7WY@vaman>
References: <20250714081529.3847385-1-ziyue.zhang@oss.qualcomm.com>
 <20250714081529.3847385-2-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250714081529.3847385-2-ziyue.zhang@oss.qualcomm.com>
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

On 14-07-25, 16:15, Ziyue Zhang wrote:
> The gcc_aux_clk is not required by the PCIe PHY on qcs8300 and is not
> specified in the device tree node. Hence, move the qcs8300 phy
> compatibility entry into the list of PHYs that require six clocks.
> 
> Fixes: e46e59b77a9e ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the QCS8300 QMP PCIe PHY Gen4 x2")
> Fixes: Fixes: fd2d4e4c1986 ("dt-bindings: phy: qcom,qmp: Add sa8775p QMP PCIe PHY")

Pls fix the two 'Fixes'

Please run checkpatch, that would catch these

Also this needs rebase on phy/next

> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml     | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index 2c6c9296e4c0..1d4815056bc2 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -176,6 +176,7 @@ allOf:
>            contains:
>              enum:
>                - qcom,qcs615-qmp-gen3x1-pcie-phy
> +              - qcom,qcs8300-qmp-gen4x2-pcie-phy
>                - qcom,sc8280xp-qmp-gen3x1-pcie-phy
>                - qcom,sc8280xp-qmp-gen3x2-pcie-phy
>                - qcom,sc8280xp-qmp-gen3x4-pcie-phy
> @@ -196,7 +197,6 @@ allOf:
>          compatible:
>            contains:
>              enum:
> -              - qcom,qcs8300-qmp-gen4x2-pcie-phy
>                - qcom,sa8775p-qmp-gen4x2-pcie-phy
>                - qcom,sa8775p-qmp-gen4x4-pcie-phy
>      then:
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

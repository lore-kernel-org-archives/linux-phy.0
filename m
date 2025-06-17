Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A50DCC71136
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 07:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19S31UN2OXDPiFHaQeOsoFRod69Sq5BpEP8GhwGUb+8=; b=mrvt2JG8IXSUiL
	QT4T4MfWcf8YWRWPbBh0wdQv9hyaDCT8S0l7K7020zM0vDADz8H5lPdA+2hj02ZdOQRMP42h/xTQP
	sdG6KECkX3qtSTwHiR8ccoAvKhFteR2vfz6JUq+m9OMnUtGfbhRXs41zhQxy8X6gNwPM7xP3d8wms
	AzubcZDcqzIIh2C8c0eQclO9YLk5zWvK/P5ADDE8iQQAOYBePZdGZPWmoBm6ApXuWgwXCQBTLJFuU
	D8L0w9Q6cOk8540LiyACTfYXEbTg9rtCvkTuZHbkB3OR9vhcRVvzU5Fvza1TarVOPpM3wA5x39dz1
	+9u7iTiT8XuvcPu9QzuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRQua-00000006U6g-11zZ;
	Tue, 17 Jun 2025 07:39:16 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRQtX-00000006Ttc-2Wsc
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 07:38:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0539C4A0F2;
	Tue, 17 Jun 2025 07:38:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAFFCC4CEE3;
	Tue, 17 Jun 2025 07:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750145890;
	bh=tyaDThqvTan4SFqZmuFuvgF7eC24WC/L2WkQ2brenYA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MZiHCHOxxfxaNdZR8gjpqWDQUGY2g3pW0iRrFiaNfKnj08kUpu9MS6Eki/fUZL8/B
	 UcdOHOkT6H2y+VdThwdsiAWBeQtf0BXMBCAgI1KDjxbcqUe4ALwXFv9FfjHq0CLJw3
	 cFObrxaFgCqXy9of6CxIcmDTFfHw83UuzIfTXt6W4nRL5G5RMyNjl2+L9jTX6hVJFK
	 lz+vJFnvnYWjCt230vl5NEDXuBsG0txXZYTbcZY7ppejmrLPB2sSnaZnpt2VyvQA9N
	 +4ycAa/ZCoNNKgt0t7E7nA1lMt+uZZwhEU63h6SWagtIBPdPKMf/gq1J701KiSFcsp
	 +4Wo1jzrOxVTg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1uRQtR-000000000ke-0O49;
	Tue, 17 Jun 2025 09:38:05 +0200
Date: Tue, 17 Jun 2025 09:38:05 +0200
From: Johan Hovold <johan@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
	mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
	kw@linux.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for sa8775p
Message-ID: <aFEbXfl2GMGMBk_R@hovoldconsulting.com>
References: <20250617021617.2793902-1-quic_ziyuzhan@quicinc.com>
 <20250617021617.2793902-2-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250617021617.2793902-2-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_003811_661434_C7585BA7 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
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

On Tue, Jun 17, 2025 at 10:16:14AM +0800, Ziyue Zhang wrote:
> The gcc_aux_clk is required by the PCIe controller but not by the PCIe
> PHY. In PCIe PHY, the source of aux_clk used in low-power mode should
> be gcc_phy_aux_clk. Hence, remove gcc_aux_clk and replace it with
> gcc_phy_aux_clk.

> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -176,6 +176,8 @@ allOf:
>            contains:
>              enum:
>                - qcom,qcs615-qmp-gen3x1-pcie-phy
> +              - qcom,sa8775p-qmp-gen4x2-pcie-phy
> +              - qcom,sa8775p-qmp-gen4x4-pcie-phy
>                - qcom,sc8280xp-qmp-gen3x1-pcie-phy
>                - qcom,sc8280xp-qmp-gen3x2-pcie-phy
>                - qcom,sc8280xp-qmp-gen3x4-pcie-phy
> @@ -197,8 +199,6 @@ allOf:
>            contains:
>              enum:
>                - qcom,qcs8300-qmp-gen4x2-pcie-phy

What about qcs8300, isn't this equally wrong for that platform?

> -              - qcom,sa8775p-qmp-gen4x2-pcie-phy
> -              - qcom,sa8775p-qmp-gen4x4-pcie-phy
>      then:
>        properties:
>          clocks:

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

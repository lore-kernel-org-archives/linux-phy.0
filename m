Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B59CC77B7F
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 09:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14qB5kyo9UjmTfQvnWzJzl0MwBouWhefSbZLGvMEA94=; b=RZVvF2bUGcqiBS
	4JOaYGmLkRkocLk+KDylo1KaVoDcKEyoGWgX+fa4l2Fa+2qMtocbkbkurOopojTCmZziSzHNj09GQ
	w698FMbYvJ3/uDr3XJkQbU0VCi6/kxoxokAUTTYOfGRmsxDkFty3r6P+24wTJMTtkjg/3nX3741VF
	50zBSZcL44AxbBmQUbdXlwvFeJJ1BaylnLDr7toR5cfrh6hVIQHEeJ7X0e/cP6dqn23JLxFyIjRV+
	Q4INc+kq93kF/rThWoreBVEZ3UNXnJjL0IOLe+Is76oYexyyK6GpBD02w6QrvTqGWhd1miWkjrvtc
	5ZjOaZCPmxjOH1F3O/Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV5MX-0000000E7KI-3NHh;
	Fri, 27 Jun 2025 09:27:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV5MU-0000000E7Jk-3YYh
	for linux-phy@lists.infradead.org;
	Fri, 27 Jun 2025 09:27:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D8EB45C349C;
	Fri, 27 Jun 2025 09:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77D9CC4CEE3;
	Fri, 27 Jun 2025 09:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751016429;
	bh=9Ao2DPZ5WH1AH59KqUG8CMXG1VAzP6Js/sjGtfxOmd4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bEQnAo8m0otz0/uF05lagMkPplo1RIXinU9bo4tRu9ozLnBLODPx7vvqdk5/1kGaH
	 9+ucSrGzQq7iGQnzk3TN+bz11fA9bf7BZAOu7xXhKOV5kbid4aJ/F44DOXe5BrwYMw
	 7EKt7oeVPFwbfWZ33WL7mNurS3D2Y/5liaoKkdGL8PqMAbctzDZgS3jzUX9gufikgj
	 IM8jZsMe9fJQyUpHjpzmDQmld/iOFkUaTvIu5zEaZZZ83M373//1xo0AkDNu5iLcSX
	 p4lVM3IbKVH91aedgRJUdeCquqNaBioSIqjprjpWUSmslbv/qxWAcVgcppG/fjxQEC
	 C3Gq1HBQPaHXw==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1uV5MT-000000000BF-2wGi;
	Fri, 27 Jun 2025 11:27:09 +0200
Date: Fri, 27 Jun 2025 11:27:09 +0200
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
Subject: Re: [PATCH v3 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings
Message-ID: <aF5j7VqX5oU11cWe@hovoldconsulting.com>
References: <20250625090048.624399-1-quic_ziyuzhan@quicinc.com>
 <20250625090048.624399-2-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250625090048.624399-2-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_022710_966733_2B6B1C36 
X-CRM114-Status: GOOD (  16.61  )
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

On Wed, Jun 25, 2025 at 05:00:45PM +0800, Ziyue Zhang wrote:
> The gcc_aux_clk is required by the PCIe controller but not by the PCIe
> PHY. In PCIe PHY, the source of aux_clk used in low-power mode should
> be gcc_phy_aux_clk. Hence, remove gcc_aux_clk and replace it with
> gcc_phy_aux_clk.
> 
> Removed the phy_aux clock from the PCIe PHY binding as it is no longer
> used by any instance.

Please add the Fixes tags I mentioned earlier which identifies the
commits that added the bogus clock.

> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml           | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index 2c6c9296e4c0..57b16444eb0e 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -54,7 +54,7 @@ properties:
>  
>    clocks:
>      minItems: 5
> -    maxItems: 7
> +    maxItems: 6

You remove the last user of the bogus clock (qcs8300) in a separate
series so you should keep it until then.

>    clock-names:
>      minItems: 5
> @@ -65,7 +65,6 @@ properties:
>        - enum: [rchng, refgen]
>        - const: pipe
>        - const: pipediv2
> -      - const: phy_aux
>  
>    power-domains:
>      maxItems: 1
> @@ -176,6 +175,8 @@ allOf:
>            contains:
>              enum:
>                - qcom,qcs615-qmp-gen3x1-pcie-phy
> +              - qcom,sa8775p-qmp-gen4x2-pcie-phy
> +              - qcom,sa8775p-qmp-gen4x4-pcie-phy
>                - qcom,sc8280xp-qmp-gen3x1-pcie-phy
>                - qcom,sc8280xp-qmp-gen3x2-pcie-phy
>                - qcom,sc8280xp-qmp-gen3x4-pcie-phy
> @@ -197,8 +198,6 @@ allOf:
>            contains:
>              enum:
>                - qcom,qcs8300-qmp-gen4x2-pcie-phy

                   ^

> -              - qcom,sa8775p-qmp-gen4x2-pcie-phy
> -              - qcom,sa8775p-qmp-gen4x4-pcie-phy

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F261CD4F25
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 10:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WB0WtwHqJ8xXB4XRiDUYuWQm3fvqWlPJK8XwnLllDZo=; b=dOYl6XAgHj4Kei
	qYjzWQA/Z+3nzizpgJwyomXzi0EmTKIBkrWrATjWYUtDiwP9ZDJ5SKJgvdfYnbgP/cbkpb4YvhsAr
	hBRFDuYFKBrtLtGqwmWsw4RNEH0ewk/LXuJm5qWdOPdlIJ5Slh4gkekx39qWiQMJUR9oRiOP/xk37
	omgAR7bzbPmfRQPZ9IHtGQnkMXFP253skz6f2cku5tdPRiqQmfSESV1hudvIXBW6cTu1/QbkKvEJS
	SDBgwMJ06oBRbcjjJzfLLSkkqc2gdS+7MRo4oGXoSB2oNtGfTmDoHRd9oLc8DY1Nf9WAZWfPfOGF6
	ylL0pMSdbSwGd0VFKoAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq4P-000000085Rf-02hM;
	Fri, 15 May 2026 10:47:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq4O-000000085RT-0NjB
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 10:47:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 32FBC60252;
	Fri, 15 May 2026 10:47:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 559ABC2BCB0;
	Fri, 15 May 2026 10:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778842022;
	bh=qnddXJyRkWFSlTnXxM/Hm3ZBZQJKwpA+7O6fCrA3myQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r9twNNOLdqW1N+2dFFv//HqYxcLwPr3ufU3Q45knN+x1bqs5vagKdva5xpZBEPfEl
	 nBKrLVvkbxG4A1kb3gZsSAfBov532izmXrWgTPrDPN8GS7tvFR2a3YSzr4r4nUacxj
	 L8kzCdIsZoeOG10YPC+hDQmoMS3dqs9bC1JMI+E4e9bSb1dbqfwHW/v8d6rgILSxZo
	 LfA0+Bod3gDoy/e5VI3vEb3FrEg26s+L8uYosnPsXNHXW54qGRCOiZTLQXx2wRGHrf
	 MHGGrJUWV+T5Hi0iA3KX5otI+GcqlUkn84atZC8dBBe2weIu4dqVwyCfujq0tvxk2v
	 Srwrva9mWr6ng==
Date: Fri, 15 May 2026 12:47:00 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document
 the ipq5210 QMP PCIe PHY
Message-ID: <20260515-optimistic-hedgehog-of-penetration-b34227@quoll>
References: <20260514-pci-phy-v1-0-482429192746@oss.qualcomm.com>
 <20260514-pci-phy-v1-1-482429192746@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260514-pci-phy-v1-1-482429192746@oss.qualcomm.com>
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

On Thu, May 14, 2026 at 09:28:28AM +0530, Varadarajan Narayanan wrote:
> Document the PCIe phy on the ipq5210 platform using the ipq9574 bindings
> as a fallback, since the PCIe phy on the ipq5210 is similar to ipq9574.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
> index f60804687412..1ac31439c20a 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
> @@ -17,6 +17,7 @@ properties:
>    compatible:
>      oneOf:
>        - enum:
> +          - qcom,ipq5210-qmp-gen3x1-pcie-phy

5210-qmp-gen3x1 here

>            - qcom,ipq6018-qmp-pcie-phy
>            - qcom,ipq8074-qmp-gen3-pcie-phy
>            - qcom,ipq8074-qmp-pcie-phy
> @@ -24,10 +25,12 @@ properties:
>            - qcom,ipq9574-qmp-gen3x2-pcie-phy
>        - items:
>            - enum:
> +              - qcom,ipq5210-qmp-gen3x1-pcie-phy

and here?

>                - qcom,ipq5424-qmp-gen3x1-pcie-phy
>            - const: qcom,ipq9574-qmp-gen3x1-pcie-phy

So it is or it is not compatible with 9574?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

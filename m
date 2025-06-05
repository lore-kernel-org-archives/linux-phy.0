Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 745D2C5B543
	for <linux-phy@archiver.kernel.org>; Thu,  5 Jun 2025 16:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gsp5P6RJeJKph4A+/LuYQBu+YJNlHsdfK1HcYWvwIi4=; b=ZvnGgtkkfQZ97H
	1KD8SlTig2UWOE9NuX2JSvWq+XlGuG0r1BYKPT+mULK1FHbpYq4ltbCfjvJlX0KQPqR37ekqOvCTl
	73P8avZ3I+nfReEsuIhRQe9GWqpVBZr6yz+ermDzhD1LH3E7BQ2bRv+eDOxAaXovb42z9JGoxw4GQ
	2jUV4aSb1wkb/ltuE3K0XZye6m2fs1hw/dNJCztM049Nq7YwyNPrPTyTp4p9qaud/XjlSlyuDevft
	5c9DMBxIy4YpcH3cocE0/yAj5w0iHCcGHIcsqxKrFB/RKCRt6GJH5oHGidIufChNEomWMDYUBfJV4
	CEw7voE4MP/kzPhhIi3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNDJa-0000000G0Cb-0Roq;
	Thu, 05 Jun 2025 16:19:38 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNDJZ-0000000G0CV-1PU8
	for linux-phy@lists.infradead.org;
	Thu, 05 Jun 2025 16:19:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C1489614B8;
	Thu,  5 Jun 2025 16:19:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39781C4CEE7;
	Thu,  5 Jun 2025 16:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749140376;
	bh=MI0R8HITcFNmNRtLwaJ0PFb0ELfhM/iVB8q75aYrQgI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k8svjUn+D82cm2fDjyL39hf6xuk8KOEe9fjwlDFtLNpudguls4VUaVNY2N8ifEp3n
	 ciuGTkJBbxbqs9zpPW8EnJ5q+KAh1N9V2xpfi9ikAuAsrJJJt0WI2YUzPZY4Acn5q7
	 6Q70sD9QO8FvJEW9sFoEQR8jng1ZtP+lk4qgN0HSxDNZdbFHk6FlUSf7NRf/GkNmyf
	 mxPg3+eDRX/qpwcvmuJEMZk1GplieqaB6bzDaPuYcFqlXtX/4bD6sLiIUfNkHmRrAk
	 8sGZxGGC1Wt/7mKxwLUMHleHn+znIhtg7lsJhwrIrCTQU+ij0t0BiKj+oTt0F54bd4
	 wcO7QlXQ26IXQ==
Date: Thu, 5 Jun 2025 11:19:34 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, quic_vbadigan@quicinc.com,
	kwilczynski@kernel.org, kw@linux.com, vkoul@kernel.org,
	linux-phy@lists.infradead.org, krzk+dt@kernel.org,
	andersson@kernel.org, linux-pci@vger.kernel.org,
	konradybcio@kernel.org, lpieralisi@kernel.org, abel.vesa@linaro.org,
	neil.armstrong@linaro.org, quic_qianyu@quicinc.com,
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	conor+dt@kernel.org, bhelgaas@google.com, quic_krichai@quicinc.com,
	kishon@kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/4] dt-bindings: PCI: qcom,pcie-sm8150: document
 qcs615
Message-ID: <174914037222.2791589.7402731623467975644.robh@kernel.org>
References: <20250527072036.3599076-1-quic_ziyuzhan@quicinc.com>
 <20250527072036.3599076-3-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250527072036.3599076-3-quic_ziyuzhan@quicinc.com>
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


On Tue, 27 May 2025 15:20:34 +0800, Ziyue Zhang wrote:
> Add compatible for qcs615 platform, with sm8150 as the fallback.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  .../devicetree/bindings/pci/qcom,pcie-sm8150.yaml          | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

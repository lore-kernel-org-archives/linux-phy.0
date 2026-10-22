Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B0D606A328
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 09:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FZfWl5bw;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Lp5vzeyf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GyoA+CuLv9zKD/KG+TTBzg37Wqm9ljZDwG4EfMfT6Bg=; b=FZfWl5bwJhKXOnkwsbe2ayWAt1
	cttVqi6pueUX5zvT/sa8iclbzNPtegJS76CKccUiNWgbc0lG7uoVU9jimOD9BFAsVO8OnFlt1d239
	JBAGaQcXoPXKw7EQk4+EZ4jcG+ODpUTdyYZSUyFZLdgBE6N7bwQV1iLdHjVW2etsQq7IVL/J4aCSX
	f8HfzzlyheESB8k9MAwb3M7jR49tlQLZXtPDGiVt0LExdLEQydofWaQ91lTHsshLWGqMmEDX5P2/O
	ZrlTJA8vGm2x4iBZaV496sWuMGtNM0a0w0hBkx+n+LJWyYsR6hWwujQc2b5StXV4fSWSu04+wtU8y
	+yLGg9Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJpRH-0000000DsV8-34sW;
	Thu, 22 Oct 2026 09:50:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJpRG-0000000DsUc-1fkK
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 09:50:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CF03443AE1;
	Thu, 22 Oct 2026 09:50:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F6111F000C6;
	Thu, 22 Oct 2026 09:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792662621;
	bh=OmbDwKTPv9Vhyd576I3oDOBuRR1wx1NfzLwaR4N0rck=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Lp5vzeyfqd/HJVg2ip47pTpk1/JsZFxXtHNEod6B7ibNUWscdhgRUtDKZ5+3U6NdO
	 HKZjCTy/YMx+qQP17kYafRmHrjBxwKZBxvfiVBgZCF5TpUEAR2Df8sU41VVbl8UNPD
	 KGq7NRXgpKfkpepxoZjH1nLlA6V6McI2i0Qe6ZLYTnxYB5335JLcuxeSRbYMEgtIlc
	 ni44YEd4jxIf1kDl7lbM8r6Lg5gtZAZwHDN4SqKWCoZ47TeoGLDe4P0hXiTZdJgKNn
	 wu3jvnoseHxbPQqxSkxYZTXatWvqqXwA3heKZQZ3EyRUt/QmDkCDGXmxBH+nWZB0zN
	 cZ/2Erloq1Ldw==
Date: Thu, 22 Oct 2026 11:50:18 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v2 2/6] dt-bindings: PCI: qcom-ep: Add QCS8300 compatible
Message-ID: <20261022-classic-muscular-quoll-cd3038@quoll>
References: <20261019-monaco_ep-v2-0-852cb9f5d012@oss.qualcomm.com>
 <20261019-monaco_ep-v2-2-852cb9f5d012@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261019-monaco_ep-v2-2-852cb9f5d012@oss.qualcomm.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Oct 19, 2026 at 02:55:10PM +0530, Krishna Chaitanya Chundru wrote:
> The QCS8300 PCIe Endpoint controller is compatible with the SA8775P
> PCIe Endpoint controller and uses the same programming model. Document
> the QCS8300 compatible string and its fallback to the SA8775P
> compatible.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

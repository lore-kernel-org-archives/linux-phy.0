Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEC71C43458
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jul 2026 06:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q97VpJokydojWYtHqyzuvcn+cpFqhPgo3ozxk0qDJIU=; b=46XVro7EjlEYnM
	Vi17gFdPfk09qNjKNnPcoMvsHfopamW5lqjSm1XSzyLnAkoLoaAEt0nNBGa6l/nP42iNNjn91gk6N
	9PXb/9F1E9Fqq9e6xCVNiAQ3fWDl5YG66jzMmahT/itGx4K+BaZ3Pz39A3dHgE0gHE6QS1aXizpCg
	7+7M/SAqNZTy36Msrm/72bjfVWv1KBNDQl/oZMJDMQnwrNKMv6CaS+YeyULrXkt3cmqizzxu0UiBa
	Bw3BGYTL3RfrHavZq5P2J9lMccUo99ATsKte80/W3rBGHwD90Go01y1qnt3OgqpbLsG0u//Cytx7S
	q+xjfaZmHT1R185rfIdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgd6N-0000000BeZX-28Vo;
	Mon, 06 Jul 2026 06:46:47 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgd6M-0000000BeZP-2MRK
	for linux-phy@lists.infradead.org;
	Mon, 06 Jul 2026 06:46:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B4F1661383;
	Mon,  6 Jul 2026 06:46:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8129D1F00A3A;
	Mon,  6 Jul 2026 06:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783320405;
	bh=YAlwsu7K71d3yW8VkpJJ1Rx369N8TEqX3Ic4N2qqkfg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bfgEkCm7VawPLSDl1TRfWPE6bWazrEeu1sJjlV0x2i1b8s99il3rrkHlXdVuUEQ6R
	 LEl2dipgnbgxYCzsxFMLSBm+Ca6dlTZwyp96c8xEkxZhiKkQao/zM5CSONllAjZjTP
	 Q/eHG5XOkeiDFpTEYUzIKfiPGRJlqLUUfn6SoxRHV0JtHoqtylnwKaqfwaBwOGLahq
	 NOmcHX62qhBDt57iXxoAb9BPFK/l1Fqja7sBGxfEWyQa/eDvpRHfRkbZu5gxfrPeqG
	 5+FSpEjOXga0ajR6mxpea6gFg2C6auwIbkFz3Xy7OgE9LwOnfvAmCQ1O1WEgG+gY7E
	 z5B6jSVQ7p7DA==
Date: Mon, 6 Jul 2026 08:46:41 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: pci: qcom,hawi-pcie: Add Maili PCIe
 compatible
Message-ID: <20260706-pastoral-okapi-of-reading-e5bdb3@quoll>
References: <20260703-vdev_maili_dt_bindings-v1-0-c9df0916cd5e@oss.qualcomm.com>
 <20260703-vdev_maili_dt_bindings-v1-1-c9df0916cd5e@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260703-vdev_maili_dt_bindings-v1-1-c9df0916cd5e@oss.qualcomm.com>
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

On Fri, Jul 03, 2026 at 05:38:40PM +0530, Vivek Pernamitta wrote:
> Add qcom,maili-pcie as a compatible string that falls back to
> qcom,hawi-pcie, as the Maili SoC reuses the Hawi PCIe controller IP.
> 
> The Maili SoC is a derivative of Hawi and shares the same PCIe
> controller architecture, allowing reuse of the existing Hawi PCIe
> DT bindings.
> 
> Signed-off-by: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
> ---
> Dependencies:
> - PCI: qcom: Add PCIe support for upcoming Hawi SoC
>   https://lore.kernel.org/all/20260625-hawi-pcie-v4-0-1a578603cd86@oss.qualcomm.com/

Squash the patches then.

I already requested this half a year ago for previous conflicting
postings.

Creating such dependencies makes it impossible for tooling to test and
more difficult to review.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AF72C61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 08:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kqv9RrU6Drf2Se2nJaqO+/QVaUneZrhlCX88Ynlm6Bg=; b=2iUQIJQL4erkH3
	FYPsVNKDSSE6DNYhoVFA5lUy9GP2/zZtut+QLpF+6oZFcWwBvcIrlDuGH1vyNHNKiUytNgF4j6lHG
	sOKt5TYnwAQvNssLV2CSM0uDl6CGnqphPZOq68JuVb8UXS20QEj2UpVMHQajYnrvmBYYGzgcWEkCA
	27d07v+NRxaiHFXY93mGccVlDBYKmHLRLQ1EpTIJSXocqCTSvjfRHhPhLEcalw6c0BhMkVCZhncXP
	m+jZKWF8dvSfkrjntgXtdYEBCH0cyzdVKJyBr+KXXxt0XIpNAoUUMn9Pg4nIqH4gI13k/puJ5Ae5E
	tSrfTsPl05jG3tsmwYSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1JyI-0000000BIiZ-069A;
	Tue, 01 Sep 2026 08:35:58 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1JyG-0000000BIiD-3ZjD
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 08:35:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4126740323;
	Tue,  1 Sep 2026 08:35:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AA611F00A3E;
	Tue,  1 Sep 2026 08:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788251756;
	bh=LRg8cOH2yhtMK8xZKKhCpBpPzrE9IMBjAJzTWQG2Iv4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dSKetnT14/y+tfagfPCRYIz/L4Ya/Fn7azc7kL4rWqMC3MA2o6kU+2nOC7Xe9k6OM
	 sXvkQp6gAI6yWgMdSCDgW8gTDXthFDHZ207jfVGMej22lTZxBK8nEGEC4e1sCAqCnN
	 YQCbh8YusX+SoPCF17q+0t+1ey36mPWwDaEuB4R5zPQf3xu5z06V8SrtjqRp2E5+fm
	 mqUDk4wQuS/rcdzNOqr77UlLXCFQlLkmdYeptK8d5vPo8AB+BoLkS0h2bQ4kb8uvNk
	 Ql4lSWyuqg2ykVUOo0Mhks6VvZEvncZ8Qr9PX4RCVZhzMjylMGiQQfA68TqRojF4JR
	 OEhn6HaLU9rqQ==
Date: Tue, 1 Sep 2026 10:35:51 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
	Bartosz Golaszewski <brgl@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: sc8280xp-qmp-pcie: Document
 Shikra PCIe phy
Message-ID: <20260901-statuesque-radical-beaver-d00f32@quoll>
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
 <20260831-shikra-upstream-v2-1-406661d75afa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260831-shikra-upstream-v2-1-406661d75afa@oss.qualcomm.com>
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

On Mon, Aug 31, 2026 at 12:56:01PM +0530, Sushrut Shree Trivedi wrote:
> Document the compatible of the Shikra PCIe phy which supports
> Gen2x1.
> 
> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

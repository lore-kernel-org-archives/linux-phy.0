Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82B81CD4F5B
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 06:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6nIoiPnSsJBYxfZvYHRQs7k/xd6yBfEv77ZZnfUslg=; b=2iPLthP+fPqIdX
	AzPqZGjuzekEaoFGAzrGw4/ygmfqk/9tooBwqcUu5+ChuLjRrMw5AfXFqaakNSYULeqvUMNO7NHIg
	BariPUfKD8CDd592d60FBHVY7gqapaqIcdA9grRsBDksjtnlV6xUHWnPVqhf695ko/SCB4DNO9I4G
	uIygKau0UeZiLX2jaux1AbjcuPPb7u13kv8J9Tl/W1i2y05mAoLiacKq5a8quuW8DNRJus8OCvLMh
	I1BQ9IaAcoQPYuucXDZMvP6HnfC4jVM+ZwssnZxMyoSenQcRh5tDeMD5WSJBCjCnFDec8naolaK1H
	/iMqtmYFQSLmjgOYGRXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQJei-0000000A0Ei-2Dcd;
	Fri, 22 May 2026 06:46:48 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQJeg-0000000A0EN-3GPU
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 06:46:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AAB6B60172;
	Fri, 22 May 2026 06:46:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD18B1F000E9;
	Fri, 22 May 2026 06:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779432405;
	bh=Lmc4GHivIsEB0A3/jAF6LGKkujzqqym8ZZvS1oCGxs8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cLHTKI9c3wsL8WarmEDtNBHT352Xv0juZjhw4Dpr3nDirPdj94nuILqg5/tHWMsqF
	 2BxRXG36V01kZhI4WmAiUAzWRa7i+ERLO/y5pqrtNMb/1xI2z5DSqAIfyFawTx9iUo
	 vfc6+Blg0oejnEt++1tSXf4GByGeQPjDBeeG31XhF4V0BNa8EAImeYVsYzdEuQzIDW
	 ahaubWQr+RcXmD+9heeGOYDSdC1l3t44rciCgE7ZgBzMxnjkUxbXWsoRpbzMAN3U6K
	 p0lNPp+kWcXcq0iCWCeaaZdkziO9xc/xHgtqRY4BHlMIieO1U8j2HXP+vifo+YoE7D
	 DB06XhgqhqICQ==
Date: Fri, 22 May 2026 08:46:43 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: phy: sc8280xp-qmp-pcie: Document Eliza
 PCIe phy
Message-ID: <20260522-crimson-salamander-of-maturity-ef05e5@quoll>
References: <20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com>
 <20260521-eliza-v1-1-97cdbe88389d@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260521-eliza-v1-1-97cdbe88389d@oss.qualcomm.com>
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

On Thu, May 21, 2026 at 07:35:29PM +0530, Krishna Chaitanya Chundru wrote:
> Add compatibles for the Eliza PCIe QMP PHY's, which supports Gen3x1 and
> Gen3x2 configurations.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 6 ++++++
>  1 file changed, 6 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

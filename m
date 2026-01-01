Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DD4EEEB57D
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jan 2026 11:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGvzBLPCnEhRREAD5aX0Cvy+nm4AqWn6Hp/yKQByyss=; b=MzKvPjSDDT4NP8
	a93kFreRlLpEqXnYcVfSTaBe9qNqWmS1DR2IGFdMgLlAWNVqrWiL9P1G9fS5tUzwrtf9zUJw125VZ
	DueER6nTM2n6qSxjDA5/hC5nsQjgD5ArJhYXlc2sYHbLot3LQnEWUi1GvLKCETSM5zbkug83LVlgj
	Ec0cPs1DX4KVe177co/CEdRtW5lHLpQi9U3hIjB+J92Z7gFqO84vduAMoe7MB0UD9tSKQjm4MsZjS
	RaUlBx/S4Mvi2ZkF4BtmN9J8iYhdsCAr4dVY1qhqVWCMdxbYh28jCn2VTjDbKJB+GCI1M+tmRbhFX
	dNKG2B5/FZy6GJyQKjMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbGXb-00000006o34-18AK;
	Thu, 01 Jan 2026 11:08:27 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbGXZ-00000006o24-361X
	for linux-phy@lists.infradead.org;
	Thu, 01 Jan 2026 11:08:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3028060008;
	Thu,  1 Jan 2026 11:08:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 472BBC19422;
	Thu,  1 Jan 2026 11:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767265704;
	bh=ToKlYUMhvoalOWqpF9ZeGMqXOoOysB+sEs8bAsqqLoM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=baxmvc6Y9ow0RIhmu20ZovU+DjhPRkczRDf65NtWTpLVeTG+DP9Qr0F5xTsmxxlii
	 HA1vVt3EIeX9LLyiiuRtRhVqnuhI5ZJVxeC0jSydB4WTc3AYnlDZ0dA9lC/r+ThJaz
	 zRY8nKlmHm0WiUsAm4yJY5sWNlORW/hRnMholyDOofi89rAJZFWfoe3i2fVXz6SchC
	 9j8mULmxncTeVOQ4AR0m7M8pn0dJ3qbrX55axwRxcyrqV89bPoRcQy5VuUb3ec7wmO
	 +C4opmCCm9zPzsO4qp8u28RZqiLIEgs14SXL/nGKfWLdM/Q9y0/sosR6VLjbbdQvLD
	 XzhKDVRMTCuYQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Wenbin Yao <wenbin.yao@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20251224-phy-qcom-pcie-add-glymur-v3-0-57396145bc22@oss.qualcomm.com>
References: <20251224-phy-qcom-pcie-add-glymur-v3-0-57396145bc22@oss.qualcomm.com>
Subject: Re: [PATCH v3 0/2] phy: qcom: qmp-pcie: Add support for Glymur
 PCIe Gen4x2 PHY
Message-Id: <176726570092.201416.12927506062894433372.b4-ty@kernel.org>
Date: Thu, 01 Jan 2026 16:38:20 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Wed, 24 Dec 2025 12:35:00 +0200, Abel Vesa wrote:
> The Glymur platform comes with two PCIe Gen4 2-lanes controllers.
> 
> Add support for their PHYs and document the compatible.
> 
> 

Applied, thanks!

[1/2] dt-bindings: phy: sc8280xp-qmp-pcie: Document Glymur PCIe Gen4 2-lanes PHY
      commit: 25671c37821006392ff8c66e980475747bee4cde
[2/2] phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen4x2 PHY
      commit: 085ba7c91df34e05366f9fecc9fa7a037598c30e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BB55C87FCB
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 09:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8AsiU6RE8ty42NgZQfILp7Cji6KhM6O9YjZAnvJtLc=; b=wxCwd+cAmOh+GO
	dclnquxkpxIGdf5XXzYDCQojyvF9HCLNZS5qOdzBG7kRiXGEA07iR9zGjRftwt2WV3kD58LWR0K28
	zoYr/25VKrYwY/vaKDLpoRJ/3WNsDLLuI4fX2AMmJL5fBML/2jlHYXPfJ+FplYY79BmkTsZIyr5x3
	vSkvym/cmWAwguQ/07OZ0r01r7RwH/ryFqXuXVblBoVb2bHeVbIDrIHDu/ngqNv3gc7/jAEPT6Xqp
	dK25dMQv7QnI6Dfg47RvZRogSFqTZmRWJyXz7Kvm3m4XicOh8KjCS1XNm/0BZdos37siM+IUITQWg
	WNUrXnenRAXNC9E5Uqwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh3Uj-00000001AVg-1Y7C;
	Wed, 30 Jul 2025 09:53:09 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh3TB-00000001AG4-3QwY
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 09:51:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 21C36601E1;
	Wed, 30 Jul 2025 09:51:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA0DAC4CEF5;
	Wed, 30 Jul 2025 09:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753869092;
	bh=uUO5w+7fXASYNU9Kt8APciPnhPDC3kbEVI7LeC/Sc4Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Zqi+/lTLLKqTT3gUTKNdXehod98TDjxVREm0tnOYwfqqbR9mv/KBI4JWcyEDPCVHw
	 O3QTfI7RmT5L4nX22c8XHVf8ZkW97GFLYZNQ1BjndCHwOOHmyPj0tyCVIwZUGBBcv/
	 B4P3bQg829uFoSmX9dEigr9agioqbZlqfcoHfnbZGZKtqz464YUSXQzoj5lWWT+wAx
	 z2zwsmn39eVS1hjGOhoMKmUGMRHXRYwF2DSDXxbVCbumq11pULQBhLpi3gSfA/3JMW
	 wPxQfbYuBdTkyAsdvTxHJyt0Fnw7C+4c9LztCSJS3AN7rwYApLCna/kDNsIF43PaNd
	 cprISPI3KpLew==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1uh3TB-000000006FV-1CuA;
	Wed, 30 Jul 2025 11:51:33 +0200
Date: Wed, 30 Jul 2025 11:51:33 +0200
From: Johan Hovold <johan@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
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
Subject: Re: [PATCH v7 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings
Message-ID: <aInrJT5A0EZwzwrb@hovoldconsulting.com>
References: <20250725102231.3608298-1-ziyue.zhang@oss.qualcomm.com>
 <20250725102231.3608298-2-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250725102231.3608298-2-ziyue.zhang@oss.qualcomm.com>
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

On Fri, Jul 25, 2025 at 06:22:29PM +0800, Ziyue Zhang wrote:
> The gcc_aux_clk is required by the PCIe controller but not by the PCIe
> PHY. In PCIe PHY, the source of aux_clk used in low-power mode should
> be gcc_phy_aux_clk. Hence, remove gcc_aux_clk and replace it with
> gcc_phy_aux_clk.
> 
> Fixes: fd2d4e4c1986 ("dt-bindings: phy: qcom,qmp: Add sa8775p QMP PCIe PHY")
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

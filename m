Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38C36C9830E
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 13:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cuX2IqrRl8ewu8ZAIdsO82wkOpAEAhe+9/sm1nHTL4U=; b=nduKf87qzCO+Z/
	TOK5Zuf8VEPomdYVjfs27QBUGWgmeMcfZLEllMGyij+YU6gKj5uMzbID1tVxCaPvjbG5gCeRvk811
	YwXh/k+rKDB9ILN6FiLZ1lZjXavv5o2vUMXBKUfThDHO3KzehqLfi7sw8pkQ/UEl+/+mVxDLChhDC
	RSzMgRw7Z/HeIyTTyUvv0SCv0QLVrtuFVGGTQ/r74gq9zHKDd4SBLPcOdOBUTSQWpdOwtBYq/F2fg
	scfbCgMy3VyGtfjw+mEzp5xDxp+edoz2GwfSSw4bs/Qng2BHk8SevPpk5w4pjML0Lb6FOOUHLMa7p
	sPWUgWQCLj7qbtBs/Cjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA5uD-0000000DQ1M-2SCr;
	Fri, 25 Sep 2026 13:24:01 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA5uC-0000000DQ0d-2GU4
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 13:24:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BF5C16022F;
	Fri, 25 Sep 2026 13:23:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93D9B1F000FF;
	Fri, 25 Sep 2026 13:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790342639;
	bh=hnUwwzO7qnFfNSXY8cyb1aERC7lGblNCcSED6xHDc9I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=XTUJmLDOKSESVa+JwP2UyQiCrUdQrX8NfnNxYm+U0FjCsAsPokG4juAJtO2wKKlpp
	 C3nQKMMv4eBRd3Lz7yRIzDVoZlKsSMcmSanU9qK/Ux7KtmwZFddArYI0yY4Wmbstdt
	 q6VYW4wAU3weis5IYSBTuNNwINLFgX9pCTffnAS3XLa0XSP6lUSOpz1anv1kmJGuE3
	 5n7iSjupD5pvXyMexXqAFP58dLSJAqxAaZa2K1Q9tmfK4QXQ7KkcpostM8Y2I+3hkH
	 XN8ygxX65CSKThTiP80UdPsePx5OTgYtX8NMSKKesdHigPfexGTNSHDIEH8EY/Yb2U
	 ZScCovWb53TKw==
Date: Fri, 25 Sep 2026 15:23:56 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, brgl@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,snps-eusb2-phy: Document
 the Nord eUSB2 PHY
Message-ID: <20260925-fantastic-icy-hornet-bddae7@quoll>
References: <20260921-nord-usb-phy-v3-0-68aa02b12b96@oss.qualcomm.com>
 <20260921-nord-usb-phy-v3-1-68aa02b12b96@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260921-nord-usb-phy-v3-1-68aa02b12b96@oss.qualcomm.com>
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

On Mon, Sep 21, 2026 at 01:47:05PM +0200, Bartosz Golaszewski wrote:
> Add a compatible for the eUSB2 PHY found on the Qualcomm Nord SoC.
> It is compatible with the sm8550 eUSB2 PHY.
> 
> While at it: On Nord SoC there are three eUSB2 PHYs but only two QUSB2PHY
> block resets: the HS-only USB20 tile has no dedicated PHY reset and is
> instead reset as a whole through the controller's own USB20_PRIM_BCR.
> 
> Make the 'resets' property optional for qcom,nord-snps-eusb2-phy only,
> keeping it required for all the other compatibles.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

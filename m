Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2651EC83F17
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 12:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSaegh6OfoZKEuMVCx7t07KTxok1sP64v7bBHdiWMHc=; b=SBpOoJ407zwRUC
	/69YhfjkwyOVS55gZFguwA/miG4RNQdsSrH8POqs3s6+Ty1RoYMHsjLaLd/hp0QLivo+hbOotud/Y
	F1oWQQg/Cr/UJG9zrThbZL1Rbrnx38CXVUWk7ANDaoY1qWmhESUvb8ggcLualTKb+fQdkT0465+tM
	qgCKgBxj+Vdp2coxQu81m5tvVITnndI4Rji7l+QFtTBJs3NV8MlyH4CVl0WXfU5ef1vUVJl+k53af
	c07jiFCKSgBG6l24fBAOF6uu9+Wv/LzSkuX3MhBDlpdqavrHhD/b5fasGjiqFI5UTpaFuC1/Iz3jE
	PfugT1o9VB2RVrcj4f8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZqST-0000000BmXU-3rH9;
	Thu, 10 Jul 2025 12:33:01 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZp7O-0000000BaBv-0rvQ
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 11:07:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6AF816146C;
	Thu, 10 Jul 2025 11:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D2D8C4CEE3;
	Thu, 10 Jul 2025 11:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752145629;
	bh=D4lW8+tE2ipIuH3PD2qdcekKDJKUgOBIQK0QukPhuGY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ch1fvGcz4B7amDJKIGLXoAxtcXhvsfOBsMZWJ5xA+gpkC0RCmOxJMatEJHAn6fzEu
	 AxuefiheP107MUGJUxhU+yLqGOo12Krd5eS21JOVnut195ryd8f3Ak3udFTsEW8ki9
	 QLCPnzUo2gtQBCHLW5Rv6DX/hn8kGSiYJumiwdGVE5TaGLj3VpVEi3J8PwLsjhC8sC
	 1AzAOIcjCQHgy7TXVSvqD4Mrc5W6cUeaaDzDlCHZ1rDocdUyVW6SrQdhehwDeT9aaM
	 U/EH6I536WE6TmAxkG+40dG9qh0XAHCfJo44dnk/Fa9Rt5flkFuWfNQnR91CE0khhv
	 oRPfAd0zkjcZQ==
Date: Thu, 10 Jul 2025 13:07:06 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 1/4] dt-bindings: usb: qcom,snps-dwc3: Add Milos
 compatible
Message-ID: <20250710-inchworm-of-subtle-endeavor-af71ee@krzk-bin>
References: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
 <20250709-sm7635-eusb-phy-v2-1-4790eeee7ae0@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250709-sm7635-eusb-phy-v2-1-4790eeee7ae0@fairphone.com>
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

On Wed, Jul 09, 2025 at 11:18:15AM +0200, Luca Weiss wrote:
> Document the Milos dwc3 compatible.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 3 +++
>  1 file changed, 3 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

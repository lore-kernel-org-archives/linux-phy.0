Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 675BDCAC592
	for <linux-phy@archiver.kernel.org>; Mon, 15 Sep 2025 20:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ppXsLijdqIfNRyORCnFBC2oXBMKw3izkdgM4s6rx4o=; b=hsSEjo7tpCshCm
	HREiVXPOCDFRgvBYuVhb219f1WlUjVaw4w5tEPYFTp1UZhXYsuNh8VxWZmufpvClU8pQZCvZlZ5yq
	GBO+e4WKPjfPxT4tQ/kr1taZmcVdvxdvoXZ7E3MA0w02IzmA4syY4L8+Z2HSJA1PRegchu9N6RzBw
	8X0efhH7556nK0z40uSQia+E+P58MQ3ZyvLebj4PiVcq7Z5Pq6y/eTCJ3mZk8UW2qNr9f0ts+iscD
	p/KcH1K6GbFxGtKQ/ZOSezdToZxF6+BNUQhGVEjU17mTT3scHyKGQd+UgnstXkzeGazJOlaPmURgC
	rhbduOHa/UrYT008etPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyGAL-00000005daQ-3Wpw;
	Mon, 15 Sep 2025 20:51:13 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyGAK-00000005daD-3FSd
	for linux-phy@lists.infradead.org;
	Mon, 15 Sep 2025 20:51:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E0DAF60233;
	Mon, 15 Sep 2025 20:51:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C589C4CEF1;
	Mon, 15 Sep 2025 20:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757969471;
	bh=9YHg41vqt0ebRojz/97YvJYCP7RgDKdx97lGOjBB2ic=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LZcf23FErrbnS9UYHQyPcHCxzzAmUd7sP6OZz3ydB1KANzajkJyICv4kS+dr50Hw6
	 atIbLqGJnkJPjrSM2mGx7smoiSZYf8Wdt3SPAZqECDUp/wZDK+SKXQVc/jhQyjGkGq
	 oALm8Htug3FoKsRrqcDjTsdI2PrwmNjTCuTGI5Pf+pIFiWdcgbdgH2BHk19zXdTUXC
	 FH+RRv/plrUvw5cSSEek6qFDwLK5WJofClRIJTOnPYavW8s7v625a3hWNsLPIzEPtg
	 ejYC/9RC1K2knNNMPTRpkWGnl0uahTa32urdVr3Lj0BXePZYmhm30ZbcEO1d6Hpbo8
	 GaEYl1f1jH0dQ==
Date: Mon, 15 Sep 2025 15:51:10 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	Bjorn Andersson <andersson@kernel.org>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Johan Hovold <johan@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v3 1/4] dt-bindings: phy: Add DP PHY compatible for Glymur
Message-ID: <175796946956.3372194.9955509101824246732.robh@kernel.org>
References: <20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org>
 <20250911-phy-qcom-edp-add-glymur-support-v3-1-1c8514313a16@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250911-phy-qcom-edp-add-glymur-support-v3-1-1c8514313a16@linaro.org>
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


On Thu, 11 Sep 2025 17:45:22 +0300, Abel Vesa wrote:
> The Glymur platform is the first one to use the eDP PHY version 8.
> This makes it incompatible with any of the earlier platforms and therefore
> requires a dedicated compatible. So document it.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

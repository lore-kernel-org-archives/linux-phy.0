Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6AE60A2600
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 12:09:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=r5oSaw2j;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=MM62gqiK
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=rC/C4JWTxzwvFvIicUWTrusPFTCMwYE+C8PYW2abHHc=; b=r5oSaw2jfx3+87mhI3cnnm9IJs
	Rm0XVcFAbMk+WZkYtsHGIYp9ijyNo4t/MVwHxgi7tfTuIrBXw+tD1WgdEiWsGduBdnJGA8Qr56K5e
	pbAJyU3d3MON1aT7sKK6mEDxTnyXTNY0+2wraT7o3f4BsOVdr4uOJXEvKASC+2GyPGXoEprmoxJuH
	8cn1T9WYtz9+1iHqr0SaOG7WDgx9RAgvwpG/zd6U4A6Xx6trB76ypnUwxcaW/T9zd0C9he/ftLSi5
	+ktkNKGK4G7RChPbskUpgiiwa0PR5ewt6GsCsW3fNUDN4tgh/I9uj2DAz5Vh7ZbVfkde/ONA8q1ZU
	sgRQCBGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM2TU-00000006vYb-3mjn;
	Wed, 28 Oct 2026 12:09:48 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM2TT-00000006vYF-0BfI
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 12:09:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 29E9A601F0;
	Wed, 28 Oct 2026 12:09:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E7451F01825;
	Wed, 28 Oct 2026 12:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793189385;
	bh=bvZsWGjE5bOOOfMNzS9INtnRdMpQ11g4gS7L2uDyTi8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MM62gqiKS2/oZGrVIYik3VvmM2YN0UvVIeo+uvT/paMBKTy6nYfrK1+3Vs0grys1C
	 6GwZmi7JkJ9AGG0l5L428XfkDaIYCAe6wBmlVFXQCjXO2xnVtm8CKu7xk6d/ZgZW1R
	 TGaPIyeebuxoQ8WS5kZZjkQnqBYPOpcPOmeUSPlnd8ctpn4/AlD56irsmZSoikF0l6
	 mBo/zjhWtXJw51FB3UtNCNjLEyKpfz4ULuP4GpmhuMJswqCEedyuczGjUGjwVmPcGc
	 2hGIgkDybXZg3+4IIN4M5mWzTWOri4npvffJt+jBY71Ys8L7BdRvBAn8zgW5tDSYlr
	 cgiJVrztQI3MQ==
Date: Wed, 28 Oct 2026 13:09:42 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vladimir Zapolskiy <vz@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
	Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	linux-phy@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v2 1/7] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 SM8450 compatible
Message-ID: <20261028-abiding-soft-beagle-18a1bd@quoll>
References: <20261026224957.1115370-1-vz@kernel.org>
 <20261026224957.1115370-2-vz@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261026224957.1115370-2-vz@kernel.org>
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

On Tue, Oct 27, 2026 at 12:49:51AM +0200, Vladimir Zapolskiy wrote:
> Qualcomm SM8450 SoC has six CSIPHY IPs, which are compatible with Hamoa
> ones:
> 
>     qcom-mipi-csi2-phy acec000.phy: CSIPHY 3PH HW Version = 0x40010000
> 
> Hardware supports up to three different 0.9v level power supplies for
> CSIPHY0/1, CSIPHY2/3 and CSIPHY4/5, but there is just a single 1.2v
> power line VDD_A_CSI_1P2, which supplies all CSIPHY devices.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>
> ---
>  .../devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

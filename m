Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE9A606A905
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 09:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wo6VSv+o;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=To4KO2RE
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=O1rmk6L7C2U0Fhybp4u1yGAi4U2n6mW7ZT0Afm10EdA=; b=wo6VSv+oZ1exp+izyGxsbp4EjM
	Y/hMs1a+jzbxy1VTcyj7W+ryTniYzNuicb+MUU0n6i3ocLBcvMNOxF6GZdMUpMZ2biovc1iYTp7ny
	JPtxBNh3djdFErf2o0LXyfdF4jrwHdrwqv8o4n2vBvx+sy21HPO8ev5tqBWcr4g+8QQJfFqzkVAeE
	KRQ1Fq8JgKuvYON2jyqwq4/TEoMyHtGdfGzdPoCfH42VegfbJwsb00dBfaRB8w9neD2A0/zWrhJg7
	VT5IXzsUPir5/+1cVF1jcQ0Bo9Qh0AVnwDjykrAU5S7mLA0T40v2R8ROWA4JpMtKdBjUN/jOH4H+S
	hr0eO1wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQi41-00000003FY7-2DKH;
	Tue, 10 Nov 2026 09:22:49 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQi40-00000003FXo-3IWj
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 09:22:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3C6CD469F8;
	Tue, 10 Nov 2026 09:22:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 783711F008A3;
	Tue, 10 Nov 2026 09:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794302568;
	bh=T/00q7GdXxYhOSi56pmqRGTBfomrbHHL5rHo9nrPOFY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=To4KO2RE5ArLiLQdHwpN0YGmIrAUshdpjNAcFC8N55W+7Cl21i6FQdzHNYkTiHvF9
	 w2xx1Oi6muL1FIpjd9/8C9xnVFaxS3Uz8dkzONJq4kwQx52lzTkDs3qJrES5rvTw/H
	 6cj9UeZVauM9fk3abfcKyDFvRg7Lzu8hTe0g3nU8sIc/K4DzJg6XjPb2wCJaNlPbZW
	 CxxjAPCBMtWgKHwcRwD1Vi+NBHNW6SG8sXTrzAnZJTcgzFGS4Wyo/EOTExribpuygA
	 80StOXQeaGJgNwWcCHP69f9os5wT5HKzj1rbkLV3w0NQLPATTLv1J3QM2xwY+V78KZ
	 iMa7u2MwHqA6A==
Date: Tue, 10 Nov 2026 10:22:45 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Suresh Vankadara <svankada@qti.qualcomm.com>, Vikram Sharma <vikram.sharma@oss.qualcomm.com>, 
	linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-media@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v4 2/6] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Hawi and Maili compatibles
Message-ID: <20261110-cordial-gecko-of-trust-c864dd@quoll>
References: <20261106-hawi-maili-camss-v4-0-d528c7a797b4@oss.qualcomm.com>
 <20261106-hawi-maili-camss-v4-2-d528c7a797b4@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261106-hawi-maili-camss-v4-2-d528c7a797b4@oss.qualcomm.com>
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

On Fri, Nov 06, 2026 at 12:20:43PM +0530, Nihal Kumar Gupta wrote:
> Hawi and Maili integrate the same CSIPHY IP as Kaanapali with an
> identical register interface. Add qcom,hawi-csi2-phy and
> qcom,maili-csi2-phy falling back to qcom,hawi-csi2-phy.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

How my tags could appear before this signed off by:

> Co-developed-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

? Are you sure you used b4 to collect the tags?

> Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

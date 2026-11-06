Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90738606D823
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 12:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DH/S/vDf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=iTYH+pXW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SaR1qlr0nOvl6UI3dc5+69bUlJsQoLsPqFYXO4AT3/8=; b=DH/S/vDfmdzFRT3lybESzQbhJj
	+PLbEEG25nn0eKI3lDu1DXOSP0E7s5fE/mgeXsdAJupNyhxtcENOZsSf2h9fnjOO27Cph68rLp4NS
	1uJ9KpuD3bD9ymb2fIu0RNNqZ42/MqfL6NhuRtPnNx26QDlM5q+O3ye2FxgxMA5QjagSYIV/q4Fs+
	vLrf7xO/5UL2lb27Xvyq4rXYDw+31kag0fTWN6R8ySFc4CJh9WX68uugpQOcJ/L8dT4B04Fp6ZUI/
	9ekUKCnzM7MvyM6xiv3+8GXFzjTSpknWZN1JPaFG1e8ZLsLuYtJh2wKb8anH2LM8tweNb1rE+/rzk
	yVgBpLHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPIiu-0000000CGXC-0pUv;
	Fri, 06 Nov 2026 12:07:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPIir-0000000CGWw-2Omo
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 12:07:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 11C9943B77;
	Fri,  6 Nov 2026 12:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CEC01F008A1;
	Fri,  6 Nov 2026 12:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793966828;
	bh=hQArWZ2nJ4tUg9UwI0026s5MUwQ8Koaiyp0KnkcV9us=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=iTYH+pXW1fl4l75IlJ9re65fWhO2CmdTJjgnolNlbsgkBxAoLyqOvzwbYnFJE1er6
	 THq0En3x1ilSJNMYgQoiHktRFjrra2cUG7ZmZ+lV+H6vxlzTJFbATJkxQM6pUTLlqh
	 L3Hg/7zSrUfSBtXNOCB2N1gFtmx2sCMpo7b/4wyZV6ZsFAHDe5H6oZwxZ9GyDjkotU
	 CiufXBxvQFE7mQ4nRJDQI/C5j/aPUSH4UU0eoHQyxof2CS9BNACBE8fEQ1ItGGngVU
	 AiphiqiVS2uLwiQcH6piOlvKDAiuWJPrBSJeQsgT9XjHlViHQHh8r+8a1rM2GYVx+F
	 fHUKk2or9oFIw==
Date: Fri, 6 Nov 2026 13:07:05 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Bryan O'Donoghue <bod@kernel.org>, gjorgji.rosikopulos@oss.qualcomm.com, 
	hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com, jigarkumar.zala@oss.qualcomm.com, 
	linux-phy@lists.infradead.org, linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: phy: qcom: Add common qcom,csi2-phy
Message-ID: <20261106-pompous-auburn-locust-e959bc@quoll>
References: <20261105235137.2635442-1-anusha.nandi@oss.qualcomm.com>
 <20261105235137.2635442-2-anusha.nandi@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261105235137.2635442-2-anusha.nandi@oss.qualcomm.com>
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, Nov 05, 2026 at 03:51:34PM -0800, Anusha Arun Nandi wrote:
> SA8775P, QCS8300 and SC7280 CSI2 PHYs are bit-for-bit identical in
> devicetree shape (ports, bus-type, data-lanes, operating-points-v2,
> clocks, single "top" power-domain, vdda-hs/vdda-lp supplies).
> 
> Describe all three with a single qcom,csi2-phy.yaml and a compatible
> oneOf, rather than one standalone schema per SoC. QCS8300 is further
> required to be paired with a qcom,sa8775p-csi2-phy fallback
> compatible, the same way other Qualcomm bindings express full
> hardware compatibility between two SoCs (see qcom,qusb2-phy.yaml);
> this lets the driver bind QCS8300 nodes via its qcom,sa8775p-csi2-phy
> match entry rather than carrying a duplicate one.
> 
> qcom,x1e80100-csi2-phy.yaml is a separate PHY with a different shape
> (3 clocks, 3 power-domains, different supply names, DPHY split-mode
> support) and is left untouched, but port@0's DPHY split-mode
> definition (two endpoints, lane-count constraint) is cloned into this
> schema rather than dropped, since this PHY supports the same split
> mode.
> 
> The supply names are vdda-hs/vdda-lp rather than the hardware's own
> power-rail names, since those names aren't guaranteed to stay
> consistent across future platforms using this binding.
> 
> Reviewed-by: Jigarkumar Zala <jigarkumar.zala@oss.qualcomm.com>

I do not see how you answered my questions.

Dropping from DT patchwork.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

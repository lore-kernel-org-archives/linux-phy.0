Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC7060A2607
	for <linux-phy@archiver.kernel.org>; Wed, 18 Nov 2026 21:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=w/S76/o1;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=HTqDh8QD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pud22ueChSbf7qhpEfwV7BR35mwRy9NuwG1OoeeKYHI=; b=w/S76/o1AkE6A+OW8Tg4GQhp++
	mu60+RdHa04TrhDU+TqTeyF9i347WE4k/IYSf8dVjHsCW/KBH7sTmVddqD8/NYwpZhjzaUt+y32BP
	zFqZjGhm0R23e81dhYlJHedLLfz7PuMux6ml4ygsPxJj1A91ZcErbBS2cW170RWCJt+BnIgdNn6nP
	l/1Eh3vTD1BPUxjiHy5g2PJm1DSDiZTpF55bbslGMGeXNzbOIs3cR0z69ndDjjvlbtmOQxxbo+ka5
	FnWy8DwkcejzW7Rdnd6jFqxLRD7GGRx9PoGabvmtyIUBZL0j8t/rzJmeIc+y2R8EhJW/KFiFEl4+i
	oQHbY4FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTn8Y-0000000AJ7s-1AIx;
	Wed, 18 Nov 2026 21:24:14 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTn8X-0000000AJ7P-27dZ
	for linux-phy@lists.infradead.org;
	Wed, 18 Nov 2026 21:24:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C88D963E31;
	Wed, 18 Nov 2026 21:24:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4379C1F000C8;
	Wed, 18 Nov 2026 21:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795037052;
	bh=CBZ4MUDN1V6G6hrYGqXNAHH4lS+mS4YrSWVjq50XU4g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HTqDh8QDi3DGGaQUwXFEviTDlrmX2axB052QtdHd8dMFcNwdO4DSGIt+93JSBpLm5
	 xSt0q3Ru4nrkGdckC03eujeEOS9i2UHgl6ezymWi9Og8k4swawOVYhOXt2ZGxjyBDL
	 vDLGluqblK/cL60WiCTdwz0v/xo5h9hv01p3WgTK5808ui3xCOp+nIAH//q0WHZPdh
	 J4fAngvIE+VoVYFw0H7zRxo6JQwaC+Ts1HN+uGnyhyquxE1P1v8ft/70bny45NfsjC
	 pLH5ad8QyPjRbdpy7T5bbK73w+kZ0AmgqIm2amo/qvXpdklHwxmMpkR29+cbJHXMbh
	 arwdaAf2N4+iQ==
Date: Wed, 18 Nov 2026 15:24:09 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Sean Paul <sean@poorly.run>, Shawn Guo <shengchao.guo@oss.qualcomm.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Simona Vetter <simona@ffwll.ch>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Mahadevan P <mahadevan.p@oss.qualcomm.com>,
	dri-devel@lists.freedesktop.org,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	David Airlie <airlied@gmail.com>, devicetree@vger.kernel.org,
	Maxime Ripard <mripard@kernel.org>, freedreno@lists.freedesktop.org,
	Bjorn Andersson <andersson@kernel.org>,
	Rob Clark <robin.clark@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v3 04/11] dt-bindings: display/msm: qcom,sm8650-dpu: Add
 Qualcomm Nord Soc
Message-ID: <179503704934.1079357.8885119101380287004.robh@kernel.org>
References: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
 <20261116-nord-drv-dt-v3-4-e3d3bf0e2c49@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261116-nord-drv-dt-v3-4-e3d3bf0e2c49@oss.qualcomm.com>
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


On Mon, 16 Nov 2026 18:46:43 +0530, Nabige Aala wrote:
> Add DPU (v12.1) for Qualcomm Nord SoC which has noticeable
> differences against SM8750 (v12.0):
>  - Added DSPP blocks
>  - Added INTF6-INTF10 and removed INTF1,INTF2 and INF5
>  - Added one more DP
> 
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

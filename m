Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B601606A329
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 18:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rl24FfBh;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=OG5tRoyl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=NkhEHsCheQiFzfOW1ZsCHYoYp29uDvsros4102321Hk=; b=rl24FfBhQL97w/6mE5WpW+U4D5
	wYGsJvBM6Lgg7dwu/j2nTn3gHA3KnNaDbqjHkPtip5C+cpFJLCLvqjY8PsyNjsw/Oa4350MY+MF44
	eMKVq/4tariX6xh3Tp5kHAjzW1o03Wl67eG4h3kvxnfL3FK9+dx05s3ccP46s4d0zCZ6XAB401iqB
	c62PANow1tCCSfNkAoW7I9iSqwB0JoJiAry4wyGwBA+9yy+BxPd3ZyJORny33L+3qolthwHxS4FSP
	iyzhqrOnQlnlN8cSfUBtTcxw4KCCDP1sLsgkkFlU9IJBeWsbpnt7cHwA1zTzSEXFFmBLgsaxUaNFf
	b+KQoNsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSIDm-0000000GaBt-0Ms2;
	Sat, 14 Nov 2026 18:11:26 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSIDk-0000000GaBl-3QwB
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 18:11:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D651B624A5;
	Sat, 14 Nov 2026 18:11:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9659F1F000C4;
	Sat, 14 Nov 2026 18:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794679883;
	bh=FCSaGjlxnw7pPlTl1Q+P/jOPDWEDl0aHm7WiAcU9bFQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OG5tRoylNjjrkMobibtdiUu8maLArQwAV74V85XHxh+yOoR3Kb1D5AqdQkBays/Hm
	 eCD7n2uu7QW2yNYMQTEeCCLlbSZLszHKW/2/bxzbe6vqVn7dvNJONWiWsc2nk34WAd
	 b82VWH6cSysj+/DUGP1PEV6LIzEVUsTRoF0Rs0gX+vfB2435QSMjLqs2cdkUSqH1zV
	 OP/C8AtfG39eanJum79+d9KR4wAP4CNJSUnCTitVUeq+t5ovRrI5Hd7Su0kIkfjiNx
	 uIhouxPxQUUKReYS+UrZ+b4v74OxsB/f8fYGr0w8Euz7F5V2Sz8rhK+gUtianlYX8K
	 0ToWIJ2eFJ7tw==
Date: Sat, 14 Nov 2026 19:11:19 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
	Loic Poulain <loic.poulain@oss.qualcomm.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>, linux-phy@lists.infradead.org, 
	linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
Subject: Re: [PATCH v7 01/23] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 SM8750 CSI2 PHY
Message-ID: <20261114-voracious-capable-guan-99cacf@quoll>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
 <20261114-add-support-for-camss-on-sm8750-v7-1-8ff2a11835f6@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-1-8ff2a11835f6@oss.qualcomm.com>
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

On Sat, Nov 14, 2026 at 07:29:18PM +0800, Wenmeng Liu wrote:
> From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> 
> The SM8750 camera subsystem has six CSI2 D-PHY blocks. Describe them
> with a standalone "qcom,sm8750-csi2-phy" compatible, so the CAMSS
> binding can instantiate the CSIPHY nodes as separate phy devices.
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)

Does not apply, so should be squashed with dependency. Why having it
separate?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

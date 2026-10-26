Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B01606A329
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 10:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=pG9UnTb3;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=RWMWXrYP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HzgqT6F0q2M0JpnUX1+krcMAsS3QDMk98r6B7Hb5u0k=; b=pG9UnTb3DLTVOcGRiKkUND0hIw
	tJOhTM6haE4+Eq5GhapJ4GwYIiRH9IA4RHHoIF93Pp6Q5P1JIeem3scG7Moc51czL5+bLqiWLfGlq
	4HrBPPFy07dK8C7nA7QpKn5rpXh21BOh5lVDEc+ZStm0NRuBNbzUg1IPSu1ijFyb6f24jRU0Jt/OC
	VfzIvR2mx2nFK6W5enqM+PmUXNR1xGQ/4m2CDQ1GVEyfvOaq9WHeGFgBgOt5QTVVR2Ikt9lPY58G3
	722+LbLS0V5VU5K3C1ZmjaWdvoji1udpXS3af1kDaUGzsWzzkW4xoMrpNxT/fcDMXJiYHfhXy2n9H
	dvIq2Vgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHYo-00000002C7y-43aS;
	Mon, 26 Oct 2026 10:04:10 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHYo-00000002C7k-2QiB
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 10:04:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4203143F16;
	Mon, 26 Oct 2026 10:04:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20EA31F01825;
	Mon, 26 Oct 2026 10:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793009050;
	bh=DMDVfX/60j1T/4I3Dg47M+PWpk6OsCfOmqDTjZw5jMg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=RWMWXrYPo9GT3fZIU3eVnduHhWuZ9rtelr5f+AJR/r6CuR6tKVTlOzvsIxGN2qh9G
	 hIEsLnUF59YGpGkpE4ZxFNnq7CNIv7UhG4Y+NXBahwvPP3uWIAfSTx2uchvoxUm62C
	 i1dVCr0/nYK83bwBVVrtFQZLC2TTHBS0+oHyBMC1gFxha+53DHA85zIPm1eEDAJV+4
	 G7ACY0/x425MX74Td5D+a5OGVIQl17jjERvdqD0ejFZYDHcMv2JbhacGuobMSXu0fz
	 ZxaccTGzeqNPWyxhoi4GMy1Axj7PEwqG5Xm7gUI7ZCf7oVGzNdiSmEaNxenF5GKEbB
	 NRz2tJxKdM1MA==
Date: Mon, 26 Oct 2026 11:04:06 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vladimir Zapolskiy <vz@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
	Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	linux-phy@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 4/7] arm64: dts: qcom: sm8450: Add CAMSS device tree node
Message-ID: <20261026-lush-boobook-of-luxury-39f184@quoll>
References: <20261023163057.775917-1-vz@kernel.org>
 <20261023163057.775917-5-vz@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261023163057.775917-5-vz@kernel.org>
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
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri, Oct 23, 2026 at 07:30:54PM +0300, Vladimir Zapolskiy wrote:
> Add Qualcomm Waipio CAMSS device tree node to the platform dtsi file,
> the CAMSS input ports are connected to output ports of CSIPHY devices.
> 
> Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 167 +++++++++++++++++++++++++++
>  1 file changed, 167 insertions(+)

Why DTS is in the middle of the patchset? Drivers cannot depend on it.
Please read submitting patches documents in DT.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

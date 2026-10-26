Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2679960A260F
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 10:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=B/SWExkh;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=JNUmY/f1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Qo1TcdVjZsCvC3NuGo6pKM2vPmgj1mtEz491VuWkWzg=; b=B/SWExkhJBf1dI4uO2nMgV0oek
	VWQwcZzg6Vcv/wSsTW3ofy4Nb54b/0Kkj/KjLkR7YjWqf9nwShlldxFrAw/0IZI4AtQMm6hcEC4S4
	FkgbL/7a5mmJ8v79i+6v5IR0NBDYubKWQUtp/MqdAJmnjUrw3WJcli0uZBiSOv4Yy4WCQG4kXXreu
	ahgHbgK6jWTviPqn7s0QQ0VKuo/vDURPT3+4NF7JOqN5F8DwS2tIWQAkF3ag0ynEC3cQVVqXJWhX9
	HKEGN9HnvV/MGHUcqlrv5uXg628u5ZDA65TyBHPpM+jUQkGGEdUeKhV7zG1ZFPhEvybS1M0dKmJIM
	5p7B0Y0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHaC-00000002DFn-3MMx;
	Mon, 26 Oct 2026 10:05:36 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHaB-00000002DEd-178J
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 10:05:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 095CE43BF2;
	Mon, 26 Oct 2026 10:05:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 231101F01280;
	Mon, 26 Oct 2026 10:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793009134;
	bh=v3NFjaWHJ7bvY/XjUsWqfVhJKdXmtOe9orl9OG18QrE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JNUmY/f1bWpfjbH9LtqVnLBAlIdmMwk6N0DcxVqbLTL2BtepF/2tBpP4UX+lGhgAD
	 5msOx7ZpM68mrWl0skdAip46EVF3ulm3nKhPMeKQw6TJV7SCaDzTDbp+1Gs5zx6nRY
	 AXhGZbhQLbhQRN0wc0fGHLJzCiDdl/rcrEfOKihGDQ+LIYrxeLDyfW+6JCWmZBeoVU
	 +EQRhTt7MRXWkjOChsNF+KpewRw3pCTHTV1GtrnqVw6vCKeBYmBxbwDbqb1uI98x+T
	 Czz1zpBVZTh5Ng4aWDUFSEXpsfw/fq3sim7FmujJtt9mHNyD5o0EH4iroxGbpSNc9u
	 NT2FVNhke6CBw==
Date: Mon, 26 Oct 2026 11:05:31 +0100
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
Subject: Re: [PATCH 2/7] arm64: dts: qcom: sm8450: Add CSI2 PHY device tree
 nodes
Message-ID: <20261026-zippy-diligent-curassow-448dfe@quoll>
References: <20261023163057.775917-1-vz@kernel.org>
 <20261023163057.775917-3-vz@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261023163057.775917-3-vz@kernel.org>
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

On Fri, Oct 23, 2026 at 07:30:52PM +0300, Vladimir Zapolskiy wrote:
> Add device tree nodes of six CAMSS CSIPHYs found on Qualcomm Waipio SoC,
> and a shared CSIPHY OPP table for them.
> 
> Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 280 +++++++++++++++++++++++++++
>  1 file changed, 280 insertions(+)

Ordering of these patches feels completely random. DTS is between
bindings, before another DTS, before drivers.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

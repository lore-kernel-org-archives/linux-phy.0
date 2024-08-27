Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EEE1C54735
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 11:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GKkfbygVtGef6fAQBKxYblpvvinyKTq7a2JKv2gjDMg=; b=XTdf2IYBKIAEyt
	c+ohzBrufAEurGXPxVRHtQ4Emw8Za4JCiZcDFfs/bEVnw/15zr7A12N4ruY4fHjtvp2OFtQp5wTmB
	Tc5uh12aYGM6Lc82gagP/r5i70unIvOScKD8aWoGAWwkstLbmOS+3u0OGA+GugqQQxelCR+9EysZu
	G/nFOEUYPfZxxEpTbfZ9D2Qkty95yRCoLF58TvZE8lsJx098MySI8IQgvO7HUtbzLyC+P5SWjjbpn
	GUH4MkiJ2mUH+c5NhXhMENoTCkaGiLJ04GrLqNIsdcCjW2PjBSs7DCEwRGEMH0UxhFhNHRwAxEIZT
	LM+fNmjlY9d9jD1E6H+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siufd-0000000B5kG-3Qrf;
	Tue, 27 Aug 2024 11:47:33 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siufb-0000000B5iX-22mM
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 11:47:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 856B4A4195B;
	Tue, 27 Aug 2024 11:47:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5202C515C0;
	Tue, 27 Aug 2024 11:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724758792;
	bh=4KOpM59ML50YOGsvJ+3FE065aYzzXQptCLzDTnBVYSU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hb8Uha/3QANkxXd9ZcRhuXvn2zqZZBvHCLZZxmH7fMhC4OGigRNX0UvwGmbO3aZAO
	 vml+wWHZOQh+c50od7XsNzM+gWkVXcUwEit29nDDsaxanFZWcZKHfGxtKuk/0Qj3Y/
	 OLY7dnoL5c5dHNcUN/Eg5edjDr6/efAZbE6oCQEUwyVruQMQP24F6CKke19Gr1hLxf
	 g+dDoCJuHwVaBahO7qtHr8Qi+9B9FugS7FzfgaYC1Msxj0QfHHylr71KWWaK10dMWY
	 Qja6ugApd2OLReR+H0ifMqWpocrdciHXGzHt88RJPJPtubM6qgIViSdniT00aZP6Ye
	 CNdmKXNN/WzPg==
Date: Tue, 27 Aug 2024 13:39:49 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, 
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org, 
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH 4/8] arm64: dts: qcom: x1e80100: Add support for PCIe3 on
 x1e80100
Message-ID: <ag3h77zczj5ttuz4bjhtqxpllyt4di77gwaavdcdlhr5anv6yk@ygzb756hcwvm>
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-5-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240827063631.3932971-5-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_044731_597006_16EAB636 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
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

On Mon, Aug 26, 2024 at 11:36:27PM -0700, Qiang Yu wrote:
> Describe PCIe3 controller and PHY. Also add required system resources like
> regulators, clocks, interrupts and registers configuration for PCIe3.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 205 ++++++++++++++++++++++++-

Why DTS is mixed with the drivers? This patchset is organized in
confusing way. Please use standard upstream submission process - DTS is
always the last in the patchset (or separate).


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

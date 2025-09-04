Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC330CA1013
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 20:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1z9h+ZuBVYRu9UopgSgr2uC2KYWE+TUpCpdeRW+1TsQ=; b=C1SL/fnuxOQtFe
	+Y2v3esjFZIl90tnX+QhwRZK7d+dISYXQkC09c0qDmaHBLYtJi1r86xRq5X+P621x/nDcOCfScW7G
	VTJlTM/w6TmMctfeUZn/pwgDkCroEDEv0sWOqV+M4biXdG32cE2MxfTAWFgXE4iW84XaUQu37Aloo
	mG7zHRn2hUiHL3d8KXEhUc7PzsyLaQecSe6bEk6Q9kPMcI4gB8ArZ7ZRSnaYCk5VUi+Y/nff/ZA/i
	9cgfgxJFCR7bLIhaVD9H5jbr8NE0ajikVMKqE/U9UXMMxuEO1REw8OVQx+GWDsIBXqC1tWANydukG
	qs8NUdXFOJJz8keYau2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuG86-0000000E7Uw-2VnO;
	Thu, 04 Sep 2025 20:00:22 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuDGD-0000000D6d6-3G2E
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 16:56:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2F80460247;
	Thu,  4 Sep 2025 16:56:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5F2BC4CEF0;
	Thu,  4 Sep 2025 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757004992;
	bh=ImW7nHIDuggd5SOCEFLJtg//+l9EU7YE2MdTLZBVX0U=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=MRds77gtY9/UIeTs6xJ1na4Y+fEwwHKz8RbrhEw05lVhJg2qjBU4jA/gd/Qt20PoL
	 RQ8373z6Ew8Y8Ec9JEdo8yzm6XYY0LjgG82cnO22GjbgDKIgSoqQkkmhFDtO89odxl
	 ArtVUrFmn3bXv1307ZupGQg9x2VOZWj2DEt6pxhJnIrQFX3KJVoIUtXs7c9kca/frT
	 TqIFEa3XwwHkQem7GIEupiMkUEdS4EvBGTR3Mq0+nlqbcjDi/BY0K/D1FTumqTUprj
	 fFKtAJTPeUSeUVhX0ltlGOIF8y6mkKPG3cq8rynmAq2E0MjQC7rLFu9QxLM+EKKSwd
	 q2vYvZlEY+SZw==
From: Manivannan Sadhasivam <mani@kernel.org>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com, 
 lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com, 
 johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
 neil.armstrong@linaro.org, abel.vesa@linaro.org, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
 linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
 quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
In-Reply-To: <20250904065225.1762793-1-ziyue.zhang@oss.qualcomm.com>
References: <20250904065225.1762793-1-ziyue.zhang@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v6 0/3] Add Equalization Settings for 8.0 GT/s
 and 32.0 GT/s and Add PCIe Lane Equalization Preset Properties for 8.0
 GT/s and 16.0 GT/s
Message-Id: <175700498544.244191.11713819385906991702.b4-ty@kernel.org>
Date: Thu, 04 Sep 2025 22:26:25 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
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


On Thu, 04 Sep 2025 14:52:22 +0800, Ziyue Zhang wrote:
> This series adds add equalization settings for 8.0 GT/s and 32.0 GT/s,
> and add PCIe lane equalization preset properties for 8.0 GT/s and
> 16.0 GT/s for sa8775p ride platform, which fix AER errors.
> 
> While equalization settings for 16 GT/s have already been set, this
> update adds the required equalization settings for PCIe operating at
> 8.0 GT/s and 32.0 GT/s, including the configuration of shadow registers,
> ensuring optimal performance and stability.
> 
> [...]

Applied, thanks!

[1/3] PCI: qcom: Add equalization settings for 8.0 GT/s and 32.0 GT/s
      commit: 37bf0f4e39de9b53bc6f8d3702b021e2c6b5bae3
[2/3] PCI: qcom: fix macro typo for CURSOR
      commit: ea5fbbc15906abdef174c88cecfec4b2a0c748b9

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

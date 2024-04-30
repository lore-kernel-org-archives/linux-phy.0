Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D72EAC4345F
	for <linux-phy@archiver.kernel.org>; Tue, 30 Apr 2024 20:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDoUjl2V8XSYe+x8fUd+goavKqip7rJLPidDQ0We/XM=; b=UnHPQsaDsyLGRP
	70o0xt9hMDgxv8dZ0lBzz5Enge8TiJZ8GlYVnOeWyHZZ3zZD91EbHh5nI+B6V7xw1WgytmYUseUNZ
	yv6KiR2ZAPAxY4sybDCVxlhYDnVuV7E/vJ6VfOGx9RRXWNOWnA+YhfS/9RrI+Qu4mhOvouXpe+VCk
	wY61t8MCCi29HZPo0Aj1PdH9Hpn24oHT66tqsXJcCbVpzyiRYcJTiK1skAug4k1PJPDk9hYRMD0j6
	fg2oU08S+0rWmzHoKfW6fMfM3F44pjIr2cz12RKn4w/8nldX1rNObFgrsHdzEns2jZO0zy362Bg5W
	GISp40nnFRLUnIuHkmFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1uD8-00000007sbV-25rg;
	Tue, 30 Apr 2024 20:36:22 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1uD3-00000007sYi-05Vt;
	Tue, 30 Apr 2024 20:36:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0AF97615FF;
	Tue, 30 Apr 2024 20:36:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65FE6C2BBFC;
	Tue, 30 Apr 2024 20:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714509375;
	bh=Hkj282ZLhfbSUGTDTtv67ovkyS9SO/gWC6U/Vkj6ntE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OetM1xSZk1J0d3YpjnwC9bXo2yKgdoivZ1Z2sUGNB56z1UgB9XmC+L6fSQBlWbQI/
	 qKFuZWpF+P3kxNZoRXRfqPW6cU6T2XJW/G1Ux4af34+Tp7umnXcllQyUj+UjP06+p1
	 a8VxltRmcsXGj1X7eQi9/gFo9y8jKV4xsGQy0EYHtFR8sWygzcmIb1Fd2WNYomut6L
	 3qatP8rGrvwURD97AJZD99iqXpbk1DUASWyPQBNibwd+HI4tSiLzVkOWoEaMwko+9O
	 e5ag0rcBDxffjSolV52iuRTxMkxf+ZNKtRV7ltVDUlTtkO8w7m+zvq40Im9rf7Wm1z
	 Hu7AibVsyDe0Q==
Date: Tue, 30 Apr 2024 15:36:14 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>, Eric Dumazet <edumazet@google.com>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"David S. Miller" <davem@davemloft.net>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
	Bharat Kumar Gogada <bharat.kumar.gogada@amd.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Michal Simek <michal.simek@amd.com>, linux-pci@vger.kernel.org,
	linux-tegra@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
	Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH] dt-bindings: Drop unnecessary quotes on keys
Message-ID: <171450935610.1153506.3784386455405156371.robh@kernel.org>
References: <20240426202239.2837516-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240426202239.2837516-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_133617_975709_46B8945F 
X-CRM114-Status: GOOD (  10.52  )
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


On Fri, 26 Apr 2024 15:22:37 -0500, Rob Herring (Arm) wrote:
> The yamllint quoted-strings check wasn't checking keys for quotes, but
> support for checking keys was added in 1.34 release. Fix all the errors
> found when enabling the check.
> 
> Clean-up the xilinx-versal-cpm formatting while we're here.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/net/sff,sfp.yaml   | 12 ++++++------
>  .../devicetree/bindings/pci/xilinx-versal-cpm.yaml   |  7 +++++--
>  .../devicetree/bindings/pci/xlnx,nwl-pcie.yaml       |  2 +-
>  .../devicetree/bindings/phy/brcm,sata-phy.yaml       |  8 ++++----
>  .../devicetree/bindings/regulator/ti,tps62864.yaml   |  2 +-
>  .../bindings/soc/tegra/nvidia,tegra20-pmc.yaml       |  6 +++---
>  Documentation/devicetree/bindings/tpm/ibm,vtpm.yaml  |  4 ++--
>  7 files changed, 22 insertions(+), 19 deletions(-)
> 

Applied, thanks!


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

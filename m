Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 444DDC47DA9
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jan 2024 17:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BvgoIx452tEC2N8D7TrfWQCXp4cYTlnbiXXEaY/9lV4=; b=OZE4IFHWs7Ok/+
	OpNQrFd8Ox4+jI7WYv3Q+mWg1Zn38YaFENS/qHlliI4RH7Y+PlQDDc+S3ErHaGe5VP7rp5RGlOe/3
	BQxVfhUx+c6D7FHZFfS6p2D/Hr6T+b2dkAwXo4VVrbDhQ8V0TPQoBsyU2uaCe0HZyBj2PDMCzWkEn
	GX3glKM7DfWqHwpcxvExFnIjNjRA2kgsV+tDhmjnwP3/V1ynxac9dwuN3Z/WwNXvuE7Sg4zIAwsuE
	KZNfOB8SBTJ7dxFNiZuq9B3LUG0BiQbv/EBjWuIqfCIwRFqNkPVkdWKnkXfWoQHM4G1w2qzp+XHDa
	84q1MHA5qd1KTeA1oq3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUrhF-0000000HWiC-3mkE;
	Tue, 30 Jan 2024 17:14:53 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUrhD-0000000HWhf-313y
	for linux-phy@lists.infradead.org;
	Tue, 30 Jan 2024 17:14:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 034F260F0D;
	Tue, 30 Jan 2024 17:14:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC0B3C433C7;
	Tue, 30 Jan 2024 17:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706634890;
	bh=A5T8FP/fhIVtH/olVEw0tzShluBYACTWaf+iE7kNjHc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B5sVTDYcZYQd6secc+1JOjx11SzAr4mybLbcRDSte3T8Xi62OLzcth2fj04pGx37w
	 SfdAaUIfYHZH44RnWaSeE9sFYUpJAVvbBDO1o42UR514TdkB7qJPRdy2etQ45uYCp6
	 DIKvVDpDFZohfFtwzm/tEAh30eyIsJHjeuts7GQ0PVks8OaC0jxNKjgm4tQXYFs9hz
	 WaskVbC/gMNGEhjIWK5Ytt8jNaVc1+Ck49ELh5odrADWqEZb0B1IMltoNXWNuBjPo8
	 WmLTkMkGEXr3xmf7AVnWdDUD8uDtkj4AzA9k9SbGrVkMM2T+8RC3RXS4Vs3RYjQBSj
	 MPdAOv5LpsXWQ==
Date: Tue, 30 Jan 2024 22:44:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 04/14] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Fix
 the usage of aux clk
Message-ID: <ZbkuhjOa31ma3Mx8@matsya>
References: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
 <20240124-pcie-aux-clk-fix-v1-4-d8a4852b6ba6@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240124-pcie-aux-clk-fix-v1-4-d8a4852b6ba6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_091451_821941_93778984 
X-CRM114-Status: GOOD (  14.22  )
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

On 24-01-24, 13:06, Manivannan Sadhasivam wrote:
> On some platforms, PHY block requires PCIE_PHY_AUX_CLK to be used when the
> PCIe link enters L1SS state. On those platforms, a dedicated
> PCIE_PHY_AUX_CLK is available from GCC. Other than this, the PHY block
> doesn't require any other "aux" clock, including PCIE_AUX_CLK which only
> required by the PCIe controller.
> 
> Historically, the DTs of the platforms requiring "aux" clock passed
> PCIE_PHY_AUX_CLK as "aux" clock. But over the period of time, platforms
> that do not require this dedicated "aux" clock mistakenly started passing
> the PCIE_AUX_CLK as the "aux" clock. More recently, SA8775P platform passed
> both "aux" (PCIE_AUX_CLK) and "phy_aux" (PCIE_PHY_AUX_CLK) clocks.
> 
> So to clean up this mess, let's remove the newly introduced "phy_aux" clock
> and just use "aux" clock to supply PCIE_PHY_AUX_CLK for platforms that
> require it. For the platforms that do not require a dedicated "aux" clock,
> the clock is removed from DT.
> 
> While at it, let's also define "qcom,sc7280-qmp-pcie-phy" compatible for
> SC7280 SoC which was earlier using the compatible
> "qcom,sm8250-qmp-gen3x2-pcie-phy" as the clock requirement has changed and
> also restructure the "clock-names" property for the affected platforms.

This one fails to apply for me

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

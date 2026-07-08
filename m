Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EF89C44501
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 14:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4MtSV2DaZ0ULkx6UWIcz1fiDdJsgI32O4yWit3Qd3pQ=; b=bHKbHLaHfpIuDt
	MPNvBmwpDaTuZLoFmmbVu4U5xsQ79tpAR7nNbmulAMLIKMuD7Q2UQ9mK+MKttO/ZuQGG6cz+R0o/S
	O4uVgXl1qdnH1SIvtwjqIiTyHMBruyoPUpttxVQm3v5v3kL05Zpw1AceQ+Oe8XaGRjgKeBjbf2YPd
	t/O3Sg1SqjjNsUknN/tbStyTy2N+jj72u6DxQwawYL8KVKbK8L8gYVo5BxlK1Gyz7oWnimu4v4iWD
	Mx4SZqxofp/YkuIpNT8C6fgGDFJiGJugcldc/cBFYvAtOfBWls5sdXOgPltrl0rR1HsXCEwlTYh8/
	Im7Fj7AHQtQf40AJhI/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whTiU-0000000HPcE-0HbN;
	Wed, 08 Jul 2026 14:57:38 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whTiS-0000000HPbb-1jTU
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 14:57:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BBC8B600B0;
	Wed,  8 Jul 2026 14:57:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D512A1F00AC4;
	Wed,  8 Jul 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783522655;
	bh=qoZ280uhy7JTGVkTvQaxSlDpOpz9ZrDz5L1tLvCiprI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=br8aoGydkb7csIpon1GqWw8aTALYLC9KWCh9PZD3GaKPomWHmt0jaMzgkw4cxhtN8
	 R88mV9PFowCj/H6iM0mPGnGv3qt663KJdDQb9GEf7BvXiiS+FWclL0x/NvGPz2SLKw
	 iqRWlZ/iFiOWF9e1Uk4j1fIB3aY2u9DXIhmzAxXDNW91fvhoViEbxNnqQJjFlvWn6D
	 2SKvqagaajD3dvZ2XGnkMPP1PnZNgam8Mrn0+TfR/ppBQtcJmx8VtRHg6VNeN2c9v7
	 73JpUuMR2LYJyyZaKaAxvNnNCGzuYTRIwd3SXsOQBvG1oQ0meD7ErxRW8gEWUJR1Ow
	 W7EImo64rugqw==
From: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Ulf Hansson <ulfh@kernel.org>,
	Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	monish.chunara@oss.qualcomm.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Imran Shaik <imran.shaik@oss.qualcomm.com>,
	Monish Chunara <quic_mchunara@quicinc.com>,
	Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
	Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
	Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
	Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
	Xueyao An <xueyao.an@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v6 0/5] arm64: dts: qcom: Add initial device tree support for Shikra
Date: Wed,  8 Jul 2026 09:56:35 -0500
Message-ID: <178352261652.2235436.7454171283560267964.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260612-shikra-dt-v6-0-6b6cb58db477@oss.qualcomm.com>
References: <20260612-shikra-dt-v6-0-6b6cb58db477@oss.qualcomm.com>
MIME-Version: 1.0
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


On Fri, 12 Jun 2026 22:57:36 +0530, Komal Bajaj wrote:
> Add initial device tree support for the Qualcomm Shikra SoC.
> Shikra ships in a SoM form factor; this series covers the CQ2390M,
> CQ2390S and IQ2390S SoM variants and their EVK boards.
> The series adds:
> - dt-bindings for the Shikra SoC, CQ2390M/CQ2390S/IQ2390S EVK boards
> - SoC base DTSI
> - CQ2390M SoM DTSI with PM4125 and PM8005 PMIC regulator definitions
> - IQ2390S SoM DTSI with PM8150 PMIC regulator definitions
> - EVK DTS files enabling UART and eMMC on the carrier board
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: arm: qcom: Document Shikra and its EVK boards
      commit: 62eaf922d773c89153fdc6f612d4783610a4391a
[2/5] arm64: dts: qcom: Introduce Shikra SoC base dtsi
      commit: 14a9b4bcc8dad3eee35faea4fde9ac31507e2ab3
[3/5] arm64: dts: qcom: Add Shikra CQ2390M SoM platform
      commit: 28ffbb18c21e8baf9bf4440e8ef949b1b7030a4e
[4/5] arm64: dts: qcom: Add Shikra IQ2390S SoM platform
      commit: 8dbf2a0283b1f7beb464b598cee37af69ed73640
[5/5] arm64: dts: qcom: Add Shikra EVK boards
      commit: 2ef5adff2d38698cad70cb779555c9c173f24d2e

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

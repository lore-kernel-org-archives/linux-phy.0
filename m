Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69653C35FFC
	for <linux-phy@archiver.kernel.org>; Sat, 22 Mar 2025 20:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a8gqgh+v4BA1qZKE04NCF3A1e/dj8bq9iAnsJePKXDg=; b=Ezul9fac9sz4Kg
	/lVUddNNNT1gK656yosHSnvCPbaEQnyMhri4pMtSaD5+FQJ3H9WdVOsCfgoULGviHDjPQVT1Iusi9
	nA7LhjbSJwZJFMEALuT4z3SaPuD0w8xXYrtbk3h76p4Lcs8hOgJW9pVVJvPvSJAgirvTwl93d7CBk
	i8BGHULAI48GTzWNo5ebtUxC1s8K7uNep4L8C8U6zJexx2Oya5ZsDue6HhrIkXH7guyduaaT5pi+5
	rLyuB37qVwWkIHvb5o56gGmSpz1pcAty5chJgXJ25oYGS5mcKkJNyV752T5EP1t7+BThgLvNqO3c/
	SD/DVN6g1zjSiH9Fcu0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tw5GT-00000000Gpz-2TcI;
	Sat, 22 Mar 2025 20:16:17 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tw5GS-00000000Gpo-0MTR
	for linux-phy@lists.infradead.org;
	Sat, 22 Mar 2025 20:16:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 66D5D615F4;
	Sat, 22 Mar 2025 20:16:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD3A2C4CEDD;
	Sat, 22 Mar 2025 20:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742674574;
	bh=wG6yAeIvUo6cSeHVafODK9l9ixZ9Z1WMTlZDD5+ozSg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EtX7M70jBfnFvZxZYHEHqcW1hrL/wSrQ2OerVfeABCqaRzjfX/lolndYDCTi+SExi
	 Gmkp+tgxoIPavEepxwiUTjh5AxJyaD53cpkrByFt0wIjVHvzfLdKmu2nFnYgJlgs4h
	 auauWj0I39DLdf04e9GLeL94RLYT8HNCO006oka5KrfxBYjH7LacCBbX1FpVl/Q2dN
	 CNMRC7S+R7MkMT+AdLuD7xyXUcKZRB3GuqVCaQfpix+MwcbHkB5JlM+MNXVW2ze1pU
	 bLAlYZFWAuzXjq+OyKO54fiZY1u1WOwsNy1Y8v9wGcOOsuX3w+ocSfEY5dxPA5iMEb
	 Kb3tCRaECrvfw==
Date: Sat, 22 Mar 2025 15:16:13 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Sricharan Ramabadhran <quic_srichara@quicinc.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
	Bjorn Andersson <andersson@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Nitheesh Sekar <quic_nsekar@quicinc.com>,
	Varadarajan Narayanan <quic_varada@quicinc.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	20250317100029.881286-2-quic_varada@quicinc.com,
	linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [PATCH v6 1/6] dt-bindings: phy: qcom: uniphy-pcie: Add ipq5018
 compatible
Message-ID: <174267455671.1906457.16602134107538739913.robh@kernel.org>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-1-b7d659a76205@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250321-ipq5018-pcie-v6-1-b7d659a76205@outlook.com>
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


On Fri, 21 Mar 2025 16:14:39 +0400, George Moussalem wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> The IPQ5018 SoC contains a Gen2 1 and 2-lane PCIe UNIPHY which is the
> same as the one found in IPQ5332. As such, add IPQ5018 compatible.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  .../bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml | 49 ++++++++++++++++++----
>  1 file changed, 41 insertions(+), 8 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

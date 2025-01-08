Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58E66E77188
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jan 2025 04:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPRRfDnwYOF0mo03bmfV+1/0nhFQrkd9MX4c8ROPjeI=; b=xDCgawusRSE2Ub
	Kp8pNlvaRmrgHXii8z8iCrf90YK57QLbstsnHSaR2WS6+BiR6a53c3PHUXtKMBjvsGNVcT+hna15G
	4U9lSI4sHx+67Yy/3lxEuk9/IjZkNdol/ApnEOEaf+E/xlAb3eo6LPaCrzr1U0FKrHIDJ8N6ml47K
	n7TZMB2MreUeycgq+uS/ubfyoM0LJsi5j180FKd8SRBOh/zXpkUb3cYm33M/CvzajHv29NBaEo6wu
	8K5Zgx3ZRu5tcsMB9PHxnLYZWfvYgICLlCfnrHV9M6T2eMLfVu60ikAsOROq1CkW50H0SPgAhlmkq
	zzYLED2sB0o+Ea1mkwEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVNxY-000000078Lv-44BB;
	Wed, 08 Jan 2025 04:46:24 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVNvC-000000077vk-119H
	for linux-phy@lists.infradead.org;
	Wed, 08 Jan 2025 04:43:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C29ADA4053A;
	Wed,  8 Jan 2025 04:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDE28C4CEE2;
	Wed,  8 Jan 2025 04:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736311437;
	bh=bWk0N/iUuUmPksh/fczOo0wVV/WukZ+Ms8pDNiaGQZE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FT9V4wBOcYKFm9ooYjuOUc5VUz92Sa4MO8GtMmeSlOGiU/eCZYC8h0ksHiggXR2oW
	 e/MkVeTSnekWnHo95vgdfpNDIZx2db1MaT3toMjKBAKuIFWG17KWygtuNeKcBut3E+
	 olEbW0fpP9BPIUIi189MEdux8LTT0tOJmB3SipqFCyUfek1tBEgl/IPWwatpy0bKTd
	 gP1Ib9gkgQ6IlyBrXF0BVqVjHG2vkkdvP0kUDMi7IVFOc1GlMeN4DMYEZ31z7mpli7
	 tbl1t9f/G4+3Wgj42foeKfwhn0C9Cp6Bb2jOSLj1Ug8IjhuDjn+4LT27RIJEuKDIGQ
	 55knD7HfJ5/og==
From: Bjorn Andersson <andersson@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Xin Liu <quic_liuxin@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Andy Gross <agross@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	quic_jiegan@quicinc.com,
	quic_aiquny@quicinc.com,
	quic_tingweiz@quicinc.com,
	quic_sayalil@quicinc.com
Subject: Re: (subset) [PATCH v4 0/3] Enable UFS on QCS615
Date: Tue,  7 Jan 2025 22:43:45 -0600
Message-ID: <173631142070.110881.10056360680137751835.b4-ty@kernel.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241216095439.531357-1-quic_liuxin@quicinc.com>
References: <20241216095439.531357-1-quic_liuxin@quicinc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_204358_335915_1ED08DB0 
X-CRM114-Status: UNSURE (   8.52  )
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


On Mon, 16 Dec 2024 17:54:36 +0800, Xin Liu wrote:
> From: Sayali Lokhande <quic_sayalil@quicinc.com>
> 
> Add UFS support to the QCS615 Ride platform. The UFS host controller and
> QMP UFS PHY hardware of QCS615 are derived from SM6115. Include the
> relevant binding documents accordingly. Additionally, configure UFS-related
> clock, power, and interconnect settings in the device tree.
> 
> [...]

Applied, thanks!

[2/3] arm64: dts: qcom: qcs615: add UFS node
      commit: a6a9d10e796957aefbc4c8d53ed7673714e83b31
[3/3] arm64: dts: qcom: qcs615-ride: Enable UFS node
      commit: 4b120ef62ed653f4bc05e5f68832d2d2ac548b60

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

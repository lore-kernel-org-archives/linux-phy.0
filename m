Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AE3BC0219B
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 17:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TGFwtslfcN5u1s3po2oDtTHyxmqrkaySvvPdCAbuGmI=; b=I8SRKWaudd7hWj
	70j8d3c0+G+QwVu7ZnlGWRf2AvXdyR5JmRbUdicASjZEzFqAzNV7dFV4xaYkXTLhMZ5DXnxsyBWKQ
	17WFFbll8ph47oaxqyr+x9EJ7n39hiFaQPn8WERWfYi6qy7v1sCHPBbFZOa5JPUrtloJzT9utZhZP
	VBVroQDcQkgneR1w7aDDSPgYbdJtJPWkmMUBPX8qO61NZBH8vEKSPvaii8CXOaCFuFTtQpdxHDuqi
	gLcy6HT5qWI4LHX8GWvdiJHhJy+GZ5fNjIvx8/V7bqwB2zeEQHuoqvRZfUW54Hx7FxuBiEIlbUVYZ
	HQuUaYFXNAd/ObGStkoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thXlJ-00000000lFu-0qoZ;
	Mon, 10 Feb 2025 17:40:01 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thXTA-00000000hSZ-29am
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 17:21:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 33D6CA41C25;
	Mon, 10 Feb 2025 17:19:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E1E7C4CED1;
	Mon, 10 Feb 2025 17:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739208075;
	bh=nZQV1M8VioPGk0QM/byl7cQeGIZPLm10q9X0KPkc0mM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=hatvvd7ZA2jhfAgyNWC5wYRlzenwFWVjyxBvHTFy1KqH8IKfKYI7eP+nEQM/l4aSW
	 0hAnr7YRdK739JQLX3pDLQ606IwOP20vzJu3+zg6rxMC08IubpXlFIpGIzDPg/OKoo
	 5WLrDSLBECYEPMrxn7hHGQJA9tC7bOBvLJid/NuMWC6j/wogokqTXXyukxBjgwbhNq
	 sxAhnDKvO5WArkXO3qF6ENLOquTMBG/5UGVATs4ne/Pcg/Mzugp0Ei6cl1g6pdDOUl
	 A726z1LofPT5jZuxR1J57FNm3MDTkI+yfwSJ3lrZoieLToD/thk4POXpKbUhZ9Knf9
	 QK98S8z0NA59g==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>
In-Reply-To: <20250203-topic-x1p4_dts-v2-0-72cd4cdc767b@oss.qualcomm.com>
References: <20250203-topic-x1p4_dts-v2-0-72cd4cdc767b@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v2 0/6] X1P42100 DT and PCIe PHY bits
Message-Id: <173920807069.103786.582122226183842202.b4-ty@kernel.org>
Date: Mon, 10 Feb 2025 22:51:10 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_092116_618169_989D07DD 
X-CRM114-Status: UNSURE (   6.58  )
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


On Mon, 03 Feb 2025 15:43:19 +0100, Konrad Dybcio wrote:
> X1P42100 is a(n indirect) derivative of X1E80100 - the silicon is
> actually different and it's not a fused down part.
> 
> Introduce the DTS bits required to support it by mostly reusing the
> X1E SoC and CRD DTSIs. The most notable differences from our software
> PoV are a different GPU (support for which will be added later), 4
> less CPUs and some nuances in the PCIe hardware.
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: phy: qcom,qmp-pcie: Add X1P42100 PCIe Gen4x4 PHY
      commit: 2e1ffd4c180591e6a46c7f94a6bb187a0661141e
[2/6] dt-bindings: phy: qcom,qmp-pcie: Drop reset number constraints
      commit: f67f8c61b7fd3f72cf716b3845211e69265d13bd
[3/6] phy: qcom: qmp-pcie: Add X1P42100 Gen4x4 PHY
      commit: 0d8db251dd15d2e284f5a6a53bc2b869f3eca711

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81A5EC021B8
	for <linux-phy@archiver.kernel.org>; Wed, 26 Feb 2025 13:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1jqCoyGWASMnQKpRwAHgOIpcIqv3YxS3wKChghyh2+c=; b=pHAK91S3cvJekV
	/qZ+EPbv1eFnu8DmTsM1vIMPktjzirpx8z10E2YDVIgRnUh8FJdByDzYMHgKiAPrZ6Un3obP8O4wT
	34ogxm6vchIxDWG35u55rE8Gimo8C7onA+5XwE3yvMiuAbIoa8ICzkMBHhVsBgvqxnr6qX+iXqNRY
	cBe/jvEcl0ioxP07W4UTCmzr5UDqd683W21M1ZeE+WvWnETSCm+KMqu5EG7BDU4bjHUNoWiT+d+E5
	xRY/Sb+Hh4Y/lfSINZKC9a6z4iWfVTMAUZO+/nJUsHul0kZPAnQD/8Vqsi1qvnqbe1CPDukpFh6/F
	Eeud4ovpvll0+w6mS6lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnHei-00000003xAz-169z;
	Wed, 26 Feb 2025 13:40:56 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnHeh-00000003xAt-3vCZ
	for linux-phy@lists.infradead.org;
	Wed, 26 Feb 2025 13:40:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 902F261234;
	Wed, 26 Feb 2025 13:40:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF12FC4CED6;
	Wed, 26 Feb 2025 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740577255;
	bh=bf1EJxLaypb4+0RqKwgkuzgRPbStL7bJ3ns99hinf+U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZvICAFxO+G7qzoafyqUaczoVwM+I/tesrzirjlBSnFqtq/U5clTHiFqeMjadxiXd3
	 6UfFqGfTriM1HSpt6zBmJdiJsNf5hoZXgUs+hs4FebguZx9Hgc8fN0yWjjXNyJ71M+
	 K4Q6auc6aj+G8u8pzoInsH0sOzNlil1+GjEcePDoBS+m2zTi1yJAg7ADI/kkuhRbVf
	 2fGv2VXVL0BhsnsjCjtmIb8Xwe0QAi0ZLb3TkY0lFv48P4MXwZndP659Z1xujN7SbN
	 JFn1zjUeaKqEI5rbzdZYdD78EkUfNaahmpUFlQwUCF2qQHLdxH/UdGrvHmOzsXQ/zD
	 Sy3c9tzZEe3Zw==
From: Bjorn Andersson <andersson@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Jens Glathe <jens.glathe@oldschoolsolutions.biz>
Subject: Re: (subset) [PATCH v2 0/6] X1P42100 DT and PCIe PHY bits
Date: Wed, 26 Feb 2025 07:40:45 -0600
Message-ID: <174057724682.237840.3212969107242689758.b4-ty@kernel.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250203-topic-x1p4_dts-v2-0-72cd4cdc767b@oss.qualcomm.com>
References: <20250203-topic-x1p4_dts-v2-0-72cd4cdc767b@oss.qualcomm.com>
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

[4/6] arm64: dts: qcom: x1e80100: Wire up PCIe PHY NOCSR resets
      commit: 62ca6669d62eb554eb467f2953cabb4238e18823
[5/6] arm64: dts: qcom: Commonize X1 CRD DTSI
      commit: fbf5e007588f3f2bace84309b4a0d428ad619322
[6/6] arm64: dts: qcom: Add X1P42100 SoC and CRD
      commit: f08edb5299166b7c6d4eae439b1d3f81c31ba50e

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

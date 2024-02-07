Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4734CC4828D
	for <linux-phy@archiver.kernel.org>; Wed,  7 Feb 2024 04:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yz8vC2IlOMfah4TU+K1OL1evdQ9JmNhcYvC5I8+t7XU=; b=I862zjlyjVv9KQ
	+dgx1gLJRZf1Cb6DnE1zZgG8yVn1lPtGJoE75GqPOPNAuYXDy/KDahfVYCb3mFN2h1nLUtaG/ZKA8
	OThBOydL3iHCCXJwIovN+1LaK3ZasVXrh/AOdwzo0vt0JJhIqky6Pc+o7P6atEHvpxAsWv85HgC66
	DKeUeIv989N+tUXz/GwEs/7NaaaSqh8WkcTsJdMsJ2xeEx3DvKqzQ/wr0/ITA2xlJeY9OKz8B84aM
	uRMzmyEZgQIRZOvxVTY3/lesMkaRliRie+ndpd4LxFzxXS4I7rKryxhmv9nBsOZuTNvGixflaC7KU
	d28SfF0sQwghpJMSG7Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXZpt-00000009gWY-3zSf;
	Wed, 07 Feb 2024 04:47:01 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXZpr-00000009gUe-0zVr
	for linux-phy@lists.infradead.org;
	Wed, 07 Feb 2024 04:47:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 082F2CE181E;
	Wed,  7 Feb 2024 04:46:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4235DC43330;
	Wed,  7 Feb 2024 04:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707281215;
	bh=zcYnajvpiFbj962WuH6tg/mhlAWqJ2keYskNv5+pdnc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=epkh//PNQEUBDNjDiW+oCLQf+XiaKagEjPy/+S3Da1PhYY7tfL5Ldpyo+U7dBPTNP
	 yDRkKGxm/65fGabgJXpFzBUfx/r6XBhxYP687uGjy1FSsOc41NQYFMmuD/qNtNvS3D
	 J5x25XLhUfeZVlSHt94yPRg0cfCnMAQOQz8t5gXdMoh/55iyfFig0veTXwL1wnV2z5
	 qbT9Ia9FpQYlWgVnx3Z6+6BOVezm6Z99pOlLGDJZz+UeQCuSg3XqYMf7t3pa5A9PcD
	 rZaJpF0DTCU2w3CKwL+ytkseHFqEcW1BUhwIimTVACcFIkyz3HZli4ukozg3qvkYgQ
	 R+Z0HWaQpOEJg==
From: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Jeffrey Hugo <quic_jhugo@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH v2 0/6] phy: qcom: qmp-usbc: properly handle the clamping register
Date: Tue,  6 Feb 2024 22:46:18 -0600
Message-ID: <170728117679.479358.15159278126829937083.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
References: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_204659_479388_C05860EE 
X-CRM114-Status: UNSURE (   8.35  )
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


On Wed, 17 Jan 2024 16:04:21 +0200, Dmitry Baryshkov wrote:
> The USB-C PHY on the MSM8998, QCM2290, SM6115 and several other platforms
> doesn't have built-in PCS_MISC_CLAMP_ENABLE register. Instead clamping
> is handled separately via the register in the TCSR space. Make the new
> phy-qcom-qmp-usbc driver correctly handle the clamp register.
> 
> For backwards compatibility the driver treats these registers as
> optional. They are only required for the PHY suspend/resume. However the
> schema declares corresponding property as required, it should be present
> on all relevant platforms.
> 
> [...]

Applied, thanks!

[4/6] arm64: dts: qcom: msm8998: declare VLS CLAMP register for USB3 PHY
      commit: fc835b2311d4deb85d776c1d73562338462aa7ac
[5/6] arm64: dts: qcom: qcm2290: declare VLS CLAMP register for USB3 PHY
      commit: acb94d67f5a23dbb2e0021b6c30609ed05d7d6a5
[6/6] arm64: dts: qcom: sm6115: declare VLS CLAMP register for USB3 PHY
      commit: 95d739ed962c9aaa17d77b739606dbdf31879f6e

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

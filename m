Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C621EC4828D
	for <linux-phy@archiver.kernel.org>; Wed,  7 Feb 2024 04:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLN4f2dwemeMU87Fsuzj+D16eUk30dtZs5SHtzRZQOc=; b=FR8ETCnpP8cn1f
	sNdHX4ypOWCKq9yOwb9ppwLqX36Gf0U9AB6mt90NwilToBPy+OyGhPFKZsgSKt9s6NW4bLygXvBQs
	TgFP3YjovRIUADlYXjRCuDR2SywT04GhzK83q87R7wNp7zsD+vLtg21CbP5jUlHSULWc7N0zMjBt9
	inHi17rHh8elJ0jSrkw5xEjiJvjqy3uUj7XsFHtiY5D3mGgEE0tZ/aBuSqDmSXwAnmigCwz9G6QBW
	sxqmR0U7jJypeM2/B2dI/hBpuNoJ1qT0wk+rYqmgcQI7VueS950E5aT6Vpm0RSWhTVJEDzbAABvbI
	WqCzl6VY03YAIeHjgPBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXZq2-00000009gZR-22Pr;
	Wed, 07 Feb 2024 04:47:10 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXZpz-00000009gYI-2y24
	for linux-phy@lists.infradead.org;
	Wed, 07 Feb 2024 04:47:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1E90561797;
	Wed,  7 Feb 2024 04:47:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63D68C433C7;
	Wed,  7 Feb 2024 04:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707281226;
	bh=1gP0KeHVS6pUWdj0/YG5QFbHDGuHL/ENkMcDCA0b7UM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RrDk07e0qEHKiI4cxhZzHyonMYEH9NV9o2H67zg//ABqWzccqG6PoRjtTeuOMAV4Y
	 YlQEqviJ57wGEFk7JT3nWxzZeZCzBRA9/MovprKUyuPxVBxzT2PRu68zebEZdwVzDz
	 eSddGPyaxrS/0iBEZCGoPhyKnWCNVF3X6LMtBU1a8TAIKGI9Rzbb9uEtzz8l4rlwSO
	 2LLIEEsoRZ7kPG8bakv6XIj/OeRQjRR4YJAb8NA8ua7ZSjwLWv66Uk/m0A/I1jcbKd
	 wfj2MkvnIE2MmI2RSsEohhWy/eEPKj13xTzSq8cSt1AJTx/sMDKE8LBY9xREA7Ni0F
	 69vzVBRwPti0w==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	quic_cang@quicinc.com,
	Conor Dooley <conor.dooley@microchip.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH v3 00/17] Fix Qcom UFS PHY clocks
Date: Tue,  6 Feb 2024 22:46:28 -0600
Message-ID: <170728117688.479358.12464469047870719963.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_204707_810683_3CA252C1 
X-CRM114-Status: UNSURE (   6.45  )
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


On Wed, 31 Jan 2024 12:37:23 +0530, Manivannan Sadhasivam wrote:
> This series fixes the clocks supplied to QMP PHY IPs in the Qcom SoCs. All
> of the Qcom SoCs except MSM8996 require 3 clocks for QMP UFS:
> 
> * ref - 19.2MHz reference clock from RPM/RPMh
> * ref_aux - Auxiliary reference clock from GCC
> * qref - QREF clock from GCC or TCSR (TCSR since SM8550)
> 
> [...]

Applied, thanks!

[05/17] arm64: dts: qcom: msm8996: Fix UFS PHY clocks
        commit: c83fdb4335cec507d685ba9661ed7c4ccbaf12ff
[06/17] arm64: dts: qcom: msm8998: Fix UFS PHY clocks
        commit: 5e653a7ff4426242f22dd8bc6af7f29e10ee0d68
[07/17] arm64: dts: qcom: sdm845: Fix UFS PHY clocks
        commit: ca8fb2bd2248ae05890c011d691ba5d4a1e7d8d6
[08/17] arm64: dts: qcom: sm6115: Fix UFS PHY clocks
        commit: a820a285ef1b7c7fd94055bbb114c0413c04b96b
[09/17] arm64: dts: qcom: sm6125: Fix UFS PHY clocks
        commit: 3823a877f25baa152e34325818d5140990d6464f
[10/17] arm64: dts: qcom: sm6350: Fix UFS PHY clocks
        commit: 68f9fcba3a0c015d649907805534fe66c9c60865
[11/17] arm64: dts: qcom: sm8150: Fix UFS PHY clocks
        commit: eff7496b72810ca54da8c9c4542bf2aca479dd44
[12/17] arm64: dts: qcom: sm8250: Fix UFS PHY clocks
        commit: 55ee02b10bdd9577b6eabe98ebb383ec4e0674a7
[13/17] arm64: dts: qcom: sc8180x: Fix UFS PHY clocks
        commit: dde771402292ea60f96bfbfae8b130556585ad76
[14/17] arm64: dts: qcom: sc8280xp: Fix UFS PHY clocks
        commit: 1d4ef9644e219202ed89ac42f3e1defebcab9c7d
[15/17] arm64: dts: qcom: sm8350: Fix UFS PHY clocks
        commit: 8edbdefee1c9eb24690d5794556af08f00ecc576
[16/17] arm64: dts: qcom: sm8550: Fix UFS PHY clocks
        commit: 746ae23ad02004fe283e2edb45b7a060bbc36d46
[17/17] arm64: dts: qcom: sm8650: Fix UFS PHY clocks
        commit: 0f9b8054bb4abd7b4686cc66b85f71fec9160136

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99B9BC87FD2
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 19:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4phM+adPYVTAFY06KI2PjPgNIa3GIGzzJpoN+9wUUS8=; b=Cfb9rfKe9ARMTo
	iBPTj+7mpr0hcur2oPOIEEQyU4RG4n7faIfvMyjrdz/I7F9INQZnAt1uR3undJxAkgq/KOFYR0NHz
	gK05Tk/mKSuDacygSOdc8t/st/p+1mTfxg22vmfb8axu4vL48OlkylUTFFTT2+IdyfUKWwgsTrD/B
	PQCTXuglU9xV9Ljv9D86TwMn7hOBLtzrru491mjaFBy0nOO8PLV7eSPJ0IedivrbZzWFYAzXcWiwW
	lHavZK88qfR5jzHeMXeT74PQmnPqMNeOpZ5xWP+JVU92kb2a2gBMuDKnYcloDNRGhqrKQLqoOlIe1
	+4vTH3g9Mp6QTHW+NhdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjkSm-00000003I8z-1D9Q;
	Thu, 29 Aug 2024 19:05:44 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjkSi-00000003I7w-2Lhj
	for linux-phy@lists.infradead.org;
	Thu, 29 Aug 2024 19:05:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id C5E49AE0887;
	Thu, 29 Aug 2024 19:05:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59F50C4CEC6;
	Thu, 29 Aug 2024 19:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724958337;
	bh=MpnuUdKQNVAmcPif4oi/37Z3FKjtcDApW7eyDZ0ImU0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=usRpcfiKqE+lIT3H0R1NYyGzY8Tw+yexoiSMQgOENbHW/jjOHVEfQBw5Bn9TduuRF
	 AFFn2AiDypTb1EhMiAgf7MHA5F86xgJBgOL+5WSR6QaZiGE0DA5i1s40Mw/sAVNKca
	 OnEBXR/xb1vf3keFNvzuvRPbD5cMfpSu5xNlLgFKYGTN3L4isBpkG8rLQAdX8H3qOw
	 eO4H1D1/3nQ5E4y8X2ih9jwPUODGbCdyGFKKyBvCk+wxi+7ggTBivwyWh2lo0ic9IP
	 kk05JijMPCCk15N1D4VSQ/xWa8Z+LjrD1TT/GJ8YfyriS1tM1MPpFFLvs2Pk/DFLy5
	 VJnEko7ut7sfQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 Johan Hovold <johan+linaro@kernel.org>
In-Reply-To: <20240823-x1e80100-phy-add-gen4x4-v3-0-b7765631ca01@linaro.org>
References: <20240823-x1e80100-phy-add-gen4x4-v3-0-b7765631ca01@linaro.org>
Subject: Re: [PATCH v3 0/2] phy: qcom: qmp-pcie: Add support for Gen4
 4-lane mode for X1E80100
Message-Id: <172495833400.405683.4328817324548517864.b4-ty@kernel.org>
Date: Fri, 30 Aug 2024 00:35:34 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_120540_774967_CFC916D4 
X-CRM114-Status: UNSURE (   8.86  )
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


On Fri, 23 Aug 2024 10:04:14 +0300, Abel Vesa wrote:
> On all X Elite boards currently supported upstream, the NVMe sits
> on the PCIe 6. Until now that has been configured in dual lane mode
> only. The schematics reveal that the NVMe is actually using 4 lanes.
> So add support for the 4-lane mode and document the compatible for it.
> 
> This patchset depends on:
> https://lore.kernel.org/all/20240805-phy-qcom-qmp-pcie-write-all-tbls-second-port-v3-1-6967c6bf61d1@linaro.org/
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHY Gen4 x4
      commit: 0c5f4d23f77631f657b60ef660676303f7620688
[2/2] phy: qcom: qmp-pcie: Add Gen4 4-lanes mode for X1E80100
      commit: 9dab00ee95447b286ebb0ada3a5edc00beab3750

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

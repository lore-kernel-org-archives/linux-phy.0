Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D858AD374AD
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sMn3a7FLlWP76GhOkvS1/DroH5BdKMy19poAu6tBYWw=; b=jFRpB+OAb5deaQ
	znIk7hcDBCyPw+RGKx6jyZIiZJwGvOaQ1ya/0/NxFb60kn27Sp200vND8SswAkEvXJ0VlqWScVY6b
	fXJNHuOBJAvO5qBaQN11LLON0D/AEaKuwZwqb2yX0o2WgqVET+0VCp8GqK0r35gdKujft6T4oWjTA
	j1OiukEW+uJhkJ3USwkvg+71PlIV5i8ZRssoOfcYYSfFKDBWslqphkMCD7cHvAFV8s+fGyt1xRouM
	RpV9W9oI8GXN0C1KlZfIMC0OOHptywjMnCiSx4tuATUGDH1jGCtEWOGut/JPy0OEzse/3x802ML66
	AxYcLBc4cLV9DEqFem4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1STE-0000000FHmM-2Kpy;
	Thu, 17 Oct 2024 15:31:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1STA-0000000FHlH-1v89
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 15:31:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6052A5C6072;
	Thu, 17 Oct 2024 15:31:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20EA2C4CEC7;
	Thu, 17 Oct 2024 15:31:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179079;
	bh=o/Bu+DMqsN2Xj4ZsXtQkiK4XJBd/5S864GKEP+F8iUc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=gvnvQmHeg6D18T5rLEZlG+grWfOu2+HO7dZDos7GvKEjDdMm1g9L8qbc1f/afckuR
	 GWPOg03xZlkyJgAl4s7QVvigaiemgYY0DDebiD0WQeyi3L9fEvpv2nEhDdUyFuZufC
	 cWZ7Z/Mtg5AyQehD0suqJuqNlyKNKlq8KURThACt0iK1gYvG0iAxXnn9RezqdCnjAb
	 z7VbZk9Ue6xWvPS6WLKXD77QVbeJM1RfR6pTowC6GAmi8CEdj9YA195pVyUtKjTutH
	 d7lAmRR52gsmkHq2h5DzCP3RsDuAfkjjz7xri/uzZDfZa7/7PkL6EEjLez2HQCJCoc
	 d1F0WYcwVZyUw==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Johan Hovold <johan+linaro@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240916082307.29393-1-johan+linaro@kernel.org>
References: <20240916082307.29393-1-johan+linaro@kernel.org>
Subject: Re: (subset) [PATCH 0/3] arm64: dts: qcom: x1e80100: fix missing
 PCIe PHY clocks
Message-Id: <172917907574.278159.12489119040829163080.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:01:15 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083120_573892_7562651F 
X-CRM114-Status: UNSURE (   5.15  )
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


On Mon, 16 Sep 2024 10:23:04 +0200, Johan Hovold wrote:
> Add the missing clkref enable and pipediv2 clocks to the x1e80100 PCIe
> PHYs as needed for functional PCIe (e.g. without relying on boot
> firmware to have left these on).
> 
> Johan
> 
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: add missing x1e80100 pipediv2 clocks
      commit: 938ade15abaea765dfab32d906de45657067c11f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DD21E7717F
	for <linux-phy@archiver.kernel.org>; Sun,  8 Dec 2024 17:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tcq4GjHSYb2f2hbJJR+wZYw5Vbveq85jyYHEdqrw3lA=; b=DIY/S89ZaNHSTz
	KtScLaIdfGTlBjlNFK5JiRc7TyeHk1tnCGm9+OQtLdjh3ZaS5e0pf4UUrI87jQrdmbs/0r+N4q3Nz
	7HE7MaYKuE1A63qyDgwe6ohEqWY+OeqS58zEDpTJRkFx1qy8+A+TYYZY0C/eTpV0NizNJ/wouIakP
	gL8GhIq7OWZ55eaMekMvkDfQJA34JXBBzZym78ieQbOj9GSuB70Qz2Qgyc2eXt8qX6gK+tw943q4/
	LHNxS9DGf4rJe7gamU8Bmadh3vLjASGmvz+TpwVgKS51qejYb0JHHugbRmv6D7ZhC+4afEI5Moto6
	5E2i94k+b9wfALHdomtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKkE-00000005ceU-0RQt;
	Sun, 08 Dec 2024 17:06:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKgu-00000005bxU-1ZYZ
	for linux-phy@lists.infradead.org;
	Sun, 08 Dec 2024 17:03:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4744A5C4AF3;
	Sun,  8 Dec 2024 17:02:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 302A9C4CEDD;
	Sun,  8 Dec 2024 17:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733677411;
	bh=4DLbhNUt1rZLuRTKjHMzvV35gikgvbLvyqJyge1WD1Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=iTfHEF4Zm0qZbr67p5d3FDX0u772gh+FvZMRy1GrrxHhbCTO5S0HL6z1IyPxZexlM
	 nuWWA2Lfb57QgHCQk5XFv4cSNOKaSwjezH2I81ywE/rdqRsrZnkQ2FZ84kacuFmr+C
	 J+ZuVbfOLO+23hCXvRHnSVknDUBdJMWOPS0rkpzemMbyZlCVS3R3BFDd6P0ZFFRaum
	 hr8LfcQpDGYDnG72VcHU1CBKAlZMu6OizQ+pDy7IKYmUKxxHjW3zyVc3xmQcH2FK9d
	 /g+OSLd4uICsxjC6xONbRDYPuYxY6PYRC4dEWwKhXediQ5spARGjHmRJmnI9+nmfId
	 UogXe71UAlJlQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
In-Reply-To: <20241021-sar2130p-phys-v2-0-d883acf170f7@linaro.org>
References: <20241021-sar2130p-phys-v2-0-d883acf170f7@linaro.org>
Subject: Re: [PATCH v2 0/6] phy: qualcomm: add support for USB+DP and PCIe
 PHYs on SAR2130P
Message-Id: <173367740776.1042266.16055715564369091503.b4-ty@kernel.org>
Date: Sun, 08 Dec 2024 22:33:27 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_090332_457947_351A57BE 
X-CRM114-Status: UNSURE (   6.22  )
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


On Mon, 21 Oct 2024 13:33:06 +0300, Dmitry Baryshkov wrote:
> Add support for the USB+DP Combo PHY and PCIe PHY on the Qualcomm
> SAR2130P platform.
> 
> The DP part of the combo PHY wasn't yet tested, but it is not possible
> to support just the USB part of the PHY. DP part might require
> additional fixes later.
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add SAR2130P compatible
      commit: d1cfda3b1e4dba015d7cbceb49fb35fdf10b743a
[2/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add SAR2130P compatible
      commit: 5c4bfe3ee5c412379b54ef53f09fceb93f42f619
[3/6] phy: qualcomm: qmp-combo: add support for SAR2130P
      commit: 545069bcf39e9f025e8e3d749505e52423433e37
[4/6] phy: qualcomm: qmp-pcie: split PCS_LANE1 region
      commit: f9d35dd39bf44d01012119b146a27c29e55d8ad8
[5/6] phy: qualcomm: qmp-pcie: define several new registers
      commit: 8114f34dd0baa972085280610ad5be89a41d1414
[6/6] phy: qualcomm: qmp-pcie: add support for SAR2130P
      commit: 0fd0b31965b0d4a2caa9267c7aee43f1f78870e8

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

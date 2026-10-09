Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 145D7CA5FED
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 08:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IrbWiuM91QfxPvqzMagyPbVOT/GBEbhpOKzLNbvygmw=; b=WuMzGnYE5uyqrK
	srTx4oDjONrUBC5Xk/MAazC/bqG02/eRZpymKAvCPgzMz6GHFlH+aK2BaKB5wvc9tu45QIYydZxTi
	kLrjT5zitod/UnK/ihcPciubE9VB4mobBB94cH8Pkp5rchPFkynJjYvsJXkiawG7RiwXKUelNHnpZ
	63oS7GH91wnUReP+hB4EarpHrZHccVX1cuTWzERWzSrLmnzxKR+6BfDBO02iGh7Z3bRq9hwVPRad3
	mZXdY/3EZhMRR79SWb053PNcnXe99N+GSbbgx+4MPxfyoRcspSjWVFULjErk/myIMu05CQ+BX5qcC
	0H54e3nrfKKfkfrDP8sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF5oO-00000005nrr-2Q38;
	Fri, 09 Oct 2026 08:18:40 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF5oO-00000005nra-0U9h
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 08:18:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 42362602CA;
	Fri,  9 Oct 2026 08:18:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24A261F000FF;
	Fri,  9 Oct 2026 08:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791533919;
	bh=LEB2edmb+By4KY5PbnRuFAPSvxtPKPV/ZSYkCWJ+hOc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=O/mtgsjpkKi6BNXuqheo2nO+aTKz5HNYB2nxas0c+Px1im5T808IrDDbZf3Xla4bb
	 jGWMTRxr2NT4kyVKt99R0U6GbHe++1W4k+hLn78JnqNh7ZAakiCpEejtMdl9TdRvBb
	 4RRrAmlCLgWfu0S3suvgkF8gUN4k9lgH0zd+cVrCMQwiQxgy42lrwa6sKkXeWMx41A
	 a4GZJX+D9yqq2r1cbp7g7PA5rZOi7oyEfR3ZHuZ/GJogEYyh6I5vEOkA3DZVSUJQnc
	 3Rma7J3dfu17IKEHXfDS0ksp/cI2y01bIFofB79xw6v6dYmzHiALEEDVt+gJMImDSt
	 G3VBN3V7gjW9A==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@kernel.org>, JC Kuo <jckuo@nvidia.com>, 
 Jon Hunter <jonathanh@nvidia.com>
Cc: Thierry Reding <thierry.reding@gmail.com>, 
 Wayne Chang <waynec@nvidia.com>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20261007-tegra-phy-v3-0-d501de414710@nvidia.com>
References: <20261007-tegra-phy-v3-0-d501de414710@nvidia.com>
Subject: Re: [PATCH v3 0/3] phy: tegra: xusb: Add Tegra238 support
Message-Id: <179153391582.536264.8259067930837326835.b4-ty@kernel.org>
Date: Fri, 09 Oct 2026 10:18:35 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Wed, 07 Oct 2026 15:44:40 +0100, Jon Hunter wrote:
> Add support for the Tegra238 device to the Tegra XUSB PHY driver and
> add the necessary device-tree binding documentation for this device.
> 
> This series also includes a trivial clean-up patch to use the
> dev_err_probe() function in the Tegra XUSB PHY driver instead of open
> coding this function.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: phy: tegra194: Add compatible for Tegra238
      commit: d940f4f05123ecdc3d1226df76ce652c1b4d845c
[2/3] phy: tegra: xusb: Use dev_err_probe()
      commit: c0c4091bbaa3c6dc05ecf8a639cec25eca933bfe
[3/3] phy: tegra: Add support for Tegra238 XUSB pad controller
      commit: 8f56fdf3d8cb9f1dbdc93bf9ac816698aa6f70b7

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

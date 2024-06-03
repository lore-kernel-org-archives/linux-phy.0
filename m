Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BE23C27C52
	for <linux-phy@archiver.kernel.org>; Mon,  3 Jun 2024 14:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V6aPfARihnnXQKf+fWyrFWyZNNV43M1FoN6Udlf13Cc=; b=fUYA2JO0wbHUhl
	yTqltylRPJ9KzE5fRBtAQtNEJ2BNOgwqhtza7ToqkZVBSTn766WmAs/dbz2H8X/RGuNk0+VALHRmx
	LyBptKL4JmZtC8goRHcbItGRBYnfoI7qunolYHKPNsjUV+16dCZhRTCIdyZvLRpsUCG4llFIf+OV3
	4TESMcX/KYGAtozYmwF4A4BJrPSDx4w8wuo1tKhrfywhrS2I5L0vLcaJ6tczUHHB7umYKPS/nqysW
	SxOPGA7dr1Q3u6uH1DLeGjNhlo2MJA+Gp36ou9pMfcB2yOFnco993Y36hWklu/4b4eWA9a2fQ1DkQ
	Z+6LnmkPSiIB0vRIdKxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE8e6-0000000H3vr-0Msc;
	Mon, 03 Jun 2024 14:26:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE8e3-0000000H3uX-37zd
	for linux-phy@lists.infradead.org;
	Mon, 03 Jun 2024 14:26:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 41A6E60EAA;
	Mon,  3 Jun 2024 14:26:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38219C2BD10;
	Mon,  3 Jun 2024 14:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717424803;
	bh=mzZQjszM9qLA+McsUnJwdEB659wLnZJXh3P3zEeI1wk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=uF7mpjO1nlKl+IjvGnzdDBsKCoRmz5xQjnUM5K9gAbLsnd16EeV4AKyNq1wAbZtHu
	 0XagtJ54UHRwUOuNbqv/dINNcJQ47Wq+wEKMeIpCl6PmGnef4s6Zk1k1Osl5GurXRg
	 qUXWXWI5CqA1+eV34JP677LJXsBtU7EKNQUTUVs/5ZLxRjDf+EoiCyl5JKc2rWTly7
	 rFqZIF+A69SfRAOG9x8BEdsYDal5b6AQFwNZF2lubP4yNewwxaIjegtayNpK5A8QJA
	 wGxKohOjkQBxGa1meoxC9t8N8BlHtHLiJrL42ePFaYDdMhR0xqliDUjaEF99IQpErd
	 IC6UXRUN/IQ3w==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-usb@vger.kernel.org, 
 Bjorn Andersson <quic_bjorande@quicinc.com>
In-Reply-To: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
Subject: Re: (subset) [PATCH 00/10] arm64: dts: qcom: sc8180x: Enable the
 USB multiport controller
Message-Id: <171742479784.106728.422190017656643757.b4-ty@kernel.org>
Date: Mon, 03 Jun 2024 19:56:37 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_072643_859180_59A810DA 
X-CRM114-Status: UNSURE (   6.14  )
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


On Sat, 25 May 2024 11:03:53 -0700, Bjorn Andersson wrote:
> The USB multiport controller found in SC8180X is used to driver the
> camera in the Lenovo Flex 5G, and a couple of additional USB ports on
> the Primus AUX board.
> 
> 

Applied, thanks!

[01/10] dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add sc8180x USB3 compatible
        commit: 4dc7e51a9e40f07dc0da7eea05577633984ea9f2
[02/10] phy: qcom-qmp-usb: Add sc8180x USB UNIPHY
        commit: b279a835192834565db5025205394e3ef943fbd2

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

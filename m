Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DC90E6FE23
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLPwYx1sJgqhfx9t+6LqfjjLTeMVlC1hEUSVifB8m3M=; b=o9ULOWgPne0hzu
	EXfDfvLftk/3QPjkbCsFAqw1OhO0z7aWa+JRvZlSsZMC5YK1R2Op4EIpgNqsaMKu7e8betkkfVvP3
	JQWV2ilR1Cy2ra97mlDnW9vuycZd878XN32kLimFYTfj9T8LQPA0/ttjUwqbryjMGplig7PvqIR47
	UkTcGreweUesfUfWmNCirCYGxWgAI9aDwO5Zx7yy4lnvstzw8tR0cAH3TgZxrkOd07dFCCrlppIV2
	1azxSnIegrIG90kXZGK915s2M9TZJGSPf/x3gy9IlvAYEkhe+wp5TLfjtrWln1teUgj8E3oEqu2FQ
	gIclcLyhrNh5ESX7XFGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6RK-0000000Fr2L-3dS0;
	Tue, 23 Dec 2025 17:44:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6RI-0000000Fr0N-1b29
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:44:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 053F544093;
	Tue, 23 Dec 2025 17:44:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4049FC116B1;
	Tue, 23 Dec 2025 17:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511891;
	bh=B7kk1fNbDuaJ0RLmnK/wGum7XnzjK0H2uFMdwBbzvoY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=DgSAqNdEWYeWPdXOl8vXtp473yh7fHEbN8FC1+qS8TVyjyO2ST3sIauqXt9mX/IqZ
	 X+W7nUtyvAxeMSkENSqooNfk/TrEjOUD2wjaWWuyAsqnxqYNV8zt0tmNMrsKEpSv5I
	 L74TqG/n2+O0x/qDEAy6cqzLIhE1fiIlX3/sI6rkGvrtEL0O4bZMYU+k1OdmwJZRdK
	 9EoRinx7UB4+34HLdqjP81pzoduIZM0GtOwHAz14fDbkTylrRZm6XP17tEWtNn/ODi
	 A2Tel6axY0al8wsU3J0qXkhsERz8wiCnjY11ooJkFXT7uAsS5xw4L7KaToz3tr7bvG
	 M+ZPsxlRwD0WA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jingyi Wang <jingyi.wang@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
References: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
Subject: Re: [PATCH v4 0/5] Add PCIe support for Kaanapali
Message-Id: <176651188789.759340.17238105488730853325.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:14:47 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_094452_455715_A3808D89 
X-CRM114-Status: UNSURE (   6.66  )
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


On Mon, 24 Nov 2025 02:24:33 -0800, Qiang Yu wrote:
> Describe PCIe PHY. Also add required system resources like regulators,
> clocks and registers configuration for PCIe PHY.
> 
> Changes in v4:
> - Rebase on latest linux-phy next branch
> - Add reviewed-by tag
> - Link to v3: https://lore.kernel.org/all/20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com/
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Kaanapali compatible
      commit: 4968df19d5dcb22fa2b797b64eb3c2880a239e12
[2/5] phy: qcom-qmp: qserdes-txrx: Add complete QMP PCIe PHY v8 register offsets
      commit: 5359da47e066edb3fcd36c7349726913ee8628f2
[3/5] phy: qcom-qmp: pcs-pcie: Add v8 register offsets
      commit: ecc12453c8b1aabdedcd663b7e0587f372a2a90d
[4/5] phy: qcom-qmp: qserdes-com: Add some more v8 register offsets
      commit: ba13ff85d3cfb92bd0502a8f93366ddbb5d91105
[5/5] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for Kaanapali
      commit: e5b4d5935f758c6d685c624343d7615d76bdc931

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

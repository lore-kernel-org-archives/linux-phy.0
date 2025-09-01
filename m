Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCDA4CA1007
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 00:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7xi/oU9K0Hc3y+nVPeQ5Qzn/xdUq+ZJdIKZN5fGMnoE=; b=mAYWDtHHe23Gx7
	dHXo4RJ3XgjPrQP536XM3W6jAbgUYWpp+y+wz/cA6B6WS5aK0AvW+6UIbBxDlAwcwnJykoaicCXJQ
	P7ILQAzyLp6Vb8Pym6BfynswcatIGYzeVUXA5sa0SdynOR7LzDlnPO14aaO6v7XkQ0V8z2/ATNYKf
	WGj0DVRJfyUfzcLsP6ATp7H2UfPke4fCmWPrdo7qBuulaBQKkxIrg9y55nmesjbAB9PDia7kYEoMg
	NVLy9TTpJtobbCH5sAJRoNj1mA8MvOBnsa3RteDXTEkbjvudHP2rPp3k7cPrUx/V0g0sUzkELui0/
	v2RS9CakHWfaQQXivGEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utFFy-0000000EY3q-2FD4;
	Tue, 02 Sep 2025 00:52:18 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utATt-0000000DfWK-2cLC
	for linux-phy@lists.infradead.org;
	Mon, 01 Sep 2025 19:46:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 72339601DA;
	Mon,  1 Sep 2025 19:46:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05CB6C4CEF1;
	Mon,  1 Sep 2025 19:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756755979;
	bh=+I4dnJqvlWmEnld8ly88CK019g7EkC5BAmsD+fwdbg8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dYlvnyTQopAPd39t04d8a2jmqH9NOmvdpZukytAS29riluseEYXDzcRgtuSf//7y0
	 8a638A9xd1w1iDU1UUheub3P1WtB8UVd5tAzjb/BRiq+wsfW5R85RDJ6lbCtPWxrf0
	 o9HzmRwaAlJuIuyAezg12BfTwhtQi5FHMQfxL0ZDekuwB2+WLSlCxrALYh/3hLqje5
	 7EHS/pdoGvKrEAd0lwgNtlvuXOKOmMWmPwjchCXTwXXeFtzX8RQasw2qdDmsn6Ys3b
	 PF3vJTsZUGlmmOgWRsX4Tcsg4S9DSzPD0NvnIt7uftiyDOMbML58w08KPhGKtpnODS
	 EH0PaDZIUcgbQ==
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
	Neil Armstrong <neil.armstrong@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>
Subject: Re: (subset) [PATCH v4 0/6] arm64: qcom: allow up to 4 lanes for the Type-C DisplayPort Altmode
Date: Mon,  1 Sep 2025 14:46:00 -0500
Message-ID: <175675595931.1796591.1151712153506063234.b4-ty@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
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


On Thu, 07 Aug 2025 18:33:18 +0200, Konrad Dybcio wrote:
> Register a typec mux in order to change the PHY mode on the Type-C
> mux events depending on the mode and the svid when in Altmode setup.
> 
> The DisplayPort phy should be left enabled if is still powered on
> by the DRM DisplayPort controller, so bail out until the DisplayPort
> PHY is not powered off.
> 
> [...]

Applied, thanks!

[6/6] arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13: Set up 4-lane DP
      commit: 7a6ad5dd551a20672edceed087408ea6bcbfe8f2

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

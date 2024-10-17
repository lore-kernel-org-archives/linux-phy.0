Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DAA2D374A9
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/594sXP1F7cvpv8d+gm0ZnRYCQaiyY/0Qu0iPCHlBg=; b=vIcOrHW5ATsWHc
	uLi/UTRq4UA4InEvzexQryOUw7bIVY+3+vTHPj5wC749Nweyjq49DbNl8Z4lK4zA9yYc7CBWCvVzQ
	oR4lMES3cGA3C3A3kS4Hj5GaiWtA3oLGd3IG+KTOxDn+oz9e+TaiCVV19zrZiOrOykE0NrIr3imIc
	B6ve45/eIoxSzKh3aMIiPmT3Qxxb9mMGg+KuCthzViGdtpSnMA3lk9cZ5SlklISMYVw2ey2+XcuCD
	DeNkataLz2XOD3AefTlZDEOrHD8pRAzXsBwM5mATlttPFduMk3h4Uo63YcHizc+WTlnujnvxZnIRL
	GviGaHF+v2pU6oENgMvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SUq-0000000FI8D-3gkU;
	Thu, 17 Oct 2024 15:33:04 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1STM-0000000FHod-1zMT;
	Thu, 17 Oct 2024 15:31:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 7BE25A44182;
	Thu, 17 Oct 2024 15:31:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4694C4CED2;
	Thu, 17 Oct 2024 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179091;
	bh=pJlne4O+hiRoKrVESYd7ZzTl2xhLfmxtBKYXZjLxDCk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=uswtB3GptBdfN6pGrOAJEhg6ba1tcT1O253Ad0JcuDCwbiASs9bRNP5uL33TCICz9
	 47GmVcWQAWnClTugiDCFA5ORUOIIR631VWB0QZJcgkAwE0g5efGUEvzUEpzRPTLwbl
	 0Rku4XMtHc+Z9vtrwM3v8sHaZlmbxpur/54uw43pRkuJlabKizQoeE5Rhpzh5KTJoH
	 mLSg0N0Fv+vXGEGFKko09HRCWBQ4sRcHKt3ao8lv8ynMh7WfOIy23FuIwJ2DY1eayk
	 SA/mPWa0ILTZnVOoax9H6hS2XwGEnve0R75q9rTxDFQ2JAzosFs4jLzsmRWQW/TRrW
	 oxj96KDaGjPPw==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, thomas.richard@bootlin.com, 
 krzysztof.kozlowski@linaro.org, nichen@iscas.ac.cn, rogerq@kernel.org, 
 c-vankar@ti.com, t-patil@ti.com, Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, srk@ti.com
In-Reply-To: <20241012053937.3596885-1-s-vadapalli@ti.com>
References: <20241012053937.3596885-1-s-vadapalli@ti.com>
Subject: Re: [PATCH v3] phy: ti: phy-j721e-wiz: fix usxgmii configuration
Message-Id: <172917908756.278159.7051019346885032299.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:01:27 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083132_610778_945465A1 
X-CRM114-Status: UNSURE (   7.80  )
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


On Sat, 12 Oct 2024 11:09:37 +0530, Siddharth Vadapalli wrote:
> Commit b64a85fb8f53 ("phy: ti: phy-j721e-wiz.c: Add usxgmii support in
> wiz driver") added support for USXGMII mode. In doing so, P0_REFCLK_SEL
> was set to "pcs_mac_clk_divx1_ln_0" (0x3) and P0_STANDARD_MODE was set to
> LANE_MODE_GEN1, which results in a data rate of 5.15625 Gbps. However,
> since the USXGMII mode can support up to 10.3125 Gbps data rate, the
> aforementioned fields should be set to "pcs_mac_clk_divx0_ln_0" (0x2) and
> LANE_MODE_GEN2 respectively. The signal corresponding to the USXGMII lane
> of the SERDES has been measured as 5 Gbps without the change and 10 Gbps
> with the change. Hence, fix the configuration accordingly to support
> USXGMII up to 10G.
> 
> [...]

Applied, thanks!

[1/1] phy: ti: phy-j721e-wiz: fix usxgmii configuration
      commit: b4b32423b6ee6bb96e19fd82bcfd372f6192c737

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

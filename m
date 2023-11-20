Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41452C5AD4C
	for <linux-phy@archiver.kernel.org>; Mon, 20 Nov 2023 15:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJyGcw7g7CfeBISlsAB4M33N+xKO3Zox8PzA0E4j12k=; b=YDqvL/RxveXuHJ
	bFS7iJT2MyGnNK5W2eTusxyXEW2p0wfPflwQ27wbEdP6YZ7UyuKqwkxt1YEK3Bi4F4a1RqAm5GAR0
	m4xe1CPBpdYZpslYWgrzFOaXKrl0DmFXN+/kkxwHVHhNpSTiPCEC6HT19X4sdLzEzQS7UGAuEI1T2
	zSOAxeaP92SZGrMDVweQpTEukLkowcvvfswV4g4rWPnm+KDwHL+U6e+JmwsSJjSLVAXOO/NRshLBE
	joZbMXOKHWdHY3d2AdSuZl8dnRkR4+cTIAVKn+0FPpGr7D10ba+yrzeoqPLemtSY38I2u54S3puks
	gTo43FP/JQaWJthtvW9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r56Fv-00Cggl-2X;
	Mon, 20 Nov 2023 15:32:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r56Fq-00Cgbk-0F;
	Mon, 20 Nov 2023 15:32:07 +0000
Received: from [194.95.143.137] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r56Fn-0008VB-Mr; Mon, 20 Nov 2023 16:32:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Alex Bee <knaerzche@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v3 0/5] Add USB support for RK3128
Date: Mon, 20 Nov 2023 16:31:52 +0100
Message-Id: <170049419905.1671702.10955033014678896611.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231119121340.109025-1-knaerzche@gmail.com>
References: <20231119121340.109025-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_073206_175744_59E08768 
X-CRM114-Status: GOOD (  13.98  )
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

On Sun, 19 Nov 2023 13:13:35 +0100, Alex Bee wrote:
> While interestingly the DT-binding for the Innosilicon usb phy found in
> RK3128 SoC exists already and it is exposed in the SoC DT, it has never
> been added to the driver.
> This patch-set adds support for this early version of the phy and does
> some DT-fixups in order to make the 2-port host/otg phy and the respective
> controllers work.
> 
> [...]

Applied, thanks!

[3/5] ARM: dts: rockchip: Add USB host clocks for RK3128
      commit: 759d6bd9ef94f0e658202947d44b939c6e3ed363
[4/5] ARM: dts: rockchip: Add dwc2 otg fifo siztes for RK3128
      commit: 4b12245e59efea81e19d1aa118f6f835b3e27b3a
[5/5] ARM: dts: rockchip: Make usbphy the parent of SCLK_USB480M for RK3128
      commit: fd610e604837936440ef7c64ab6998b004631647

The rk3128 binding and the phys is already defined in the binding
and devicetree, so I've picked up these, as they're independent of
the phy changes themself.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

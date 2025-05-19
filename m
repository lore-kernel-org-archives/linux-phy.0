Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16CB4C3ABD8
	for <linux-phy@archiver.kernel.org>; Mon, 19 May 2025 02:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0XX094mDBZV1SfSKXdnbS8Pb4Ywpbv/mbR7Imb4xeBw=; b=JCdj1l2BbLeXzD
	pHIhfRl3yMt3+iRGCFKgKvfA5Z4DiNphuHxf0v2wbBmGrUyWQOSlc5kCarOcmNx5j1rIPR9MF7DwQ
	sI54PWPj8xEl0L1EqCAFLmGTWVv6gVOBq0rLQBxOy2NHBywSCkvoG/J3eb1+xwf5yPrB9fHvUV6jr
	AYBIM6w0+A0QK9tkNzfq4/eRoIuj4dMBZI2MYa5x/um2nHCuhHLWhQPcXoNZZ01vTzLRm0zWnwKMw
	+kty7U6AtObhbyTFHE4EMX5iJ8zOVlVGJhelIjW0jQ5vd3PH1j38oF9sHDV8i+WXRTI0AcdIABGGX
	0AREHMaIJXqnGwDeycSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGqdG-00000007sTl-39xq;
	Mon, 19 May 2025 02:53:38 +0000
Received: from smtpbg154.qq.com ([15.184.224.54])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGqZX-00000007s8S-20Co;
	Mon, 19 May 2025 02:49:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1747622931;
	bh=q/sSSvsejltScJuXpP48TQCHlwrbZHa7HU/nV26CHgY=;
	h=From:To:Subject:Date:Message-Id;
	b=JbbEDoZYG38yQtTjaIio2935ELa6425ycT104A47Dk90ZHJuLnOd3UzCTdvJqKfuG
	 nfxoj3UvKrVvWikhcx4pWzJydSPnnnQDvEEnQx867cDWJDo14lUJrwnFE8aHdNGryH
	 7dMYO4Wmw13yco1+Y9CcWUNfsTu2uSzkgDrdWL/s=
X-QQ-mid: zesmtpgz6t1747622928t1cc315c3
X-QQ-Originating-IP: T3MnAOsWUPLbC2flLp01PBfX5yrywZTMate7vWnKhJw=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 19 May 2025 10:48:46 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3107093563551695927
From: Chaoyi Chen <kernel@airkyi.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Frank Wang <frank.wang@rock-chips.com>,
	Zhang Yubing <yubing.zhang@rock-chips.com>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Diederik de Haas <didi.debian@cknow.org>,
	Johan Jonker <jbx6244@gmail.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: [PATCH 0/2] Convert RK3399 dp-typec phy binding to yaml
Date: Mon, 19 May 2025 10:48:18 +0800
Message-Id: <20250519024820.194-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: N8Jy6PtD39R8GBSOHfaJoNKIdpkVvsf9l1xtvjZKJTDZmBv3K49XdsLg
	E/Hxnn4nKmf1qjmYEX5pCPrGJXHlDPPhy39HkqEAySSZdLwLLEHz+eiXOCeYhr7jzOLWxxn
	OqawgipqJGmX5XXzT8ZzSzIhvr+d67Y2z1F0KQWLvRm1oGlODjJ9MnSFdzZiNv3ubX02e2Q
	YpsFE54givGExR0kD128SsBPBk/j4OCo1JLZKflwMC8jTGdQ5by12ShoV1mCMB2YtJsDaZ0
	4GuveP454er6vVXN5Jt0d4yW7PztfkcoCHIo3Ehs5DnPYC5EOigljHUAZkBNV7/Z0SXHeAr
	VNxxk1l+mwPWxmb/9uFiLCX5ccMWttTtszRPaxA5svZeRbxaH9EouAGbKKUd/tQdXA8fEEq
	uuPBVk9RSAlf58fyo1saCF3j3CNRdnm4EHuMu4N44lrMkdZ+8gvm2fno8UlpZ/d1Ha605rb
	od6GztpMqSc6+csHC1nJcReKTmyJQasjq9lMr1VbmJg4kOKVVo+K6aK7u9CXvZY5V72/Xfu
	mQKpPouWivYF//Ju0TONuAMzagYCZBhust2sT90ec/oO2xsRimEBIPMekiet9KHReswXo9D
	84+6dqF8/Svjiw5hpi+QnNThHgVi7/JcgSFblgOLACg85fvuvBNKCsdpRhnp1ur2EO7KBs7
	iz76JCDp6TlLiGWHpktRbdq9KUz7QwQ+Oxh8YoDX2TscoQ1/gEnSJNZokefuuPAqp+k4AAR
	91x/mhxcWNV0O5Gq8jjPrMSEj81xJTXPvWShvvDyh+MR4PFKiA8mkZXobkLDuPntEAW28Ep
	xkkfZuD5B+SSpdN1kmYyNJl270O3w96XfkpOcZNiYZtISnhO+GDt+SgSxklKz2pFxSttpeN
	UqYuTwB7nsgz38Z4HtaVL9VHcMV6tvp+jEasg38KjNoblMuaN1VXjs6z1PhpUDAMrICIT4D
	/mc1lnRLPdmuU/Vj8ai3MSS9q9riissxY6M0wBe4cAiof4WsaZt+JbYB0
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_194948_209061_3CB659B4 
X-CRM114-Status: UNSURE (   7.68  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

This series convert phy-rockchip-typec.txt to yaml.

PATCH1 try to remove unused "orientation-switch" property for
rk3399-eaidk-610 board.
PATCH2 try to convert phy-rockchip-typec.txt to yaml.

Chaoyi Chen (2):
  arm64: dts: rockchip: Remove unused usb phy prop for rk3399-eaidk-610
  dt-bindings: phy: Convert phy-rockchip-typec.txt to yaml

 .../bindings/phy/phy-rockchip-typec.txt       |  84 -------------
 .../phy/rockchip,rk3399-typec-phy.yaml        | 111 ++++++++++++++++++
 .../boot/dts/rockchip/rk3399-eaidk-610.dts    |   1 -
 3 files changed, 111 insertions(+), 85 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml

--
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

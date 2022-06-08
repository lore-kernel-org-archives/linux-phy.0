Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA52BC43334
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 07:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UtC0vTibAgu0xdUPF5NVFOjOAysSI+RcFsOFk394owo=; b=tqDvXsPPgggu9p
	m64dPdw4Wpui3Eu3So1PqYpUc4XkMAzvq891I82jQ5hPhTgFkqNmuMqwQ6D1BiJmeanbhnm4CS+lj
	FzOvEjVC/LXI35lkqDwGxsbc/MghBB3FoOgOddJGC0dqyXo5KUz/FwwKyy+4ME5frgturVfwblFER
	QXwZop8yA+GxJLLFDY51qD2a/q9d7dtEuFHAq2tXf9vG/pmhk7YkISC9iSWPTWILBs07QMpDpyqsD
	7XA1SA4c62/LQqgUoEEjc6bk8/bRC4ibk3hput5rH1XURKCFTan5YeWcYiG4kzHBiFOTR0D+Uxlq0
	Kr/zDD9MlRlM6UNEfdTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nypks-00BPOb-93; Wed, 08 Jun 2022 07:05:26 +0000
Received: from sender4-op-o18.zoho.com ([136.143.188.18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nypkp-00BPKv-2q; Wed, 08 Jun 2022 07:05:24 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1654671910; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=FuAga62THTO8ISOHCPEFx/rhhtKMuB05AcAXULNCumRh16cX59Nznutz0IZNG+QN9LvQSgInBnIkal7oAUQY+JmMObgPEAdlUqtTnn8BdFhq3W3JT0Ok4osIa4INEKYj/dbrtlG5cp1zCAyaZQEkQgDfP07U0yGlcCgR+b5B8JM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1654671910; h=Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To; 
	bh=KsA2pzq+U0bqSmgHyiHZ74OILTwlfJuxl1oir9jP7EM=; 
	b=W0xNk+4dUt2+PPrS71dVzLn2FlnNO0gOxavPtTqfEtecIkzGi03hhIGKpJycLtcYXrExd3n/Xft3xDBN6xEr/rGidRu6bbKYMR1LVHWsxLllwTVlF30hhlZg9lGDVkGZEp1AuCvkF/kMWY4v+8NEGiNh8wkwoED01RpTE5h7MvE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1654671910;
	s=zmail; d=icenowy.me; i=uwu@icenowy.me;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:MIME-Version:Content-Transfer-Encoding:Reply-To;
	bh=KsA2pzq+U0bqSmgHyiHZ74OILTwlfJuxl1oir9jP7EM=;
	b=JhI3tpeeXoWedikGO4Yh42G6DinriqRxBWRAiA6O/BAj/gcUTC8LCO297j8bH6JB
	kk8OF2NLO9mPDZ45Yp+EmnwBaHcW+q3QQju2yXdKxX1zj3yQQLdyciN7hoqn21V+q89
	YePvZxQLlC6BhodOBQ8QHUEExpQZNzmefIKc8dXM=
Received: from edelgard.icenowy.me (59.41.163.66 [59.41.163.66]) by mx.zohomail.com
	with SMTPS id 1654671908459625.697781160352; Wed, 8 Jun 2022 00:05:08 -0700 (PDT)
From: Icenowy Zheng <uwu@icenowy.me>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bin Liu <b-liu@ti.com>
Cc: linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-usb@vger.kernel.org,
	Icenowy Zheng <uwu@icenowy.me>
Subject: [PATCH 0/7] SUNIV USB support (and updating mailmap)
Date: Wed,  8 Jun 2022 15:04:45 +0800
Message-Id: <20220608070452.338006-1-uwu@icenowy.me>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_000523_314772_A8A7AB9E 
X-CRM114-Status: GOOD (  10.43  )
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

This patchset introduces support for F1C100s' USB.

As I switched to a new mail address, and this patchset contains patches
authored before this change, a mailmap update is added.

The DT binding and driver support for SUNIV USB PHY/MUSB are added, in
addition to DT changes to the DTSI and Lichee Nano DT.

Icenowy Zheng (7):
  mailmap: update Icenowy Zheng's mail address
  dt-bindings: phy: add binding document for Allwinner F1C100s USB PHY
  dt-bindings: usb: sunxi-musb: add F1C100s MUSB compatible string
  phy: sun4i-usb: add support for the USB PHY on F1C100s SoC
  musb: sunxi: add support for the F1C100s MUSB controller
  ARM: suniv: add USB-related device nodes
  ARM: suniv: f1c100s: enable USB on Lichee Pi Nano

 .mailmap                                      |  3 +
 .../phy/allwinner,suniv-f1c100s-usb-phy.yaml  | 83 +++++++++++++++++++
 .../usb/allwinner,sun4i-a10-musb.yaml         |  1 +
 .../boot/dts/suniv-f1c100s-licheepi-nano.dts  | 16 ++++
 arch/arm/boot/dts/suniv-f1c100s.dtsi          | 26 ++++++
 drivers/phy/allwinner/phy-sun4i-usb.c         | 11 +++
 drivers/usb/musb/sunxi.c                      |  8 +-
 7 files changed, 146 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml

-- 
2.36.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

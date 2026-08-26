Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A381AC61DBD
	for <linux-phy@archiver.kernel.org>; Wed, 26 Aug 2026 12:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=stUqj8vfREmEnC5mw+5EIypchJDKuGiAkuiBxwgBSdc=; b=k7tT+YEwXrjCn/
	HZ6NHSVQSC6ic+6T1KUc13fH9JdKNkS2yKYIgdqXE0eeRb+jeNEevJNARANSZcncVDDRv3PKbdd/a
	zZYgZPcDwkAP6G66UtsmkAkudA5zFINQM2uw+hu04yRoLP6s8c7MGwfFbUGm17tOx1qAkpEe9VHvb
	TXbG1B7Pk2wAUOnvuQuLvJYWrDCo2tDZCNeV6KczlG/ENqIsDKGSoTrqLG5gOc+F6lYJbzbjiiTxT
	F2Vk4RLTEDkgbIOz69rVkExWrqmaF0QCv0s5GWJEEC7Svx15+VBrXqqGAFv/EkY7H0ErujpEzkTzv
	IyonyzNcAxV5VHnfIKrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCuB-00000002Rxc-2h1v;
	Wed, 26 Aug 2026 12:39:00 +0000
Received: from sender6-op-o10.zoho.com ([165.173.180.10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCu7-00000002RwB-2aPl;
	Wed, 26 Aug 2026 12:38:57 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1787747926; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=RKvlhSQ0LEetCMqCvqo0SnBumedX4ssqi6ualadSdzsINo9iryzBkWjvIdfguRl5wOdg1rM15NSJdV+91k9MzfsvFoem2a1kRfZmNISjgV5kdaE/2sTmZyTBSUKJfo4WFGhW8DpWUKDRtqh/TQwvE573WbFngMctej/zCmJSaDo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1787747926; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=4VNRIRwrupYIAqU3PUGZ+qcZDEH/zxwlIYina8BYFxE=; 
	b=KVFYRYL8lmngSAAG5km0IHXZH8crWnuA1xv3B2kKSfgyVRRL3tqTJXNQZO7nPKLiVoF05FAjQqRH9f+TweAV7Fe+ztT9yvl74+iLbGCN7SzLCieI8haAmXjaEriJyjLgWgiY08B5uaAUMdTxJBHDutsiC9DzuEj6vdqL1AHcyRI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=julien.massot@collabora.com;
	dmarc=pass header.from=<julien.massot@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1787747926;
	s=zohomail; d=collabora.com; i=julien.massot@collabora.com;
	h=From:From:Subject:Subject:Date:Date:Message-Id:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding:To:To:Cc:Cc:Reply-To;
	bh=4VNRIRwrupYIAqU3PUGZ+qcZDEH/zxwlIYina8BYFxE=;
	b=d73NUhrzD184xtUmtWi2woq+BFJ96RXrYl7/5sliGkmb1j3l4UodVG8BMtYFBS3l
	o2Q5sUdeZISsW4B2n10seqVfkQiGzdas9AVIWwPOHNijsAK0p1yYvNMxQiFY1x0TFP/
	S9eMWCFY23ITlPqBnLaMkDENSfT9S5/b0n5pefMw=
Received: by mx.zohomail.com with SMTPS id 1787747923990903.3768202978625;
	Wed, 26 Aug 2026 05:38:43 -0700 (PDT)
From: Julien Massot <julien.massot@collabora.com>
Subject: [PATCH 0/2] phy: mediatek: xsphy: add eUSB2 repeater support for
 USB2 ports
Date: Wed, 26 Aug 2026 14:38:34 +0200
Message-Id: <20260826-mtk-usb2-repeater-usb2-v1-0-e8e48e2fd6d8@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMzQpAQBSG4VvRWZtiypBbkcWM+XCSn84gJfduY
 vks3vemAGEEqpObBCcHXpeIPE2oG+0yQLGPJp1pk1XaqHmf1BGcVoINdof8Kn3hrDe271BRjDd
 Bz9c3btrneQGf/QQvaAAAAA==
X-Change-ID: 20260826-mtk-usb2-repeater-usb2-7d5bad6afce8
To: kernel@collabora.com, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Julien Massot <julien.massot@collabora.com>
X-Mailer: b4 0.14.3
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_053855_873052_33B247C0 
X-CRM114-Status: UNSURE (   7.97  )
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

Some USB2 PHY ports are connected to an external eUSB2 repeater chip
that sits between the PHY and the USB connector. To support such
configurations, this series adds an optional phys property to the
MediaTek xsphy port sub-node and integrates the repeater into the USB2
PHY init, exit and mode handling.

The binding follows the same pattern as the Synopsys eUSB2 PHY, which
already uses a phys property at the sub-node level to reference an
external repeater. The driver change similarly manages the repeater PHY
alongside the MediaTek USB2 PHY.

Signed-off-by: Julien Massot <julien.massot@collabora.com>
---
Julien Massot (2):
      dt-bindings: phy: mediatek,xsphy: add optional repeater phys property
      phy: mediatek: xsphy: add optional repeater support for USB2 ports

 .../devicetree/bindings/phy/mediatek,xsphy.yaml    |  5 +++++
 drivers/phy/mediatek/phy-mtk-xsphy.c               | 26 ++++++++++++++++++++--
 2 files changed, 29 insertions(+), 2 deletions(-)
---
base-commit: 917df6be58562d024374b4076e6e7618876a0c4a
change-id: 20260826-mtk-usb2-repeater-usb2-7d5bad6afce8

Best regards,
-- 
Julien Massot <julien.massot@collabora.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

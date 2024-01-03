Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ECCDC46CD2
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jan 2024 02:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ohob2X40WJrm+Ve634CbMrf1e4xcuz+UaHkqoSn86Ao=; b=lg/pS91f275jCO
	x3jijvYM8o2rZOvR2b2DlWJLXzJfA8k80vStQmTRbrUMZ19y0VWtLE899+aAn75rR5NIympV3n3bz
	WI5rOj2Ro5olmWxIObbkbA7TMHVmubxVx9/CMkgtlOd3rq4o4oxNex5VPN6i6bcbR48p7KjdQ3rEc
	u/7K5vbSKDVRovYwCyv+StVETeiw86TQgo06EOCcJlLyqyPhsCftOBlpotBaI3+IL5w71vShyV4Oc
	TyjS0qDxPVGZHNNKLCmjR8aPuLYdvcxxxjg6kPcQoQ9OVk9PESk+k7HH+lBSe4PggwTTsb/07PYM7
	UPSWPPtH3FyoB32OaUAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKrOS-009cjc-00;
	Wed, 03 Jan 2024 02:54:08 +0000
Received: from out-182.mta0.migadu.com ([91.218.175.182])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKrON-009cj5-35
	for linux-phy@lists.infradead.org;
	Wed, 03 Jan 2024 02:54:06 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1704250440;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=jKg88EOc19Ldtm/CDT5Vvu/qnifyLXpVN7rl8hsod6M=;
	b=IBcYPolrqPHkbUIAacMiHDSykXqfpBH/JtWC+mGENXrqYgL+J+GAviTeW33XVK+uKQ1aUS
	ej/JQPXJgzMZ1yzFAgvVC05anwGGffEMZwtKkv0a2HHKQVnbVTS0baW3X1EC0h9bgW5f+f
	OMbJajn+6efsgCyejh9OuK9uc6Zqufo=
From: Yajun Deng <yajun.deng@linux.dev>
To: davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com
Cc: andrew@lunn.ch,
	olteanv@gmail.com,
	hkallweit1@gmail.com,
	linux@armlinux.org.uk,
	przemyslaw.kitszel@intel.com,
	rmk+kernel@armlinux.org.uk,
	kabel@kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Yajun Deng <yajun.deng@linux.dev>
Subject: [PATCH net-next v2 0/2] net: phy: Use is_phy_driver() and is_phy_device()
Date: Wed,  3 Jan 2024 10:53:32 +0800
Message-Id: <20240103025334.541682-1-yajun.deng@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_185404_478787_BFD0266B 
X-CRM114-Status: UNSURE (   6.50  )
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

There is only one flag that can be set in struct mdio_driver_common and
mdio_device. We can compare the probe of the driver or the type of the
device to implement it. Hence, these flags in struct mdio_driver_common
and mdio_device can be removed.

Introduce is_phy_driver() and is_phy_device(). Use them test the driver
or device.

v1 -> v2:
remove redundant parens and the exported.

Yajun Deng (2):
  net: phy: Cleanup struct mdio_driver_common and introduce
    is_phy_driver()
  net: phy: Introduce is_phy_device()

 drivers/net/dsa/b53/b53_mdio.c          |  2 +-
 drivers/net/dsa/dsa_loop.c              |  2 +-
 drivers/net/dsa/lan9303_mdio.c          |  2 +-
 drivers/net/dsa/microchip/ksz8863_smi.c |  2 +-
 drivers/net/dsa/mt7530-mdio.c           |  2 +-
 drivers/net/dsa/mv88e6060.c             |  2 +-
 drivers/net/dsa/mv88e6xxx/chip.c        |  2 +-
 drivers/net/dsa/qca/ar9331.c            |  2 +-
 drivers/net/dsa/qca/qca8k-8xxx.c        |  2 +-
 drivers/net/dsa/realtek/realtek-mdio.c  |  2 +-
 drivers/net/dsa/xrs700x/xrs700x_mdio.c  |  2 +-
 drivers/net/phy/mdio_bus.c              |  7 ++--
 drivers/net/phy/mdio_device.c           | 21 +++++-------
 drivers/net/phy/phy_device.c            | 44 ++++++++++++++-----------
 drivers/net/phy/xilinx_gmii2rgmii.c     |  2 +-
 drivers/phy/broadcom/phy-bcm-ns-usb3.c  |  8 ++---
 drivers/phy/broadcom/phy-bcm-ns2-pcie.c |  8 ++---
 include/linux/mdio.h                    | 19 ++---------
 include/linux/phy.h                     | 10 +++---
 19 files changed, 62 insertions(+), 79 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

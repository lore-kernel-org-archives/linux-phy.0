Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D650C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 16 Dec 2021 16:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5i8y7wgBUzSh8aiBBtUfzz+aAfAq9blLs4KVfRTe3V8=; b=d1jyyf6Q2bryBH
	V5ohFy7+Xm60XhucsoKo9X5d943FOGr1bAgZ8Hn7xO/T89S02UFksCEpEfP+sRcdXrBEZwRjtErA/
	+G+0GY6YOwZz4zfJTVtW93T/mYqZhzk7+wh/Juxnoh7/E7iUQZEyRsA8gQUTZcNLTu5UEJsXdqhHT
	xji8UX2wV0fjpCuGsDabOIXkBOQ3rAB0B897GitfAW/dKtu/dZFBAFR6VI1n7FFGPvhRSmzn3r2FX
	xaLcSauxUll6Qam+YBIbFBZ8syzDBhvAqHf4hyVB29XDOD/mudXa21iu8wMbMj/DDrvqaGfEGD0aH
	mI0dDZRSNkw6dzqe6CsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxtJ3-006UdW-JI; Thu, 16 Dec 2021 16:08:33 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxtGS-006TSg-3L; Thu, 16 Dec 2021 16:05:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1639670752; x=1671206752;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i3efUfflphk5o9Z5yhAk9+ExzhxAJPDr9BAjBhm1/QU=;
 b=ovwq6o4A0NasnNo6aAcUSGgT67QUBmgpyLQ4QCFzyhbJWxYn8zUCY16g
 Q0YUjF7tVDIuyu9BeclRHA6uMGHXfSAbNtiW4M708Qsy0fehHOz5VAFLZ
 HhDQSsvAzLIyHszz0le5JoLyCppj82KuQe9WVuw8WyIJZGtjOR/fdcVsg
 QtFhxM5MQ2mv03hABCi1LbPsFv7yIkE94HHbNx3SaJW0hoxVRpwFVDoL2
 zbhVD2V6hjFXFXb9Xf9LuHN1AEdcAN4Ob7GKBXdBX5O2+qnSZJrzwj0ee
 6FypmCx89ChphTPeVpVeTtJXoHg0NneK3RA1iNAnBZa2cPD7PjTQbStic A==;
X-IronPort-AV: E=Sophos;i="5.88,211,1635199200"; d="scan'208";a="21103117"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 16 Dec 2021 17:05:49 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Thu, 16 Dec 2021 17:05:49 +0100
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Thu, 16 Dec 2021 17:05:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1639670749; x=1671206749;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i3efUfflphk5o9Z5yhAk9+ExzhxAJPDr9BAjBhm1/QU=;
 b=iWf2uZ6W1U8JKTCli4JjxZNSXUBcVA97jWSgGjsJE02z8o0nLfzdomIG
 st56UePCUfFwB85z+qF55VRvroilZ6lx3Lxcs49ACBh4uuMvJMvLzwFy7
 RDmFS4l4au5tBUL6PZD/PTGNj/xU456CdYrOrFQgePa5/1R7fr6Lb1ARW
 K04o7EOgXV36bGmVSJ7Nzx2T6HPbafAIZbyy00vFjjgtWHA8Yg8aiA9Rs
 lHXkRltulgXKb1oWyJW7WM3MJoVEqTxKfwM+2Sk1kKnaNVyGGo5WUJfCN
 XS7A1N40MkwGcLR2VzRIskrYTTH5LLs4KgiGOjH43cdNO0zh8cqorwX5j w==;
X-IronPort-AV: E=Sophos;i="5.88,211,1635199200"; d="scan'208";a="21103116"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 16 Dec 2021 17:05:49 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 9A284280065;
 Thu, 16 Dec 2021 17:05:49 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/3] i.MX8MP: more USB3 glue layer feature support
Date: Thu, 16 Dec 2021 17:05:38 +0100
Message-Id: <20211216160541.544974-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_080552_486994_70E45A36 
X-CRM114-Status: GOOD (  11.94  )
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

This patchset aims to support flags for e.g. over-current active low or port
permanantly attached which are provided in the USB3 glue layer.

There is already a glue layer driver dwc3-imx8mp, but unfortunately this driver
does not use the glue area at all, it only handles wakeup-support which is
done in the HSIO BLK_CTRL area (0x32f10100), accordingly the driver only uses
the hsio clock.

The driver which actually uses the USB3 glue area is phy-fsl-imx8mq-usb. As the
name indicates PHY is configured in the corresponding registers, which are part
of the USB3 glue layer.

This make is it unclear for me which driver should handle the required features
above.
dwc3-imx8mp, the glue layer driver, does not touch the glue area at all,
but the HSIO BLK_CTRL area.
phy-fsl-imx8mq-usb only touches the PHY registers in the glue layer.
Neither does map the USB3 control register from the glue layer.

Thanks for any feedback and best regards,
Alexander

Alexander Stein (3):
  dt-bindings: phy: imx8mq-usb-phy: Add imx8mp specific flags
  phy: fsl-imx8mq-usb: Add support for setting fsl specific flags
  arm64: dts: imx8mp: Add memory for USB3 glue layer to usb3_phy nodes

 .../bindings/phy/fsl,imx8mq-usb-phy.yaml      | 52 +++++++++++++++-
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     |  6 +-
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c    | 61 +++++++++++++++++++
 3 files changed, 116 insertions(+), 3 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

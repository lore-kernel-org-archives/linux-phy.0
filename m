Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82154ECAAD2
	for <linux-phy@archiver.kernel.org>; Fri, 26 Aug 2022 06:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nxxta1kA6QZTNRkTmD0yAiZYS5aOAf1Bl9rCIPhVHFg=; b=VU4kFNeCKFttNp
	R/+hH0+jaH64Y9oKWhWYP0bpTar7QRWN1f4JU3RyYBABcE2YQ4LyxJgz+pvLRA2QzfMAB8jvZQfjo
	kgXrGVXm6C6NvNatb6jJOpXt8+HXX+HCimed/HcpCm0oUjgtZLz1RYW9QEC7RzhWRNEaNnzap9Gp2
	Pj3YtQqzmQxgkcNpDGyxlXH/IV8Gw53J5ltf41qqO1+Z0oPAdSctuUMZdhGi/0euTKcu8IbTUbmGs
	r00WGhq+uwZkHKKAD0kypk+M9EU7uKYlIBEOs9ssLAUkimaSTkY9wb/k4u3hxNjl2i80PeJs4dgvv
	ninyBQmrWvvGOVdipKCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRSnN-00EdR9-Uf; Fri, 26 Aug 2022 06:26:21 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRSnB-00EdKa-R3; Fri, 26 Aug 2022 06:26:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661495169; x=1693031169;
  h=subject:from:to:cc:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Ru/eWDImchhw6Kz9v2fJ5UGl0jpVy/CFCbFYw8iOmFs=;
  b=g2wVjwKDywR5wUjU+WpROA4mswRyDGjrdlnyUWAB4WtNohrPLIxM1rfm
   i8hHrlHOn8ru3vTH1xkTwa/yOCErRUQNdk0nxoDnulCe5l1TV9tZS7jke
   fHPbrG+hc3t4eO21/9Ndhd2glWyhyar8+/9CSOTHajRR/zA1YedX6yCQj
   uhctC/i6qj5xvtNwGGW7Vfd5xHdvsiZ84tw3rRTY8yIwA0CZTx3GSLPtp
   xzorXS1qhltGQXD/qCHKCoXmQPLNcm7OYK8noM3HVbq5cfkBZHM9iNuDF
   RMuWCv0l8Fen9aQP5xWdyL0hqQUyTg45kzYvpVn73ejKeqDAqtvqtBWdM
   A==;
X-IronPort-AV: E=Sophos;i="5.93,264,1654552800"; 
   d="scan'208";a="25817877"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 26 Aug 2022 08:26:08 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 26 Aug 2022 08:26:08 +0200
X-PGP-Universal: processed;
	by tq-pgp-pr1.tq-net.de on Fri, 26 Aug 2022 08:26:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661495168; x=1693031168;
  h=from:to:cc:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding:subject;
  bh=Ru/eWDImchhw6Kz9v2fJ5UGl0jpVy/CFCbFYw8iOmFs=;
  b=GZlq0KSirEFrHnj29JRewBtdV51m86yAQ2aYucZ1AyNT5t+C/WnS0w0l
   2KjJwivgu3XTmqwC6UdW4OGXj2gyb+R+GCCm4H1yGqXWuyg9hDY40VAkv
   3BCMWM3gJQ3ASR7r89Em8RWLBrx3YxrAdbcCilr4DcqKWKUhw3XwxZXKX
   VgopHAhotboPVEi01OdZ1/GtodJp9uLvhJBYsx/F2r+jjbE8dwU1NpBX/
   5eIV4t+eSQCqLpj+mZ7a6JpDG5cPF/f4mfLfQh5vt6dQCuMDp5RKnKgI9
   N/mmD1BD4fT6Ehqnz/ZLFTgKHJBHEMQPmnhfkcQCPBHfp1birUz7aXObO
   w==;
X-IronPort-AV: E=Sophos;i="5.93,264,1654552800"; 
   d="scan'208";a="25817876"
Subject: Re: [PATCH v1 0/2] Fix the wrong order of phy callbacks
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 26 Aug 2022 08:26:07 +0200
Received: from steina-w.localnet (unknown [10.123.49.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 9E1C8280056;
	Fri, 26 Aug 2022 08:26:07 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: l.stach@pengutronix.de, bhelgaas@google.com, lorenzo.pieralisi@arm.com, vkoul@kernel.org, marcel.ziswiler@toradex.com, kishon@ti.com, linux-arm-kernel@lists.infradead.org, hongxing.zhu@nxp.com, linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Date: Fri, 26 Aug 2022 08:26:05 +0200
Message-ID: <4054884.5fSG56mABF@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <1661173856-1192-1-git-send-email-hongxing.zhu@nxp.com>
References: <1661173856-1192-1-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_232610_225063_A15751FF 
X-CRM114-Status: GOOD (  10.06  )
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

Hello Richard,

Am Montag, 22. August 2022, 15:10:54 CEST schrieb Richard Zhu:
> Refer [1], phy_init() must be called before phy_power_on().
> This series used to fix the wrong order of the phy_init() and
> phy_power_on(), introduced by commit 1aa97b002258 ("phy: freescale: pcie:
> Initialize the imx8 pcie standalone phy driver") Tested on i.MX8MM EVK
> board when one NVME device is used.
> 
> [1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/d
> rivers/phy/phy-core.c?id=v5.19-rc1#n233
> 
> [PATCH v1 1/2] PCI: imx6: Fix the wrong order of phy_init() and
> [PATCH v1 2/2] phy: freescale: imx8m-pcie: Fix the wrong order of

Together with your imx8mp patch series on TQMa8MPxl + MBa8MPxL:
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Thanks again!
Alexander




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

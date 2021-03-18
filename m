Return-Path: <SRS0=ZbHx=IQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-20.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 183D8C433E0
	for <linux-phy@archiver.kernel.org>; Thu, 18 Mar 2021 23:29:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B5E5C64D74
	for <linux-phy@archiver.kernel.org>; Thu, 18 Mar 2021 23:29:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B5E5C64D74
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j/+FtxevATElvV5yng4yOFVWaAugExjoWv+3FwTUDAE=; b=IcCI3jHQ5hP5eVfHgcCOAh2tk
	M/0/hU8Xwgp5AuQAOvxSAIP2MQgLyTRDAmrH5farKRhQNxmIyhJ853QDqR8P+WSbR+C3T/yKEXOSg
	6Y/0SWUJFVcSMh0ck8EAhiVgWVHfsegOfKh0Lm3IWoMkIuf4cMVl4w8MPOFDK2zzgjMK0NRal9mYh
	Qbpi+5dtEUxois+ftHNz++IaTjuRlM/eNsYQPBV9IP/adE/bszXBBFQ44uJRijPttkDv6LgzCo5td
	QhyjS4QRj1Bg0dXW99GqKpqEtic9ThB9XnnFj89mpsrDy5Gl4IheCgsDQz8JJTL9CnxRWUBREAopM
	FvIDrD1eQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lN24n-006Aui-2S; Thu, 18 Mar 2021 23:29:13 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lN24h-006AuG-JI; Thu, 18 Mar 2021 23:29:10 +0000
IronPort-SDR: 0wlokIkFGaTXhE6yZP2BVyazu1/wa/UgmAVV68G0YNFjIbO7S+L++QnTgm9IzWYjcnr0+bjCCZ
 igPcg3i8vgbg==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="177379308"
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="177379308"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 16:28:59 -0700
IronPort-SDR: zPRecQ2zPzjPYaqjb9aWe58WEjcD3jcBa8ZcPbs0DUE9vj9wGFcRiKvl2EssM/ld38o2sHX4TC
 wRNd91AMGZmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="602922243"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 18 Mar 2021 16:28:57 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lN24W-0001TR-DK; Thu, 18 Mar 2021 23:28:56 +0000
Date: Fri, 19 Mar 2021 07:28:44 +0800
From: kernel test robot <lkp@intel.com>
To: Steen Hegelund <steen.hegelund@microchip.com>
Cc: kbuild-all@lists.01.org, Linux Memory Management List <linux-mm@kvack.org>,
 Vinod Koul <vkoul@kernel.org>,
 Bjarni Jonasson <bjarni.jonasson@microchip.com>,
 Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 UNGLinuxDriver@microchip.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] phy: fix resource_size.cocci warnings
Message-ID: <20210318232844.GA65886@63b0c5462fda>
References: <202103190711.pUzuZRzG-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202103190711.pUzuZRzG-lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210318_232908_148466_C1E99E54 
X-CRM114-Status: GOOD (  11.14  )
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

From: kernel test robot <lkp@intel.com>

drivers/phy/microchip/sparx5_serdes.c:2440:54-57: ERROR: Missing resource_size with iores


 Use resource_size function on resource object
 instead of explicit computation.

Generated by: scripts/coccinelle/api/resource_size.cocci

Fixes: 2ff8a1eeb5aa ("phy: Add Sparx5 ethernet serdes PHY driver")
CC: Steen Hegelund <steen.hegelund@microchip.com>
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: kernel test robot <lkp@intel.com>
---

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   ba5b053ab3ac674b91a6669086139819359a5e6e
commit: 2ff8a1eeb5aa8bb471f3756a695b8b69841eb61f [4647/5413] phy: Add Sparx5 ethernet serdes PHY driver

 sparx5_serdes.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/drivers/phy/microchip/sparx5_serdes.c
+++ b/drivers/phy/microchip/sparx5_serdes.c
@@ -2437,7 +2437,7 @@ static int sparx5_serdes_probe(struct pl
 	priv->coreclock = clock;
 
 	iores = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	iomem = devm_ioremap(priv->dev, iores->start, iores->end - iores->start + 1);
+	iomem = devm_ioremap(priv->dev, iores->start, resource_size(iores));
 	if (IS_ERR(iomem)) {
 		dev_err(priv->dev, "Unable to get serdes registers: %s\n",
 			iores->name);

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

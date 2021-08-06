Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA37C4338F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:03:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2884461102
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:03:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2884461102
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2o4NWjWbAHTNJFCfv0sUwofOESd+My1hwfqTRL67w7Q=; b=xDPojXXOrDMOc5
	utz8iTkg3stVIe+qioAcvqhysgSbNE3157Ldp2cIirgfGOMSZZ5wXsOnffycvQ8ab6/hqPjmmYbFy
	/vgsmGsAIshA+oejcNE2kKsHCUK456zjzN2cgrTp85J8RO9zb003Eh2o1Oe3sR1oaAlYq13F3Ogzf
	YZciIjx55N8s9X3CTpK0Vi1wHHij6gN3gxnm798zc0NYkSPb8x5zGOzS+pObJRC5I5PZZUgNrJSd1
	fjENUMPVKERBDbnKHaeg2JFdidbqMoHM2P8pkPO89otOP6Q9fGcJ6XsylfmxNpgCz5pm/rHTILwGn
	loTUOAhF/rVdO5P72Jtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mByZ8-00CQQ6-JI; Fri, 06 Aug 2021 12:03:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mByZ5-00CQPR-P1
 for linux-phy@lists.infradead.org; Fri, 06 Aug 2021 12:03:04 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 67625610C7;
 Fri,  6 Aug 2021 12:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628251383;
 bh=qDve5wMNtV6JzjL+UP7+g7BUSr+dzrdBtJfd+LudumI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R+tHkmAMK0EK60kJUXRsUOsjHyTD6Y1Ws+zchrMLGB2XYZ+LPu+IUaSXf/r7EsbXV
 IbHX4ijpoV/5J0DXEta/1uCBRuCt1glOzXADgiaQTksaDI870uL2ZP7s0zOWqy25zB
 3RthcSaN39Mhv3GT4IOiyoeaP6Ext+bSFK0PK6sDhrRBdNN9ft1Ftl1tNl6AIF2wPL
 lDsxIEsTbrcsxZoP08vMQXj4KRv5VnLRFUsfJxZM1xdWotvKJCh0OPz+08udMgCTe2
 ecc2ycGtCHNWA3k4Trxf/GDPQfC8bsCuz2Et1sWSD4QnFqIJIGPV+2gLajeTXqRKgN
 VCshoBVevr1fQ==
Date: Fri, 6 Aug 2021 17:32:59 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, linux-omap@vger.kernel.org,
 Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH] phy: phy-twl4030-usb: Disable PHY for suspend
Message-ID: <YQ0k8xd6wYkATubB@matsya>
References: <20210727104512.52968-1-tony@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210727104512.52968-1-tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_050303_868566_E983B49A 
X-CRM114-Status: UNSURE (   6.88  )
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

On 27-07-21, 13:45, Tony Lindgren wrote:
> Since commit 88d26136a256 ("PM: Prevent runtime suspend during system
> resume"), PM runtime will not let devices idle during system suspend.
> 
> This is because of the pm_runtime_get_noresume() call done in
> device_prepare() that is not released until at device_complete() after
> resume.
> 
> We must now disable the USB PHY in suspend if no USB cable is connected.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

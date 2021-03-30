Return-Path: <SRS0=B2Kc=I4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E6E6C433C1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 14:23:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2154561955
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 14:23:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2154561955
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/mw5IL/yCxA1de/r9s4xThyERgbEvRo6kp9VEApVOE0=; b=ByaHTak9Jwaf1lv1xhtDSmxMK
	tGQwNin/dCPz/7rEEwJoZlmGSLRV7GZCjhxZirOZ35m7aPQ0vcH8m6Y3ncxHn52d5tg+ztsNf6ra4
	x9x0lV1PVchAQ3bZcMgMH+UL2aY1cJ7W0n8SaTrHCDtAptUMSwEkvWV1HTHCoTKYJbRnKmJvbOEDh
	5VXJWWUBpUeIwiAwBaS08mTY4NLko3aY6BiP6UBbf9Hf0wTKstAy1vUqhGW7xRDIMXreRfq3opNfV
	VF++VClpoC8owE2pxOto5EE9dWMOx+XqSHHtrQT8TPxJ5PzgvBcT7ttipcGJVC5cmyoUgrzOh0hAS
	reVhKOiGQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRFHS-003zAy-3y; Tue, 30 Mar 2021 14:23:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRFHO-003z8G-E1
 for linux-phy@lists.infradead.org; Tue, 30 Mar 2021 14:23:40 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 23933619C8;
 Tue, 30 Mar 2021 14:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617114217;
 bh=5M2yquBBhiLOCTGF5f2g2d6BfrScvdQstqJq4iBUW4k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SlmOX/BM7xUXgpNG4rww+7aN+rGDiGfKqmW77POT8KkwCl8Ed0VgKMjbJN9R/R6WU
 O2IdwUQv359wKtHBCbibVKep0hhbo8BQmWA0k0FT2o3GJCPXdxFKzEhP/1Ya8KjsVH
 hp1rQJTnVneQiCGsdOztaNgsmHDXUTmIc4SGRKEGlRT8QPE4xLyjR/vCdp3Mgcx0wB
 tGP2D+KjRdClVoPj7owA9ni94LwLNRG1otLVWflae8UrpAkcVWB/moIYQUpKNhgJnH
 DpMa76lfSpqOBcSqLVyfq4kzm71bje1RcRJioH4t5fo459FAtilVx5Yax3jOcmICGP
 e6Ut/cmcWb62g==
Date: Tue, 30 Mar 2021 19:53:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v8 06/13] phy: tegra: xusb: Add sleepwalk and
 suspend/resume
Message-ID: <YGM0ZOroZolJ9zEC@vkoul-mobl.Dlink>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
 <20210325164057.793954-7-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210325164057.793954-7-thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_152338_779628_2ADD3F3F 
X-CRM114-Status: GOOD (  10.03  )
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

On 25-03-21, 17:40, Thierry Reding wrote:
> From: JC Kuo <jckuo@nvidia.com>
> 
> This commit adds sleepwalk/wake and suspend/resume interfaces
> to Tegra XUSB PHY driver.
> 
> Tegra XUSB host controller driver makes use of sleepwalk functions
> to enable/disable sleepwalk circuit which is in always-on partition
> and can respond to USB resume signals when controller is not powered.
> Sleepwalk can be enabled/disabled for any USB UPHY individually.
> 
>   - tegra_xusb_padctl_enable_phy_sleepwalk()
>   - tegra_xusb_padctl_disable_phy_sleepwalk()
> 
> Tegra XUSB host controller driver makes use of wake functions to
> enable/disable/query wake circuit which is in always-on partition
> can wake system up when USB resume happens.
> Wake circuit can be enabled/disabled for any USB PHY individually.
> 
>   - tegra_xusb_padctl_enable_phy_wake()
>   - tegra_xusb_padctl_disable_phy_wake()
>   - tegra_xusb_padctl_remote_wake_detected()
> 
> This commit also adds two system suspend stubs that can be used to
> save and restore XUSB PADCTL context during system suspend and
> resume.
>   - tegra_xusb_padctl_suspend_noirq()
>   - tegra_xusb_padctl_resume_noirq()

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

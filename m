Return-Path: <SRS0=SrD0=MO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D16B5C6377D
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jul 2021 09:11:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9DCDA60C3D
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jul 2021 09:11:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9DCDA60C3D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vM1rAGD+aDa5mCgTH34JXD7KlclEhcz+kWcAIF3wdw8=; b=njHZn9f1xEcpWC
	3XUeBHxOrn9De0gQ/HKoXDrXQRTPgN6JmmkU4M/5xIvUAPqWM74e8o8sg5mrKSsAN1Z+Zv3qt70g5
	QM6Iuolx41HMZxtv5XGjrWOLhoPKZ2hEgx+tWlvL/2/SIFwzyfADzZq4agBPWU19BJKvlSdZZbmmb
	1JAW58OiQWkeiFmc3vknIB8d1rIZJGyvhPV2B9YqmGLuAq9oEaXHWZHLljVFvD7IlV4jNuc4imqZh
	bQ65ieG3shemjGAS3lF2jdMlFsVFpEZIkw9ALZJmualCc6yD4I3HavXBxVwhmcSjB+n6Y/x3jIn6P
	uehiXqwt/p+wIemFLIwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6Ujr-000odb-Ty; Thu, 22 Jul 2021 09:11:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6Ujf-000oak-Hd
 for linux-phy@lists.infradead.org; Thu, 22 Jul 2021 09:11:20 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 60D136008E;
 Thu, 22 Jul 2021 09:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626945079;
 bh=++tXS1XNNR5+rOMypNW2O4Nv6hWoVgGOYZurO92H4JY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XlIALtpBUEMrYlgS4RRMoNWt3+tyZx+kbipoYTOe/Rwjy54VFXUop4TXiBfHABqB4
 1wedigSd9A+i7OSzJItb7quozecjCXtepaU0R9aWN9up4Vv6ukGx13VgI+VhRrh3/0
 mX53A2HUJbqoPNupVaC3mcuz0Qm1/Z1h4cOa1qKUREzyPr/gYFLpMpE+iK+SjOoS/s
 m8q1/1JpBi7UPnmGnP+OyWQDKfKzhlE0jXeXxvYLBW+QEwwjU0hXfMqkaJwO1TDwge
 KnR8xTIscBhdVY5qH8iQJaNWQZa6tv0dT6z7uYfzhXfVX4xamAmeMaYlSN3gczmZha
 4IDpOSjhOqF1g==
Date: Thu, 22 Jul 2021 14:41:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: JC Kuo <jckuo@nvidia.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Arnd Bergmann <arnd@arndb.de>,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: tegra: xusb: mark PM functions as __maybe_unused
Message-ID: <YPk2M8rNvorkkb8d@matsya>
References: <20210721152550.2976003-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210721152550.2976003-1-arnd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210722_021119_653993_AB5CCBC4 
X-CRM114-Status: UNSURE (   6.75  )
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

On 21-07-21, 17:25, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> When these are not referenced, gcc prints a harmless warning:
> 
> drivers/phy/tegra/xusb.c:1286:12: error: 'tegra_xusb_padctl_resume_noirq' defined but not used [-Werror=unused-function]
>  1286 | static int tegra_xusb_padctl_resume_noirq(struct device *dev)
>       |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/phy/tegra/xusb.c:1276:12: error: 'tegra_xusb_padctl_suspend_noirq' defined but not used [-Werror=unused-function]
>  1276 | static int tegra_xusb_padctl_suspend_noirq(struct device *dev)
>       |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <SRS0=Vb9z=MY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_2 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8F0C4338F
	for <linux-phy@archiver.kernel.org>; Sun,  1 Aug 2021 16:55:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 70415610A8
	for <linux-phy@archiver.kernel.org>; Sun,  1 Aug 2021 16:55:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 70415610A8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pO49HRtj6/qyL1xHMwDm5WJfAvIcyn2kkqv790mGhNw=; b=mc8gX2A9OpyENE
	Pl5YC3ZK3PgG86LDBzfZVdP5BQdsDJIrx0pe7uEmQtmA3U0WF7waSYLHrGG8eMdZz8EfQniWfufvD
	n6uli5wBabTEu5zCZqKrZD1SaP8gkt2DhcC6tUp643K44zmQiHtxPNgVWQ0vzpWKX6JVKrsGI01XK
	oCoRr+XrYQ5NHuHybPtAENHvPCMzNGxD+XlWHQormJvOOGYh2XFKhNVreSgSdxCjzQ2DGxqR5E21L
	jtK4l2QMK+ViEgAVgO3hJ09Ct9/humIBkeD8/TeNeKxpMAU+pB1NZ5ZRRZkFjDzimaiknLWwgUGev
	fikVWejBY3WaNPjcMp7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAEk6-00DuZC-W3; Sun, 01 Aug 2021 16:55:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAEk3-00DuYj-S8
 for linux-phy@lists.infradead.org; Sun, 01 Aug 2021 16:55:13 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id BC51B60EE9;
 Sun,  1 Aug 2021 16:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627836910;
 bh=t0F14vvjAbS4suu+eRLbQ6noEGxXjuGG6u4ukmGqh6E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jRK5hsfv4Q6r3RUtHh4pyi4copIhvH6jbUo5DSq6T6Ki2cDN6SxK9S/xOYMw5HuM4
 yXX7ca6ZtTailRC+RpMXG5ZEt8ZahdFo0mKdP3q48ALNXSu3saxQcfEAAJzS8uudaC
 Zw+3lcnySqlv8h4qRplaYL1EPDPLvpK/deQKfpxjcO5B2zpDo311ATs8cG/hXcinJN
 dcE4pVsT34V1p7cRi4/U2tMWfbKhuGT/TNtRAtgVeDQpwGAHmZzZikey+ukHskqV2J
 ND0yrMwcn0S9H1fRddsXUgTIh5vzbDe1YAcgCqrkygDjXh+vGKHdo02c1Oclzy6BJ+
 1YU0FpdD5eLJw==
Date: Sun, 1 Aug 2021 18:55:00 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh@kernel.org>
Cc: Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kw@linux.com>, Binghui Wang
 <wangbinghui@hisilicon.com>, Xiaowei Song <songxiaowei@hisilicon.com>,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v8 00/11] Add support for Hikey 970 PCIe
Message-ID: <20210801185500.7fbb1849@coco.lan>
In-Reply-To: <cover.1627637745.git.mchehab+huawei@kernel.org>
References: <cover.1627637745.git.mchehab+huawei@kernel.org>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.30; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210801_095512_005567_F5C87432 
X-CRM114-Status: GOOD (  10.87  )
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

Em Fri, 30 Jul 2021 11:50:03 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:

> On this version, the DT bindings were split on a separate patch series:
> 	https://lore.kernel.org/lkml/cover.1627637448.git.mchehab+huawei@kernel.org/
> 
> The patches here should apply cleanly on the top of v5.14-rc1.
> 
> patch1 contains a PHY for Kirin 970 PCIe.
> 
> The remaining patches add support for Kirin 970 at the pcie-kirin driver, and
> add the needed logic to compile it as module and to allow to dynamically
> remove the driver in runtime.
> 
> Tested on HiKey970:
> 
>   # lspci -D -PP
>   0000:00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3670 (rev 01)
>   0000:00:00.0/01:00.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>   0000:00:00.0/01:00.0/02:01.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>   0000:00:00.0/01:00.0/02:04.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>   0000:00:00.0/01:00.0/02:05.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>   0000:00:00.0/01:00.0/02:07.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>   0000:00:00.0/01:00.0/02:09.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
>   0000:00:00.0/01:00.0/02:01.0/03:00.0 Non-Volatile memory controller: Samsung Electronics Co Ltd Device a809
>   0000:00:00.0/01:00.0/02:07.0/06:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller (rev 07)


As a reference, this is HiKey970 with both M.2 and mini-PCIe slots with
devices:

# lspci -D -PP
0000:00:00.0 PCI bridge: Huawei Technologies Co., Ltd. Device 3670 (rev 01)
0000:00:00.0/01:00.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
0000:00:00.0/01:00.0/02:01.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
0000:00:00.0/01:00.0/02:04.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
0000:00:00.0/01:00.0/02:05.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
0000:00:00.0/01:00.0/02:07.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
0000:00:00.0/01:00.0/02:09.0 PCI bridge: PLX Technology, Inc. PEX 8606 6 Lane, 6 Port PCI Express Gen 2 (5.0 GT/s) Switch (rev ba)
0000:00:00.0/01:00.0/02:01.0/03:00.0 Non-Volatile memory controller: Samsung Electronics Co Ltd Device a809
0000:00:00.0/01:00.0/02:05.0/05:00.0 Network controller: Intel Corporation Centrino Advanced-N + WiMAX 6250 [Kilmer Peak] (rev 5e)
0000:00:00.0/01:00.0/02:07.0/06:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller (rev 07)

Regards,
Mauro

Thanks,
Mauro

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

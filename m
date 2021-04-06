Return-Path: <SRS0=WDaa=JD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3DF10C43470
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 05:09:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D85F46139B
	for <linux-phy@archiver.kernel.org>; Tue,  6 Apr 2021 05:09:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D85F46139B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U0lqRW1bHsJISkXroWyJrtOJphV2MmYZHnxLu5OJ6hA=; b=GgRUgF5llFMj01X0t29LQKSRn
	ypBqPsjs5zVZ9WCcagQ/BH58vHq2qgTDhjz37DFOkScRVFpCeNXvxP02N9i7jl4vjlx3cYO2a2jLH
	Q5Ip1zW/QjR/81+wBBcy/FUGPUBvoC2Mx+9WnHFMrZzu+SveFw9nV+U/28n++Kjwwv7LfVMO8ef/b
	qN34SzvdozRP47n+CvZgheiaFKqwd1X44jBh9S8gNfbQbrLQOGkY/ltOjGNEx2DqYPM6NEXs/sXbp
	jzW4dHVAfuYHX0Ve3sBO8/J6OEzwxB59mdN6TXNR2GpoVhc9yysYzupkxw5Fugr9oRgYd2aStZcSf
	5VbfVXVGQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTdyG-001XhF-6n; Tue, 06 Apr 2021 05:09:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTdy3-001Xes-A8; Tue, 06 Apr 2021 05:09:37 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 20F396139B;
 Tue,  6 Apr 2021 05:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617685774;
 bh=b/ekTIqAkKQJ1OdjUrtAk59X/tXIbJWTlvoQpbRbxR8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uT1/KSK2sFi5RtJ8n9BPTy5vN27fJ59O935Ajz07sZYrvrpI/t9tsz+zyytnVmmI6
 cEt3OgQqDVP8Y182eahKg1piI3mxrt+yP+WOzNN9qe7EMHBu/PgRpxwfScC1rgUuO3
 YwxZ7BFSVuk6tWsnAOahdHmvN4qroP8rIHUozCzT/GQllOy3cjP/Ykr269vM+EdZxm
 GbTguMXLXShGsynkYVYboWoSddAYz2noejxaOogl/TyOFm+k54Jbx4rozAWBMk5vIa
 S8xHkIOnxwsAUIqWul9UXd7DkiT3ubFVnk50HhhtA/ddGmIhuHxrqk9KEwXBQp7yq6
 RLGuqXFewxgAw==
Date: Tue, 6 Apr 2021 10:39:29 +0530
From: Vinod Koul <vkoul@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Steen Hegelund <steen.hegelund@microchip.com>, kbuild-all@lists.01.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Bjarni Jonasson <bjarni.jonasson@microchip.com>,
 Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 UNGLinuxDriver@microchip.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] phy: fix resource_size.cocci warnings
Message-ID: <YGvtCewknNzLEt7t@vkoul-mobl.Dlink>
References: <202103190711.pUzuZRzG-lkp@intel.com>
 <20210318232844.GA65886@63b0c5462fda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210318232844.GA65886@63b0c5462fda>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_060935_667242_64B93C8D 
X-CRM114-Status: UNSURE (   5.44  )
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

On 19-03-21, 07:28, kernel test robot wrote:
> From: kernel test robot <lkp@intel.com>
> 
> drivers/phy/microchip/sparx5_serdes.c:2440:54-57: ERROR: Missing resource_size with iores
> 
> 
>  Use resource_size function on resource object
>  instead of explicit computation.
> 
> Generated by: scripts/coccinelle/api/resource_size.cocci

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

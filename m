Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C198C3065C
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jul 2024 13:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7MqAhx/Sl5OChl1Z61FNY9bD49LIfK5AzTA4R5tGUoY=; b=rBWtwNyvBvM9cN
	q93BIIFKgutSNOz5IMvbyRF4eIH/ba5C6dpZ3ERm6GGypOkiZP9YYClFhLct7rSA2HKMx9XvuiWrQ
	LS5YDjM0jiozGcR6RTSqzbfx80kEWD9+rrcU17OxqJ1n/xT8IZ0tS5B5VLcTtRIsItzaF1fZHz7xN
	3DbA7qqFJNdazBlic3kOX7x5QdWoltsSBBuMGyWUQ4DmtpV8p3RcrFPpcT3GPluCQ8k3tyb5GZc5P
	uknzX0nOxSqjX3YmknhgOyQIHkkLBpg9GEMVh/gtYwKEXcOJfpEhVu3McZvdM67LnkAI0UDqNOkyF
	JZVzp2+c59XJj+smxhgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdgF-00000006sN7-3h2v;
	Tue, 02 Jul 2024 13:36:23 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdfr-00000006sCA-3Fqm;
	Tue, 02 Jul 2024 13:36:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4D73A61BFD;
	Tue,  2 Jul 2024 13:35:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA0CEC4AF0E;
	Tue,  2 Jul 2024 13:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719927359;
	bh=ngYStSfDt3gm2V4MgO5eTyDmvV+QTyC+9v7LEeYoVSw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=BKHR4H/Ovc9HcJ0QEYYKrmhje3heu2JxfYnL9E4zdGhQ/QNHqI9/JWMl/TeSrxxOK
	 nOj9+sqqg2JY9sf/YX+O5ngzn2e0l7Dg7K63T9uxPfpU5FYsMH16MgufmwC3T4qD80
	 GdrRf/j2g0ppyvvdWjfcFWDgFSWTe/wbYGIJIeObHFv4KBOhqCYJ46c4pDmZmolrMB
	 u3VI6ue76m8qsMm3RDfVFEcuBebhXjntKONIa+gssVkNAAqBWy/BXAGM27hXwWfOng
	 BNErva/l+VU6Sa8xMXoB1VHTpJhtFk13f+6lP2Kmox7YT5wPy92+bXVfDOlNbYrzvt
	 ttJw1HCp1NcNQ==
From: Vinod Koul <vkoul@kernel.org>
To: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 linux-phy@lists.infradead.org, Sean Anderson <sean.anderson@linux.dev>
Cc: linux-arm-kernel@lists.infradead.org, 
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org, 
 Michal Simek <michal.simek@amd.com>
In-Reply-To: <20240628205540.3098010-1-sean.anderson@linux.dev>
References: <20240628205540.3098010-1-sean.anderson@linux.dev>
Subject: Re: [PATCH v3 0/5] phy: zynqmp: Fixes and debugfs support
Message-Id: <171992735643.699169.10848642893790191835.b4-ty@kernel.org>
Date: Tue, 02 Jul 2024 19:05:56 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_063559_889551_85333036 
X-CRM114-Status: UNSURE (   7.67  )
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


On Fri, 28 Jun 2024 16:55:35 -0400, Sean Anderson wrote:
> This has a few fixes and cleanups. Additionally, the last patch adds
> useful debugfs info.
> 
> Changes in v3:
> - Remove inapplicable comments
> - Take the phy mutex in xlate
> - Use "none" to represent ICM_PROTOCOL_PD, since the lane may not
>   actually be powered-down.
> 
> [...]

Applied, thanks!

[1/5] phy: zynqmp: Enable reference clock correctly
      commit: 687d6bccb28238fcfa65f7c1badfdfeac498c428
[2/5] phy: zynqmp: Store instance instead of type
      commit: 6959d2367bc3503ac4ba3eb4ec6584a43150d6b3
[3/5] phy: zynqmp: Only wait for PLL lock "primary" instances
      commit: 235d8b663ab9e6cc13f8374abfffa559f50b57b6
[4/5] phy: zynqmp: Take the phy mutex in xlate
      commit: d79c6840917097285e03a49f709321f5fb972750
[5/5] phy: zynqmp: Add debugfs support
      commit: 04490b621ab16d09ce5b7c62b2c8cc9fdb871421

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

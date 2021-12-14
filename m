Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D47DC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 14:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wkb5JurbT2r/Pa9v6puI+ij83w/vjbevZk2Yj5sZkTk=; b=FuIMt4kNx9szwj
	chQKb4Kzfr0FnilYjphoqm6fbkrBqhSWThQIove23/Ei+d8J8n7Jn6S/uvuhqd9WsY55jHlkZ9TOi
	E5scggXmkMezE4/EC2akNN+RSepKYHSaqlzsoPQ/nEfJQZQ+N7NNDGvIzH9k03QLjeWLR0Wdqf+87
	CR3XGosvQEWOltnL8+6HCgwBgnO1x1HxSv78hOKT3QOZqFei+tkpVoRi29Vf5fMHCPv6Pc5d+G0a1
	vpmpPM7zu553iJTVmQxDDjV1/HqoSqE90tRJ38HqT7Bepq6asR4wgTgvBpEYJiw1/UiwCN+HuqOt/
	U/4C+WxGgnAacAc9HUBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mx8sP-00EQSV-2R; Tue, 14 Dec 2021 14:33:57 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mx8s6-00EQLz-4k; Tue, 14 Dec 2021 14:33:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B442F61528;
 Tue, 14 Dec 2021 14:33:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5977FC34601;
 Tue, 14 Dec 2021 14:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639492417;
 bh=1hcDzTXoYi4oTU+WneZ9qf7VczXx7+1E5fhQ6WPKjQM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Beu7vfhlliFbF8zEA/YWLDfxmwWPvfQPPgZBVkLA3Y2p/ySM7lOQSvfTpdVZJl5lt
 nvrqKqYYwCKuoIt5bkCXyfYen4qFWUMPs+iUeqgsmfUmt3PIIJfMvHtZElRKVcrIoy
 0eyKsJUMxvQEJN3ub8IW1lo306p1Qcr8UGKRppFF+bvO6nr450wnMhfIOvX8Dpk8XQ
 UJuXGDGqqXXQG0Mylrmdp1CiIkJ5RDRdA8LPSk5/HoWpw7rb6Htqk7lA1EKqs3fa/G
 039HYrNXvRDt+mzfqXXjH+gufQKMMN47qAmgvibkLe5kJMnBhI23DAIaT2paltqgsz
 iHzNsAh0Dhl1A==
Date: Tue, 14 Dec 2021 20:03:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: l.stach@pengutronix.de, bhelgaas@google.com, lorenzo.pieralisi@arm.com,
 marcel.ziswiler@toradex.com, tharvey@gateworks.com, kishon@ti.com,
 robh@kernel.org, galak@kernel.crashing.org, shawnguo@kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v7 2/8] dt-bindings: phy: Add imx8 pcie phy driver support
Message-ID: <YbirPXu4OkCPFfMj@matsya>
References: <1638432158-4119-1-git-send-email-hongxing.zhu@nxp.com>
 <1638432158-4119-3-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1638432158-4119-3-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_063338_247737_DA5380F0 
X-CRM114-Status: UNSURE (   6.35  )
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

On 02-12-21, 16:02, Richard Zhu wrote:
> Add dt-binding for the standalone i.MX8 PCIe PHY driver.

Applied, thanks

> 
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

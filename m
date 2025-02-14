Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6751FC021A4
	for <linux-phy@archiver.kernel.org>; Fri, 14 Feb 2025 13:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qsOHhFIJAapKr1zpRHS/BglFA9yqYOsYHGVLNZPLADU=; b=uhCGdDcu/p9kHt
	PuA4p73xRkKtYeYTv2H5c9wNEqPxjIiKR3vgwQVdoV3yqRnl2FjNCW2Q/G1X3gzvB5DJ1OYepbP//
	h7fp6uT5CrQr0X040E7pv/modIco0Qwy3eoHweJEVp4CUTzahAcQQLI4wo+Pa12tmICtqblrA/VQq
	pEYrm6MmCA/87aewYQilTR/f2YMmvtiGCiTXdX9XywP3ddNWjtAOqjG0onhjDHMHqYCFwF/sjEz4o
	MLwztbSKUSf1n0dwpbyeVPNnGsaWdRgHTOzkxqgzjliIkQxwOju4NxTD9WUiIkN2vRFkPJaFVbCbo
	p+NDXs76nOPVaKzCW2eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiveH-0000000EzBx-0bu3;
	Fri, 14 Feb 2025 13:22:29 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tivHc-0000000EuHq-0NR4
	for linux-phy@lists.infradead.org;
	Fri, 14 Feb 2025 12:59:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 2BC6EA42A42;
	Fri, 14 Feb 2025 12:57:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10E9AC4CEE6;
	Fri, 14 Feb 2025 12:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739537943;
	bh=Ds5kAQiVbq1nu9WS4fotu5kbGElIso5VjAswBWF0k3Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=PKJXdcm3e1ROD62G7N5o/FdD5ariG/lODTcKpmGjsvUjGIsc4oiiFhdyWWhBPAonC
	 4YmKV3yIXimmp+BNqqz5KMPGpdvZYRq0FxGjMXr1TXx2N25HHrMhY4kPlJUc+3nGS4
	 PSoxt+i34RROCUfsQo04FCpVS4G580aKPsnK6UBlOljK2z4/onCoRJF0xCop+qjDzR
	 Kd0dAeEfCfFOThMUFZ2klOrNxdSAjGd8fZd2ueUhQHA7lXDUUfeLLUu4chs92iQa2L
	 2p4XxbhdFXIQNYiaYr4Rc3EI2qRbHdwBNo1j28Y8faQxlnG83FFv/3Inz2rZ33QIUN
	 x1aW3iqQICfEA==
From: Vinod Koul <vkoul@kernel.org>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Andrew Davis <afd@ti.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250123182234.597665-1-afd@ti.com>
References: <20250123182234.597665-1-afd@ti.com>
Subject: Re: [PATCH] phy: ti: gmii-sel: Do not use syscon helper to build
 regmap
Message-Id: <173953794070.323038.8014772310135787183.b4-ty@kernel.org>
Date: Fri, 14 Feb 2025 18:29:00 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_045904_193968_F8B05FC0 
X-CRM114-Status: UNSURE (   7.88  )
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


On Thu, 23 Jan 2025 12:22:34 -0600, Andrew Davis wrote:
> The syscon helper device_node_to_regmap() is used to fetch a regmap
> registered to a device node. It also currently creates this regmap
> if the node did not already have a regmap associated with it. This
> should only be used on "syscon" nodes. This driver is not such a
> device and instead uses device_node_to_regmap() on its own node as
> a hacky way to create a regmap for itself.
> 
> [...]

Applied, thanks!

[1/1] phy: ti: gmii-sel: Do not use syscon helper to build regmap
      commit: 5ab90f40121a9f6a9b368274cd92d0f435dc7cfa

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

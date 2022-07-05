Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FD22CCA47B
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 06:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ad+L6DEHsQn/Q9yPL54DOBHsLYTI2UdToNqV6+1BMAA=; b=cqbsq00qKEaYdH
	r37hQKNkC+qYuPJ49I0R8OhmjcnAa8+HyBPJieICHwc43Ico3jH1OnHpZpyAfZk49fu7GwHkVulOb
	LAqdalRMMMLKYwdK04Xl5DTFa0VDMIIh9j4KpsokKiddNv7Dx6NoBV4rUlIvHrRf8Wmpp9Q/Ayn22
	JkEleNkbOd7BgVptRfI/xGJb/kE5ACuLvntu5pTGUCi295Wrrkd70p50xuUElgsXmpHpR+ubC0Kvg
	XjZz3IDwwuS3PHjgGdxa8S01d62Bd0AdoOOcwXcOLv/RorCH79EBad/08Pyvf7OiL9pheC9Rwimcq
	xgu/Fpw7qTbxRbTqRurA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8bpo-00EwYk-Q2; Tue, 05 Jul 2022 06:14:56 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8bpm-00EwWn-Fx
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 06:14:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 1E160B815B0;
	Tue,  5 Jul 2022 06:14:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CCB1C341C7;
	Tue,  5 Jul 2022 06:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657001691;
	bh=N20ajp/3lQ194FtocElV2UAoCsUpGh2T37oUu3nAAso=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P28pH94BLJJGjyyxp/2NDywpRovkFVBoHgAZi66TYlpZ2xbJq7sgZ7QtevriUThj5
	 JGDX/2Go3bZcb6b+KOIjjrm0ym+u/z9RwYcrYS7pAyxmtxRq8GDAUUpUtKGGLRkE2W
	 5gmnAcjN7U+lWAOLfHkCvhxdRTKGdqiCqDtmo50aZ+xsIQ9iuDKOPluaqTMru8ZiKa
	 glvT8M+V13GOWyc4J0YTf5iBBRqTL8tJPW0ZtLr0nl+jd+PiZiiJ63I22wFQZWEsv9
	 mcdJCRcRLsoBe+SrCaTVJEUVOxcPBDAaJ863xqWooWJa3mDbBEscE72jh8KUqVQRD4
	 Rd9V3rQGCuwYg==
Date: Tue, 5 Jul 2022 11:44:47 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: bhelgaas@google.com, lorenzo.pieralisi@arm.com, robh+dt@kernel.org,
	thierry.reding@gmail.com, jonathanh@nvidia.com, kishon@ti.com,
	kw@linux.com, krzk@kernel.org, p.zabel@pengutronix.de,
	mperttunen@nvidia.com, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	kthota@nvidia.com, mmaddireddy@nvidia.com, sagar.tv@gmail.com
Subject: Re: [PATCH V3 01/11] dt-bindings: PHY: P2U: Add support for Tegra234
 P2U block
Message-ID: <YsPW1w3mYcfxg/sX@matsya>
References: <20220629060435.25297-1-vidyas@nvidia.com>
 <20220629060435.25297-2-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220629060435.25297-2-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_231454_741601_C4E3F33E 
X-CRM114-Status: UNSURE (   7.27  )
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

On 29-06-22, 11:34, Vidya Sagar wrote:
> Add support for Tegra234 P2U (PIPE to UPHY) module block which is a glue
> module instantiated once for each PCIe lane between Synopsys DesignWare
> core based PCIe IP and Universal PHY block.

Applied, thanks

> 
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

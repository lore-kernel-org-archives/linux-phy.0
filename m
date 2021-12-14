Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6814C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 07:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ApQgZYF7ni2TNaUtE9kdy4G1Wcs5inkG9eMq3OkwfTA=; b=mNq5x1rDSrGcFa
	F2IenVFzYInaiEMTTUOaJlZvXQeFY5nnTOlwfCpkGt3WsHN44E3DAS/Smv5tgTA3sq4pv6/kMdc/P
	SbIw6Pvtg8mMK9Zbq9+Q45thidRvZeNpbGHvPyVugL6vlyhvCRAC5NU2ggKQYXcY1Wsju8lpnXDT+
	4iVggq1LKj9sW9MgcYVGGpBan3U+MdOailbL2hqn2K4qecab0RjX/XoseD57qK3iBqlIb9ZTHXINP
	kMNWvWTiQDsuNy5/VYRIGIRO+811Xpa93ftgZGD9WvBg1UCEiWxx8Iqt2boZ0RJv7lWigvK5XzB6u
	eU/+KOUpBMhJLAI1kFlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mx2NW-00Cumk-5V; Tue, 14 Dec 2021 07:37:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mx2NT-00Culz-KC
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 07:37:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1094E61342;
 Tue, 14 Dec 2021 07:37:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 851FEC34604;
 Tue, 14 Dec 2021 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639467454;
 bh=+I7jyVRiXealtexH7w79gsPyY9yTEyVLP2AaWCCQDo8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qns4nrWTkv/V5g4S7XHLdITbSxXbc1cQdNsDOC9oCWACjpVTSQBsJ8yAfFmAasTFN
 hD8IfFTXkf3nc6xjnb7POKC2Ineb3RAflFCi6Botc+CVEdpt/Er/8KWQi6XL57v22Q
 PaP4gEVJ0G+BgeVro7PE53hfW4P24n+kahSdmEb/pET3LO6Lva0yyymydhZqxn/TM0
 9aFPingsogNitiklXxmtC9Ird/ZwtPnGnYpSJswiYhwaGWpuEEMl//LU1UiOaeh3xD
 oEPD6TjRXBzkEeUSDm6xw3bT9Y46kEkcNNDYGCh8gGXWQniAwG9xLe0uVyPuIuO7gJ
 bJWsY759hFHxg==
Date: Tue, 14 Dec 2021 13:07:30 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Miaoqian Lin <linmq006@gmail.com>
Cc: digetx@gmail.com, jckuo@nvidia.com, jonathanh@nvidia.com, kishon@ti.com,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-tegra@vger.kernel.org, thierry.reding@gmail.com
Subject: Re: [PATCH v2] phy: tegra: xusb: Fix return value of
 tegra_xusb_find_port_node function
Message-ID: <YbhJugAkqdXApeGQ@matsya>
References: <942f943c-9ec8-9887-aa6d-4d133821beca@gmail.com>
 <20211213020507.1458-1-linmq006@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211213020507.1458-1-linmq006@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_233735_736644_AE9E6C3E 
X-CRM114-Status: UNSURE (   6.47  )
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

On 13-12-21, 02:05, Miaoqian Lin wrote:
> callers of tegra_xusb_find_port_node() function only do NULL checking for
> the return value. return NULL instead of ERR_PTR(-ENOMEM) to keep
> consistent.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF38DFA3740
	for <linux-phy@archiver.kernel.org>; Thu, 27 Oct 2022 21:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84ubcRcuqNK93KSGt2zM1/+sbTq0IuxU81vaUrXBZfw=; b=ioFkN5PuQ/Y+i1
	KpS/t+er+qwjpIFy+/XwNRVTwEq55qVf8a64z7W3ePfqBBQa6NkJexa8FalnS38m9/C30HBIF+b7q
	vayw+Eai2txbaNIRd5Y6zRm6nX14HKQkY4EoDmz9VNZ6HPxHLKnc6ThbHSRNOlgbrfR03qJx0nyD/
	Djhji9Nax77jICZaSQnua/qCYO4qfdH8i6KH4SJfyHV+O/Z9NNd5eaAHNZmhjdew9OIxg1W9X093H
	aVbpBuWEsyuonWMygcBRc3c5gCtRQHxTMe3nRE1ITY4j3AkufQL/heLNZzgyidTsICL4BFszS9K5J
	xFSu2M2zQzgmAHB4FUaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooAkf-00EySy-IF; Thu, 27 Oct 2022 21:49:26 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooAkT-00EyIu-L7; Thu, 27 Oct 2022 21:49:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4636AB827B3;
	Thu, 27 Oct 2022 21:49:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA6BFC433D7;
	Thu, 27 Oct 2022 21:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666907349;
	bh=0k2eUjbGTZClwZCNMvZTbgZwooGx5soYZsILmA03pD0=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=j6bI1ti3m4wQ0VgaAxW5i9znS5m8p6Cx2HgWjerZn3jk3DgM8vcwDmnS0RchVIzxt
	 S8Wt3TfTxsDOPq1h3o8USFEqxT8DQg1yD797axLBBBr4bkdCCtRA4GiiLHyJq0glpS
	 f42IY4nMwjzTfhPQIrHkY/wIemNfCB0SvYB1i2BuSDUUow3875jvscA8TXUeeFV5TQ
	 SjJ1jeGThupLMTgHs/yL2did4/Z28OqGbjMbqIA+b3BqFQFU+hU9YDHr8apGNmCqJl
	 8C+UKp0T3+YvocBk1xpCL0yWWL48OPDf6csxmJvImGCvZBkHryH+Qymja82V0DTOAy
	 ZNGCiH0MgDIyQ==
MIME-Version: 1.0
In-Reply-To: <20221018231112.2142074-4-sean.anderson@seco.com>
References: <20221018231112.2142074-1-sean.anderson@seco.com> <20221018231112.2142074-4-sean.anderson@seco.com>
Subject: Re: [PATCH v7 3/8] dt-bindings: clock: Add ids for Lynx 10g PLLs
From: Stephen Boyd <sboyd@kernel.org>
Cc: Camelia Alexandra Groza <camelia.groza@nxp.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Madalin Bucur <madalin.bucur@nxp.com>, Rob Herring <robh+dt@kernel.org>, Ioana Ciornei <ioana.ciornei@nxp.com>, Sean Anderson <sean.anderson@seco.com>, Rob Herring <robh@kernel.org>, Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>, Sean Anderson <sean.anderson@seco.com>, Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org
Date: Thu, 27 Oct 2022 14:49:07 -0700
User-Agent: alot/0.10
Message-Id: <20221027214909.CA6BFC433D7@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_144913_863538_D319B4BC 
X-CRM114-Status: UNSURE (   9.69  )
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

Quoting Sean Anderson (2022-10-18 16:11:07)
> This adds ids for the Lynx 10g SerDes's internal PLLs. These may be used
> with assigned-clock* to specify a particular frequency to use. For
> example, to set the second PLL (at offset 0x20)'s frequency, use
> LYNX10G_PLLa(1). These are for use only in the device tree, and are not
> otherwise used by the driver.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

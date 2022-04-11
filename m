Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28BC4C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 11 Apr 2022 14:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y7bgCSqAXG6ZD36b8Sk1qUcO7GiP0YRBPRgH54JpZMo=; b=jditSZNvt81jar
	Jgsl+HW8QpUYvxIkEFg/6SRzCd0/3mkFNcvw0g3Vy73ljb4E7UX5mg2IMAOyZvGlfeLjEIr7cD77z
	BFf5VNwQND5t0iW+vrQZBkip0ORMmAwrRUaNt9HX6mV7RcFamfBjVrrvkTky8qofARNBkOwLGpcDk
	mav4U3AdMiPvreSLu64c17RgkYd2gEI5qNSSXVBQa4s3DfEsZcYuhhs06A6bF6d46wjBLx5AXcsdC
	/vEN3rfWnOD97//jCwkqpvMhctsBj+wSJ0dxJBCpOqfFMiXeIh3X0QBKo0AuA1kfmvWt5esEGw3Wq
	GGa1Nt+h46PN1+/+Ue1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndvHL-009Qgk-FQ; Mon, 11 Apr 2022 14:44:31 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndvHJ-009Qfu-3G
 for linux-phy@lists.infradead.org; Mon, 11 Apr 2022 14:44:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7C94A61489;
 Mon, 11 Apr 2022 14:44:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5956AC385AA;
 Mon, 11 Apr 2022 14:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649688266;
 bh=wRS32LY4IFKjyMTbt6v9mzrbqkRbajAdkzIV2R16PWI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Git/6+GZ1V+us/4zFLZ8fdANLsQlRITLyulLhrvINrV5LqR2AaZI/UyjGhEzcJcry
 wACKmHj0qZjsxKV/Pk/Lt9b+AHGhdQHk6VXYnQCpJfB4Pk/Gty8ysaf2om4QHTJ9cu
 dTxIJ+O2gZefNQqfLiPSqm0BU0tVgldjywiluSceU45zhKCzY7PhoLuKAxy1xmK0Tw
 t5g7DJcLIjmL1N/NF82Des30DIrSuEcDvhfDIBHxYz8q8rqjaop8WVeasUx/08EW/C
 fKmHZjztkkuMtcNy00AA858gAJDyRS+YuquxgI+N3cb5EbNfpfxQu5msnHE4JV1BGx
 xTh9demcCpirQ==
Date: Mon, 11 Apr 2022 20:14:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Wolfgang Grandegger <wg@grandegger.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-can@vger.kernel.org
Subject: Re: [PATCH v5] phy: phy-can-transceiver: Add support for setting mux
Message-ID: <YlQ+x555++i4Vmlx@matsya>
References: <20220408111316.21189-1-a-govindraju@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220408111316.21189-1-a-govindraju@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_074429_190325_176C7F43 
X-CRM114-Status: UNSURE (   9.00  )
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

On 08-04-22, 16:43, Aswath Govindraju wrote:
> On some boards, for routing CAN signals from controller to transceiver,
> muxes might need to be set. Therefore, add support for setting the mux by
> reading the mux-states property from the device tree node.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

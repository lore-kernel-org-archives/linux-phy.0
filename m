Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2D4DC54E41
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 14:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+poRhZK9ujDufo8uuw/toK0gthFmwRfu1A9qmlxb4F8=; b=P4dx/xv/QqwVjx
	fNBvz0gDa2J20DB4dJzuhEKOBaBtyYD23KlXnjqL8GsIB9fJal0/xln3jHhodgCfBwwUyI68H9XY5
	okKzPiJg5ps18REI/MdgWJ50ljw3HJznCBh6L3TcNyqWb2sAkgvU4LNBOKKwFySm47BCSC5xNrkn4
	JJpyIcLLMRyB0afo6SeTSw9tS6NDY4K5nEWJf3uRv4M/I3bLaBVY3x+mukSt5DtGXFSN1DkzT1MpG
	LrxEjHdq8uCT2OeICs7t3g+cFaA7bW6AObkDZ5wtsop5KKxyJvqw3OtJsSgQJonoYYb5q5Gd78UgJ
	O/wV3wVXiO7zP3CQ+dpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhWFX-0000000EAcm-3cHc;
	Tue, 05 Mar 2024 14:58:36 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhWFU-0000000EAaY-3Bps
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 14:58:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2A85A615E3;
	Tue,  5 Mar 2024 14:58:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 914DAC433C7;
	Tue,  5 Mar 2024 14:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709650711;
	bh=h/P3goLMUxLj5fuwUwNyF1B5oRaia4FNBO96222ZKJI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f7WwB6yujek5CUa0aO0at5Vo1A/YG6JiylctOK5N3NkPR5U2Dchi5EGBqkcl13tdq
	 dCGFsOTsFG9UH1XRr4eBWtmN1BVkZfGGil8PX9NSM2zcQ7MeHGLbcGRPpfRhTvMIbV
	 qqnk/9aGzKnym9o8Bm8lJNVVs8xckLGH6Zr+JN9wOPFmmBt3CqiBRcfPHhXKUlbD8J
	 uuTzg8MwXuAFjYD1bMFLVvkOj044pXVyuECvc98hOgN5iPSfIVem508KiDQY8bLDVw
	 OZGTLm/2h5uPsT7dZ4jQk/zhoRvQ+bTAomZvbcvQAytjfGI7LggqOIrIWkVJnBxJjl
	 BTrBybamIsRZw==
Date: Tue, 5 Mar 2024 08:58:29 -0600
From: Rob Herring <robh@kernel.org>
To: Yang Xiwen <forbidden405@outlook.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawn.guo@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	Jiancheng Xue <xuejiancheng@hisilicon.com>,
	Vinod Koul <vkoul@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@ti.com>,
	David Yang <mmyangfl@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/5] dt-bindings: phy: hisilicon,inno-usb2-phy: add
 support for Hi3798MV100 INNO PHY
Message-ID: <170965070901.3343660.17802969888046943603.robh@kernel.org>
References: <20240305-inno-phy-v4-0-a03204c9cf1c@outlook.com>
 <20240305-inno-phy-v4-3-a03204c9cf1c@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240305-inno-phy-v4-3-a03204c9cf1c@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_065832_876070_D3FD98EC 
X-CRM114-Status: UNSURE (   9.18  )
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


On Tue, 05 Mar 2024 10:19:48 +0800, Yang Xiwen wrote:
> Hi3798MV100 also has a similar INNO USB2 PHY with slightly different
> register fields offsets. Document it in the binding.
> 
> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
> ---
>  Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

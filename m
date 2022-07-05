Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8656C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y952GON7EZBmPuHR378N/AraaHs1N9zpC2IMQ4wgGnM=; b=bo8tMaM4pWAIWh
	S3itg8mng7aFcs6CzIgfOBfKQcpdhJxPz7qsAS3WioGdVV3a8q8NqWg5o5JGsda9TcOusslflfMPs
	wQzuzDnSlt8NmQVHE/7U3aUdLqBSSjNvKfFsWPKtG7gaHCFqL91+mSrLIRb/z0PIt8xkjix6oT0Ve
	WubkAqk2ZPU+huYuOAjx9Zab/waaHSpLrLbp3g6mjYuRsfMHucy52b38WWtm8aufyE5Fr52xyu39u
	hij83+p1469vANC7npgqCRcbMn68CbdoP2jQ0bjOO5TmqB7sMpwQrPv6i+goByOImWDitlD2oY6Nm
	ByliVOwuQPZj9VthHKkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fhF-00H8X0-5f; Tue, 05 Jul 2022 10:22:21 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fhD-00H8Vo-1C
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:22:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2D57961A1D;
	Tue,  5 Jul 2022 10:22:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EE68C341C7;
	Tue,  5 Jul 2022 10:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657016537;
	bh=e+WVKuABy3B4xWh28IvAUjhEPi40vu/COnqPvOhrMoI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZDtUtxSoYssZ9G/EseASqj9GalQsG0zIeMjglYle0ekV91V4RO7GlrBvlHZ4aRWGN
	 6OytFcdCF91f6rJwujR2muRmGPeqZRE9i7HZrJYuXAl4Hi9AuU/GgPZkWXepkwDUZL
	 XOxy8VJfjAVmBug9ZydUs1AOOIRwbIjuxFpIsK4U/re1lEbIgEmdyGZiDZKpECB/O2
	 VnVvXktULpOC4ZSiE1P/Eq9Dso7mDAanlrECGpvpCtzZoqHb2Jxgn12E2pmsbAPhHx
	 YTB14FCn+Xcu56wRsd8Q1YUyi9LpQx5ZvJYEIGHNjl2E2uZq/0EObUP0Fmrnyoa3W5
	 s7HfRM38xyy9g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1o8fhC-00056D-2U; Tue, 05 Jul 2022 12:22:18 +0200
Date: Tue, 5 Jul 2022 12:22:18 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 09/43] dt-bindings: phy: qcom,msm8996-qmp-pcie: add
 example node
Message-ID: <YsQQ2o8aYJnnWuNa@hovoldconsulting.com>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-10-johan+linaro@kernel.org>
 <8271f4d5-e12e-ddf0-46ab-86a39577755a@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8271f4d5-e12e-ddf0-46ab-86a39577755a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_032219_149392_C51C4560 
X-CRM114-Status: UNSURE (   9.79  )
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

On Tue, Jul 05, 2022 at 12:10:29PM +0200, Krzysztof Kozlowski wrote:
> On 05/07/2022 11:42, Johan Hovold wrote:
> > Add an example node based on a cleaned up version of msm8996.dtsi.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> 
> Squash it, please.

Why? It's a new addition to the schema.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

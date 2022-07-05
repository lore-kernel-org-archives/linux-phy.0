Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3836DC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 11:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBfjt48dGlIutmq72I2jMcuZnSv3tK28z5AgAYHrehA=; b=4Y2iclYxbJDZgf
	91g8r32o9kAojpN2l3yMEpijTT44rhwIU6PyMitaWMNpB7A4ivt/WGNOlGcf6pA+8M30hCW8Rim/A
	rDtQpxIrnJq9q7Ha3x7qCnIDro4sbTbktiMOA9sEmoSK3bCZS/z0Q2rY8vD1pSN1oDxFllHwAxS+a
	5n0MjzSf0Q48VuZ34QVCKzhvL0kGtqREA0di5+lmcU38oC9KFNAEnY2npje0lxpXlrReknMjILlC7
	+lXniUbBkINe9Cn/2XREP2WCOrAv2OYRK3X95s/NIiYyrCgkxAr9EZRbhG/nndgjYrgLOlV9/wCP4
	AJXFmIFZ2KJDK9r++FCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8h0n-00HVcW-Hs; Tue, 05 Jul 2022 11:46:37 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8h0k-00HVb9-R5
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 11:46:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2D55E616E9;
	Tue,  5 Jul 2022 11:46:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83181C341CE;
	Tue,  5 Jul 2022 11:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657021593;
	bh=g9kyp+0dqAAFhiEd0vppJfgTzCC43SYBYOZLu2V0sgU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BV2AyIIK1FKrm5uJx7f2fQJU5dXNzlYlA9nCPEiHIhAfRKUPoNR63d45CV8hKNk41
	 MvlsW0mf5/KvVMJhqRNi76PqRFEPwfrrIoqZB79KwuaUSITaRvaSdlFX7lsn6gVZDq
	 FnF4S2KbzTiMzYuMZ39sM3wxgKN5y+bY29r1aKr09NB7VaG9Ypl3oWOKgXGs/zvuZ7
	 Luy/ybkDrNIEOvDb2PA0VO90Hz3u9rTAO6NqlJIT6PKaY8myVBoK/TFophbp7M2lYs
	 n6pLS/UH1Nn130fVA22aQAepSNimte77Xvu9v6k7XBVnKpazywMOBzSwXFdy4QbZke
	 +7fsJfjTyiaqg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1o8h0j-00062C-Hr; Tue, 05 Jul 2022 13:46:34 +0200
Date: Tue, 5 Jul 2022 13:46:33 +0200
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
Subject: Re: [PATCH 16/43] dt-bindings: phy: qcom,qmp-pcie: drop unused
 vddp-ref-clk supply
Message-ID: <YsQkmUVla9+CDYly@hovoldconsulting.com>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-17-johan+linaro@kernel.org>
 <d3a49c05-0fd0-920e-bd0a-f821e8e27b8b@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d3a49c05-0fd0-920e-bd0a-f821e8e27b8b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_044634_955205_F6EC05F6 
X-CRM114-Status: GOOD (  14.84  )
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

On Tue, Jul 05, 2022 at 12:16:34PM +0200, Krzysztof Kozlowski wrote:
> On 05/07/2022 11:42, Johan Hovold wrote:
> > Only UFS PHY nodes in mainline have a vddp-ref-clk supply. Drop it from
> > the PCIe PHY binding.
> > 
> 
> That's not really good reason. Either the hardware uses ref-clk supply
> or not. Now it looks like you copied everything from common schema and
> clean things up. That's not how it should be organize.

Yes, and I've been pretty clear that that's how I'm going about to
disentangle the current binding.
 
> It's okay to copy existing bindings which are applicable and then in
> separate patch deprecate things or remove pieces which are not correct.
> But all this in assumption that the first copy already selected only
> applicable parts.

But how would you be able to tell what parts I left out from the
original copy unless I first do the split and then explicitly remove
things that were presumably *never* applicable and just happened to be
added because all bindings where combined in one large mess of a schema?

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

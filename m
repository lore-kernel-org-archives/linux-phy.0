Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A57BC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 27 Jan 2022 05:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4FG6ijvsfh084ScStgxZsKBtMwA3n6rnygEM+DC4As=; b=KwynEol80PZaGL
	Yq2rAYYQWRD4CtTEjka51c3QNC0oqstIUZnIB0RNQgm7oFLe+hmAfJkrnm9S25VlE/hBIQpRUve1b
	gNi1aA1rfsX0W3pFQ6FUu5sxXo5LctTPzlcJFJJnwUnIgNcnLvszbhYvyvvzDceAEVG6tkpKb/y82
	lTk3gurLfuGOUbPOh8kG6ciZAhmHwvTzGIrdUUs0MxOuAEHW7GhObyZablEyMoagQ8Qh3zJZFAVpY
	apFkrODXoNZ37GqpChjnv+na8UEBXECk/+KeKqPHL1zi0npCvYBrWOpmoGlthCkOqBYI2QmLfgi3f
	R2baeVd3Bcj1LDaEH22Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCxMp-00EP9e-1h; Thu, 27 Jan 2022 05:30:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCxMn-00EP99-B5
 for linux-phy@lists.infradead.org; Thu, 27 Jan 2022 05:30:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D8940617B8;
 Thu, 27 Jan 2022 05:30:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 682C3C340E4;
 Thu, 27 Jan 2022 05:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643261440;
 bh=RFru6zDdDC7kdd3Z8nnB6b47NEgyHbEaUrldn5b6FWo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oY99M0U+kI71Y9CyWwWre5mqwgNm2/qxzL8QfqnbF6aCuE1sXUhgLvNzAWjvtZiF/
 mbKJYek6PIAa2p6r8rgtQDPPoyjAn4/3dBYGt5mrKiIRnYPASvjylnNhg3RQNwk/5I
 D3VjYzX5jjWUIka/5lmugGhLk+IgA+1ruSeV91Ag+LafHF3wDspUBw3/EKrdEXC0tS
 ABwiowfNT52hrgjWjCqJFS1eC5A1ApPpQ8rBwomTmQvyVWj3GCYw3/Y30TjC0nAgxD
 u6k2yc6P3FypxpJjqgn1zYs/JfAl/bNVopr8RWuFoOZ85S88S3p9p4NIwjX00GZJNM
 L0r7crK7k0xEA==
Date: Thu, 27 Jan 2022 11:00:36 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Luca Weiss <luca@z3ntu.xyz>
Cc: linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@somainline.org>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Manu Gautam <mgautam@codeaurora.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 01/15] dt-bindings: phy: qcom,qusb2: Document msm8953
 compatible
Message-ID: <YfIt/Lej93IcH0lo@matsya>
References: <20220112194118.178026-1-luca@z3ntu.xyz>
 <20220112194118.178026-2-luca@z3ntu.xyz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220112194118.178026-2-luca@z3ntu.xyz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_213041_448154_9E0A1954 
X-CRM114-Status: UNSURE (   6.39  )
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

On 12-01-22, 20:40, Luca Weiss wrote:
> Document the compatible string used for the qusb2 phy in msm8953.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

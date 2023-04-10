Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73FBEC77B73
	for <linux-phy@archiver.kernel.org>; Mon, 10 Apr 2023 15:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rv1NIPUCl/lXTgBhyQIR39UTjW9JixHi7JhewBL09ZY=; b=MTnL6EFD1oacGu
	QR1nhkcbya3Hb/AF1rSgl/6xDQxqgHNF/RLgxth0GyufHtRsShxA+Q1SI5H8fH799xyF1huSeYkqB
	W1jXzwpefWaQ8pMCd5P2ezxTzPmbMFyP7CzFx5kdXeFnl3Yt23LsuFgsef+TloSLKzX84URIZPBOb
	YQkVbkaafp3rUlKImb+lTtG3+E58ps+UmbHFjTpB9IIUxOSGDghOOjmvm1T55nYgTGC+FSMHWXItO
	2LTUAcK6qNwaVLj0+HI4tQT8hTbpDr7HCHUnCTxyoUpqfUkNdmHsBrsts2DijShL5L9a/G0NZ2+/E
	KDFukrpImbOfj0jNGCNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pltHh-00FQh7-0I;
	Mon, 10 Apr 2023 15:18:21 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pltHe-00FQgk-1L
	for linux-phy@lists.infradead.org;
	Mon, 10 Apr 2023 15:18:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0790060FF0;
	Mon, 10 Apr 2023 15:18:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8869FC433EF;
	Mon, 10 Apr 2023 15:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681139896;
	bh=4oKWMUZZqk5mhvrj1wuIzkoAcWiExU4ic+wHY5xzIrE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JhAhl6Lhn6Z8gLAY51eGZv5HfN7kWs7gAGyHVVVRnWFdVRwSusxaWTEiLLDU1l78n
	 osHTW+NkItR3buqlaqeYHbMkFCcXnju95KGd+MrdNrAIbI6o1XzK1XhyBeEkRamzsw
	 /T8NKNbWUbOM3RqDMCLQlkdVDzBBCi7dcf+A0pmp0mLq7QszAWDA7shlDfKAnxmOUZ
	 L+3xpLF04hQkycR27jwOes+VjNwzbHaPm7tghD5AyKWLMI8R5pm39aEpVOCTV4aKTn
	 UjZNiRPaaUcT3xfb7WY41X7kGli1dtnIcB+1hfpTAM1I+xx15Oqzw/9U4P6r50cH3N
	 FiNgdcDbanbUw==
Date: Mon, 10 Apr 2023 20:48:11 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>, stable@vger.kernel.org
Subject: Re: [PATCH RESEND v2 1/2] phy: qcom-qmp-pcie: sc8180x PCIe PHY has 2
 lanes
Message-ID: <ZDQos70LsnoKVic4@matsya>
References: <20230331151250.4049-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230331151250.4049-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230410_081818_513995_7AEA2537 
X-CRM114-Status: UNSURE (   6.88  )
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

On 31-03-23, 18:12, Dmitry Baryshkov wrote:
> All PCIe PHYs on sc8180x platform have 2 lanes, so change the number of
> lanes to 2.

Applied both, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

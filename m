Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEFA5C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 06:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qvksf/oix7Uj9YRukK3K2cIEYG/DceYV6oi5+8z6afs=; b=A49AhPUIIpH/R6
	WVpLPwbIvwnqICP/wx+nQPKND8A+YC01YX17qdArHW2Vw/10Br/cicxw4tuuvIWYAS66NdvAgSnav
	jjkorn69ECVGlyLyv26n3smmWDrqYVGsWr8ikmM+ZcYDo5g5ajexwZj/ERzhjsdAc701h73wmlFty
	aAjWTMpv4M3UFDIXSm13LjNg9iNohjJuvMf0YeKe9Xd9eOe4p+6jAH4A+/hxlrXNI6smzQnBCTLuU
	nrrWODlmzhCyc2mz/doxW0Eak+VawRKoRD4U3WbsRaR5hDWKw6FVaLhrmhZN4gVFNFMCQb1mMKQNF
	xBS2MunrM839n/MzcTow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8cRl-00FEEh-3W; Tue, 05 Jul 2022 06:54:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8cRh-00FEAZ-VU
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 06:54:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3689A60F82;
	Tue,  5 Jul 2022 06:54:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFA9FC341C7;
	Tue,  5 Jul 2022 06:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657004043;
	bh=JISMrbSooutQHHPel6SKTiSLk/ck/ahoUWiu77t4xOw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aRQers6pzUQIRSG8RxhhL7YMxGADSuj1B2qkc15e6JmpTOS/SvODcjkt/0h+UJosM
	 SK1rIpB+X6HSug3AWwxXjdahAKSuPOHxTw3MHpgE6SxErFKIvBwrk/NJUA24dZme1G
	 02vGHXkk18v27FdNXVi324bkJwdcTjdlf7Kq+Ok+QwKcqUm3fAaMbhve7i+A5Prqoy
	 UZrclcfw/b+ZMsGpkTlKAEpFs+jz0YpELtT39eeuYoySY42hbtEEyJo8YYfpboPa/F
	 4l6yqphnBpca4EFo0149HHXJo7DiTpsjdU3VvttvZg0jym0A8luKg48YATdKlQilns
	 HlDb7J6m9ZDVw==
Date: Tue, 5 Jul 2022 12:23:58 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Rahul T R <r-ravikumar@ti.com>
Cc: linux-phy@lists.infradead.org, kishon@ti.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, p.yadav@ti.com,
	tomi.valkeinen@ideasonboard.com, laurent.pinchart@ideasonboard.com,
	linux-kernel@vger.kernel.org, jpawar@cadence.com,
	sjakhade@cadence.com, mparab@cadence.com,
	devicetree@vger.kernel.org, vigneshr@ti.com, lee.jones@linaro.org
Subject: Re: [PATCH v4 0/3] Add support for dphy tx on j721e
Message-ID: <YsPgBteeGNFJSrKv@matsya>
References: <20220623125433.18467-1-r-ravikumar@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220623125433.18467-1-r-ravikumar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_235406_082567_EE8394E1 
X-CRM114-Status: UNSURE (   8.66  )
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

On 23-06-22, 18:24, Rahul T R wrote:
> Following series of patches adds support for dphy tx on ti's j721e
> soc. new compatible is added and required cdns dphy ops are implemented.
> the series also adds band ctrl configuration required for dphy tx

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

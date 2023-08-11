Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE180C41513
	for <linux-phy@archiver.kernel.org>; Fri, 11 Aug 2023 08:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZhsQK7Rdz2S5+48j9LhqXv3ZJiXmgxJDGFZ3ArcxSCY=; b=r9rzs8WRgrYupt
	LR2IOlvRssBYTfYPVzSg22JpO5yZUHB5njwFgVBr5hvvDgC+oZNL+Hdo98lt26BvdmrcZvZhLisS4
	4BUsWAnzEDtSD+SrZmF7bk5bY3kRSsjfokmhWovjwQyOTkHLdrRXg7QPD8sWBMLhzrv6Bd5PrGA2W
	o8JQHVbVGNo+RGZgagwVSSvl1AuLISCY5E05UzqsaB2NyDzvN+f1C4DZXlu3Un+/2VHcMFVmIBR+Y
	DV6YIDhZjemthF/aYCEDsuMjA/MDekGdtYQn9k+XYTI2DWvAXt384krmw1iQfCdKGCAgXFVOrA0Nz
	FUObiB9kXRTU/OdThXqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUNXg-009r4w-1a;
	Fri, 11 Aug 2023 08:30:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUNXd-009r3H-2s;
	Fri, 11 Aug 2023 08:30:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6C7C866C57;
	Fri, 11 Aug 2023 08:30:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBB13C433CB;
	Fri, 11 Aug 2023 08:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691742640;
	bh=WzHUQci+rQoiJPSDrUo6T2YYpQBEAZ0dj+iv5L8ZFrM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=T5TrNvyjHioFdIVWAqyOG8mihL0eojJWIbTgiH4q+CPEsEPUXuSFcBz8pDfsTeHcn
	 cmse2nekiC79wwC7GdOI3LRzgRsZr0QZRVoYDzj07fnl0UEShtKVBvzolKNEXx/GR0
	 IaufDcpmE+7OAkmMtWg3VQFv+Zd9jcvSNVUMS/tYhMp2Lxm1Q5j2El740VijHa8NQv
	 p6zWJO61thU96t6sBgNJMVnOE6xQ0nHkP19pvfhZ4HIsM1J5l54L4mGtUpdJFJz23E
	 JdiwTYubfIh4gxF1zzmpy2faYPV4LY4tBK+GHYcD914S1KC1JcJtdfubADtBT7Ozss
	 TPyzbV9xwrKGw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Lubomir Rintel <lkundrak@v3.sk>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andi Shyti <andi.shyti@kernel.org>
In-Reply-To: <20230810111958.205705-1-krzysztof.kozlowski@linaro.org>
References: <20230810111958.205705-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/4] phy: broadcom: sata: fix
 Wvoid-pointer-to-enum-cast warning
Message-Id: <169174263955.106197.13353447930629943321.b4-ty@kernel.org>
Date: Fri, 11 Aug 2023 09:30:39 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_013041_968243_380FAD1B 
X-CRM114-Status: UNSURE (   5.87  )
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


On Thu, 10 Aug 2023 13:19:55 +0200, Krzysztof Kozlowski wrote:
> 'version' is an enum, thus cast of pointer on 64-bit compile test with
> W=1 causes:
> 
>   phy-brcm-sata.c:775:19: error: cast to smaller integer type 'enum brcm_sata_phy_version' from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]
> 
> 

Applied, thanks!

[1/4] phy: broadcom: sata: fix Wvoid-pointer-to-enum-cast warning
      commit: d35c12b7db15e2c1316c32bad24dea2255c5f7b3
[2/4] phy: broadcom: ns-usb3: fix Wvoid-pointer-to-enum-cast warning
      commit: bd6e74a2f0a0c76dda8e44d26f9b91a797586c3b
[3/4] phy: broadcom: sr-usb: fix Wvoid-pointer-to-enum-cast warning
      commit: 2bc00b9b9001329792b14ce20141f334b6debcbc
[4/4] phy: marvell pxa-usb: fix Wvoid-pointer-to-enum-cast warning
      commit: 7451eecf1ef8be9911749e927ce5690262cc9197

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

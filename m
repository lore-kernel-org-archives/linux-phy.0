Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D02BC35274
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 22:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HFvuelBiwAcYB3VFhqE2iilJh66XwbSr54oiIFYPQAg=; b=LBLS01wtehjBQO
	2NE28zGx7tAKJkzVQ2K5Vs8l1muUfaxYbPnOBhGxnrup1ub03LNiKv2ay20ss0ayhW02bTUycvrSn
	hZwLpr1H0P3G2+bEXgpPBMVJn3nSM4gl/bQK9FypsK3xrMUPaGfkKYQU0qJBk4E+bOH0M8ss5Cbla
	TWmq/sSov5y/mOTi0rIrjGFeY63c/S0h3BiyKOv54W6OqISelYlF1mPMad2c+xG9y4QiOH7n2x1Dh
	WwgI4/UqPnGCTGw1iZzt8NqDr7QuFIE9TfUBtlH1/MYWNyFOn4sK5/jQhUKXzOLMTQzyt21PHcz84
	TFVpDKbnFTjR4w7K4hUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGR6Y-004GX6-0W;
	Thu, 21 Dec 2023 22:01:22 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGR6T-004GV8-38;
	Thu, 21 Dec 2023 22:01:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 8AEDAB821CD;
	Thu, 21 Dec 2023 22:01:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83B2EC433C8;
	Thu, 21 Dec 2023 22:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703196075;
	bh=Mu966ENzqAzL5zVpXkX0okIrHoGjPvhJ8rqTFtXNsxY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S2O8QXVKb3ZUGIFC0OpGxRRynfGqmj+gp7FTRV7NaqGkWM4IE05+Gqd4cUFQEQYL4
	 wG8CTj9V0h17GQd4DGWTQ/ID88OjucDGd4K+yDcA/dII3YbqJZwo8/WEGbw+0/BCww
	 uvzyeWwpnjNf8BE09DbyfTe4eatwQUCKS88qqoFVuq4Fb0xHA3dCIj/qvA6T9heVw1
	 XMReR5iaSQzexSnB5wS2XhpBfBxtK/INvsJIBmzcaV4NgQ/FFgNRrpnmVxI9gmQ0P9
	 68dzeUi++eubqSxVn0qTA5U4n6uBSTfo0lld+kP5+b9rRlCVwpuJxK42akZsycfsTr
	 Hh/bbpwOTtWRw==
Received: (nullmailer pid 166032 invoked by uid 1000);
	Thu, 21 Dec 2023 22:01:11 -0000
Date: Thu, 21 Dec 2023 16:01:11 -0600
From: Rob Herring <robh@kernel.org>
To: Gatien Chevallier <gatien.chevallier@foss.st.com>
Cc: mchehab@kernel.org, rcsekar@samsung.com, olivier.moysan@foss.st.com, Frank Rowand <frowand.list@gmail.com>, dmaengine@vger.kernel.org, linux-crypto@vger.kernel.org, jic23@kernel.org, lars@metafoo.de, mkl@pengutronix.de, linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, davem@davemloft.net, conor+dt@kernel.org, fabrice.gasnier@foss.st.com, pabeni@redhat.com, linux-media@vger.kernel.org, catalin.marinas@arm.com, netdev@vger.kernel.org, Oleksii_Moisieiev@epam.com, linux-serial@vger.kernel.org, hugues.fruchet@foss.st.com, linux-usb@vger.kernel.org, linux-mmc@vger.kernel.org, arnd@kernel.org, linux-iio@vger.kernel.org, will@kernel.org, edumazet@google.com, linux-stm32@st-md-mailman.stormreply.com, krzysztof.kozlowski+dt@linaro.org, ulf.hansson@linaro.org, alexandre.torgue@foss.st.com, devicetree@vger.kernel.org, linux-i2c@vger.kernel.org, herbert@gondor.apana.org.au, vkoul@kernel.org, robh+dt@kernel.org, kuba@kernel.org, wg@grandegger.com, lee@kernel.org, peng.fan@oss.nxp.com, 
 linux-phy@lists.infradead.org, arnaud.pouliquen@foss.st.com, gregkh@linuxfoundation.org, richardcochran@gmail.com, linux-arm-kernel@lists.infradead.org, andi.shyti@kernel.org, alsa-devel@alsa-project.org
Subject: Re: [PATCH v8 06/13] of: property: fw_devlink: Add support for
 "access-controller"
Message-ID: <170319607084.165973.14576693798188042387.robh@kernel.org>
References: <20231212152356.345703-1-gatien.chevallier@foss.st.com>
 <20231212152356.345703-7-gatien.chevallier@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231212152356.345703-7-gatien.chevallier@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_140118_162039_1724D6C7 
X-CRM114-Status: GOOD (  10.12  )
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


On Tue, 12 Dec 2023 16:23:49 +0100, Gatien Chevallier wrote:
> Allows tracking dependencies between devices and their access
> controller.
> 
> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
> ---
> 
> Changes in V6:
>     	- Renamed access-controller to access-controllers
> 
> Changes in V5:
> 	- Rename feature-domain* to access-control*
> 
> Patch not present in V1
> 
>  drivers/of/property.c | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

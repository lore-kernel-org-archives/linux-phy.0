Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AE54C43334
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jun 2022 00:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVBRDQ0KXI1REMSdbX5uzlVPW2QNXNbmUnAoPXkLvTc=; b=Xm0j5GIZBVk6Wr
	9VFKOPgS7H3/UNleOBHAhN3JDWskRxyn5uRDF8olxNmIi2VR+CuGL6euBS3LaApXpebEGBYmCV1u6
	Dg8oYCvRCdSBVvQgDgn1ixmH7LExjzbK3ZD9o/ZuVmYEo9XvRAf9T83iTic5ZF+s3AN22vtjrcM0E
	9T5Affx1Pu1RgGObTzxmoMZnT/mjaHZKbZOmc9gdbbsr15nM2F87v8alClfBUs6lxzxx+5bjLucOk
	Z6JL8GLkybjp/0JXklnxqIbmyK45QN6/l9Mji0dXySgm/ePi+p/EytHyDOqDBEssel+m2e6yd9TaQ
	xVjKZeRq6+cNuJ+XPFng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2010-004tfw-QT; Fri, 17 Jun 2022 00:39:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o200x-004tfX-Oe
	for linux-phy@lists.infradead.org; Fri, 17 Jun 2022 00:39:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2061B61957;
	Fri, 17 Jun 2022 00:39:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72810C34114;
	Fri, 17 Jun 2022 00:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655426346;
	bh=3zyM3B1L4dkBQNLZ6hSQTnSprTyRszI6LtRPOa9krqI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Oy0WYy722Fq152agcEDyh5Hfz6KKLFZc7aMQhj3MDGRsPCXDGojgaGauzS/e2tEx7
	 6NpMGX/cNwOSl4zltlWs3HAxFvRPyjNjxYLnirSmoLhhk9dBfdOfL0rBrjS+zyQud5
	 A0fLASr2NuvxgKUbUP4dhH/ErEkS+z4Pg3sh/8BdvpfvkLhD2u6+oMbtIp4uTDCcQJ
	 EmUhRW9fsu/ZBgggWxGhdpRpODjeix6c5axV1T4I14hoK82JaoRtRgvgaQKrSWMXcr
	 lAj0+m//euLM/u57w2McBosNULHy77EBdZXtGLU+GBRp3LTK0eMJ0bAzTX7TPfJJLC
	 K2CqHVIf0Il/Q==
Date: Thu, 16 Jun 2022 17:39:05 -0700
From: Vinod Koul <vkoul@kernel.org>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
	kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] MAINTAINERS: add include/dt-bindings/phy to GENERIC PHY
 FRAMEWORK
Message-ID: <YqvNKXe78KXg2UBs@matsya>
References: <20220613122621.18397-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220613122621.18397-1-lukas.bulwahn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_173907_879540_4341E9DD 
X-CRM114-Status: UNSURE (   8.18  )
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

On 13-06-22, 14:26, Lukas Bulwahn wrote:
> Maintainers of the directory Documentation/devicetree/bindings/phy
> are also the maintainers of the corresponding directory
> include/dt-bindings/phy.
> 
> Add the file entry for include/dt-bindings/phy to the appropriate
> section in MAINTAINERS.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F345DC77B73
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 09:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NzWEW0yE3XqfHuD+Ii/CDZsLI9H9EnBCIrXSqH+k7HI=; b=1Xkmy4STi1qMPa
	EfaJ2srRti5SIuu2vsGr60QexQrWY9i3xXYUPEPEa09sr7e23dxMvgmklJ9bHgMJHtBb43p5hIEzu
	v1DmK+fXKkXYzMNrbMGID5genDd5RtxllmJoaZcMGpPu0hUOhJ4ogH/WfB27004BUi6zpWW9iF5SK
	TlRllFrxuUZ3mX5U3pd0T3MzXT6tfrWRuUDMZYRKsNxUC2g5trnoVNKvZtIvnXX2swDCkVh1M+pMD
	tBPgLLYxJ+lYopi+1hD3ddHxxiYjoVH4lvRa8ZGw893Qyarkw7T+hCcTFH6t4w4w55W+eX1OF1awy
	JGs5ywBHNufE0akCwj2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvxAy-0005RT-28;
	Mon, 08 May 2023 09:29:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvxAx-0005R8-01
	for linux-phy@lists.infradead.org;
	Mon, 08 May 2023 09:29:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3BAB0617D4;
	Mon,  8 May 2023 09:28:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0408C433EF;
	Mon,  8 May 2023 09:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683538137;
	bh=8lBJEPFLd8rGZOnaQctvrJVYutqCawzSYnnnQAGvxSs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GSb2zmtCXCp0A+sdRR3Q+bfyP1GydMwBlipKxhAnMp6hLgz+/bKXVgaA1Nw1GIiYY
	 o3Il4yyFBZQhWPtwkQ5MN6pSMQLsTWAwmF7Ogb/WXPGFYxDqlkDRIXsT6b18Os8+rn
	 4/ZTfjI1tIm7uM16QujVQGh6nZFcdw9dnM9tdCdbKWGDSP+QcEj0otffzSasJ5nMxS
	 02hRIAbsyLpdIJ/8Xbqx/JQ8R5AhoN0pufNzF7kYjn99+WbBA1Rk5/GGlppzrprsfO
	 1HPz1fo9SYhq4yKrIQrTTzkmAyuRLW5C006gqlgveqaRl5q+2gKj2tGlmyFIb7wJAe
	 hi0T9Gv6mFD9g==
Date: Mon, 8 May 2023 14:58:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Stanislav Jakubek <stano.jakubek@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: brcm,kona-usb2-phy: convert to YAML
Message-ID: <ZFjA1T/qAKL1jet5@matsya>
References: <20230427190725.GA7730@standask-GA-A55M-S2HP>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230427190725.GA7730@standask-GA-A55M-S2HP>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_022859_086881_95D8FD63 
X-CRM114-Status: UNSURE (   7.29  )
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

On 27-04-23, 21:07, Stanislav Jakubek wrote:
> Convert Broadcom Kona family USB 2.0 PHY bindings to DT schema.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

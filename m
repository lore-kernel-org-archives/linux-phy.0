Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18C1DC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 06:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=id/ChDnA/egdF67+XCoegPq+vZ7su+uC9ArTIJMZ7fU=; b=xDcMluvpUQ6iFl
	SzdOZotOXc8giCGL75Nd+/1qb6YfVYDfziiAZFgdb81Lm//CAltJiPfP0XFSYCa05+2WYZMoIguRc
	k3PKjnVP0BK+rTeXv1clvhnXHyl7BfS7Oe8aj/431LjoQI7/9RqWhaAu3gy0dHz1dAXu4w/GqJrnI
	+IKbXBzJVMA8lV2QQ7rxkDOwfK9ZbvcnqLfUkMsP81FfhvTO0QK3R4lAf2rqL8jgBbIqgpm/BIdy8
	JAyDaujAAmaDSGMntbRVtfl0udKMCRXdtIdiQ1mFLEDCEkhoTzcbvE7Pa1MnmjC5cUehBsTi5c0sD
	1TvKhizK76K0/ZiTo6tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neWiW-00HFCh-Go; Wed, 13 Apr 2022 06:43:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neWi8-00HF2Z-Oz; Wed, 13 Apr 2022 06:42:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E13CC61D1A;
 Wed, 13 Apr 2022 06:42:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9771DC385A6;
 Wed, 13 Apr 2022 06:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649832159;
 bh=Z7OFrPj0bX5MvKFUOMLJsvOjs12AWG7MQ65iVC8WD6Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g06SzperoHCgZwa8/92u6JZAJDVi5tdqh7Zi7wvdG190Y7izLVILWrIQh3G9mrep5
 6bTeAhJ7+8Xhf0aTJbL5KLR7J3w1vqzcxvtvTgIpIfK6PT3MIjX178uqFYjQLLPUSD
 YpUCS9MLuHbyKcK1cmkVQNQoazh5VwS+dpx4nsSfYYbdahfgveMCRdSCoWu2SW7zkg
 nOWHQhHyn+LNh8Ndc73bX0n3i3NcsrISrh9L76a0dWJn7CmF70HOWah58Zd/EO+HmQ
 rxm4hAX2EtR7PvPjBaOpo0sK07d1gWeAxF8fGL/wsYoq1EHoiZAAB1yGuGJaEVd5Mq
 o1uPF7aYF40Ow==
Date: Wed, 13 Apr 2022 12:12:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/5] dt-bindings: phy: Fix uniphier descriptions
Message-ID: <YlZw2jUmLjWuL2SG@matsya>
References: <1648637715-19262-1-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1648637715-19262-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_234240_886611_970F46EA 
X-CRM114-Status: UNSURE (   7.45  )
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

On 30-03-22, 19:55, Kunihiko Hayashi wrote:
> This series fixes dt-schema descriptions for all PHYs implemented in
> UniPhier SoCs.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

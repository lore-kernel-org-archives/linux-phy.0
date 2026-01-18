Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61386D4A5F4
	for <linux-phy@archiver.kernel.org>; Sun, 18 Jan 2026 13:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bdPWNeB5YtnV6dd+4BQAZu7QgVHzN45ju/VaCDO8ITg=; b=LnhabJ7kXgRs7R
	EWql/Vq0BllXUrHmRA2VuAfaI/jVhRrPcmBaQBjUg32joCrxAsNN4D65p30+VKFfgjEaHGbgD9BoA
	RVVgdc3w9lTjNgQauUyt6xCa0glacmq4fObUg5FjpEaza3Pq+L9sVP6s/Nx+AERGp9LPvsRs16YQC
	u2V0JHnjDqdN9rP6kZcmgIMe+FvxAwhfj5MoiRJjsnvcTRR32Ih7wJS0xI8Wr+WIg4dULkq5Nci+f
	NyTvbEKq1D+2OomVcQ17L2axF1KFIuBp2J8/fXdcLgZ6V5zJDOatwfXUcBzfN/yMPR6Gdc+wCtabs
	Ir+Ly4T89v2aZs/sgRZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhTEB-00000000Acx-0WrW;
	Sun, 18 Jan 2026 13:54:03 +0000
Received: from mout-p-202.mailbox.org ([80.241.56.172])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhTE7-00000000Ab4-41Xd;
	Sun, 18 Jan 2026 13:54:01 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:b231:465::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4dvFS22HWjz9tnX;
	Sun, 18 Jan 2026 14:53:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1768744434;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RP95xjhO0x5zacRzTjckv+YNw51xsx1l34bJNxCRC2s=;
	b=pTVvOrQShEbKCwguVoY7Q01yVoqs7E5ZnRP06ZNyM2yOPCtuG5/6rR6K+FFpDnz+ry+jbX
	2moksGUYUz1wx4+zRDAkjJNtVRlbwNkGXhyipdL8jwX292PRCsOf6NYFuybCvc/SavK4mQ
	Y/TTstD+Y6h0o2kncz7hSchSryY2gWA2wxM2OcVbDbpMaowjyMJFbpo2m8Czgiwrw4t7hK
	+S1O6ZStsS1jXWg13/IaWQPedEYcoh/rikUwi2NHPZcxDNEJ7r2mqXn5UHOUr3sHvYRUUV
	/pR3BebVQ9G32uFHsRHKWYRNEdtx2kJ+fvqBbljcfJclRZR8l/JmLcxfEGdYpw==
Message-ID: <0bd00d89-fa5c-492d-aa79-74cd6f91dfb4@mailbox.org>
Date: Sun, 18 Jan 2026 14:53:51 +0100
MIME-Version: 1.0
Subject: Re: [PATCH 01/11] dt-bindings: phy: renesas: usb3-phy: add r8a77990
 support
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm
 <magnus.damm@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org
References: <20260101203938.159161-1-marek.vasut+renesas@mailbox.org>
 <20260101203938.159161-2-marek.vasut+renesas@mailbox.org>
 <CAMuHMdWZzL7nUCv6LnDaDhpMwfrnJp3ZYPAqQtDJ3BsZyH9k6g@mail.gmail.com>
Content-Language: en-US
From: Marek Vasut <marek.vasut@mailbox.org>
In-Reply-To: <CAMuHMdWZzL7nUCv6LnDaDhpMwfrnJp3ZYPAqQtDJ3BsZyH9k6g@mail.gmail.com>
X-MBO-RS-ID: 1f3453732dad7ff4a3a
X-MBO-RS-META: f5b3sgjocbmrwb1mudzxi78w997h87wo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_055400_138595_A7D1EFB7 
X-CRM114-Status: UNSURE (   8.32  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 1/14/26 11:22 AM, Geert Uytterhoeven wrote:

Hello Geert,

> According to Section 76.1.3.5 ("PHY Register Configuration"), the
> USB3.0 PHY register block is only present on R-Car H3, M3-W, M3-W+,
> and M3-N, but not on R-Car E3?
> 
> Likewise, Figure 76.1 ("Clock Distribution [R-Car H3, H3-N, M3-W,
> M3-W+, M3-N]") does not cover R-Car E3. Unfortunately there is no
> separate picture for R-Car E3.
I replaced the PHY with usb-nop-xceiv in V2, it seems there is some PHY, 
but it has no configuration registers.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

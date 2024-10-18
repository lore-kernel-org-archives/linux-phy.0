Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAD54D3C54C
	for <linux-phy@archiver.kernel.org>; Fri, 18 Oct 2024 06:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X1xmEF0iLRYEAwcjqkibYUiMXIibzG+vcIn0W9tvbKA=; b=qTyO6awTkhTF53
	dBJA6dveCD6Ud4nbC0t4z81IcleojczLcfUpQr/oY+7+Or+GjI1OAzjP3bnoyvEhKWz+68HgJFwBU
	S1a2GEpcXKyM9gMPz7mRyoYKdzsovqBdReGFIyN7msNAStoSwBBiL+QbrAvrdeL21L5AEzT11kLU/
	+9xMwkypIo0HNlounp1FldqyF7JS1N85PzOJ8/ba6zYNpxTgeKorkIzhhR0zguSxYGup1SyzIKXoq
	XbbowhmcYF8qPa5I89XaQV/icmL/ik6yP/ZteWX7NgYolRjJKlFllN041CHG1dAxvWAsqKCHR0jH7
	yqdb0dG1NInnWIBjlRKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1gDA-0000000H69Z-1Wik;
	Fri, 18 Oct 2024 06:11:44 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1gCV-0000000H66v-0exJ
	for linux-phy@lists.infradead.org;
	Fri, 18 Oct 2024 06:11:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 529E6A4459D;
	Fri, 18 Oct 2024 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F7EBC4CEC3;
	Fri, 18 Oct 2024 06:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729231862;
	bh=dEU7JVgsSSXUnouwOGrjzVa2zsi/LvY9smBUluomUkw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GBtgFLttY6KjPml5P7kJbYveiFC4fQFqYeR8HdOKMxrhBMkhQ0TIUlRCUokpJ/IQU
	 Q4bJKUCqiFg3Jf7vsj7usUhi6gqinp3lszurKwVF8yVJ8X+A0Pyx2uawpJeIYFzLQE
	 DsMMmBLYTz8KbOx7ll4iBRLJceN+S8xdLuZmLK/ujQsGNh5TRw0HPyvq3bJmzNk4hS
	 wauPfQXcOA6wVrIslFZgA1C1D5s/iVZOiauu5YRbX7FbjsIe+rmjRczR+VB4NwW++v
	 K5GZR9jpWq4/bMzSsTbMofG6eAaqpf/WYazJGWd92Rj8/zs3Ty+p5Gj0G3lm6HhUmA
	 q8FFObhxf3rjA==
Date: Fri, 18 Oct 2024 08:10:58 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Markus Stockhausen <markus.stockhausen@gmx.de>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, chris.packham@alliedtelesis.co.nz
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: add realtek,rtl8380m-serdes
Message-ID: <sh34yi5j6vjpl2lbs5osttsi2kdgwjhrw6fipxzqndg3gk3day@aoebakdn3i2d>
References: <20241017162400.3881609-1-markus.stockhausen@gmx.de>
 <20241017162400.3881609-2-markus.stockhausen@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241017162400.3881609-2-markus.stockhausen@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_231103_282640_8717338C 
X-CRM114-Status: GOOD (  10.05  )
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

On Thu, Oct 17, 2024 at 12:23:59PM -0400, Markus Stockhausen wrote:
> Add bindings for the SerDes of the Realtek Otto platform. These are
> MIPS based network Switch SoCs with up to 52 ports divided into four
> different model lines.
> 
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

<form letter>
This is an automated instruction, just in case, because many review tags
are being ignored. If you know the process, you can skip it (please do
not feel offended by me posting it here - no bad intentions intended).
If you do not know the process, here is a short explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tag is "received", when
provided in a message replied to you on the mailing list. Tools like b4
can help here. However, there's no need to repost patches *only* to add
the tags. The upstream maintainer will do that for tags received on the
version they apply.

https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577
</form letter>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

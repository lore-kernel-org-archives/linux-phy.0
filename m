Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A86A9E7E0BC
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 16:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RaPaEsGbvfmkbIOifFBMmLzGYjF1SEtpaWyNm3+DyrI=; b=2F36mC0yAWUuxf
	H6OCVW5eJP+QsjKCeyMvabfa1tJceoORsrx3FXPE6MrXqrAKen3C9xYHLh3HUPrzE34r792pNH9Nl
	5pgxLF8wtgZ20Vi3YqNomT9MK80HU1pYNvqNAkwmdO64WFrw+BSTF6R5xl7seaM5dNjiWLfqFUdCf
	3JJH2f2rp6dl0uHdXgtGiedF15x8Y0kIluUkKsJmBaxNqe6fPDRgY9wdfH9rDyTJmQhRFO12Xmn1q
	WUoW5hLMSJ7sl+/ve0/h5hZn4wJkqkIatXPgyap+Sb5tyv2ss0MBYZnvirxDUd8R6RQoptziEm+bi
	4XFXuiIYAbFdVUpQ+gRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpUP6-0000000FiOT-0fqm;
	Mon, 09 Feb 2026 16:46:28 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpUP4-0000000FiNi-0I4E
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 16:46:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 155AE6011E;
	Mon,  9 Feb 2026 16:46:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAB00C116C6;
	Mon,  9 Feb 2026 16:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770655584;
	bh=yvJm2CvDj9npboW4Dn1BKbYvXBkODW928Si+6fskTsY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=SRGR6rL9Pn6t0eHoetOURp0COinD0ABrAn4szb9u5wx0thhJG9RTRMwoU60cFABci
	 6beSeSYyOkwR1px8jYcWyHFHEVmrivDkA0ExBJ7jmKzEPxOgZCloNzbZpI3szuNT3n
	 i1CaKkWul8HahINuQ9bGDmYeiyeBBr9NMAhzH3JWhLivwehKmd0pBfGWorPXOSUUwd
	 CaToEvLSAbiEo5d+huOmV9A3SS1E9sbtRIyBd8J7dOJMZuBUhls/+yVGMotwTjehmw
	 2xJtpeC+h66gFSt/J80fXliNueF858dkPVeAdK52p14DjWNEOPJ+Z+CzhB8UIJmijt
	 K8brcSi1I1E7g==
Message-ID: <d476ecff-03fc-4520-a228-662aa6752733@kernel.org>
Date: Mon, 9 Feb 2026 17:46:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH phy-next] phy: apple: apple: Check the actual ioremap
 return value
To: Janne Grunau <j@jannau.net>, Vinod Koul <vkoul@kernel.org>
Cc: asahi@lists.linux.dev, Neal Gompa <neal@gompa.dev>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
References: <20260207-phy-apple-resource-err-ptr-v1-1-78735b07ed2d@jannau.net>
Content-Language: en-US
From: Sven Peter <sven@kernel.org>
In-Reply-To: <20260207-phy-apple-resource-err-ptr-v1-1-78735b07ed2d@jannau.net>
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

On 07.02.26 17:40, Janne Grunau wrote:
> The address where the devm_ioremap_resource() return value is stored is
> always a valid pointer. Check the actual return value instead as that
> that might be an error value.
> 
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Closes: https://lore.kernel.org/asahi/aYXvX1bYOXtYCgfC@stanley.mountain/
> Fixes: 8e98ca1e74db ("phy: apple: Add Apple Type-C PHY")
> Signed-off-by: Janne Grunau <j@jannau.net>
> ---

Reviewed-by: Sven Peter <sven@kernel.org>


Thanks,


Sven



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

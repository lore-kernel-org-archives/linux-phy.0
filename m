Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37A5EC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 06:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mj5Bu3heXBVAbDCRBj7K8sXs/b5gm3MmBS2E2sEBDUg=; b=4th5W4XwyXB6pK
	uvNKbwTqyuyZBuutX+VWKG2VSVxyr/gtytj4n8wwoxvuFdTBR1O40dGldqNufK94tUbJk5OlLl6yW
	UUO0J2xt71rhDA1v1fqATuuUXrs8F0ZXToRXkkExqzHd0uTlB3RiSvySAmbfqI7ngXurwboSVzB3T
	27bsXoOgTS9c9HaX0D7qrYbKVMVDaAWgAsfhU7Ab5PAx+VoDG7jbk8ACMtGSaU9Dsl/Wsn1T/uqfi
	dRTs5/+4Vo8KyQCS+VVhw+AkFh1vYc5wXNwmiFmtaVswnJlMGE49PD+B/6zU4B2sit6cfV3j5ylNV
	dJsGwCAFWPGbUjJCdlJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWim-000yRs-JC; Tue, 20 Sep 2022 06:27:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWij-000yPT-My
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 06:27:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 43F0A61BC8;
	Tue, 20 Sep 2022 06:26:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32D50C433C1;
	Tue, 20 Sep 2022 06:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663655218;
	bh=KtKLBoSfHYo9Sto2/wJYlheGj0VfgZsF5y5wlde5yoc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TD0LixtKSz1cPJICRDDAqbQEUFzQsBeXJ50uktH31O13APjqAjSlZsX9onJ6Kiti2
	 7sGK3JyjJzTzEBaS+z4qAxj/LNJ+MU8i3rOj4lMsSoKgkzSz5kk80dDqySm9TiPB/Q
	 PzZMoTOdyCt59BAgOP7Y0qELsCPhYW9QDr3QhupiGNGetac8UvH8tMUM1/0T0BcgSd
	 pmf4VT4nxakUT2TiLs9LrZKBEHqLVjZ2tSPUDNr1DWeFDgSVn7TXmbQMHxHa15qCrz
	 HU8hqnmQbH8yxxHRelyBYlVY9M1eW/z6AvyBWpVExON3KBMUhC/8qTUBLlUPlCNjLB
	 kboq0+yv0K1bA==
Date: Tue, 20 Sep 2022 11:56:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Liang He <windhl@126.com>
Cc: kishon@ti.com, narmstrong@baylibre.com, khilman@baylibre.com,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2] phy: amlogic: phy-meson-axg-mipi-pcie-analog: Hold
 reference returned by of_get_parent()
Message-ID: <YyldLYxso1rf6qoO@matsya>
References: <20220915093506.4009456-1-windhl@126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220915093506.4009456-1-windhl@126.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_232701_803864_2079FBF1 
X-CRM114-Status: UNSURE (   7.62  )
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

On 15-09-22, 17:35, Liang He wrote:
> As the of_get_parent() will increase the refcount of the node->parent
> and the reference will be discarded, so we should hold the reference
> with which we can decrease the refcount when done.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

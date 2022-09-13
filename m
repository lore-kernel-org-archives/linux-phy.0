Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98A58C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 16:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2eIjHX+01jM1HygtHgVlJichd3eBsts5MOIS7AFG5D0=; b=F7sq48xWYbkwIO
	hpRz2SLhKXu2CBsc+9cjfiDxNrTC5JXlaBALROlDk3MDNt92mR09mlTkQrpzCoq8oBUQVEFVk9E24
	F8brCPbbbAT8wQdIwRgpDv6dBFFG4/66zqbaEQeMx/ZQXsKn75axuprpx5H17s/1aSHn4NJ/+kNJ2
	q7YWyGlf+4eeaZRgaVCRPIa6zPIZMhKywC/SvlwJf7MUa21n3dwYxrgWfX6ZZ+iJN5e5347jhi2sS
	bfArzoDxP3ndBHSw5QA5QtPo+R/fXCQqtPx+aCg7tmu1ZycG4wF35UC/pBximCyETjeqUf1ay1z9t
	gqgUfHGf7ADvpphMToOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY91g-00DWOr-9y; Tue, 13 Sep 2022 16:44:44 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY8xc-00DTbx-1X
	for linux-phy@lists.infradead.org; Tue, 13 Sep 2022 16:40:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 5B748B80E42;
	Tue, 13 Sep 2022 16:40:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 392EEC433D6;
	Tue, 13 Sep 2022 16:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663087229;
	bh=17nYRkN+WVyY1egLu4yVqEs+LBH8XTKYou3v4m8WEZ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JmpFHTuyhL0iu3WJjmz3e1ysHilkG++Ot37ccDwzzGclOS7JPRD9Jpp1XwCZdWdla
	 BE9+YzA0u7p5w9KfCuGnh5B4gQRGOzXloaRplZEbQQb5o+gBEwrELjlQNKg8fEw/WP
	 jj42Uc/43MF7QSVWDUGUOk+4Y2P+kx1RwzI1KQKmIb3vEpIvu0hTwNLAhcRDXCrLNl
	 IteOOZ7bE4DzzigVPTpYWzrATmBAjnzLrVnibA9xZ/5wFnhfXqdl366AC64oS+vsQG
	 7JktLgs7/UP014N7rKpkkLlIYO2mqNXdf3ws6p+yvbRAh0uQktvpHnOMdIuNpodO5j
	 BesGDdC2uREhQ==
Date: Tue, 13 Sep 2022 22:10:24 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Colin Foster <colin.foster@in-advantage.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-mips@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	UNGLinuxDriver@microchip.com,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v2 1/1] dt-bindings: phy: ocelot-serdes: convert to YAML
Message-ID: <YyCyeNq7kxx6C3sE@matsya>
References: <20220911163715.4036144-1-colin.foster@in-advantage.com>
 <20220911163715.4036144-2-colin.foster@in-advantage.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220911163715.4036144-2-colin.foster@in-advantage.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_094032_340004_E010A91F 
X-CRM114-Status: UNSURE (   8.91  )
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

On 11-09-22, 09:37, Colin Foster wrote:
> Convert the phy-ocelot-serdes device tree binding to the new YAML format.
> 
> Additionally, add the file to MAINTAINERS since the original file didn't
> exist.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

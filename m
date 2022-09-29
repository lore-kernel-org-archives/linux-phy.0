Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4ADAC32771
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 00:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRXGA42TPDKlw0mlC/RQYasENNfOHxU0cXtp/YFi7Io=; b=bDwMBhY//JOTYt
	Ti87shQGyuNJp8FN7oWnYSiZrDdTPT4v7xRgdHNzF69FFAMBfK/KfJqI83kIWNiv44uxMGO7eE6KS
	tJTl1eIKCj0PESaoJVgTyovuuRF03mGwxxRkxg6WscmY+7C0rtMyFWVuh3sIa+AXjB5wC1ZWdozeF
	/6NIV0lhPvq+8waGbtK07ePN1pprAGeUk2SiD3ikh80bm62E8jBCsQsNgfH0doQpFqp01Orx7EwMe
	Cyj/H+RzDPLuFcGCfzZ6IyEHrfVBsAeo7Ne2eNv+brM/8XxX93y4r/kLEsygiH7f1cA81oIVgWL1w
	3fGoLjiJ6FTmrbkplN6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odhYl-000khM-30; Thu, 29 Sep 2022 00:37:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odhYa-000kg2-9F; Thu, 29 Sep 2022 00:37:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 987B8612FA;
	Thu, 29 Sep 2022 00:37:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCB93C433D6;
	Thu, 29 Sep 2022 00:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664411858;
	bh=dgTvSGK9jrlA/BNaLNFVXJvbWxBoQXUObzJLWFXVar0=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=tWrbMTP/sWorPExempQDhceLTm3TAvsuWXDBDQhNv5fDV1o3SjdxB9wds0cbGO4qI
	 PY2gvNB4le4nIJrSweoEUSzUjBLegouto4lMDvkkgPx5LMCdW45b9u18gyohAWOo9D
	 pVde2Kt45lNWGZYVOEU8YsadiljyCY5ZWq6a0Iwkm6ZCgr+fOdUgnHOnd8XeBo+DMC
	 MBrko7XcH7tx4Y0AlVz0g48ogvFmyGt2TM+pTvxe3r8EuUIShcn8blDNfigPf1jWkT
	 50vy9DqVm6Wm0HBHjnC+zmCZeN0Z/5h/NvqH1HSsuA8k1PGJqaUFmw0SXzJKCvUh7g
	 iz8D+GEwv5qcA==
MIME-Version: 1.0
In-Reply-To: <20220920202356.1451033-4-sean.anderson@seco.com>
References: <20220920202356.1451033-1-sean.anderson@seco.com> <20220920202356.1451033-4-sean.anderson@seco.com>
Subject: Re: [PATCH v6 3/8] dt-bindings: clock: Add ids for Lynx 10g PLLs
From: Stephen Boyd <sboyd@kernel.org>
Cc: linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org, Madalin Bucur <madalin.bucur@nxp.com>, Ioana Ciornei <ioana.ciornei@nxp.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, Camelia Alexandra Groza <camelia.groza@nxp.com>, Rob Herring <robh+dt@kernel.org>, Sean Anderson <sean.anderson@seco.com>, Rob Herring <robh@kernel.org>, Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>, Sean Anderson <sean.anderson@seco.com>, Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org
Date: Wed, 28 Sep 2022 17:37:35 -0700
User-Agent: alot/0.10
Message-Id: <20220929003737.DCB93C433D6@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_173740_376747_35F0D7D5 
X-CRM114-Status: GOOD (  10.52  )
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

Quoting Sean Anderson (2022-09-20 13:23:51)
> This adds ids for the Lynx 10g SerDes's internal PLLs. These may be used
> with assigned-clock* to specify a particular frequency to use. For
> example, to set the second PLL (at offset 0x20)'s frequency, use
> LYNX10G_PLLa(1). These are for use only in the device tree, and are not
> otherwise used by the driver.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

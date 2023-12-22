Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91358C41535
	for <linux-phy@archiver.kernel.org>; Fri, 22 Dec 2023 10:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hjc9WNvPxeVEB8OmPvdDtj68n28YQft+LX2ehzQP3WQ=; b=ubPFJAsxrAXqWp
	h0yK2MCs3XPR4h5bh/M9+atn2HjXbyi7C+dQ/+ZMdPhCJVYSs0vVfeTnIHoPAw/cL3vNsXYbm/Gns
	OmIqKPKl/LtULhYmAF9oGO8+MbIgHe9+wRwkmyAmbDbWN+g673cyPMg6BR4fcX/fBNFX/Ni/0Yw2k
	VenQeXd89v2qjz1MSwH4/DOFMfVSAEbX/mYU32A6MFyZ+LNJqg6SA/2Fs7W0bGUVTvL+K+HpQ9oqe
	4KZquFQK/lgwczU8UO3IqDTiX6x/1uHqPvALZrhH2C+Y6Fdi/BcThDeSecJcZdxUXFP9lDGGXG9Dz
	Myjib7KPaH0g9XqmA8zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGcUv-005Vql-0x;
	Fri, 22 Dec 2023 10:11:17 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGcUt-005VpI-00
	for linux-phy@lists.infradead.org;
	Fri, 22 Dec 2023 10:11:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D6F92CE10A2;
	Fri, 22 Dec 2023 10:11:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73EA3C433C7;
	Fri, 22 Dec 2023 10:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703239870;
	bh=38EFpr8oyysrP+F7Eh7r7rlQthLAXJIPPK1bZ/BXvP8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=KXVo4EVEAQ5O0N9PoEXy1EySRHNNNSc2UdCX2KLWmUNDsg28T/3Tq8ISbBsppSlNx
	 MFU5fud6j2oGVQaO5BtLqmbX5rN1kii/m2KEq0JrZvnKybzwmI6GpbztwR0lQgHTb5
	 G6ZSsRyQkXgaJ0e7ePpgb1gyjpjuB0/tTtkaBkGW//am3H1TAWVxoVRp82Xe7afSxR
	 DdF8GxQsD+sNZHO+/umoSyTEFDh1haHz5I4JWCm2X8VaUobJ0SO9t4Pf+iBmDOGnyD
	 YDdWpmomeZV41Goy+8ktyzkFMgpG4k0RiQe0XkPQWEctgx8Kpzs9Gm9OdC4E+lq8jq
	 gAXxQjnpE8nBw==
Message-ID: <b8a10bb4-8ff6-499e-874c-edff1bcaa3d3@kernel.org>
Date: Fri, 22 Dec 2023 12:11:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] phy: cadence-torrent: Add USXGMII(156.25MHz) +
 SGMII/QSGMII(100MHz) multilink configuration
Content-Language: en-US
To: Swapnil Jakhade <sjakhade@cadence.com>, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: mparab@cadence.com, s-vadapalli@ti.com
References: <20231221162051.2131202-1-sjakhade@cadence.com>
 <20231221162051.2131202-4-sjakhade@cadence.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20231221162051.2131202-4-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_021115_211962_E38C80EE 
X-CRM114-Status: UNSURE (   3.70  )
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



On 21/12/2023 18:20, Swapnil Jakhade wrote:
> Add register sequences for USXGMII(156.25MHz) + SGMII/QSGMII(100MHz)
> multilink configuration. USXGMII uses PLL0 and SGMII/QSGMII uses PLL1.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

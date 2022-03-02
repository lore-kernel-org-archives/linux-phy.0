Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06755C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  2 Mar 2022 14:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k2CYCV3kmX8qkUTavtNT6EGQVwWn8tIXbxvV7Cuj5sE=; b=kX6rB1Wx1hcTO0
	n/xatalCSJLP0yJQioZAM7/ewv+tEZqVaKa39t3e7mJA8RTBkD5AB8wWM9hqUZwJLHGjqOG9t8daN
	Gv3ESsOJZ8njThbMe82z8Dt8iu1AmMEJ52R4UJtt/3VfNu3oelw3B7KSOYWECC7tdjuoBRZhBERr/
	nA7K2qPR6pDKI23FYUshCipKh+AXWwI6wu5ZjojWYhyHojQABNneicOSdFYj8WYjymcbHEAMX/NAw
	P98rsg2GoJVudSZLBa1TyBPbUAFLHL0FgNZOMLTk1/1+p6plbhIAN0BEpcikvESerVH6bVemcqMZi
	Dn8+AB5ReMtiTPGs7n7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPPtO-002yGG-FC; Wed, 02 Mar 2022 14:23:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPPtL-002yEy-ID
 for linux-phy@lists.infradead.org; Wed, 02 Mar 2022 14:23:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1F8F161307;
 Wed,  2 Mar 2022 14:23:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED0EBC004E1;
 Wed,  2 Mar 2022 14:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646231026;
 bh=+KRRkkTu7KJThUJTNzBgWGqfwZmhGW8tBePw/LZh/5Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RpSC14E+HAIvzMhphulhgbxErI4/p6vxVDacEaux7wJXlEa1WNr+D2+rnMu7NCCNk
 1lm8Fi0XyqWtwREtt8w2TjQtO4ffcsh81mE+zZm4L70ZYUIPiPyzRWAXEPNFphXTcp
 Px3JmcDki7dvBDaPve7vE7oVxpmo6jht+pARFkjqgxtKie/ZNP7HNvHQ+L0D8AzRLq
 ZtxMgOnyxkj1v+x46fLIbuLVqjxXE87V9aawdmjK5Ic3Z8kjch5Pa4i5g9ldCj5uyP
 0j89SYP5UYqODauEv2dfGhGbQA5xDnFV/z0U8mPPzoGWsPZALuj/H8wzJs0kYOunUF
 gea7f+VCUGMrw==
Date: Wed, 2 Mar 2022 19:53:42 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-kernel@vger.kernel.org, Prabhakar <prabhakar.csengg@gmail.com>,
 Biju Das <biju.das.jz@bp.renesas.com>, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2] dt-bindings: phy: renesas,usb2-phy: Document RZ/V2L
 phy bindings
Message-ID: <Yh997pOE3Mx9fdF2@matsya>
References: <20220301124255.16836-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220301124255.16836-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_062347_660113_87311BA3 
X-CRM114-Status: UNSURE (   9.61  )
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

On 01-03-22, 12:42, Lad Prabhakar wrote:
> Document USB phy bindings for RZ/V2L SoC. RZ/V2L USB phy is identical to
> one found on the RZ/G2L SoC. No driver changes are required as generic
> compatible string "renesas,rzg2l-usb2-phy" will be used as a fallback.
> 
> While at it, drop the comment "RZ/G2L family" for "renesas,rzg2l-usb2-phy"
> compatible string as this will avoid changing the line for every new SoC
> addition.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

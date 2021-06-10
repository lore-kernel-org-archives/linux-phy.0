Return-Path: <SRS0=bJh2=LE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31471C47094
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jun 2021 07:31:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5E03E613F1
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jun 2021 07:31:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5E03E613F1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orTEjnsE3hPzcsceN1VRM4GGzM49k1sCEvVUnLfuu/o=; b=dx9Wq5n7TIcuHQ
	gbmo6vyQbzEqPNn7jujzuCZUnC9C0yudoRz7TxPZuXDz2mSW9bQQL6udg/v+Lm1bhJkiHPjN37Vmj
	XCT4N+IQw1HuvFJ8M/NdUrRDTub53da3aXbEe1Pf4W/yu9TRYUjaFv962J2lq6+SnDHV35IQtiSYW
	AuWRzsaNrVCQcXnNJeLO6io4hLg8haZL+ZgPHKIDz1LNYatUrX/yrrnZWu8pgQ6rDN+Ff7PssfaEP
	2Q+v6pQAuYQFyF07I/HzuLYkCv5+cTyRrEasbucNBoEMUSVlSAWXC/K1+eH4bCuTrG3RezgVGRQcN
	/gZlIxXy6NLRoO20Afyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrF9Y-00HERR-OF; Thu, 10 Jun 2021 07:31:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrF9W-00HEQi-B5; Thu, 10 Jun 2021 07:30:59 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lrF9P-0002mW-8K; Thu, 10 Jun 2021 09:30:51 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, vkoul@kernel.org, kishon@ti.com, t.schramm@manjaro.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: soc: rockchip: drop unnecessary #phy-cells
 from grf.yaml
Date: Thu, 10 Jun 2021 09:30:50 +0200
Message-ID: <11362049.qUNvkh4Gvn@diego>
In-Reply-To: <46289b3c-f804-624b-3c74-1989e57d0a7c@gmail.com>
References: <e7e09072-9cac-413e-dca2-e2a668c1807e@gmail.com>
 <20210607141845.3331910-1-heiko@sntech.de>
 <46289b3c-f804-624b-3c74-1989e57d0a7c@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_003058_413634_30903DA4 
X-CRM114-Status: GOOD (  16.01  )
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

Am Montag, 7. Juni 2021, 17:37:06 CEST schrieb Johan Jonker:
> 
> On 6/7/21 4:18 PM, Heiko Stuebner wrote:
> > The recent yaml conversion of the grf and inno-usb2-phy bindings
> > left the #phy-cells in place in the main usb2phy node inside the
> > example in grf.yaml, causing new warnings.
> > 
> > Drop it to make the bindingcheck happy.
> > 
> > Fixes: e71ccdff376b ("dt-bindings: phy: rename phy nodename in phy-rockchip-inno-usb2.yaml")
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > ---
> 
> > Like this I guess?
> 
> Hi Heiko,
> 
> When I apply this patch locally and give the command below the
> notifications are gone.
> 
> make ARCH=arm dt_binding_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/soc/rockchip/grf.yaml

so I've applied the patch on top now in my tree.

Heiko




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

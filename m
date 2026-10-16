Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9476CCC6B38
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 18:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2yur1L/exBZ0Q+aU+RlvjHDKCuf/VFyedTWaaCJLdes=; b=iGRIvoeGZ4rpLI
	aInWhe87KRH/s3Ij4xtPEWbrw93mMFWggX8WVDJUD8Qb/wJsS1XGaMTjOR/9gyMowTWCsRxEruUoL
	t79GHIBGx6n08A/MOLfyk3pqteYIol5wCTe7bApIieaQDVJHWDR/EQM3B118nLcuJLID9CLAW/zgF
	XQHklMau9UVXHW9kT+9X4aYgy2GwLnvBMv69dzrX3nWpC7Q7HYPNEQARJQvW7dInC70xnW9Snu4GJ
	JBPhK5u6ITVtJ0G+Eyx3pHrgqE8uoXA3xJkAdGRPd1tQaN4CmWDPAWmxpPl5yoE6fhzGnF+JHO7kN
	DcIcTjzoiFp85IowFfwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHmmH-00000003grH-3oUC;
	Fri, 16 Oct 2026 18:35:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHmmG-00000003gr2-1vIq
	for linux-phy@bombadil.infradead.org;
	Fri, 16 Oct 2026 18:35:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=bUvBHARR3tUXwrjb2u7dJFs8iX6um6IbEtjYMTQjxQs=; b=IncAE5oL/tbcyetWuRyYxJLOhL
	4F1SnY9vouNYdhIqadJtU9ksMhLSHwWiyBa+R7WexKRnL/9iTgC8d8cOFtDXAp/iVOQOJUldpdiBs
	IMjQvqmgJrqAAIdsiGjx7fc6OELXvr48e/7WMhxSCZQ4r+2BCF+FsqxZHcMKPgWukO8bA6aYFRdHG
	80Ov2BlaLLKl6WKE7ui1e6O1QDz1fOpl8yQLToKePgjIb9yLbCST1pkFFhyC1AXlRuyx1pIMz3EB/
	nxMKVfP2Nq3wD14YLmR1DgkpBErBFTfmO9qR3QVJZUJ1hXsZe828kL9BCQ0N+SQ8f581n7krq0fNQ
	7RWaG1lg==;
Received: from layka.disroot.org ([178.21.23.139])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHmmD-00000001qiC-2RlP
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 18:35:35 +0000
Received: from mail01.layka.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 15C6180851;
	Fri, 16 Oct 2026 20:35:26 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7NMZTfgfXi-X; Fri, 16 Oct 2026 20:35:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1792175725; bh=bUvBHARR3tUXwrjb2u7dJFs8iX6um6IbEtjYMTQjxQs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=HrqKyXwFDRON44Fw344vyMMs+47EWgv1zZLNgaEVlHQCPu3PDNL8Kk51EA5Ycyu8t
	 O5z/eptsIkpM6rLfk4ySZlKH65yNCMTK8r8TOK2OwDEAqOaMHd8LO3qrIpaLqEITWG
	 wgirYD7i3Qu8iegij8Hi0nz7uyDFsbShL8NgwlSy1GbUAhFEG3FfQilAydF48TLA4W
	 ogeMabY0h9qGqS5Fe6wJF2IC+S1+AJUI9pGKo+3IUGoEZ3cu2lUPpcLKJMkP/0KJft
	 eJW+c5xO/1HHCJ7JKlMCXzH7LLofKcIFFYFRokiraWvZ1w2n3UHgiHccZ0njBR7gkY
	 IWxVFuwV9sWfQ==
MIME-Version: 1.0
Date: Fri, 16 Oct 2026 18:35:25 +0000
From: Rustam Adilov <adilov@disroot.org>
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
 neil.armstrong@linaro.org, olteanv@gmail.com
Subject: Re: [PATCH v9 1/6] phy: realtek: usb2: introduce phy_reg_desc struct
 to the driver
In-Reply-To: <sashiko-outbox-174760@kernel.org>
References: <20261016180314.31760-1-adilov@disroot.org>
 <20261016180314.31760-2-adilov@disroot.org>
 <sashiko-outbox-174760@kernel.org>
Message-ID: <7c12179c8a88e2102e7d0c8ac7a66790@disroot.org>
X-Sender: adilov@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_193533_721856_25E7B322 
X-CRM114-Status: UNSURE (   4.85  )
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

On 2026-10-16 18:15, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 3 potential issue(s) to consider:
> - [High] usb: phy: unaligned IO pointer arithmetic on void __iomem *
> - [High] phy: realtek: missing NULL check and iounmap() for of_iomap()
> - [High] phy: realtek: off-by-one array bounds check allows out-of-bounds access

Pre-existing issues in disguise, not relevant to this patch series at all.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

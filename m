Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38891CA1012
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 10:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kV84/ncghVMBUSUxBtTVBgKex6JOz5FkvPPGhg3YuBU=; b=cAvs8Fw99DeZeq
	FQ8UJjMQZLAifE2IzqB7Bzx9zzFY4HQHBbiXfNaQtZJgydmPptJ1yLJ9D/3QXFDMcysPm+i3bE0Gd
	Y+6Q2FkaOwsOhV3cgTkXXNx978i6i641mdprY1O6eLRZm/rtuSDbnUDjbmAF6X6rnCZc8X+YBIN6Q
	0oDDkeIz3/M/9MH3AIuVONOS88ovMfT2xIkCvsJZx5Kpl+Pd+JtCCyhzpCNjeVV74UZW0trqWHI2A
	klRJW35LSRpeuuwAvCFlGYLJIpgjfcJgSJ/qeDstlsC2M4g0Ni11iHTiwsw/VdcwuBWSjwz0F5tRt
	1gdgUAb5HGgT76XGQclA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu7A2-0000000AsjF-3GSj;
	Thu, 04 Sep 2025 10:25:46 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu63d-0000000AUhE-2HGG
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 09:15:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9CF6B441F6;
	Thu,  4 Sep 2025 09:15:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADADDC4CEF4;
	Thu,  4 Sep 2025 09:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756977303;
	bh=oeux7o7S78ErMfdiBwTr9Z47gi/tPN3gufRN3obUJ5k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EciXTXhZUtF8mge6/PbpxoVuK4dPyf++Vnq6PQszojXqCbddVQf/fkFE/KrXH/lL1
	 En2/TPQY95uqPDF/+Pv0HdIbIMsMxnIJm4Eyadr9QJlC9Far6RVRRI2ve8s56TQ1yo
	 0NUJbO2wJKueXjq8hXRhWqCy5Cesx4HpnGs1pXdZbAkKygsqrCRBnsLKtGzIcUpvtP
	 LAQCjL8Nq8w+Ui7JXxiHHtH5Tbpcqlm/4WGkBlarSV5eWXqut2bxF1gWs4jw3sfe6/
	 9Pvt/a8BaEtPkvnSo1bFjVUHWRzq9EVkLv8vKY/Nm0vJZb8X7QNFbGqDzEr3KbEgYC
	 +bktODvqp/7Xg==
Date: Thu, 4 Sep 2025 11:14:57 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Yulin Lu <luyulin@eswincomputing.com>, dlemoal@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, vkoul@kernel.org, kishon@kernel.org,
	linux-phy@lists.infradead.org, ningyu@eswincomputing.com,
	zhengyu@eswincomputing.com, linmin@eswincomputing.com,
	huangyifeng@eswincomputing.com, fenglin@eswincomputing.com,
	lianghujun@eswincomputing.com
Subject: Re: [PATCH v3 1/3] dt-bindings: ata: eswin: Document for EIC7700 SoC
 ahci
Message-ID: <aLlYkZWBaI5Yz6fo@ryzen>
References: <20250904063427.1954-1-luyulin@eswincomputing.com>
 <20250904063718.421-1-luyulin@eswincomputing.com>
 <8489c13b-6810-480c-9894-bb5c80cfbde0@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8489c13b-6810-480c-9894-bb5c80cfbde0@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_021505_600903_4EF676E6 
X-CRM114-Status: GOOD (  13.65  )
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

Hello Krzysztof, Rob,

On Thu, Sep 04, 2025 at 09:10:34AM +0200, Krzysztof Kozlowski wrote:
> > +
> > +  ports-implemented:
> > +    const: 1
> 
> I do not see how you addressed request about firmware. Nothing changed
> here, no explanation in the commit msg.

In Yulin's defence, he did comment that when having the Ports Implemented
register initialized by firmware, the Ports Implemented register apparently
gets cleared to zero when rmmoding the driver (probably because it disables
the clocks and regulators to the controller), thus this suggestion breaks
the use case of being able to reload the driver (rmmod + insmod).

He mentioned this, and asked for advice here:
https://lore.kernel.org/linux-ide/2cc9f2ff.6a2.198e04fd36e.Coremail.luyulin@eswincomputing.com/

After no reply he asked the same question again:
https://lore.kernel.org/linux-ide/692e11ca.843.198f0337528.Coremail.luyulin@eswincomputing.com/

I assume that Rob simply missed those messages.

Anyway, I provided my 50 cents here:
https://lore.kernel.org/linux-ide/aLBUC116MdJqDGIJ@flawful.org/

(I would like to add that I think it is the disabling of clocks and
regulators that causes the register to be cleared, since we do call
ahci_platform_assert_rsts() during the first probe, so if it was the reset
that cleared the register, the first probe should also not have worked.)


Not sure if it relevant to mention this reply to Rob's review comment in the
commit message, but perhaps it should have been mentioned in the change log.


Kind regards,
Niklas

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

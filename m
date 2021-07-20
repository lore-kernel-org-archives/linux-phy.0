Return-Path: <SRS0=vk77=MM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EE63C636C8
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jul 2021 10:42:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 508B1611CE
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jul 2021 10:42:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 508B1611CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JXo7fSSC/8C5JhjVnZlwiKAJykop2mPYMAnjnY25B8=; b=0fiDPli07SqZIM
	UMXxxrBJlb8c7pjAZnDie02VNHBWKcM/zNjEB5usWkPWpdRDzZrWNp5by2aqYrjGrYefxNfUE6HEQ
	AgbMPTllzRs2vb0qYA+9D6csW52+mN5A0QW5N80kzMy2EMTPIuN6qmm24yd03R9dV9WzXse0+yVZo
	qm+O1Ge6JoYGYTntgnTCKY/2VG+XpLWyPpaJZg8ZwmRTDWLS+Sv6i37Tvy7vDyjhruVru0JoT9qt+
	Z6qG06XGxxBhRsLGzzDJFqIgW6fezLPevv/PfiBrbfqRyLNlvs2k0cnJYFA4Qd+S4p5cREe+l4lPz
	KCtYivf+zbA0hBmJtzvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5nCe-00CYmQ-SP; Tue, 20 Jul 2021 10:42:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5nCc-00CYle-EA
 for linux-phy@lists.infradead.org; Tue, 20 Jul 2021 10:42:19 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5287B61186;
 Tue, 20 Jul 2021 10:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626777738;
 bh=M4jlSJ3UNzpr+mylozsLVwswTXGvtSsFEMeKSMl3c5o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZNiZZtNLAPyZJfy/2ntlt8NyM/cVcy0jo0IcptDzXh5fEALfIqk3zXq4p/DClF4Hu
 v+wwlqDtEeHQyPhMJMm7TDjaqBzbRpuyCRXZ2AKDS7g6DMqlhe1SMFCAF7ChTk1c96
 FZ/ESN2JifAFCiZbenYF9lq9XtYiBDn/ElZWjTWylSPE+KouN80yMEpsPKFxDDEb4T
 G+5rQ2io9tiMYBKEwATG/e1QOuYE1hKQ6hc1hD5vk/FO02FGp2rfcCby3uz1TKbga8
 nUW5mFLpqldVrL9MNFjuY3QJo8ZnfPXJXljPquaDkwl/X6LlqLtEAgHEwYLjmbQQTz
 oD6xZOoiJAebA==
Date: Tue, 20 Jul 2021 16:12:14 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: phy: Rename Intel Keem Bay USB PHY
 bindings
Message-ID: <YPaohpd+QorBLmTu@matsya>
References: <91235a64185f7446fc58e638d77691078d3114d1.1626255556.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <91235a64185f7446fc58e638d77691078d3114d1.1626255556.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210720_034218_538506_AF937952 
X-CRM114-Status: UNSURE (   6.43  )
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

On 14-07-21, 11:42, Geert Uytterhoeven wrote:
> This is the only file not using the "intel,keembay-*" pattern.
> Fortunately the actual compatible value is already following the
> standard scheme.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

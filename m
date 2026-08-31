Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDF0DC61DE4
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 02:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M0sIuTAoFP44uOwz5H1nrnV48QYRZJbacsbrbily8V4=; b=DcZ+RK47z9S7yA
	RxupnzWX1CtSD/AaMqSEgZJkUrKwRwfAuxeneR8fF2kW0OK1cp3HftG4i1FcwhUG0U3b8eogoRfGT
	hpfr9v5AFvgWZdvy60vooUVBkpq1MsSJZyJw9DArbA3KcUYM+4XLQQjJUymA8oaR64iT8RYxQ1Mgy
	PopeLrDxTL9uPecuY8EXg91aPwfydgDjrOAeXBO5TpxrFQPM/6BmVuPD9iKPYVJ5Dlhl+tNHdwzVo
	6K6PzpdPFD1Mjcu4cms2sU4NP7AyzOQCO6C5wrWfVFHLfL24S/B7ESQKX41ImlvcTyf8drSi/oMJM
	EY/EGkq7+ap/ipxpMrng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0s9b-00000008NXL-1JPX;
	Mon, 31 Aug 2026 02:53:47 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0s9Y-00000008NX2-2qj0
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 02:53:45 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-3966791a6eeso3572939a91.3
        for <linux-phy@lists.infradead.org>; Sun, 30 Aug 2026 19:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788144823; x=1788749623; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=IrjCF4pM3duwCmLEW+pFhpUaj9HXx925sI9B0kRtN6o=;
        b=as39+u3LoaKyvUTNMa9FhXXMXD1lUN66HPeAPi6z17YYoVQM6ohtH8ppKYLwbTJUyy
         5vz1/izYdApF01szt4eXp5KSF4tyyAvTY48vYacZrgXgP8vZfYMEbDTRdYD5YFGp9YYb
         +QQjRIU1LjNW3iarDmpFBHXZlIFR0rtDKTHc/Tv4P5hmENsISc4xwbg4FsjdtpLob/Ob
         PamLHadIZ8I+0Etp8AHn91tKgB5S/Qnt01A1cy5te5OrtAi6CqKKguHMqHVHg05OCJOT
         2jNtdqj2w2yIiXtaL6Tql9/Vt01vZnSjTKxQzXnkYOoslgEPKw2TvyldtkJCVn7yhI4S
         XNYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788144823; x=1788749623;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IrjCF4pM3duwCmLEW+pFhpUaj9HXx925sI9B0kRtN6o=;
        b=FOnMQ7JOeYE23ZayBoOTaUIwjWXoJB7KQdmDwwSnNYQQ6hy64VXRSQ3n9FP0rPM8l4
         gsBtsK2fcRLCEeIykEKTqBFKkahdd7qj5V0iItG/e0TjwoEOPzfjc42CWnXGej0TMpoD
         O923XyDjByuTNwcKuEBVGfD9077jblCcNWuxAwa+TKvjD+PGxX/uJ3dwvDBMQWADN2KA
         06kJjP2xzaG0UsD5nAwyHYJAWnzqhTo1btBE51KdxJFMpA+BNwUtp0p7k+vc4PolJf09
         xEb00hNBmgptmhwmtsFHAudfu8b81e25GRmAmaYtqLPo24qYs1AHNP2PMX3Y1FdOHHLQ
         eMdg==
X-Forwarded-Encrypted: i=1; AKwUvByO6TyozWND90rGy0LnBlgx8ESodR9jKieWSKMF9ceintORH3y2+XT0I+Gb6qwpFf4QgVDPAvKxEiY=@lists.infradead.org
X-Gm-Message-State: AFuF++mUYZqGGcqbfkj1NlOI+oycrpEpSkVkxqe7U2ZFF0tApQyP82Fm
	cDCAw4SG9XM6qLZA1XWLGj+dHOmKDBhn8AC69aTmCZga5J7MT3Th4/FU
X-Gm-Gg: AYBFou1BrtaYMD0f4HOVWJ0b+niE4aO3v97zndUyJmYq2wZPbBhJ5cWuj0tvMrJZIO0
	EffJriLzo95hbfiZaGqzqGvnwpT8+kLodLkKChUCB/v+JxgFvFoX4Ixk4/79IC1Q5d/3+5tkxf9
	g17AzZdminGTPhfxZFHhxY/ZMg02Rs+QC+LxiLYsSQmAHq8l/i2YOU30/fa9FEyEWVpa/XSCP++
	6naD4wQWXShhz8FVGC1LVDLR9aQfdSga5b9OEAz41QTHHdCy0JYfo1SlcS3CqsAFZ/wCHJu7xtL
	MR1Wjt+8Ph2CcKSqWZNM4n2b8N4CDRC/gMziZx+IkpXelfqnZP97gPClufnLv7p4rOOf/LBUWCX
	LJ7Co8jPZ4CTofdqlp7fONIgEbIkmmNO/6dDnXIJyCSsT9L/W2KsotvJjruQ6h0prDKcLyZGNlD
	XS0eXypIoIx6d11c/9C1nO4SPldxnftgCy+jev
X-Received: by 2002:a17:90b:3850:b0:398:9bd4:d15 with SMTP id 98e67ed59e1d1-3989bd40daemr19578833a91.20.1788144823046;
        Sun, 30 Aug 2026 19:53:43 -0700 (PDT)
Received: from localhost ([2001:da8:7001:11::cb])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-398d8e493b0sm5205418a91.16.2026.08.30.19.53.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Aug 2026 19:53:42 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH 0/3] phy: core: Add phy bulk helpers support
Date: Mon, 31 Aug 2026 10:53:14 +0800
Message-ID: <20260831025319.94886-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260830_195344_742724_EB78CE97 
X-CRM114-Status: UNSURE (   7.78  )
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

As discussed in [1], some drivers may do not care the difference between
phys. Instead, they only need to treat them as a group and operate them
together. This means a bulk operation is needed.

Add some bulk helper functions for phy core by referencing the design of
clock/reset subsystem. This can relieve the driver owners' life who needs
to handle many phys, as well as each phy error reporting.

[1] https://lore.kernel.org/linux-pci/ak9KzNFF26B0Kttz@ashevche-desk.local/


Inochi Amaoto (3):
  phy: core: Add common helper to add phy phandle device link
  phy: core: Add common helper for get phy phandle by index
  phy: core: Add phy bulk data helper functions

 drivers/phy/phy-core.c  | 716 ++++++++++++++++++++++++++++++++++++++--
 include/linux/phy/phy.h | 183 ++++++++++
 2 files changed, 865 insertions(+), 34 deletions(-)

--
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

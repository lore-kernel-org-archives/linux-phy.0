Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DABCC624DE
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 08:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BVk0hO5TAwkt+GgIup/q7QvJOkC2+4KHDUP8RsR3Wks=; b=OsLIcx2RBaDFC2
	sQmmvk+iMreI9nneQXaj7PXNEkCQwLyqb/WtMACuSLLvjIaUtB6XwH1u+r0HvQvTjgcQCKs4gUNie
	UUkmhUU7g4RcVX+A/AxT8OZXLYHsQNmmWxP4Fu5VSjUyZoaBSy6O9h67Y0k71NNLqd3xVHZzwAaks
	25KolPCtm0cUW/MnsKrWAj/SZq2HAaryZ4bc2P00WNLOdRw0UWIsTa6R81AsgAs+pHOi7AGR5nF3g
	S1dSNi8snsyU00ENacC3M+qIPfPGthycwRbw7n26quV66mOQi8/MlKhhBvMxuMMqJJcNP16/6HJlD
	faQlcAJdnOwNJkhjzsHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2PQp-00000001Od7-1YIF;
	Fri, 04 Sep 2026 08:37:55 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2PQm-00000001Obk-3YBC
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 08:37:54 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-395cf2535acso827769a91.1
        for <linux-phy@lists.infradead.org>; Fri, 04 Sep 2026 01:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788511071; x=1789115871; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=G6pXZOI1TlC9MwT6PyMRsLZ68Bknxu2fpSz6gtNlsdc=;
        b=NLQw9XduqcGDpUtTEJdf5ZOqcBcuWvcB91GwHASDl54Ua7K+BDKaHOXVRkNx/SFj+Z
         BJVj2kGLsE0MhuAIS88VCr5+m/E4AxgA0MBsJ3rqg1G0bf1s8+1kE/U+pVc7DayOw66g
         4LkE9ZosDjZc9ObdttdmIJebSgdyrM0Udyh8jnpA0Dz6Mk7m+2MlqBESWXUMPdBex1uO
         R3Jdd+gKJut7yS3JOIWr5IQqd+tuxZpLJ502QwOoZVMyHwpdtgoGjLm9PbOLyTQWcNNb
         c1iVSNX+sxlzYsaGGOk9wg3GSTazsoHKPKIlHxzniO3LPbPRsnxNSUVhp9K69U3cFKsd
         L/AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788511071; x=1789115871;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=G6pXZOI1TlC9MwT6PyMRsLZ68Bknxu2fpSz6gtNlsdc=;
        b=N+Ihs4OoDPJ0o+bOy0FRpA3z/S0vrKvmhhzJmJTcxMs/FCCx51DrKT/vN5KohDdAyg
         8ZpVLD39GIuJ8FYUl4zkrEvi7snKFxtfhBNAFPgs2lAyaG4pzlk2uH/mi/F1s866HR91
         TE2CCxHBW5XWFZbCcpfAScwqc7mIXdcL+/4u0UITwaYuNzOYexm7sUHN3BaIbZE8ADxt
         WrcqmJVIy2Sf6WugO1dTrwagG322wM1Y+uYS+mba1HcAuvWGCpxeY+6Pu7haXBcXassE
         0T4C6YxQxt2Ie1/JUKJyuoAG9WRbhnyeq6nM/oyoTh7O6115X5Pe75hTSwxUuch0GCQ6
         aQVA==
X-Forwarded-Encrypted: i=1; AKwUvBwk+MjTyZAhfm4KUZGN2HEyjuGQ5lT6WWr1OJPFHzxJoIFAatoac2E3yC4Da8SyTutDRVV533K25IU=@lists.infradead.org
X-Gm-Message-State: AFuF++ky2Hl5ey5YlhE6iUXqC8HJIzgISnCFUT8zxHnpmqt62V8KEIAj
	quSLbFRBNZdcjbTWvlOUnn6UvfdwqI9IQwFHdkNCCYZTwY9ItLiKIqRj
X-Gm-Gg: AYBFou2MVwGvk4u5RcC5NMHnaJTbXHZ2Rep1tcmGLmXxDXZGU1QNcDVrpOADFmJ+aTe
	aIUqIMVZOZMTVN5ShRIVapSwbzweAVOzJpX5iH9kUESe8irICajF1ody03J0EdJkrTjx76rirck
	O6+PLoZTjQur5ADmlNwsMvClFrNuPHmj19iJqeJbHMsOkdxnIIhPFEURw5zNUn5hw8i/fkOObTL
	9LV4Nm2tG/eTjiOHiSC4e8UhzfotH9sbMvVlZTyqJO11wVbKqbwpexGi0Vx/fzSsMZqf6+LWOOk
	FttXY4pRCev1RjJVfxCR1LBDI9jCJ6XRi9B6mULqtFnvcnk0JIxNNs1FWGNNhVpamMxKr2o+dUW
	p0IZpZK5Q3xDIIbiTgPW+diCmEmbqQUvlgQ7VJQz6gOljQm65jTedOQDW+4kLCIfg3dK1PWTG4Y
	pIHuAJVddLCN5MyMUwOmDLTFFzSyMdojdoV2d8cv3tHgJ3Wj9BaDsYUkfrZDs=
X-Received: by 2002:a17:90b:2b45:b0:398:ba46:1d9f with SMTP id 98e67ed59e1d1-39b27ea735bmr2719594a91.13.1788511071333;
        Fri, 04 Sep 2026 01:37:51 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39b261549f3sm3317687a91.16.2026.09.04.01.37.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2026 01:37:50 -0700 (PDT)
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
Subject: [PATCH v2 0/4] phy: core: Add phy bulk helpers support
Date: Fri,  4 Sep 2026 16:37:04 +0800
Message-ID: <20260904083709.425893-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_013752_884924_8F573BDE 
X-CRM114-Status: UNSURE (   9.54  )
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

Changed from v1:
- https://lore.kernel.org/linux-phy/20260831025319.94886-1-inochiama@gmail.com/
patch 1:
1. Update document.
patch 2:
1. Fix document format.
2. Fix several document description.
patch 3:
1. Split into two patches: one for non devm helpers, one for devm helpers.
2. All the bulk helper now use unsigned int for counts.
3. Fix multiple the while loop statement.
4. Rename of_phy_get_parent_count() to of_phy_get_count().
5. Fix some 80 line function problems.
6. Use PTR_ERR_OR_ZERO() to simplify the error handle.
7. Fix zero value in the document
8. Use two separate release function for devm helpers.

Inochi Amaoto (4):
  phy: core: Add common helper to add phy phandle device link
  phy: core: Add common helper for get phy phandle by index
  phy: core: Add phy bulk data helper functions
  phy: core: Add managed phy bulk data helper functions

 drivers/phy/phy-core.c  | 700 +++++++++++++++++++++++++++++++++++++---
 include/linux/phy/phy.h | 186 +++++++++++
 2 files changed, 850 insertions(+), 36 deletions(-)

--
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

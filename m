Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1D9DC982FA
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 02:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Gttw5xeMff/V3ScrS63RD0s3YjSmRioMduCXn7Y22vA=; b=c2/OrOKwSe/igd
	FO8BU2GrS9TpI+GAb/SGUWJHj7bMIAq9TJt91g18sqU91e6u99dAuJ51GxUHhe1gkueGw/HqpmhQL
	HRIpXW8gaveVk5Xtw66KeaZPAE/N/peDGgqd16xpkbO8KJhQ0pGju27+Ox3U5C79z31+N6ZoHlcMe
	uR7/S0o2pFSDVrb0vXqQ56oukUL/f5xB6QTgaT3Slekp4zbJrSgB8r1skaACDmbxjFfRCZ2mo+vQ/
	eJXEPYG4RdWawZw6IEbNg+O8HhjySaJhGhgg2B//UD7qf9cjbyLwdZbFEnxMav8IQvvbF2SeeD+x/
	jMhdaOMEvxhQ4jwsqMeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Co6-00000006woX-1Q65;
	Wed, 23 Sep 2026 02:34:02 +0000
Received: from mail-pz2-x10.google.com ([2607:f8b0:4864:3b::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Co3-00000006wnz-2wq3
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 02:34:00 +0000
Received: by mail-pz2-x10.google.com with SMTP id 41be03b00d2f7-cc1cea4ae2cso372774a12.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 19:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790130839; x=1790735639; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=RevM+Pm4qTHqsRt7MmtP02SEgC+bsSUvf93SBWhNqHU=;
        b=KDU7CP9GhESUY4Qpb0brhtPHX6gcUCUsjGWev+O+OIOrlGU0i2+7ZuQfnzyBd6os5m
         OEZ/5gEEy2eERnEY45npaDhczEPQSNkvB3TDU0yF1Xi8gYzuz5oc3zz2B+d/cd4pqEoT
         +AtUBCFlT++zEmIVv9pBRppot7ihL4gNaWYMvP/HCkwtIpKzZs7cG6ni5cITx4o7cT5M
         CO9wCNKbueOG5Huwi6ShjYFUsTOrNhFfI/Eo7CaTUrseglqKF3vqnoF54zsNUlidhWYk
         CnjYU7Gn7u4LS08d9GusUviR9AkOfjJ+Di318uULjJ8CvSXO5LOiMxj55OXwOPQQhC/0
         Z07A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790130839; x=1790735639;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RevM+Pm4qTHqsRt7MmtP02SEgC+bsSUvf93SBWhNqHU=;
        b=J3UF4Lr3XdfMMPm4225ttwiNH537epwH3q7msWSKS9L4d/sntSKfdtcF+gbQcrUCVF
         ldyJk9p1wzn8BAJsjFhHWsboFkc1jnEBOH+Kki0Stv41RVrqbp3NXjOqmtFruIubt5fZ
         9kllU+fzW9A5cQECAIQgoLaifrDX5fCwhiPs84DD7YLNrpqI8m8CYNxPnhe60oa7/8Kp
         lhstBsZtFcvsbrqm+V1lGYQSVvCXmsjhgcV84RkF8RctmgeTA3DpgWgeGzL3Xn+vL+rq
         W4hjZblnhubGJxuo8i9VGIklzim38sslFWqSfcH5cz0V9xIAIG/IHSLGfWyigeZ98mhZ
         5fVA==
X-Forwarded-Encrypted: i=1; AKwUvBxtLph+0QRpyHCwYHafPefVGXkRwwPcGyuB5ElNwd4/rrTtEtvDR9JY7alpeGgv5dsx/JYZ2JQoSMY=@lists.infradead.org
X-Gm-Message-State: AFuF++nEHtD7BR48o+wxxQVZWeeDi1zj7M1GcSSj1WOIVAynBH+oSdG2
	bD8glXSxOLZMLivCd+mIrV/fTpnMEGcWMksAgz4R7uRZJlCz+Lu34yKl
X-Gm-Gg: AYBFou0Y0DCCk3YitpNXEQ0n1980pMxSwbJvLhHERrGgmqmceURsWJhuhlOW2UKx6A6
	0GHZhKbkwqFim9CmVLGFVxw1JhtsB3b1zFPDnWmFoqbP+5LXkZO9QeOzOfR8CSReRU9LsZ9WDea
	TbsI43aw9IzfJSOj9116r12gtrnaP9DKreNscf9lMPAIdxJ10rMVGYgD7crRoHsZsInbPeHRpVc
	TwoOkMHNu6zDEklG72A4F1XeKqWfiQ1tE895T7IzTUSNKafTtaHA+3Qp9zAvRqfe4WwnqoVJ0oo
	K2cXQFjSUnYYl8aqQsXQfmevUZRyTcOKnzbLS0ozrBynJhwZmRQ/t4njrh+zCgXrdkyVqyQbAOv
	B5BsH6EBW7ei5RHCqTNjlkYRfGwN+Kl/pFAsQy4+5y8scVNOcTjmGguImTcR7I1t6rqub9hleJ1
	4g8+1eUEO54gBIuyOi+lPTMTspgu8GIjc78uKjwefDc3q66Svrwp1ZUS1FHkEfXjk9AJ8A
X-Received: by 2002:a17:90b:1652:b0:39d:ee20:1e3b with SMTP id 98e67ed59e1d1-3a07e55b403mr1202832a91.23.1790130838813;
        Tue, 22 Sep 2026 19:33:58 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a07ddae723sm2076064a91.5.2026.09.22.19.33.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 19:33:58 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rhys Tumelty <rhys@tumelty.co.uk>,
	Inochi Amaoto <inochiama@gmail.com>
Cc: linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH v3 0/5] phy: core: Add phy bulk helpers support
Date: Wed, 23 Sep 2026 10:32:58 +0800
Message-ID: <20260923023304.78428-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_193359_753971_0F7240C5 
X-CRM114-Status: GOOD (  13.20  )
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

The example consumer driver is at [2], with the following function used:
- phy_bulk_init
- phy_bulk_exit
- phy_bulk_power_on
- phy_bulk_power_off
- devm_of_phy_bulk_get_all
The devm_phy_bulk_get_all() is also added as a simple wrapper of
devm_of_phy_bulk_get_all().

Note: The patch still uses -EOPNOTSUPP for dummy blob. Instead, I send
a new patch [3] for fixing the left function.

[1] https://lore.kernel.org/linux-pci/ak9KzNFF26B0Kttz@ashevche-desk.local/
[2] https://lore.kernel.org/linux-pci/20260923015016.64069-1-inochiama@gmail.com/
[3] https://lore.kernel.org/linux-phy/20260922024724.191412-1-inochiama@gmail.com/

Changed from v2:
patch 1:
1. Add Andy's tag
2. Update comment for phy_add_device_link
patch 2:
1. Add Andy's tag
2. Update comment for changed function
patch 3:
1. Remove all unused function and make the dependency as static things.
2. Update comments for struct phy_bulk_data and left functions
patch 4:
1. Remove all unused function and make the dependency as static things.
patch 5:
1. Add phy document for these newly added apis.

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

Inochi Amaoto (5):
  phy: core: Add common helper to add phy phandle device link
  phy: core: Add common helper for get phy phandle by index
  phy: core: Add phy bulk data helper functions
  phy: core: Add managed phy bulk data helper functions
  doc: phy: Document some bulk helper functions

 Documentation/driver-api/phy/phy.rst |  29 ++
 drivers/phy/phy-core.c               | 416 ++++++++++++++++++++++++---
 include/linux/phy/phy.h              |  74 +++++
 3 files changed, 483 insertions(+), 36 deletions(-)

--
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

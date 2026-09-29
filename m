Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D05ADCA5FA1
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 08:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j1ScY60FOuUvF1gj/WGXS7mPcMsA2kMbYsJywacMLqw=; b=gEbNXtmko1u6Ie
	M/SNqo/f8lP9/zz0itW5rF78zKAWP09/TFPKaK4lh4UUFOqRMqin2PuisAeO9CfU+QieMpuhip5G3
	e5Y4ExIyQDIcNDjh6l1YIChTYeMyNZ+6ItY65XlTeHltatBzxVO9gA3HtyYePXCxPyknExu3VV6pX
	gndpHy5kdB9LDClxVjPyRK+zNydaU/Hn3eERuT5Lcji8Vu3VC8zXmHpsZptswodvmdIUHTX1aOxvg
	WscZq3ROZ5glhgoA5CAx0KqYPrXBhL0wWtp/2PiQuijcEo5tpa5SrHlz9LgQRHALJgsjo4TwmUDuX
	Gip1knwTb7h0CyQ7YzOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTZx-00000002sJt-2X3Z;
	Tue, 29 Sep 2026 08:52:49 +0000
Received: from mail-pz2-x0f.google.com ([2607:f8b0:4864:3b::f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTZs-00000002sHt-0Ylb
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 08:52:48 +0000
Received: by mail-pz2-x0f.google.com with SMTP id 41be03b00d2f7-cc433d52421so1377112a12.3
        for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 01:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790671963; x=1791276763; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=is58lsw0xIPDdPgl/+Xhc4F0CzIMwg5OpJH1w2B2adU=;
        b=aMcNMMC9Sirm9EZ4kvsNLlmTGEhpGL/mY0m8tDEQI4XKYrvbGtNRf4ibzakcUcw1l2
         qHVMqRMdwE3V33jkkl0aDXUnTPHmJ1AJlSuvXmQrgjWbAcz+ZGifWQrRTBEZ0VvETwZB
         +E3bhjdzXhppmHTBzNgTTNEQOc3Ty6wIprzrgEwhN4wxwX1k9HRXHKcOQkazyJQ4e/Pf
         /E0Q4mKSotn/o9lPTFkFbf0KOSTlPU7SQRIjFqMD+9eKn9pP9+rtpjX0LJRuHeCph1L1
         ZD2onP4ETYP6rJJ7K1MtUKyLZwZqVaZcOorGdAVA26ETcX3aNR6gDSGF02QoraR8Ydg5
         ru5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790671963; x=1791276763;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=is58lsw0xIPDdPgl/+Xhc4F0CzIMwg5OpJH1w2B2adU=;
        b=nB/LXH+4+8FuhX+ClTC2J3LRuBBLUKS/khwAcxEB29sV/xypay14XmLjYjCPYg+82+
         7cST8ImcywnN879GmriojiBTGLcsBDeVF+lFMgYXyZCOXk184zM8lb7b6Gp5m3iHhJBE
         2A6wRmjmBH5337viM9INfJ/mSC4NhkyBIiRit5nt9VieY7QxffSIn1P41HV6XGOuZmKS
         3bXWDPCAUJIrdjQsETTyA6S8gKIa0yWhZhI9cnNyEmqVBd8poThIPswcK7JrzP3YWrG4
         IIBVNxEalNyhezEiLGx2dbrvN7XEyIQwpyH6RoS1u6/NiPiwR0oY9HplKPsTUgUntUPo
         x6pA==
X-Forwarded-Encrypted: i=1; AKwUvBw9hVKd9Mr0Xs57qML72+8/rCSTLJ+QbywC6lZQDkRWqF5r7mGzm7zuekiJZ0fJCBwo2cx64WAhaXU=@lists.infradead.org
X-Gm-Message-State: AFq9FYL+/OiM/Dn+NXiJTh6Wys/snrzueTobFJuvZ7o64cPBFTzPOntJ
	b/9DF2fRBT2P9XZOtw9cajV3b0lzlNMn1vtANObPny3ZHpX6ColAlxMz
X-Gm-Gg: AYBFou2AHxUiXapwMczpj2mQo96+83c3sX2ElW09YBAuazK/bfmxDaAzsruG4BQ1l+C
	iQT0O7E3ThYTQ3sPU7HiCRZzm90NiVqdo2wky0NPlwGxcd9jPmz4FbGO5qeaE3HIXNwHqJDT8l7
	IhqCP6CQ45TSG9gbbz1VzQQgXz51BJpk/285CkSx0p1vRN/0QAMSyjXYK4mPwDG/72x/fboVYDU
	Wld3pzPTmpVepaqjmmw5Dm+bealZka/0cXJDi9ejSsGis7wVmhYt2/pvhnjsrHI7iCghD2BSVqX
	v6KUv+zw64K7t7GeWlfoI1OrD8+jr/iOPdTvkxwZq4gttG6IY7EoLCqpwgsX37CmD6ojcXiflof
	jF3/qbYaY9lT5P6ikmB95FFT3Uax1yXDxN/tRITrYGjVN83fYvYIrgg2XO3DpUZI3wmgn+O/5c7
	orh6eQwW6qTr5ZlITDk5rrkpOCF/Pyz7jVLIeYxGDJjnX1g3y2qK6ZaCg9vd/EJ0Rgi8kr
X-Received: by 2002:a17:90b:2785:b0:39e:6795:f7da with SMTP id 98e67ed59e1d1-3a09875ee61mr13273827a91.19.1790671963192;
        Tue, 29 Sep 2026 01:52:43 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a498179081sm4288623a91.14.2026.09.29.01.52.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2026 01:52:42 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Jonathan Corbet <corbet@lwn.net>,
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
Subject: [PATCH v4 0/5] phy: core: Add phy bulk helpers support
Date: Tue, 29 Sep 2026 16:52:30 +0800
Message-ID: <20260929085235.469515-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_015244_443714_F7C2F326 
X-CRM114-Status: GOOD (  13.38  )
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
[2] https://lore.kernel.org/linux-pci/20260929083755.458238-1-inochiama@gmail.com/
[3] https://lore.kernel.org/linux-phy/20260929084739.467082-1-inochiama@gmail.com/

Changed from v3:
- https://lore.kernel.org/linux-phy/20260923023304.78428-1-inochiama@gmail.com/
patch 5:
1. Fix spell error in the document.

Changed from v2:
- https://lore.kernel.org/linux-phy/20260904083709.425893-1-inochiama@gmail.com/
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

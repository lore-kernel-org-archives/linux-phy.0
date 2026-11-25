Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6ADD606A334
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 04:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=btORKZm3;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=mHuXJL5V
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=vHIm/DH7fIWR9XjaEE0PwU/lCH2npitCqsdv2zboIO8=; b=btORKZm3lWu+loJn3gzzsxKOKB
	0WX96Cz33TcgubpWA0xpYc/W42Th6jp81CReDSYHeXfUDz8irLSliMIiuQMGoZ2UR38h6JxuJ4/Pe
	rDt4XJHBnbseuoJZGoWVj04edGpmRsbmTEHKA9qPvMB2BD8qvRuPGLU559PAvP62I/IXDbgNF2uwE
	OBY6Q3BjIPEh+2aOh5CsnYLvsP+ZUYS+d6zIykP68FGcmCDpr/URh1c7dnliNj1FZiflJtevmsvxK
	uIbLxFCXR0vVZfth8DdneXLI7TL1TYMH9ZFmGFIG8gGTx0bvX/OofAfQkzUHUg5mjIsPKTJH0a3na
	mw3VW/RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW4kz-00000008Ohl-10Tn;
	Wed, 25 Nov 2026 04:37:21 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW4kv-00000008Ofy-20Y4
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 04:37:20 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-8a052aff9e9so3883308b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:37:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795581436; x=1796186236; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=6DVyoXA6Tib/v85orEHsRlE+EW8lKD49gIz3qCv+SNo=;
        b=mHuXJL5VLEMgSXZY305U/QOOQJFCukS2MHlxkx0UDDghGE9Zzypwwr6mbnUTUVn4Gb
         Sd0JpxldaLAh1TCWSSJQFeiKuEbUcCCIRyEjfQNWHr2UyihnIBV8jDlvvViMNy+/S1u6
         kGmiOPJtyn+c5qKDAw9az/9EGS5/UGCbpJesFPSs3t2tdGsCIl7O+qE0Gn+KrJXUTPZR
         yyCrVtcFu/y3ANEGISt1oeRbPxSTBPv1uSfcCdvQ6ov1kAFJQwJuTf6OVr7QdCY0mK5A
         i2IUjJurvK4aa5GwJmYLMSQ9TmNTXSl/xXherxnne0eayGsHlWHezL7K02An2jeQP2mc
         SZ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795581436; x=1796186236;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6DVyoXA6Tib/v85orEHsRlE+EW8lKD49gIz3qCv+SNo=;
        b=BOooT1/tvs8nQ691I3fyA9d629GH8F2cdiVPk8W5KHqKEt6AHBThgyynNjBdtWeAtT
         jjwLt7KVDoJ4dxhVNvvMnKyKtfETNsZHE6xk4iV4uF1LTp5dZ18J7/xYC+O7jrE3tjSK
         eYfyImk8EeY6etHHBdiFalT9ALb+EWbqME60Bofc+GhspD46PDdGNZmmFHWLvxjC6PyS
         wTn4y2gnOQZhBbBGpT6DW5w7o7jFDjAxAMlYhblnctLltKpiNOqmJtpgiYMUw42eKeVl
         nTnpA7F1MIlKCJzWMcFNsRgxSDSuta4tghuVJYxvwlSAtr1rP6FnuKoTanRhmE4AoA9U
         SXLg==
X-Forwarded-Encrypted: i=1; AL+hErFAiclAbQtTrnOEIDwhnT570+KeHGvziyH3GxPSgMvDy1tfSVhdQp8Hkfm/r97KoKhcH/6Loq8dWLw=@lists.infradead.org
X-Gm-Message-State: APuU4Z89NgjMluT7Im5O1WpjMgj3+x10yixCL6D4ZIEkzn/brxprMhOV
	vlU4Ix5gY2l86BNhZTR61DBvPzfp8YpMouB+fs65P3UKgTaJlFJqav9q
X-Gm-Gg: AZFdTZe/zFWEvY2sEUkgAwY3KVqs2slMoYFqpc5zR5HfOiPOhU1AEaHS64EIki9qQt9
	nZ20ByFGf4t4marMquVTXA6nAfaEkuPzhOuAmYWwQDIKREks7UwKWnAX/2vTxqK9yqeOroUqDwk
	zvszlLnKw1zv+Ak3Et4KP6Wr/rEHVy3NenPKOAWMTrdO8ER+kRujOLjoB/rIfgMDJ7HukMHb+WE
	V68yJkOH5aUbVEQKGCpuVE2waVF4voRtqLZD4mCKEjqUc9BMF6zO1t08j6ko0Xpx3Cvwh7TthQl
	KG8oA8uTpvQvNOwV+KdQ56WrWtFvRQAap/MbAFUPKLu+ui5yZYvfHX/yg1ac4d5m+ZXMtjQMFJf
	JNcMZi56chaGPtKIgF53ZFMZmEaXgQViGV3HP9xyiBJFWT+liVFwXumGucCpgP21yjUL7Hfp5um
	l01GPOTEk9zDp3CQ0cSHtMTvLc2uoVqYyR5F9lZlIxo4szSvgg77DTyYtW3IVksoOxRJLKWDWe0
	wVcSUdVHJ1O8nirSDIN5bd3A1AoR/mEyYhIPzXuyP2mP9O+zdn+yLRBWI6L6hZrGEwq8D8PQSBh
	Srt+xeEygROUVHFFcxKkQPiJjvwO
X-Received: by 2002:a05:6a00:3998:b0:8a0:5da1:2264 with SMTP id d2e1a72fcca58-8c87d2289f9mr13508087b3a.47.1795581436417;
        Tue, 24 Nov 2026 20:37:16 -0800 (PST)
Received: from localhost ([2001:19f0:8000:4ce8:5400:7ff:fe0e:e6b2])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c87343f83dsm8178515b3a.39.2026.11.24.20.37.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 20:37:16 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Aksh Garg <a-garg7@ti.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Inochi Amaoto <inochiama@gmail.com>,
	Rhys Tumelty <rhys@tumelty.co.uk>,
	Manikandan K Pillai <mpillai@cadence.com>,
	"vladimir.oltean@nxp.com" <vladimir.oltean@nxp.com>,
	Qiang Yu <qiang.yu@oss.qualcomm.com>,
	Hans Zhang <18255117159@163.com>,
	Yao Zi <me@ziyao.cc>
Cc: linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-ide@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH v5 0/8] phy: core: Add phy bulk helpers support
Date: Wed, 25 Nov 2026 12:36:31 +0800
Message-ID: <20261125043639.249525-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.56.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_203717_542348_F0710962 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

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

This patch set also includes another two porting for cadence PCIe driver,
and the the IMX SATA driver, as I have the document of these two device
so I can verify the PHY timing requirement.

Note:
1. The patch still uses -EOPNOTSUPP for dummy blob. Instead, I send
   a new patch [3] for fixing the left function.
2. libahci_platform.c is not ported, as its getter require additional
   check on the DT so it can no be handled by a simple bulk get.

[1] https://lore.kernel.org/linux-pci/ak9KzNFF26B0Kttz@ashevche-desk.local/
[2] https://lore.kernel.org/linux-pci/20261125041523.242588-1-inochiama@gmail.com/
[3] https://lore.kernel.org/linux-phy/20260929084739.467082-1-inochiama@gmail.com/

Changed from v4:
- https://lore.kernel.org/linux-phy/20260923023304.78428-1-inochiama@gmail.com/
1. rebased to v7.4-rc1
2. Apply Andy's tag to patch 1, 2.
patch 3:
1. Add this patch as Andy's request for simpler bulk api handling.
patch 4:
1. Add reversed recovery operation in phy bulk operator APIs like the
   reset subsystem.
2. Use int instead unsigned int to simplifiy the error check.
3. Fix wrong error handling in phy_bulk_get()
4. Fix document of the existed bulk API.
patch 5:
1. Remove unnecessary num_phys and device node check in the bulk getter
   API. Now it expects user will give a valid input.
2. Add devm_phy_bulk_get() and related helper function
3. Add devm_phy_bulk_put_all() for future porting
4. Make all dummy handler follows the same semantics in other subsystem.
patch 6:
1. Add missing doc of the all function
patch 7,8:
1. Add these two patches as an example for phy bulk API.

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

Inochi Amaoto (8):
  phy: core: Add common helper to add phy phandle device link
  phy: core: Add common helper for get phy phandle by index
  phy: core: Make phy_put() ignore NULL and error pointers
  phy: core: Add phy bulk data helper functions
  phy: core: Add managed phy bulk data helper functions
  doc: phy: Document some bulk helper functions
  PCI: cadence: Use phy bulk data api to simplifiy the logic
  ata: ahci_imx: Use bulk PHY APIs for calibration PHYs

 Documentation/driver-api/phy/phy.rst          |  40 ++
 drivers/ata/ahci_imx.c                        |  57 +-
 drivers/pci/controller/cadence/pcie-cadence.c |  62 +-
 drivers/pci/controller/cadence/pcie-cadence.h |   2 +-
 drivers/phy/phy-core.c                        | 546 ++++++++++++++++--
 include/linux/phy/phy.h                       |  69 +++
 6 files changed, 648 insertions(+), 128 deletions(-)

--
2.56.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

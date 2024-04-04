Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AD61CD1284
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 12:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bqXkUuP9VdCDfMrURaoI8a9RPEtQZol8XFGF9RxiEkA=; b=pGSb4S3JysgrD3
	fn7vVgFwyw1bnIvwtoquI5V7XLsztK1aQsyqmw4F+0jq78LDr1i/tfY+th+8twDXiLTXHgaixs0Jd
	rxT5RzpYiZNrE92eUvBJOLjEVWPpPpWFeuSfCRk1QQl0juSXG9TPXiMIAGg+2TmGIedG8F10uuH/q
	XQ3sVTz5KMg3rBDQeVm1IpKjrtDxCuhx1E9iGOfqAcmJjk3g3LCPgjipxhP5sCWlhUIa3gpWaAxrb
	IgghIc3kSRIZvWIMh47c0CgzjruEVNN4Soh/XEDEL5vDj4XOaeYmF0cXqTY8YomL3H2NlVFUQfExF
	PKcN1JjsgseSUxISrwuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMAb-00000002aZl-0mAx;
	Thu, 04 Apr 2024 12:26:17 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMAW-00000002aXW-48KS
	for linux-phy@lists.infradead.org;
	Thu, 04 Apr 2024 12:26:15 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4162c11acf7so1642555e9.2
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 05:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233570; x=1712838370; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jJYM6tMjtFChrulSjg0o7kKxgUYy0TmdSYB4AKPdhEk=;
        b=iLeC9LmLAjbB9YiKGKUMo4HzEgYvlDo+vtdItyxgBMDtXA3BEzCvpwl/1S6IZHS845
         PCjAnGpck0rDFHPc4tWd13V9lrN+qj+keiA7FLlIZwDlRpRCmHPJlkrhY9OgeHLMdKEf
         /XGKw7g5fY9cIaP/f/X1ayPexrHHPDNuePm9n7QqNq+HxglO20qkQuatnkURzN4J8Ed7
         U7PB1fYrcCUiLAdXDkTBADOk7nIjpXRFDBB3G4mK0N8cW1EE/G1C/oPB86TNg2nzvJk+
         izKE3k7f4vzglhzhgQVN4ATbRreQL3U973sJNHld+CIXrarDreLjddz/Ti4uevndlGoW
         YvPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233570; x=1712838370;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jJYM6tMjtFChrulSjg0o7kKxgUYy0TmdSYB4AKPdhEk=;
        b=vck54m+tJpYz7Jy7XUqWcjnNW4mVS3dmDp9F94LTXt+SLDqCiSZw2b5U9AWsRgStLY
         qbdgi4QZChw7M4JSFJ5hBS96JXWP4k/hrO1JXzk0gHwIEjCnz38/7Q+x56G1Im7vLSrf
         9qgjujLCqtmemwXMnKuDjtKK2ELAzamJQan/xOVF7KcaHm7LVf3+aSoSJQyLRIaJ44vr
         DchiNGvgZ0ah3vI8mwxWhUtZ09v5wz7ELk4msOp69bdMbUMDhPh+0p2Qzg4GsJQ51rer
         C7eacArGMd4RUeIui0FLkovC7awu+N3Py3FU6dR6tXCspSob1hU6uacDGzQ6wLxJsQFg
         tanQ==
X-Forwarded-Encrypted: i=1; AJvYcCXgAUBHcV2jVvg9gYsx+aDs3jkqV2/XYAX6SAX/Zih7O5+pfx1YOLyr6VPH1nUANgq9RgWLDi4TX5z6Ldm7Q02RIXxJOVBDLNgPbc5vjQ==
X-Gm-Message-State: AOJu0YwCPRdNhycOcTxXdRtFtikomMHE0dtH7eLKKn8JhhuK53Kr7kGd
	rnljnpXdhFqWB2vVvD8/MSSijOcA1i4ooifPnQX4uN/Yg83jYEIp09z+mVTAedg=
X-Google-Smtp-Source: AGHT+IGhdc0j00kl/SimlNVvg9pgoaeQSTThX/VudHinZM2oZtNar8Jm+FLBUrq74KmHRHDDb/tr/A==
X-Received: by 2002:a05:600c:54ef:b0:415:533b:1071 with SMTP id jb15-20020a05600c54ef00b00415533b1071mr2316215wmb.19.1712233569988;
        Thu, 04 Apr 2024 05:26:09 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:26:08 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	chanho61.park@samsung.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 00/17] HSI2, UFS & UFS phy support for Tensor GS101
Date: Thu,  4 Apr 2024 13:25:42 +0100
Message-ID: <20240404122559.898930-1-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_052613_055681_FE418476 
X-CRM114-Status: GOOD (  16.81  )
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

Hi folks,

This series adds support for the High Speed Interface (HSI) 2 clock
management unit, UFS controller and UFS phy calibration/tuning for GS101.

With this series applied, UFS is now functional! The SKhynix HN8T05BZGKX015
can be enumerated, partitions mounted etc. This then allows us to move away
from the initramfs rootfs we have been using for development so far.

The intention is this series will be merged via Krzysztofs Samsung Exynos
tree(s). This series is rebased on next-20240404.

The series is broadly split into the following parts:
1) dt-bindings documentation updates
2) gs101 device tree updates
3) Prepatory patches for samsung-ufs driver
4) GS101 ufs-phy support
5) Prepatory patches for ufs-exynos driver
6) GS101 ufs-exynos support

Question
========

Currently the link comes up in Gear 3 due to ufshcd_init_host_params()
host_params initialisation. If I update that to use UFS_HS_G4 for
negotiation then the link come up in Gear 4. I propose (in a future patch)
to use VER register offset 0x8 to determine whether to set G4 capability
or not (if major version is >= 3).

The bitfield of VER register in gs101 docs is

RSVD [31:16] Reserved
MJR [15:8] Major version number
MNR [7:4] Minor version number
VS [3:0] Version Suffix

Can anyone confirm if other Exynos platforms supported by this driver have
the same register, and if it conforms to the bitfield described above?

I'm also open to suggestions on how else to detect and set G4 if others
have a better idea. It looks like MTK and QCOM drivers both use a version
field, hence the proposal above.

fyi I'm out of office until Monday 12th April, so I will deal with any
review feedback upon my return :-)

For anyone wishing to try out the upstream kernel on their Pixel 6 device
you can find the README on how to build / flash the kernel here
https://git.codelinaro.org/linaro/googlelt/pixelscripts

kind regards,

Peter

Peter Griffin (17):
  dt-bindings: clock: google,gs101-clock:  add HSI2 clock management
    unit
  dt-bindings: soc: google: exynos-sysreg: add dedicated hsi2 sysreg
    compatible
  dt-bindings: ufs: exynos-ufs: Add gs101 compatible
  dt-bindings: phy: samsung,ufs-phy: Add dedicated gs101-ufs-phy
    compatible
  arm64: dts: exynos: gs101: enable cmu-hsi2 clock controller
  arm64: dts: exynos: gs101: Add the hsi2 sysreg node
  arm64: dts: exynos: gs101: Add ufs, ufs-phy and ufs regulator dt nodes
  clk: samsung: gs101: add support for cmu_hsi2
  phy: samsung-ufs: use exynos_get_pmu_regmap_by_phandle() to obtain PMU
    regmap
  phy: samsung-ufs: ufs: Add SoC callbacks for calibration and clk data
    recovery
  phy: samsung-ufs: ufs: Add support for gs101 UFS phy tuning
  scsi: ufs: host: ufs-exynos: Add EXYNOS_UFS_OPT_UFSPR_SECURE option
  scsi: ufs: host: ufs-exynos: add EXYNOS_UFS_OPT_TIMER_TICK_SELECT
    option
  scsi: ufs: host: ufs-exynos: allow max frequencies up to 267Mhz
  scsi: ufs: host: ufs-exynos: add some pa_dbg_ register offsets into
    drvdata
  scsi: ufs: host: ufs-exynos: Add support for Tensor gs101 SoC
  MAINTAINERS: Add phy-gs101-ufs file to Tensor GS101.

 .../bindings/clock/google,gs101-clock.yaml    |  30 +-
 .../bindings/phy/samsung,ufs-phy.yaml         |   1 +
 .../soc/samsung/samsung,exynos-sysreg.yaml    |   2 +
 .../bindings/ufs/samsung,exynos-ufs.yaml      |  51 +-
 MAINTAINERS                                   |   1 +
 .../boot/dts/exynos/google/gs101-oriole.dts   |  17 +
 arch/arm64/boot/dts/exynos/google/gs101.dtsi  |  53 ++
 drivers/clk/samsung/clk-gs101.c               | 558 ++++++++++++++++++
 drivers/phy/samsung/Makefile                  |   1 +
 drivers/phy/samsung/phy-exynos7-ufs.c         |   1 +
 drivers/phy/samsung/phy-exynosautov9-ufs.c    |   1 +
 drivers/phy/samsung/phy-fsd-ufs.c             |   1 +
 drivers/phy/samsung/phy-gs101-ufs.c           | 182 ++++++
 drivers/phy/samsung/phy-samsung-ufs.c         |  21 +-
 drivers/phy/samsung/phy-samsung-ufs.h         |   6 +
 drivers/ufs/host/ufs-exynos.c                 | 197 ++++++-
 drivers/ufs/host/ufs-exynos.h                 |  24 +-
 include/dt-bindings/clock/google,gs101.h      |  63 ++
 18 files changed, 1179 insertions(+), 31 deletions(-)
 create mode 100644 drivers/phy/samsung/phy-gs101-ufs.c

-- 
2.44.0.478.gd926399ef9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

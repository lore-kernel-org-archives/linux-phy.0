Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB431CD6E6D
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 16:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BvF5DKak4DyGWL94dqnNiOlke2FdF9lCqLb2fVF4at0=; b=J1WTzCoz7GvLlP
	QWSq4xP4pNS3ypW67i7YdGwqZ1oQCtw8totdg5hfzUaY5H7K0HZVqhI/pYGah349n+4kSZI4+DW/J
	vepGoAO518sFClOqOd7b5nOGRUCU2R5PdwBLq7A3IEa0gv8870TGNXW3+SySOk7zWEqn5xQE/eCeQ
	akXy/EaxSZb5Dm6RRUePAZq6aMEM0LjPnwcso/sNzwPRWfuGEtLzL8e70wWUqtPrvo9jmzOtXw8uY
	vtpNR9/LFT6Cv87UxrIphltdnXgmsMhj8eYBKmbny/Ng6anCb3u1sEz/2OvJZ/5ogLWdp/vNCs8yy
	G6zw8tmP/VSwrBkI+UmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVArY-0000000H3tU-2cip;
	Thu, 04 Jun 2026 16:24:08 +0000
Received: from outbound1.mail.transip.nl ([2a01:7c8:7c8::72])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVArV-0000000H3sA-0NLl
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 16:24:07 +0000
Received: from submission5.mail.transip.nl (unknown [10.103.8.156])
	by outbound1.mail.transip.nl (Postfix) with ESMTP id 4gWVHs2kffzRhrs;
	Thu,  4 Jun 2026 18:23:53 +0200 (CEST)
Received: from herrie-desktop.. (180-93-184-31.ftth.glasoperator.nl [31.184.93.180])
	by submission5.mail.transip.nl (Postfix) with ESMTPA id 4gWVHr5k7nz2pRDjq;
	Thu,  4 Jun 2026 18:23:52 +0200 (CEST)
From: Herman van Hazendonk <github.com@herrie.org>
To: vkoul@kernel.org
Cc: neil.armstrong@linaro.org,
	andersson@kernel.org,
	lumag@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	p.zabel@pengutronix.de,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Herman van Hazendonk <github.com@herrie.org>
Subject: [PATCH v2 0/1] phy: qcom: usb-hs: program MSM8x60 vendor ULPI registers on power-on
Date: Thu,  4 Jun 2026 18:23:51 +0200
Message-ID: <20260604162352.569269-1-github.com@herrie.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Scanned-By: ClueGetter at submission5.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1780590233; h=from:subject:to:cc:date:
 mime-version; bh=eWosNrIPffNzXLxJBdRQpwyNybJCVtLFhI//Otd5F6M=;
 b=TRx3Isv3qAJjZTdyGOLjEwnBzecALBA/VD8CJgiqPVbEGk/OwnIgOH0ANlZ33IoEVeV/vH
 bAe15NFaGJ00JkPnNQHboEyWiCq3ZXJD51n3iQQtImGK9kQPySnYSG9Sk8YKM6Tj2vn3/K
 zivwLgnrDNbPA28IJT1DyZjVNkONBH8GIo2SdBEdlOADVkR4zr11CB++esYplJGVDuZBIX
 Z6aHhApkRbxFG21AO1mzDhxJL6+79wfqNlr1kPQjqyrOArWb/nyHfcFC2xQXKaPK/5qXFP
 TYqtyeo1rS40AtaeEh6P9xSFF0X/DsySC9zKtCpZf+OInusE2GDhqyfDlVJDQQ==
X-Report-Abuse-To: abuse@transip.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_092405_935484_FDDE845B 
X-CRM114-Status: UNSURE (   8.90  )
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

v2:
 - Drop the new "qcom,vendor-init-seq" DT property entirely, per
   Dmitry's review.  The values being passed in were
   platform-specific (identical across every MSM8x60 SoC) plus one
   board-specific value, not per-device.  Move all of it into the
   driver.
 - Drop the corresponding dt-bindings patch (the binding gains
   nothing in v2).
 - Hardcode the values in the driver behind a runtime flag that
   only matches "qcom,usb-hs-phy-msm8660":
     * reg 0x32 [5:4] = 11b  - pre-emphasis 20% (platform-wide
       across every MSM8x60 reference board / HP TouchPad / HTC)
     * reg 0x36 bits 1,2 set - CDR auto-reset + SE1 gating
       disabled (also platform-wide)
     * reg 0x32 [3:0]   = 5  - HS driver slope.  This is the only
       board-specific value; HP TouchPad webOS kernel uses 5, HTC
       MSM8660 ports historically used 1.  Since the TouchPad is
       the only in-tree MSM8x60 consumer, the value is hardcoded
       with a comment noting that a per-compatible override will
       be needed when a second board lands.

 - Comment in the driver also calls out that HTC vendor kernels
   additionally write 0x0C to reg 0x31.  The HP TouchPad webOS
   kernel never touched that register and USB is stable without
   it, so those bits are omitted until documentation surfaces.

 - The companion DTS patch flipping the TouchPad PHY compatible
   from "qcom,usb-hs-phy-apq8064" (a different SoC) to
   "qcom,usb-hs-phy-msm8660" will be sent separately to the ARM
   DTS tree as that's where it belongs.

On-device validation (HP TouchPad / APQ8060):
  - Booted with v2 + the DTS compatible fix.  PHY driver bound,
    msm_hsusb HS link came up at high-speed, BC 1.2 charger
    detection passed, UDC configured cleanly.
  - 200 MB scp device->host + 200 MB scp host->device, with a
    concurrent ping flood running in parallel:
      - both transfers 19.1-19.3 s   (~10.5 MB/s, the CPU+stack
        ceiling for USB-net on a 1.5 GHz Scorpion)
      - md5 round-trip identical both ways (zero corruption in
        ~400 MB of HS traffic)
      - ping flood: 60/60 received, 0% loss
      - usb0 counters: 0 errors, 0 dropped, 0 carrier losses,
        0 collisions across 151k packets / 220 MB
      - dmesg line count unchanged (no link resets, no PHY/USB
        warnings emitted during stress)

The on-device test doesn't measure the analog effect of the
pre-emphasis / driver slope settings (that needs an oscilloscope
on D+/D-), but it does confirm the writes don't regress an
already-stable HS link.

Herman van Hazendonk (1):
  phy: qcom: usb-hs: program MSM8x60 vendor ULPI registers on power-on

 drivers/phy/qualcomm/phy-qcom-usb-hs.c | 79 ++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)


base-commit: 944125b4c454b58d2fe6e35f1087a932b2050dff
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

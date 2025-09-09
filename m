Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE61FCA0FED
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 18:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XyHSXawiiCFefrSX2D6x8pz23F7pDT/zj8e+b9oB/l8=; b=Ir5V01DJe2IH6s
	fu2lunBAnh9/FgVeD85BitKQmiFx9RDmGIr3XXLO+QAu/a3CmuOOtO2WHXPtucroHjCCRugeFucda
	KCjcMBMe0XFyfjEUoOaugV316xMyZ/RL28JYM+9nUgFDZbE6b3atSA2e1pwi5NPqPp48zanX+U2uZ
	d5JTdVNaK1Dog/iDHP/xLo1xeKLFT9colOVVVojD4lG8Jekr4VKh5/Hyk73G7NQhRGbNDil+MSdff
	ivyoNh2HzB1jCuZ2nXwXkVPs9+vGao0JDILhmUVTT7KqrMsaNnlnqguXuXxklC3GfTzCauNi+cXST
	VHEDA/0HagIr8XMcJc+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw2lF-00000009JhY-22rT;
	Tue, 09 Sep 2025 18:08:09 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw2lD-00000009Jgo-3qzv
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 18:08:09 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-45b9a856dc2so37746535e9.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 11:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757441286; x=1758046086; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pzISf5D7Sm/re0S/MlFezCf6LIeMNaY1mdeO+lXW9Lw=;
        b=D+MXlt3rBcC6v3eiv/obAK6/j8vFQDqqhJ4B5YA0yiLVJSRKQoZyKYGPZezmndVnbB
         j1RKtTaS2jRnmadyXb+jGtCOmxcMAq1Ks68sKuo3++zRMhMFJGyqs8xIdxXtM26pGLhT
         edbFrjC8zjIrXW0+z/2VpACmF31VK+ow3K36q/OmB1b7UPkc4DVf79EJa91agg5UuBz/
         4Fa+63ks9a+NqTu7q7ZyDkPcAE8U5tsutiNVpoaDH6khMGcQURGRgy2+/YoVbTY2Igtj
         v0EA38XDQ9uyncyC7k1gGvfld02rbl4PnlKTTlpKvj8t1YxFbFEk6ZqVCmwnZrNPCv4l
         sAvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757441286; x=1758046086;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pzISf5D7Sm/re0S/MlFezCf6LIeMNaY1mdeO+lXW9Lw=;
        b=uEaWHPvBEkhXbiWrZfk2IVDBbO7D8fJV6Qg0pGUAHC+iVTHn6IBjflmXDxh+Z94pEE
         wrFRgN+YoelKre0ud+QjdbiaIVB92UjrE0yaZQeAN8KOJ4EuTxCYLtuNzZL4r7NdNGXy
         UVNBRYldqZ7qz5DVLzX9vzIoJTOIjAEFxYSvIwhIG7ntS67pBL8ILC0e71QD45tVou8A
         NVvtyrZS6vJu/LKDjcQrx0tuh4fH73lgAjazZgofEFgM900O1+10Ygefy3j9JXbNm3eG
         ARGntuRvvFCUKIVhPm8vBPf49SwM5gtoFfMTshAUyFEQ3U62RTfhr3t3Dos8SLs3XEX9
         EZrg==
X-Forwarded-Encrypted: i=1; AJvYcCXDD1MgfQCV8V/NEQRU30rUVT6pFNp4fVUv9ES0NPhyBRvtey282IgYWu14v1VleXdihDGnfs7Z5qc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyiL2SnGKXHRf9Qw0yCy0581hauEDPjkbQtqV5RnPhNaII8dfrh
	KA2omr3MnS6JyQKFHmsoKpdho3iIMdB+PR2FThR6AUds3LIykXsxisvv
X-Gm-Gg: ASbGnctkIclveT7jbuQjcrthLKaJscR4loEjdPb2LHnlY+oP4GYrwdFBovJsnhrnD2g
	o+MCiXKXoC00dTPdX+VmBxySKPO4Vt5IMwgohlUuyMoktSptW/13uGT7yiCXcjLpKVYlXBDw6eX
	ijfIcGjBg7q1c4bXItqJCjQ/L+IgWlrIc6bSlOdYm5IyKudDeHrgp+eS6gy/O0CGBm+iYqm9SKk
	FCUMMHLO/hDqo4fNbjdMDr999QO/XfZkY9UBsxUtpSnx9cOf96uCS1aseYMp+L+gSbVrhViWQjt
	74Ag1BB6hiiNyTi+01IPoMI+K3Spw9ogjejLxGN11lE8lIc6O6HCuZ/PeCH7rMT7ePwa1ZdCb1+
	Sgb4IUDCRkhFmZa196x0mgLyWgdHLz0HQssH9e5p6QE3QrijXfmkXVNgW4jW+F3vSB6o1Vv7am5
	wcZQnCd2TEBPPa
X-Google-Smtp-Source: AGHT+IHU8RVQLjbJmIfVzd4tfEr5Aww1xmlwzaYanHEmYj2UDm4y3gZ47LxspBoB5NASAirXTwqtAA==
X-Received: by 2002:a05:600c:3596:b0:45d:d6fc:2509 with SMTP id 5b1f17b1804b1-45dddeb00bfmr133247045e9.6.1757441285524;
        Tue, 09 Sep 2025 11:08:05 -0700 (PDT)
Received: from biju.lan (host86-139-30-37.range86-139.btcentralplus.com. [86.139.30.37])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45df679a4c9sm4174015e9.3.2025.09.09.11.08.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 11:08:05 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mathias Nyman <mathias.nyman@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v2 00/11] Add RZ/G3E USB3.2 Gen1 Host Controller support
Date: Tue,  9 Sep 2025 19:07:45 +0100
Message-ID: <20250909180803.140939-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_110807_998471_66ED898A 
X-CRM114-Status: GOOD (  11.61  )
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

From: Biju Das <biju.das.jz@bp.renesas.com>

Add RZ/G3E USB3.2 Gen1 Host Controller and PHY support. The USB3HOST
is compliant with the Universal Serial Bus 3.2 Specification Revision 1.0.
 - Supports 1 downstream USB receptacles
     - Number of SSP Gen2 or SS ports: 1
     - Number of HS or FS or LS ports: 1
 - Supports Super Speed Plus Gen2x1 (10 Gbps), Super Speed (5 Gbps),
   High Speed (480 Mbps), Full Speed (12Mbps), and Low Speed (1.5 Mbps).
 - Supports all transfer-types: Control, Bulk, Interrupt, Isochronous, and
   these split-transactions.
 - Supports Power Control and Over Current Detection.

v1->v2:
 * Collected tags.
 * Replaced usb30->usb3_0 for clocks and resets.
 * Replaced magic numbers with macros iphy driver.
 * Added ref to usb-xhci.yaml in USB3 binding patch.
 
 Logs:
 root@smarc-rzg3e:/cip-test-scripts/py# cat /proc/interrupts | grep SLEEP
133:          0          0          0          0 rzv2h-icu   0 Edge      SLEEP
root@smarc-rzg3e:/cip-test-scripts/py# [  128.532806] PM: suspend entry (deep)
[  128.536700] Filesystems sync: 0.000 seconds
[  128.542466] Freezing user space processes
[  128.548296] Freezing user space processes completed (elapsed 0.001 seconds)
[  128.555283] OOM killer disabled.
[  128.558531] Freezing remaining freezable tasks
[  128.564240] Freezing remaining freezable tasks completed (elapsed 0.001 seconds)
[  128.571649] printk: Suspending console(s) (use no_console_suspend to debug)
NOTICE:  BL2: v2.10.5(release):2.10.5/rz_soc_dev-169-g1410189b0
NOTICE:  BL2: Built : 12:53:12, Jul 15 2025
NOTICE:  BL2: SYS_LSI_MODE: 0x13e06
NOTICE:  BL2: SYS_LSI_DEVID: 0x8679447
NOTICE:  BL2: SYS_LSI_PRR: 0x0
NOTICE:  BL2: Booting BL31
[  128.604363] sd 0:0:0:0: [sda] Synchronizing SCSI cache
[  128.670116] renesas-gbeth 15c30000.ethernet end0: Link is Down
[  128.683550] Disabling non-boot CPUs ...
[  128.688394] psci: CPU3 killed (polled 4 ms)
[  128.695415] psci: CPU2 killed (polled 0 ms)
[  128.702070] psci: CPU1 killed (polled 0 ms)
[  128.704897] Enabling non-boot CPUs ...
[  128.705107] Detected VIPT I-cache on CPU1
[  128.705157] GICv3: CPU1: found redistributor 100 region 0:0x0000000014960000
[  128.705195] CPU1: Booted secondary processor 0x0000000100 [0x412fd050]
[  128.706006] CPU1 is up
[  128.706106] Detected VIPT I-cache on CPU2
[  128.706128] GICv3: CPU2: found redistributor 200 region 0:0x0000000014980000
[  128.706149] CPU2: Booted secondary processor 0x0000000200 [0x412fd050]
[  128.706732] CPU2 is up
[  128.706831] Detected VIPT I-cache on CPU3
[  128.706854] GICv3: CPU3: found redistributor 300 region 0:0x00000000149a0000
[  128.706876] CPU3: Booted secondary processor 0x0000000300 [0x412fd050]
[  128.707557] CPU3 is up
[  128.724000] dwmac4: Master AXI performs fixed burst length
[  128.724900] renesas-gbeth 15c30000.ethernet end0: No Safety Features support found
[  128.724920] renesas-gbeth 15c30000.ethernet end0: IEEE 1588-2008 Advanced Timestamp supported
[  128.728436] renesas-gbeth 15c30000.ethernet end0: configuring for phy/rgmii-id link mode
[  128.745766] dwmac4: Master AXI performs fixed burst length
[  128.746653] renesas-gbeth 15c40000.ethernet end1: No Safety Features support found
[  128.746668] renesas-gbeth 15c40000.ethernet end1: IEEE 1588-2008 Advanced Timestamp supported
[  128.750222] renesas-gbeth 15c40000.ethernet end1: configuring for phy/rgmii-id link mode
[  128.797030] usb usb1: root hub lost power or was reset
[  128.797038] usb usb2: root hub lost power or was reset
[  130.956146] usb 2-1: reset SuperSpeed Plus Gen 2x1 USB device number 2 using xhci-renesas-hcd
[  131.143425] OOM killer enabled.
[  131.146563] Restarting tasks: Starting
[  131.151382] Restarting tasks: Done
[  131.154877] random: crng reseeded on system resumption
[  131.160209] PM: suspend exit
[  131.494956] renesas-gbeth 15c30000.ethernet end0: Link is Up - 1Gbps/Full - flow control rx/tx

root@smarc-rzg3e:/cip-test-scripts/py# ./run_pytests.sh tests/test_xhci.py -k test_xhci_005
==================================================================== test session starts ====================================================================
INFO     root:spl2_test_helpers.py:2059 DD performance with bs=32M count=32 is
Write= 383 MB/s
Read= 555 MB/s

INFO     root:spl2_test_helpers.py:2099 fio performance with bs=32m for Sequential and bs=4m for random access are

INFO     root:spl2_test_helpers.py:2104 b'   READ: bw=562MiB/s (590MB/s), 562MiB/s-562MiB/s (590MB/s-590MB/s), io=5024MiB (5268MB), run=8936-8936msec'
INFO     root:spl2_test_helpers.py:2104 b'  WRITE: bw=555MiB/s (582MB/s), 555MiB/s-555MiB/s (582MB/s-582MB/s), io=5024MiB (5268MB), run=9058-9058msec'
INFO     root:spl2_test_helpers.py:2104 b'   READ: bw=373MiB/s (391MB/s), 373MiB/s-373MiB/s (391MB/s-391MB/s), io=5000MiB (5243MB), run=13394-13394msec'
INFO     root:spl2_test_helpers.py:2104 b'  WRITE: bw=387MiB/s (406MB/s), 387MiB/s-387MiB/s (406MB/s-406MB/s), io=5000MiB (5243MB), run=12920-12920msec'

Biju Das (11):
  dt-bindings: clock: renesas,r9a09g047-cpg: Add USB3.0 core clocks
  clk: renesas: r9a09g047: Add USB3.0 clocks/resets
  dt-bindings: phy: renesas: Document Renesas RZ/G3E USB3.0 PHY
  phy: renesas: Add Renesas RZ/G3E USB3.0 PHY driver
  usb: host: xhci-rcar: Move R-Car reg definitions
  dt-bindings: usb: Document Renesas RZ/G3E USB3HOST
  usb: host: xhci-plat: Add .post_resume_quirk for struct xhci_plat_priv
  usb: host: xhci-rcar: Add Renesas RZ/G3E USB3 Host driver support
  arm64: dts: renesas: r9a09g047: Add USB3 PHY/Host nodes
  arm64: dts: renesas: r9a09g047e57-smarc: Enable USB3HOST
  arm64: defconfig: Enable RZ/G3E USB3 PHY driver

 .../bindings/phy/renesas,rzg3e-usb3-phy.yaml  |  63 ++++
 .../bindings/usb/renesas,rzg3e-xhci.yaml      |  87 ++++++
 arch/arm64/boot/dts/renesas/r9a09g047.dtsi    |  30 ++
 .../boot/dts/renesas/r9a09g047e57-smarc.dts   |  10 +
 .../boot/dts/renesas/renesas-smarc2.dtsi      |   8 +
 arch/arm64/configs/defconfig                  |   1 +
 drivers/clk/renesas/r9a09g047-cpg.c           |   9 +-
 drivers/phy/renesas/Kconfig                   |   7 +
 drivers/phy/renesas/Makefile                  |   1 +
 drivers/phy/renesas/phy-rzg3e-usb3.c          | 271 ++++++++++++++++++
 drivers/usb/host/Kconfig                      |   2 +-
 drivers/usb/host/xhci-plat.c                  |  14 +
 drivers/usb/host/xhci-plat.h                  |   1 +
 drivers/usb/host/xhci-rcar-regs.h             |  49 ++++
 drivers/usb/host/xhci-rcar.c                  | 100 ++++---
 drivers/usb/host/xhci-rzg3e-regs.h            |  12 +
 .../dt-bindings/clock/renesas,r9a09g047-cpg.h |   2 +
 17 files changed, 621 insertions(+), 46 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/usb/renesas,rzg3e-xhci.yaml
 create mode 100644 drivers/phy/renesas/phy-rzg3e-usb3.c
 create mode 100644 drivers/usb/host/xhci-rcar-regs.h
 create mode 100644 drivers/usb/host/xhci-rzg3e-regs.h

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA9BEC79F8B
	for <linux-phy@archiver.kernel.org>; Sat,  5 Sep 2026 21:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6rQZQDFn6SZnHegdTLHI9snUsd8QCKe0y5LmmYbk9jc=; b=GbXz7it209fYwK
	aYvJ324pfKQ8HmYv1Gw2n4sFumzV624ZfiZRxEiX8e4xsnuva+KfEUTIBcO3OvX4Hu5ijVPX6fchk
	CRELYqFbuZ/1iURbVdU7QlaSz/QS0j1xQ2gdc1x7mUqlp97/KqRKcQ7mq74rAGYNDz+JnOEPizDSg
	RFQUr9g7Z25Jn2AfLQtjyWKHbI8tNPTuRf87P7Nan9RMwqqAw4nEe5kRC4DPu6+H7ZHKaqtsbo1sl
	6E6L43J3uXDyvk1jhGFgdvBNa+vzTyCo9YfUGpqUH730Ko4lHTjnpBQ4thenHtyHIvyDShs1osDzR
	IFwXI4X4Nrw9UzN6hcmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2xkD-00000004QEF-1RYu;
	Sat, 05 Sep 2026 21:16:13 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2xk9-00000004QDD-3PgH
	for linux-phy@lists.infradead.org;
	Sat, 05 Sep 2026 21:16:11 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-49b8eeb3ff2so19229435e9.2
        for <linux-phy@lists.infradead.org>; Sat, 05 Sep 2026 14:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sigma-star.at; s=google; t=1788642966; x=1789247766; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=PlZSpK3Xz/4+7T/z4ljWfbg5RLow9iJYEfMwMkSMVQI=;
        b=lt1da8TKWrEtGnQZnDreMDINsqUEktO5sjz27YlLwi+LsRMlzHRGl0X4w0zULEqV5i
         WeJJ3WlYflad3PTKHNjy+PLueBhdJQb9WojcnrJHmtkoF/gBOBVoJ4WLvIfZBLH2YhKu
         1+WXEVtd7t/thUkJ+BM2cR1BkfzVO3SEvhRFGQOsssLOEB4Qy6zFds9foKyoT3MQtL5E
         UHDFUjOac1J5qXREmGDMI8aR5iDvypCZ4gJRzj5WFWcy1kdhWw/lb8Zizoubj9tSBWze
         F6xX6FeeL6Uzl8ZQaWnQKJKJjktPDtlZ4j3KAucc15Yj/XJ95J426WLnTJlXiSOrtMaH
         Ni/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788642966; x=1789247766;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=PlZSpK3Xz/4+7T/z4ljWfbg5RLow9iJYEfMwMkSMVQI=;
        b=NPCgOJ2LeKb1HVOgK6RFehHkoSErD60amO4TvzSW0iwKLQ0PiwtAX2bqrfRVMIGzwU
         MoGQ7dVcqVx0CL+Ge7uImW/GgN3iG+axZSy3QB1z3I44y9cMzQMOWWxCFTnhmPfxqs4F
         s1ErcPfxyOHuchyC14Hdzop++OG8+Wm8j0vqqxqSdwRAZ/nLXEUlAeTuAdjSSq7dHmnu
         wnxM7xCfeqHtUAYFP4QjuIKpSrjUMTBW+9rrFthm8prT/3EJ3Hm/OBkgJmhUYocgBqX/
         16xP0gMqyXf+KAqwi467ARZRd+rgsNImhf8wYb8zhO7JVIiFMLzdj9pLsIEC9KTm9MB2
         wyOg==
X-Gm-Message-State: AFuF++mtLP4MASVvUXnEpbaFFKIrBlDzXSaDMmXvkWbABqCeEb89NcIl
	0Mf+9+Z9ss+gO5pbtkF8HW08+z9eTa280gw7LgsPRmbh8Awij9q1wfPAE0+KCLgEByViAUndTLE
	F3b7f8Hy1Gg==
X-Gm-Gg: AYBFou0AGOyUQvz1q0qAZTN9optXu3gqUy24PkkeRuxNt3pbXALGyeuGdcURXhwh161
	ZNEegMssu1f5ZAemEZkJ+2itylXVfzdVAisG9HOX9lLuP99RoXr+6op4ZaHs7xNr4g+DUbmlItI
	aFqeXEJ0nRDRvMppHtFh7WmLcQry/cc0ffwquKsg/wcLUiudkGb7JaJs8ti/naPeT5OqB5iYHL+
	F/Y4bwgH0wjz7W3QWpgygHaAAMQRCKiLsBeyR2wDs3TW1Olk3oA99DlmiLIHFOwMuQeknt/kZvP
	3TN00XjjNxtD3Yrd22V0DmUUp/gry9agWjWSGTmzQiL8AHhGLhREvaehbKrBUtEvd+D+N55THkI
	y/Ws06UdtK70sVd41KKHX+s5jVqfBafrRlPDJXIg2VtCPCHUUZBq5Na/f27/DXaZ1WxJcs3CALG
	8bde7HitF9chxukWRhfa3PSvbskE2pfbj8ta1FwPjpsVRgalP+v6KQU06NWt7VxU0i9g0iVsETW
	mgepaqIFXTf+nT4eoT3Thj8EmgyldROzI1I3dahcTE=
X-Received: by 2002:a05:600c:c1c8:10b0:49c:fa21:e749 with SMTP id 5b1f17b1804b1-49cfa21e8f3mr85554955e9.31.1788642965679;
        Sat, 05 Sep 2026 14:16:05 -0700 (PDT)
Received: from localtoast.fritz.box (clnet-p04-043.ikbnet.co.at. [83.175.81.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ce5952560sm261416695e9.3.2026.09.05.14.16.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2026 14:16:05 -0700 (PDT)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	johan@kernel.org,
	rogerq@ti.com
Cc: Julian.FRIEDRICH@frequentis.com,
	upstream+omap@sigma-star.at,
	David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Subject: [PATCH v3 0/2] phy: ti: ti-pipe3: allow configuring ACSPCIe TX/RX mode
Date: Sat,  5 Sep 2026 23:15:53 +0200
Message-ID: <20260905211555.15944-1-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_141610_266369_5F33DA23 
X-CRM114-Status: GOOD (  11.55  )
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

This patch set adds a device tree setting to the PIPE3 PHY for
the reference clock selection of the ACSPCIe clock buffer stage.

The clock buffer can operate in either RX mode (clock pins are input,
recover the clock from the bus) or in TX mode (generate the reference
clock for the bus).

This was tested on a board using a phyCORE-AM57x SoM.

Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>

---
Changes in v3:
 - Cleanup device tree property schema

---
Changes in v2:
 - Add ti vendor prefix to property name
 - Reorder patch set to add the device tree documentation first
 - Add a property description to the device tree schema
 - Add an example to the device tree documentation
 - Make the property exclusive to the PCIe PHY in the device tree schema

---
Sashiko:
 - syscon_regmap_lookup_by_phandle_args() does not return -EPROBE_DEFER,
   there is no broken probe deferral here
 - logging but ignoring a failure of ti_pipe3_acspcie_tx_rx_mode() is
   intentional, following implementations of related properties,
   e.g. dra7xx_pcie_unaligned_memaccess()

---

David Oberhollenzer (2):
  dt-bindings: phy: ti,phy-usb3: Add aspcie reference clock setting
  phy: ti: ti-pipe3: allow configuring ACSPCIe TX/RX mode

 .../devicetree/bindings/phy/ti,phy-usb3.yaml  | 38 +++++++++++++++++++
 drivers/phy/ti/phy-ti-pipe3.c                 | 27 +++++++++++++
 2 files changed, 65 insertions(+)

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

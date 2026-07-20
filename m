Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72466C44527
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 10:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q2rGXSNTS52yq3v7uKCB4xv3UCgKUZ6upFfBnY/xBCk=; b=ZC7NtblpTYXIGT
	NEOtP3CT1cfR6vSZa9TyWgCIJdkX7PLrylobS4lHtOWUOpdCEqDm3n+6lC61o4MiiZ58dduys58Tp
	utwlkZLeXVRF2soa4tqkzEoyTl2ZJ9hzvkcRdI/8+Rq2BYmfwbjK+P1Rfx66ZjVWmI8COKQjwslgg
	IiyWFCcWjU0VyduMKb4INkVZSj3xN1jvscZ3DLTEZDAW/r2UIjp30APETczwyJYQo9m9kMnCoiQnw
	f5tMGv/ZIK5S4gHJw04sJ92jtGsSwMtgt3jat3Z73ZeotAzKwzseUCjofoLV6l764/8W3AI46LNud
	sava4S8uzWse9VC5OGvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wll8r-00000006TWL-0PsE;
	Mon, 20 Jul 2026 10:22:33 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wll8o-00000006TVZ-2eAn
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 10:22:31 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-382ef647e20so9326719a91.1
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 03:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784542949; x=1785147749; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=XAmw1oHNGHlX7bZ3goPBDmA/lFIhJInhwupNS3Y8tnY=;
        b=ZW862zf2W7SUQ//W7Ii13NXQBO9jXSKGr6t94PSlSHYuIYZo3qCmshim5qSAFzaipA
         5zdcSAn2z/OmOWIT5PGqF/K/3dSxQ+kNb/wmlw4TE8UcGEMwq5wSfeILPp6k57Oa4fI/
         gNYHZo0HUApw+H4ok/iJ7XOrweWGbV6QV6YL0ikgqWmZ5i0c1VAA4srGWt+xsd9loMrt
         eIPnfEfSIp4OZMuN3fCcMZhVh2U2kHJi9/nHwRGFpOIH91NRXP8Fm6nQQvtCpGxg3Hb3
         C3Ltwhvc4d7Dx1ERAP6POEdz8Hnkbqa5+4j57rIh2GDco75oBWaS6UaB1ViIg/dvjTIk
         yANA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784542949; x=1785147749;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XAmw1oHNGHlX7bZ3goPBDmA/lFIhJInhwupNS3Y8tnY=;
        b=evGBbiehl3dkInOQNmIqklKz7YO6FTyBAF7kDCIgUgdDbhYran+wnhWGUsAUfGdUDQ
         v0BqyQh5VDG2Ucsz5Lh+QUemoaWnGIzWedyP7/WEmNE6/YVKwNwDaC/ErVPY/R7xgqkH
         CuqqOZs63+brm4Ad86rNgpIZJ7OYk8wGkE2XExpD+yx4oC29ASErziIxjArOAC2DIyW5
         YvFCEmFHGdUwIGtiHtnNNqXuwU5XlIfw8rOt6Z9NxodpuGL0BboUGI3kVeBkmJjTpovy
         fbEosA24Tq5nGVNd5V9chC/eCQjazUrsDyrm5SbO74QpENAi1V0f3XxeHJHjcdjUYuIN
         v5mg==
X-Forwarded-Encrypted: i=1; AHgh+RqzJkS5tob8fRpFsUa0A+huWjPAEHuuPHikiXxwBNM8HkFtP0GYgkMVEc6w6o2SorJbvwHmR/xdtRM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzKJrGfC5S7iHGDgF7y85v6IJfQ3hyKiZSpy9/pHS6UpK6TsYLX
	XNjMhIFz8qKVNX/Kj+pMdzG4UrN6dQsGf1VfiuLFvxyEptKznrIyBuSK
X-Gm-Gg: AfdE7ckRLGnB20bNRcP1UGfE1JlW9rbztGZOtS+5Qxjcta8EJot+tVnOLOHHELqz0tG
	BLxJ4mr8S1zyszYgZHES6CXMLGPJAfgj+6zN/0UjrfgeMiZ1TjAat1R7rglSxdfBwGOTn0Mzkv+
	Xn2K2eiR3VNOrozYoluQnZGjARyC3+14KgSRzSgLfjjnLA+9fXcg9mw5DeGGZtZ2KeXXu1PMl4V
	8HqZvBkGCGJBvAiLO5XdOYiJ43O415UZmkiW+c9IaqRxCGGj7OTuQeFBRFLNpImiKKmtvsXcFPx
	F0Q8Iq8+7FQfk+Vzr9ZghfQp3gbNuMScrgX1DH89wCiqReFCtCJUxSNThKJh3gJUlR/jTT2E2l/
	xNBw0IkZp2wXcEK4JHN+Md4ljr6dmDy0zURXlITFehFrSdkVT8BfmIijo1hEKZX/aSGRh4ahDHy
	ewdaApqjCUFtc611zA3LygnOJpiPabTCaGuwLH0AfmB3a5duBa2RrTgCQayGQtV0c=
X-Received: by 2002:a17:90b:1d52:b0:38e:dc4:3f64 with SMTP id 98e67ed59e1d1-38e4b5860f9mr14233192a91.38.1784542949254;
        Mon, 20 Jul 2026 03:22:29 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38e4b20df7esm5616125a91.13.2026.07.20.03.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 03:22:28 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Hui-Ping Chen <hpchen0nvt@gmail.com>,
	Joey Lu <yclu4@nuvoton.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH v4 0/3] phy: nuvoton: extend MA35D1 USB2 PHY driver for dual-port OTG support
Date: Mon, 20 Jul 2026 18:22:19 +0800
Message-ID: <20260720102222.251179-1-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_032230_667573_197C748C 
X-CRM114-Status: UNSURE (   9.50  )
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

The MA35D1 SoC has two USB PHY ports managed by a shared hardware block:

  - PHY0 (USB0): OTG port shared between the DWC2 gadget controller and
    the EHCI0/OHCI0 host controllers.  A hardware mux automatically routes
    USB0 signals to the correct controller based on the USB ID pin state.

  - PHY1 (USB1): dedicated host-only port for EHCI1/OHCI1.

This series extends the existing phy-ma35d1-usb2.c driver and its binding
to cover both ports and add OTG role-switch support, while keeping full
backward compatibility with existing device trees.

Changes since v3:

  - dt-bindings: add nuvoton,rcalcode = <7 7> example to illustrate the
    optional resistor calibration property; revert redundant clock example
    change (back to USBD_GATE as in the original binding).

  - driver: handle -ENODEV from usb_role_switch_register() gracefully so
    that probe succeeds when CONFIG_USB_ROLE_SWITCH is not enabled.

Joey Lu (3):
  dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend for dual-port and
    OTG
  arm64: dts: nuvoton: ma35d1: add USB controllers and dual-port PHY
    node
  phy: nuvoton: phy-ma35d1-usb2: extend to dual-port with OTG support

 .../bindings/phy/nuvoton,ma35d1-usb2-phy.yaml |  44 ++-
 .../boot/dts/nuvoton/ma35d1-iot-512m.dts      |  36 +++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      |  36 +++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       |  65 ++++
 drivers/phy/nuvoton/phy-ma35d1-usb2.c         | 284 +++++++++++++-----
 5 files changed, 389 insertions(+), 76 deletions(-)

base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

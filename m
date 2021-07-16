Return-Path: <SRS0=gykr=MI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72287C07E95
	for <linux-phy@archiver.kernel.org>; Fri, 16 Jul 2021 10:37:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3F182613D0
	for <linux-phy@archiver.kernel.org>; Fri, 16 Jul 2021 10:37:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3F182613D0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x2cmQ/tT5KHefq/FN3Ob76QE1pCElFCkN+IZHAVpOKQ=; b=qFJKE2ihjaigZ4
	0B66S9PI7wMyPGW7eDXQzrzsBzZ1D1ZxCNJdaGIoqtvkjl39rcR1HHFoTBjH3bLRSO8GLvy2euMZt
	84Ha4bde7auIz6180o+Mph0R52EZD0wX8fpTXog8/6/EqzeCxqLdprKIe6XbDZq2pQBhzMDqtLNgj
	OqfH5QCVzhRd5qXQkJ8JO5dxxb37vRw8lqV5U6IChQ6iOvVaNNn5NxXhMqPZJ+aP8S0GxI4VEsYN5
	JdSe2Dws+UelOqon+a6EDYf+gtm9EnYziRkcj+zJk8mcgpf8xsREeNWU/7niRTOO2k8FB63B4fql1
	9wHI+LezIT4dyqvDuL/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4LDd-0048Pm-Mi; Fri, 16 Jul 2021 10:37:21 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4LDa-0048O5-HR; Fri, 16 Jul 2021 10:37:20 +0000
Received: by mail-pj1-x1036.google.com with SMTP id
 gp5-20020a17090adf05b0290175c085e7a5so1527830pjb.0; 
 Fri, 16 Jul 2021 03:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8G+M3Pw6x7gYnZSkh4aaoUmFg7SaF7iRIrkpxTHDQbs=;
 b=VNwmVnNALzHJttybOSu9O4QJ6IvIeATmuH7H39D4n0I7+wLVes021heN6eS+xJHtUl
 YhfMIQN7Y7nrtpnD++hkvPBxt+ahBh8bbFJ8SnBKR4BAZQpBjsK+3yd50Ltw4KKp74kw
 D/+bzUVvpQ+nr6KE+zVBG6c3kNBSYRwTe9biArR0KcKuT5A/tLdEPgs7BKBa//r1uAfR
 47ISCzQgVruYpRcNDvrB39+Jg/dw6njT4gk/hjjKDLROY6YECMASaDYzmv4SQZnIHWSP
 BNTE03w1Dnc6rdKYLeqjDOFCV6vNdm0RCqKp7Sk0YBf0K6EGyAJdmc7Y5Q4MaVoX+6Fb
 R8cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8G+M3Pw6x7gYnZSkh4aaoUmFg7SaF7iRIrkpxTHDQbs=;
 b=QA6eb3+UuLzGEKwg2dRR6QjcpgkjCmSjVKgldfH5EPB9yFBoPYW5cplLHsyU2kgBsy
 yzpHuGJifS5I79p27QNnqwq72qtJrD9ZN9vmJQV1Q0gdg60D8a9NCITfnBhlfTP2bETX
 1JzVVR3sOgrXqTW+7iikZt5mSTFsWGg9MUgIRWtMr1+Op5H1ryV8ZwfJ4+GKcH64nGqw
 sz7Ci3M7Xm774xbeP9lHtrfjjUs0oeNKhhL296vExtHOEhF/8uWm3WoDcL/1vACYN8pd
 mY3NdLVPUnihVVGUYMuiuueUNLBO62yo/5uWzFWYP2t0JToJSIqWs6wN7yoUaGhA7CkR
 5cGQ==
X-Gm-Message-State: AOAM533YWP0deELnk9SfNYdZOu4udIVcsPUovDxfzMBFSaWNWHZ4de2S
 obSx5Srg2Bmh8LxKJoO2w5xPZXI6qdY=
X-Google-Smtp-Source: ABdhPJzAO3AEXflzapXSJAOdvXJDpcbPoXXSMAFsuA1F9e87YTfPkmufyOz0AGRqHTGlQSf3SyjVHg==
X-Received: by 2002:a17:90a:f698:: with SMTP id
 cl24mr14779412pjb.79.1626431836205; 
 Fri, 16 Jul 2021 03:37:16 -0700 (PDT)
Received: from archl-c2lm.. ([103.51.72.31])
 by smtp.gmail.com with ESMTPSA id d29sm10070111pfq.193.2021.07.16.03.37.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Jul 2021 03:37:15 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Anand Moon <linux.amoon@gmail.com>,
 Matt Corallo <oc2udbzfd@mattcorallo.com>, Rob Herring <robh+dt@kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Emiliano Ingrassia <ingrassia@epigenesys.com>,
 Brian Kim <brian.kim@hardkernel.com>, devicetree@vger.kernel.org
Subject: [PATCHv2 0/4] Meson-8b and Meson-gxbb Fix some missing code
Date: Fri, 16 Jul 2021 10:36:32 +0000
Message-Id: <20210716103651.1455-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210716_033718_626049_215E0F50 
X-CRM114-Status: GOOD (  11.69  )
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

On Odroid C1+ and Odroid C2 USB feature is broken

It's being observed the after initiation of USB phy
the USB port goes in to suspend state, If we pass usbcore.autosuspend=-1
via command line USB hotplug seen to be working.

Another issue I observed is increase of USB interrupts event
even if there is not much activity on USB ports.

$ cat /proc/interrupts | grep usb
 35:   26462800          0          0          0     GIC-0  63 Level
			c90c0000.usb, dwc2_hsotg:usb1

Changes added power node to usb phy and small code cleanup
in usb phy.

Previous version RFC.
[0] https://patchwork.kernel.org/project/linux-amlogic/cover/20210617194154.2397-1-linux.amoon@gmail.com/
Dopped the reoder of code changes as of now.

V1 > changes Fixed the GPIO input signal on Odroid C1+/C2
     New patch added to fix Odroid C2.

Thanks
-Anand

Anand Moon (4):
  ARM: dts: meson8b: odroidc1: Add usb phy power node
  arm64: dts: amlogic: odroidc2: Fix the chip enable signal for usb
    power
  phy: amlogic: meson8b-usb2: Power off the PHY by putting it into reset
    mode
  phy: amlogic: meson8b-usb2: don't log an error on -EPROBE_DEFER

 arch/arm/boot/dts/meson8b-odroidc1.dts        | 19 +++++++++++++++++++
 .../boot/dts/amlogic/meson-gxbb-odroidc2.dts  |  7 +++----
 drivers/phy/amlogic/phy-meson8b-usb2.c        |  8 ++++++--
 3 files changed, 28 insertions(+), 6 deletions(-)

-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

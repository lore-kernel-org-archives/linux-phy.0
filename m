Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39E9FC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  5 Oct 2022 21:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IYjELd9E1WOf5Qw+gtzwzMmAGHdCXnbhUliDW9bEnYk=; b=4P5bL3TQpi/Ko+
	gb508O3pWvewbMnlPM9dqXuVOGm74HSHY8/U60fR2V8FsBOZWDOarJOLNSPYoxgWFbzlrISqqQrS/
	ns03yzyF4DJSYtAMncoSn9SIJM/sYJCEB5QRXW7fwSIp2TCmIWXNId7H9ioUc0sXZ9Nnmh88JBwCX
	ukbaAF7vvhhyM4u7pAweM9GQLzN8wKxWr9IVd4hjd8weNj34Qbw8Vrwag+yLinxmY4l+sJOEvQKm/
	xpQSDhz9Rzlo0oyvposkny8KJVW1USK/ur779eOJBdU/qLTz1Yu4pZjVGeTVkX4tQZi/HvXHQIurO
	RwDyHgJeU+EmVZ9hscQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogByJ-00G9Cv-Cp; Wed, 05 Oct 2022 21:30:31 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogByH-00G9Bo-F8
	for linux-phy@lists.infradead.org; Wed, 05 Oct 2022 21:30:30 +0000
Received: by mail-qk1-x72f.google.com with SMTP id i3so11054755qkl.3
        for <linux-phy@lists.infradead.org>; Wed, 05 Oct 2022 14:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=Umc2AzBtVa0Yu+kyLVbzBuuq520pxoL3Zl06uSBOSsM=;
        b=e15TtvG4z6JHDqwRQTlJNmX9vatjzkGVYADyHnfOmobt7iqNwe5vTBG8egWnRnwwTl
         6IN6qNHeT7TTA7HmOrJ5+FRcI+3hm1dKo43Y+ePzzVPP8ywJJsojLkkqSkQiiRzRq7zS
         Q/nDNQptK6upowa6JBr2lXw1l9GGjGDojVbssOq8MN8nhovYSiazmp6Q0HkIK7U9YQ2S
         Jdlb2OADxAlbUlbU54mLARYu9m2ZPJH7Gc429dv3TC2GGpt0Z5uwh4RQp3aEjRf5AJYV
         ZCoEx4YQWuHEXTWF7Q7kTgGoTNpz0phy+4dabTOdi9vUSa+Rjz/OQ9E4ilSgL4IwwHIe
         Pbfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Umc2AzBtVa0Yu+kyLVbzBuuq520pxoL3Zl06uSBOSsM=;
        b=h+OBpdpaoalb/3ewAHiMOtBLfhk/Y2wzNgnjEOcTaID1DJUeObClLDogg0I3KSYBSE
         mIN1z9Feut8lLsgeVZnIMoRljrm2uWEl3Nvo/19hR8fZ2ba55SN2xc00+l4S5AYWVDp8
         m7v7Zhbjg5yTTwZWyXsQ6xDh09HtongD57pqTq0BA5YC5jyEDO0+bIUZhw8gEtH+O31d
         CLS8k9V3cC7N4fF9URnkAcqIH5aIsO1Hb8ecmgVwf9IZ41mf9tes87CoGaBSbxBGEGqp
         QLJfRzXYLaP0+CpsQdkg1YaxUR96cTuBr/TtMbjTRwEr/RisXY2bYNdcAvaGIISx35sj
         y4lg==
X-Gm-Message-State: ACrzQf21DJ7O4KCTuipDrrvL7ORu8jyrLQwz0vbYNY6pj5fdwA2esjlv
	9WgvmxGq+OCW0sdZcmojJCU=
X-Google-Smtp-Source: AMsMyM7NTILp6/nyofRQs79VcscIWIBMYQfT86evZTY4FRzNuROCYdWeOlow4HQXtAWpwzpssoN2rw==
X-Received: by 2002:a37:58f:0:b0:6e0:d52f:175c with SMTP id 137-20020a37058f000000b006e0d52f175cmr1110786qkf.13.1665005423338;
        Wed, 05 Oct 2022 14:30:23 -0700 (PDT)
Received: from stbirv-lnx-2.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s22-20020a05620a255600b006b929a56a2bsm20058566qko.3.2022.10.05.14.30.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2022 14:30:22 -0700 (PDT)
From: justinpopo6@gmail.com
To: alcooperx@gmail.com,
	kishon@ti.com,
	vkoul@kernel.org,
	f.fainelli@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: bcm-kernel-feedback-list@broadcom.com,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH 0/6] Various bug fixes/improvements for phy-brcm-usb driver
Date: Wed,  5 Oct 2022 14:30:12 -0700
Message-Id: <1665005418-15807-1-git-send-email-justinpopo6@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_143029_529390_80800C19 
X-CRM114-Status: UNSURE (   5.96  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Justin Chen <justin.chen@broadcom.com>

A few suspend/resume bug fixes with clocks and wake counter. Also improve
port mode selection.

Al Cooper (1):
  phy: usb: s2 WoL wakeup_count not incremented for USB->Eth devices

Justin Chen (5):
  phy: usb: Improve port mode selection
  phy: usb: Migrate to BIT and BITMASK macros
  phy: usb: Disable phy auto-suspend
  phy: usb: Use slow clock for wake enabled suspend
  phy: usb: Fix clock imbalance for suspend/resume

 drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c | 95 ++++++++++++-----------
 drivers/phy/broadcom/phy-brcm-usb-init.c          | 90 ++++++++++-----------
 drivers/phy/broadcom/phy-brcm-usb-init.h          | 11 ++-
 drivers/phy/broadcom/phy-brcm-usb.c               | 28 ++++---
 4 files changed, 116 insertions(+), 108 deletions(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

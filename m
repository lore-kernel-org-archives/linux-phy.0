Return-Path: <SRS0=gvcI=LF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22825C48BE5
	for <linux-phy@archiver.kernel.org>; Fri, 11 Jun 2021 16:40:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E8465613BC
	for <linux-phy@archiver.kernel.org>; Fri, 11 Jun 2021 16:40:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E8465613BC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3RH5Az2lES0KJ3UPQsFjPq1CiExjI8wUEj2LauZ1dJE=; b=HfmAV0v/ALyIJ+
	kZ1/kEir7vwG34QoPJIQrUNhDJA1Mmz6D/hQsg+gKJsN/gupRmnGWMHE+LOnAQigrao6M0S0luDZV
	6dZKIbiN23zp5uREBudG9R4VQ7LHAGjd7J1jajhtnparLPpRsNaj8cjbFYkcRKY2o9ui0CsGmx2C/
	E4Q5Cq+XpAG8n376MFASzwIt+KOG9Y8rW8js7ZBa/rIhmEH5xTghN+UN/6OggVZwtuDBV/ib0wyBH
	VX55ArFJEwMQhQbQB+lB52xaKwV3Z8VD+SvAMbsJB090P5xSvqfvM1JIOTnD55tB1VSgQXP9kTqHr
	Ft+JF9kK5Rvk2OJXRvdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrkCV-0063hw-Gh; Fri, 11 Jun 2021 16:40:07 +0000
Received: from mail-wm1-f52.google.com ([209.85.128.52])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrkCT-0063gZ-17
 for linux-phy@lists.infradead.org; Fri, 11 Jun 2021 16:40:06 +0000
Received: by mail-wm1-f52.google.com with SMTP id
 t4-20020a1c77040000b029019d22d84ebdso8996934wmi.3
 for <linux-phy@lists.infradead.org>; Fri, 11 Jun 2021 09:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YBWXbPTt5mAHxR/Tpna375Q9I2cVf+MKeEc1yT/OvlE=;
 b=X76WYQgB9Uel+1VqQWMOhPWT0U++aPZIImiQ9bnoD5wQ/JTvWM2jmms0SpJGsSCeQ7
 KTzPxn68OKYxE7hriuI9zSt8PH4M9hMEE8tbDYKYqJEybO0/a9OhgrRUqGfxEBci06ZF
 dQUOJZE5e5BiXV1A51tfJwbUiR5VkKNRslFVYY1ed+LX+aAWiVnUTS9H6ICwvW644s4d
 qW9elTSq1oICBpZ3+gjFN1JUFRIe98pAPofJhQykutyLP+tUaWNnHeprI+331nN7pGcY
 o3paSvJmrMg8+6WOu6Yy3Zs4AlBALgtJUPaitxDqVw+QPtlvb96NF5oBN5sJq6wXMM56
 5ruw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YBWXbPTt5mAHxR/Tpna375Q9I2cVf+MKeEc1yT/OvlE=;
 b=ug48lN+f2JWP0hMgSitlvh5Re1ztJUIfw484LIuxc/DfcpHJsak/m2oJTvEo+2obdm
 blt7THU/dX7aoG2HypeGnVvsyi01P9ToqRCYFUaKzDdMM9CHSEMB3+z+EY4A2vHG2/Y+
 tUKddqwjRXkUJgxgFmHLMQl9DVHbhNB42arOLjgTXNcYYQwUtJSjREW0T1SKcgz3Joc9
 Mzwbi0h6zFLcY7RegVuGIyY1BBOdgNuBYVE9FNVMfuL8SbQh41LsQ7sPHhgoHUOluEhp
 g4ayTTyG5jANhMSgyD42Nmm2HqO9nyTO82J9c1NVtzM3hAHOwqqd8zcSkdwDLzD1FQa7
 8HGA==
X-Gm-Message-State: AOAM533H4HxVjlQI8/eMMidzBHElH1NxhZPKLTm2xvvLiSQJL8UpWvt6
 3De5gAHWo/LsWNK4yW+cc/c=
X-Google-Smtp-Source: ABdhPJyjem/qQMuuB0A5uXCtiX19rwjNxRGalVwqIGepblIsxsGMK6AvOwuFjsdwmvnvV6iVo9lWkg==
X-Received: by 2002:a1c:b087:: with SMTP id z129mr20677693wme.67.1623429543577; 
 Fri, 11 Jun 2021 09:39:03 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id o5sm7783932wrw.65.2021.06.11.09.39.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Jun 2021 09:39:02 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felipe Balbi <balbi@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 "Vinod Koul linux-usb @ vger . kernel . org" <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: [GIT PULL 2/2] usb: tegra: Changes for v5.14-rc1
Date: Fri, 11 Jun 2021 18:40:37 +0200
Message-Id: <20210611164037.3567270-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210611164037.3567270-1-thierry.reding@gmail.com>
References: <20210611164037.3567270-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_094005_095884_4A65CC14 
X-CRM114-Status: GOOD (  12.73  )
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

Hi Greg, Felipe,

The following changes since commit 1f9cab6cc20c6ed35c659aa25e282265275f0732:

  phy: tegra: xusb: Add wake/sleepwalk for Tegra186 (2021-06-03 14:52:45 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/for-5.14-usb

for you to fetch changes up to 971ee247060d88dceb72428b5d203687312884f4:

  usb: xhci: tegra: Enable ELPG for runtime/system PM (2021-06-11 18:15:46 +0200)

This is a set of changes that was supposed to go into v5.13 but missed
the window by just a couple of days. I've since taken this for a spin
in linux-next through the Tegra tree and everything seems A-OK.

Note that this includes the contents of the first pull request in this
set because of a build-time dependency. I'm assuming that all of this
will go through Greg's USB tree, in which case there's no reason to pull
in the first pull request since it's already included in this one.

Thanks,
Thierry

----------------------------------------------------------------
usb: tegra: Changes for v5.14-rc1

Implements proper suspend/resume for the XUSB controller found on recent
Tegra chips.

----------------------------------------------------------------
JC Kuo (2):
      usb: xhci: tegra: Unlink power domain devices
      usb: xhci: tegra: Enable ELPG for runtime/system PM

Thierry Reding (1):
      Merge branch 'for-5.14/phy' into for-5.14/usb

 drivers/usb/host/xhci-tegra.c | 613 +++++++++++++++++++++++++++++++++---------
 1 file changed, 482 insertions(+), 131 deletions(-)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

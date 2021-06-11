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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21912C48BD1
	for <linux-phy@archiver.kernel.org>; Fri, 11 Jun 2021 16:40:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DE29B613BC
	for <linux-phy@archiver.kernel.org>; Fri, 11 Jun 2021 16:40:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DE29B613BC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IuL6m7BX6xxoxkMvu7tE7RIUpMBa3My5gqKtgvNqQY4=; b=GqbrxBCK0mY2Pi
	izwXYd2Yl2hufXE+5ZtrxfgpI+3LS5tYziayN129M0PzTdBljNV2Xile7CNH0QNapvXUU9+MzWqEw
	zlADiXYUxrBPpcF+sXfAQqn4qBG55gDX80BAtb4wP+aUnghM81hYu4GatkTwNEZ6gqCMAJc2CjmGN
	LyKW+hNxpY7dHVtgSK8bY/goLigSmMa7Z1bs3uefBKPM3lGacO55m9/oojacahllHiwn4Cuj1O7xB
	u0HhYlOoRomNODdLIB40doLcIByhz3feMH8LWOKDW87dTQ9GeaQfNuGt4YEfd+ySkkj9EJ33pz76T
	hZ4m0Dj2ltBg1b6zZ8PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrkCU-0063hY-Ee; Fri, 11 Jun 2021 16:40:06 +0000
Received: from mail-wr1-f52.google.com ([209.85.221.52])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrkCR-0063g9-AV
 for linux-phy@lists.infradead.org; Fri, 11 Jun 2021 16:40:04 +0000
Received: by mail-wr1-f52.google.com with SMTP id n7so619658wri.3
 for <linux-phy@lists.infradead.org>; Fri, 11 Jun 2021 09:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vYIMo2kK1HR0D/HaxbggTV2mSjd3Ph79XbWAi78jtog=;
 b=HPmCRZaQTVPs7wWCO4Kdvv/bx6Mvg7TDmRumb5RWqXI7j5F4XBQQKm2HFtFi/9kNvB
 NKGdgB1EX/d9ZwdXIhGsxDnazcJ1fJWzhIWI1OW4s/UhBmzE3q0Yj6pAbRnqSi3fpq+e
 wITjoWp5qIG90SxbzngmcyM8sbtps1/F/OiM2yl521NkgRFG/TJctGxHKaGGBtl3vrfH
 SezkjZYCWnwn+wLhtfwQPCyPNHEA/NfM9ykw1IiAqQm87asbdckmp1F60YmLL87ejRZo
 Rq3MSidQyvk9SwBaEt2YjLCC/DmCA9Fa2EHkdyqAEuJ5GZCYgJ6KqRbBWqr5qc8huNcR
 CzoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vYIMo2kK1HR0D/HaxbggTV2mSjd3Ph79XbWAi78jtog=;
 b=Xl7TSfJMiLyat7gWbcA65MjcJqNOgScwV4ggA6TAm2l4dn9R1YI0xot/ng11HUXSxm
 8GpwCmZGnMXzNRga6PlloLmPGM/Kyit6e/EbLDgVnpqveHs+Kq+m67bjLC454kBuWj6/
 xVEmERKntb0rQma8QG5CeFuL0czrSqGz6YcL/aNZhAzvkFrfprMvZ1Z1klJKIBrh7/ru
 JQeNJs/7M8t097breE712a7fSuSgW2/FFgHQAUWTgdGoBcTafg+zEiOApRvbrcrhwjJI
 1p/4vcraOZxUVHoTzgBDfmi+gkipaYTkJAbYAvfJyx3s5dYdx88I6vGcfgzJrm08cyAr
 XqYg==
X-Gm-Message-State: AOAM531iVqrYp9zHzyfg+1sRavGXeI5SD8hd1jJl2rbmT3xDf+sW05Qi
 G91ygwsGR+qyc0/05gpcLPU=
X-Google-Smtp-Source: ABdhPJwtJKEBcxiZ9Un12SC7ERbwDyuA/+2tRc75Q2GSs7PFaDIOavICmsZji3vO74R6RhqECL1Qfw==
X-Received: by 2002:a5d:4903:: with SMTP id x3mr4887361wrq.376.1623429541940; 
 Fri, 11 Jun 2021 09:39:01 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id l10sm7299105wrs.11.2021.06.11.09.39.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Jun 2021 09:39:00 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felipe Balbi <balbi@kernel.org>, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: [GIT PULL 1/2] phy: tegra: Changes for v5.14-rc1
Date: Fri, 11 Jun 2021 18:40:36 +0200
Message-Id: <20210611164037.3567270-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_094003_395684_71870125 
X-CRM114-Status: GOOD (  10.41  )
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

Hi Kishon, Vinod,

The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:

  Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/for-5.14-phy

for you to fetch changes up to 1f9cab6cc20c6ed35c659aa25e282265275f0732:

  phy: tegra: xusb: Add wake/sleepwalk for Tegra186 (2021-06-03 14:52:45 +0200)

There should be no need to pull this into the PHY tree because these
patches are dependencies for the second (USB) pull request in this set,
but I'm sending this out for completeness in case you need this in your
tree to resolve a conflict.

Thanks,
Thierry

----------------------------------------------------------------
phy: tegra: Changes for v5.14-rc1

This set of changes adds USB wake and sleepwalk support to Tegra210 and
Tegra186, which will be used to properly suspend and resume USB devices.

----------------------------------------------------------------
JC Kuo (7):
      phy: tegra: xusb: Move usb3 port init for Tegra210
      phy: tegra: xusb: Rearrange UPHY init on Tegra210
      phy: tegra: xusb: Add Tegra210 lane_iddq operation
      phy: tegra: xusb: Add sleepwalk and suspend/resume
      phy: tegra: xusb: Add wake/sleepwalk for Tegra210
      phy: tegra: xusb: Tegra210 host mode VBUS control
      phy: tegra: xusb: Add wake/sleepwalk for Tegra186

 drivers/phy/tegra/xusb-tegra186.c |  550 ++++++++++++-
 drivers/phy/tegra/xusb-tegra210.c | 1533 +++++++++++++++++++++++++++++++------
 drivers/phy/tegra/xusb.c          |   92 ++-
 drivers/phy/tegra/xusb.h          |   22 +-
 include/linux/phy/tegra/xusb.h    |   10 +-
 5 files changed, 1955 insertions(+), 252 deletions(-)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

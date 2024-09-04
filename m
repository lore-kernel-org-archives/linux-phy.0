Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6521ECD4842
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 02:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kUrVUXVu6BujXV8DY/+m0M34NONokRW3ASSVky1lpio=; b=HevVfvqSrRDehi
	F2UtvXUo8jiPRC8+h4QTdNBcoHtHzDs0+unQ1Rms7s8YMB1dEzWw780pvzUJDgdsyEMgA9iQYY2wv
	5FlmbWO7bSNEoqS/dmbq8fZ7FmH9Fbs+nfWFnzGsfOSY9FOHiZcQC5xzxL5hyFmJWrV4g2/1G2S3X
	s+gw5rtxdQzrFVCjF+LQw8k92DdKebzrVimlBsdr9EZgEPiEETPCP/3HwP9tgXojjGmQkos5BGLUf
	Mo7E8VRbnqE7EgQVQnRwOHd6pa+cn81Ney7jsPtMAE2NMDncoAzksx/YkT6nNc6lCOaKZQPm5WhAM
	2L4z2ruZYS0FtwyjZvQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slfpl-00000002anN-1Hd3;
	Wed, 04 Sep 2024 02:33:25 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slfpi-00000002amr-0CLJ
	for linux-phy@lists.infradead.org;
	Wed, 04 Sep 2024 02:33:23 +0000
Received: by mail-io1-xd32.google.com with SMTP id ca18e2360f4ac-82a3acaa1bbso137783839f.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Sep 2024 19:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725417200; x=1726022000; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2Cq4uRe87nNpuluoh2u68vh6xZwB2FqhqnMAWLtSiFU=;
        b=m/+GPGfcZGIBOL/N8ED7Y3HVMmpPjpe5OEGaJTYIexIHRTptTSDTfZbrGYSUn5iCRd
         J61XZPlY6sDbOHq94BJtPsLAOPQyMjx5lo4R8/u8I9pQLVCb9IDHl+ilwxsxop/yNFGs
         NHM4JkeNnXMU1QanVeSdid7OFtVcEkKcCNgzaeKGESE+EIb81Qs/7hBZ+dGiqAOZctW7
         mN4S2/1q3uyANgOouoSbELWd9CLvDi+HcLoCrZNy68JzIyCJ7HzWadHft/L+wBneauep
         tYOh+rNAmuhCBb2VtfREopD8sv5L9xgHXd4xqLg0pYkuXx6WHAAMzY01OERJnRGI/xco
         hS+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725417200; x=1726022000;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Cq4uRe87nNpuluoh2u68vh6xZwB2FqhqnMAWLtSiFU=;
        b=QybMTweVLrC2lXaFZlY8LZSrG7JR/K7A2TQQXybekTH2pAQXZ2Oq3esra8t12+ZLof
         W3YYkz+a3UZOrgdiAQNXCYlv6N0AfmtxKK11cHv7Kwl/kbQFk/SnJZMmtsdZhUWOqbAV
         amTa2981Ugbax7lRiKySws3PLEU9qyko1thT2Y4TIsrdqsy5pWbqjRiQBWbmlyMAefZh
         5sxvhYbwyh8UJWErUm7IV10kGWheUfzJuUi54gIp+PEdM9NhiUFM2o83YEfIZnd3yHOK
         mmL2EJUrK9T4u7A6aXXlWuflDnaKVQJc/QKelkMAgikhdOeYGZ75OOx7FdoO9TKPUxjA
         G+eA==
X-Gm-Message-State: AOJu0YyuUsTQqnrvAtkJg48P/7L3NKRI37q5t96AGirwaVVa0fEOl5eo
	tDVjcqEato1marXh4CZKJokJUZoKzbOdIGsOQa/MM3Pl4j1qM/+V6oga/w==
X-Google-Smtp-Source: AGHT+IEnNoDnJJHEsh46v8XZWeTjgjrjPV2KXMHRMeK6JATQURWY7kyHULcOTy2yDMp7T4Be0RCgtg==
X-Received: by 2002:a92:3643:0:b0:39f:526b:c5e1 with SMTP id e9e14a558f8ab-39f526bc781mr96172755ab.18.1725417199953;
        Tue, 03 Sep 2024 19:33:19 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39f3afc4ff6sm34556175ab.37.2024.09.03.19.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2024 19:33:19 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-phy@lists.infradead.org
Cc: dominique.martinet@atmark-techno.com,
	linux-imx@nxp.com,
	festevam@gmail.com,
	frieder.schrempf@kontron.de,
	aford@beaconembedded.com,
	Sandor.yu@nxp.com,
	Adam Ford <aford173@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Marco Felsch <m.felsch@pengutronix.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH V5 0/5] phy: freescale: fsl-samsung-hdmi: Expand phy clock options
Date: Tue,  3 Sep 2024 21:32:39 -0500
Message-ID: <20240904023310.163371-1-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_193322_108784_F537B3F6 
X-CRM114-Status: GOOD (  14.62  )
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


Currently, there is a look-up-table to describe all the clock options the HDMI PHY
can use.  Some of these entries in the LUT are using a fractional divider which does
not have a well documented algorithm for determinging values, but the the integer
divider can use an algorithm to calculate the integer divder values dynamically
beyond those listed in the LUT and also duplicates some of the entries.

The first two patches do not do anything functionally other than simplify
some of the register accesses and de-duplicates some of the register look-ups.

The third patch adds support for the integer divider and uses it whenever the
clock request is an exact match.  Otherwise, it will use the LUT as before.
The rouding is still based on the LUT if the integer clock isn't an exact match.

The forth patch updates thes set_rate and round_rate functions to use either
the fractional clock LUT or the the integer divder mechanism to determine
which ever clock rate might be closest match.

The last patch removes the integer divider entries from the LUT since by then
it'll be comparing both the integer divider calculator and the closest value
in the LUT.

In my testing with a AOC 4K monitor, I was able to add 4 entries in my modetest
table.  I do not have an HDMI analyzer, so I just used my monitor to determine
if this series worked.

Adam Ford (5):
  phy: freescale: fsl-samsung-hdmi: Replace register defines with macro
  phy: freescale: fsl-samsung-hdmi: Simplify REG21_PMS_S_MASK lookup
  phy: freescale: fsl-samsung-hdmi: Support dynamic integer
  phy: freescale: fsl-samsung-hdmi: Use closest divider
  phy: freescale: fsl-samsung-hdmi: Remove unnecessary LUT entries

 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 570 ++++++++++---------
 1 file changed, 293 insertions(+), 277 deletions(-)

  V5 Updates patch 1 of 5 for whitespace and comment updates
      Patches 1 and 2 add RB tags
      No functional changes from V4
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

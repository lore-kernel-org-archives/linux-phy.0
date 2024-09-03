Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A3EACA0ED3
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 01:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZBEpYu17btUf4M1jLAsH33T6svph3rO1O3IKyn4//nA=; b=r0L3xfQNcjcKOC
	Tnpa7KjUKiLvi8xM5pePofdASNPcaiUnsT9xplOZWkbZuyQHJMvwObfgfwjlg14jHdXwLuBqTf8Jh
	93jxVg4kPXZ9PILWy4Gkap9Fp/ice5aVAth6kWs1TFyRS5FfQhOx/nziyX0xM/6BksrRmbHNc42fP
	Rf78/mOOKlu6ErwUNymHBHgI/s4wgH6kl19XdebLwa8kXmcXc4LY7R8b7Ad8Q7vXLSGVdRG/ls+aQ
	fARNz7Acq/Rjaj4Fp7CVQEGL/UuldMaLBYU4cD8YYdaCi+vcYPaiwxlxk9hRZp7SnfE2imHO3peMR
	Om09pZXCw0e5L6ljjYlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slIOG-0000000FwaK-4A5D;
	Tue, 03 Sep 2024 01:31:28 +0000
Received: from mail-il1-x130.google.com ([2607:f8b0:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slIOE-0000000FwZy-2IVR
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 01:31:27 +0000
Received: by mail-il1-x130.google.com with SMTP id e9e14a558f8ab-37636c3872bso18332555ab.3
        for <linux-phy@lists.infradead.org>; Mon, 02 Sep 2024 18:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725327085; x=1725931885; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ri20ZOYkB6yhJ6cFc5B/D/pVjfJR6mNPKrohtebri3s=;
        b=CU4Z2wtHhi4GhBwjW4JRT8E1bVN//8WGp0q0wsxkqYsqHr1ouZnr5eNSFpu7BpilHa
         8JwT9ANav+LQaFvUIkaZqiABgD1NsmnLtcDuCNoDSCAbnNTo2hVaY9XvWJ+waE+oWwze
         WhYGctIeWqOGuJyNzEcHD+/zkHCg8lUmiyzLDGOUweou3IHkEnKQx9IYMVd1ukHiZiz/
         OI0oMOKQIL3ngq6oZvdxHL/MfSv6RTtZFcIVn0XN9DBRLoFe/zm0MDHf3zH20XbLNDq8
         tY5a5rorJo8PwloqCGp/vyToNoUnn6rZcFrV09qCmhIWvvc2Rkq2GayxS43yhAtLua8B
         Il3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725327085; x=1725931885;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ri20ZOYkB6yhJ6cFc5B/D/pVjfJR6mNPKrohtebri3s=;
        b=UzUCOa5UdYfYEsMOb+o+O518C4BQjWIlMGraC+YLYNdi6fq5QgCylIYg3KWRgZybP9
         l9+WGpvi5Z4tZgHwU0roel6FliaCXNN4UwWRB6U/qUKTCqRya0wTnMMGQpEVDQrCmq5z
         DUxyMHuula0mAspVInhpuWF8P4W8Jtj/6QUDibNytBs5e4QI8pg/ROOYrDr1Ndx1LgwK
         jRk3znw6jLgz3oGrbZfbOfOeXQEgG2U6jHDTO/AWudT2aLcpyRqAb2NkatSC/8giZ8rk
         cxPMztagbMb8Ho88kVmVI1wPU4yTUu00e5adBRu8iA/Dti/85UTecY4QfX1uocMa9zC7
         s2SQ==
X-Gm-Message-State: AOJu0YxDFLKw2pyt48WRtVcFqDUA49LzlrEu8yYYdJD4fbmm0fox2TD7
	wzUwcpwKTWuZ3xn2a4BB79PQ0aKywF05gZrWc+0hzFcSfBPToJZH3VCH0w==
X-Google-Smtp-Source: AGHT+IFIfhrL+8F5pUB/1ZWQVwcOphee+yoon27dy0Y1M3N/0zhMlC9OjINpNwWzDme7omhpCnFoXA==
X-Received: by 2002:a05:6e02:18c5:b0:39d:41e7:e093 with SMTP id e9e14a558f8ab-39f4e1293c4mr100508905ab.25.1725327084965;
        Mon, 02 Sep 2024 18:31:24 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39f3b059c32sm28466715ab.75.2024.09.02.18.31.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 18:31:24 -0700 (PDT)
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
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH V4 0/5] phy: freescale: fsl-samsung-hdmi: Expand phy clock options
Date: Mon,  2 Sep 2024 20:30:42 -0500
Message-ID: <20240903013113.139698-1-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_183126_607686_4724117C 
X-CRM114-Status: GOOD (  14.23  )
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
  phy: freescale: fsl-samsung-hdmi:  Use closest divider
  phy: freescale: fsl-samsung-hdmi:  Remove unnecessary LUT entries

 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 575 ++++++++++---------
 1 file changed, 291 insertions(+), 284 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

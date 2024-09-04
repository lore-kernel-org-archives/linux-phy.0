Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25C75CD4F4A
	for <linux-phy@archiver.kernel.org>; Wed,  4 Sep 2024 23:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g6P5khboMsj4/4wInzXXEedDWfUNUWKeT+elyM9wtas=; b=PjrpAWsyvvyThj
	AGujBP8ijvCYlbFkm6PRxyXYPTf0zZ0/Z/VYTWlsMIbyDBFyBAflBVvCYh2Ulwh49Zr+JVA7xxFBz
	Fp25B6rCpCnq+nnB1IYPxHIn3p2HZmg01qCAXSfYW4Wo52KkSW4poDT3iID6eOwXkhMOGXJVwxUhI
	ncXBhW72Xw3t/qqLC/PgCX5+iKXTFgAha7ddzU/cWZhNiz0yTPSWCJJC6kkNX/EMlIMrVXY8XwK6O
	3HrKkv62RNcqeqzHqVfrqpuVoyVnCO2ycqyRwxhiIwwU793KRPp1JiwvN7sUI/GRCco6dP+A2a2Z9
	57I0ea0cpjdMV/niZ6HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slzs2-00000006QPu-1YHX;
	Wed, 04 Sep 2024 23:57:06 +0000
Received: from mail-il1-x131.google.com ([2607:f8b0:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slzrz-00000006QPP-3566
	for linux-phy@lists.infradead.org;
	Wed, 04 Sep 2024 23:57:05 +0000
Received: by mail-il1-x131.google.com with SMTP id e9e14a558f8ab-39d4161c398so945895ab.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Sep 2024 16:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725494222; x=1726099022; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F2GvsxqrGhdBZJzoxaEyme4yyK4FzYQjimMYgOocqX4=;
        b=bOihL+r/S5aF8ZDAEBUNNO0g6U8qNL/+5XtFv4PY8fkdOAAinyzJd1yZRsCUag6Elj
         TtQdY0iDUzdb1J5Iq3d6TDEXp1boh1SoVUoQrZDOLtGVjsbXmV8eClmfzAOB3evrzaLd
         68oQ4qINTWkakBtNeGiX6ehKRzgx55/yVjqWvMc55CdkH/JE1vxMPfTrf5/YHglsIh9+
         z8FiC/yrVQr7Fm2lL46aaRY5lAazS/4bdBpugTd3305oIDtVS9Rjf2IMowF0lf0WAD4n
         aXGKSJk2rDYx29/qbBeHjWPAHnvZY0ycECHP2aVJvxW+GKGA3DrwFv1G/4wXNueey2Q/
         ymLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725494222; x=1726099022;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F2GvsxqrGhdBZJzoxaEyme4yyK4FzYQjimMYgOocqX4=;
        b=a0O3C+zERsKtfoMsptJJ9pmZfkYGqgUE1tGgFs0tizuGEBjc7QsydEQQ72V3DUM6cJ
         J/QEd6NOf8g8RtgDiNPeODEdzv5svNS+X6ISqnNCmGPw1f/w9UZCUHJs35GtewyI2qN0
         ZDo7DJ8uCVXu/HO7VvAwDp9AguMd9uQ4xEcsUE94XJO+dt5s8DT5w3yavAU47lypRoix
         kB5Q2p6rKoB/hQItfJIbyrDtLfrDCOcam5xXMktUHs9uTsfFyA+rbTFsyIt5bFehLhom
         BBXyzPOpVJDoBjYcUKmWyfG03RG7hwO3dmtC+YF3MN2eoV6MFm0yLMm9CEA2XEzOSeCU
         tl7w==
X-Gm-Message-State: AOJu0YwWLu6IJkrdoCZIz9UQQ8KWmAPuc77Ib5bKF5aIofeshmjfEdwa
	fOfK699TDOyGXth445LhQYoWD7VKn9mDzgkwV9mxNOb9PF4MxuYFwliXOg==
X-Google-Smtp-Source: AGHT+IH2/xw7uH1ta+NymZn7qHkQdO3VJG3zbLmK705z0/0HgtyU0x7qA0GYuICzmaP9S5RtJfmLgQ==
X-Received: by 2002:a05:6e02:1d0b:b0:3a0:452d:aaf7 with SMTP id e9e14a558f8ab-3a0452dadc9mr33115215ab.11.1725494222142;
        Wed, 04 Sep 2024 16:57:02 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39f3afc594csm39396735ab.43.2024.09.04.16.57.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 16:57:01 -0700 (PDT)
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
Subject: [PATCH V6 0/5] phy: freescale: fsl-samsung-hdmi: Expand phy clock options
Date: Wed,  4 Sep 2024 18:30:28 -0500
Message-ID: <20240904233100.114611-1-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_165703_814650_35CF5417 
X-CRM114-Status: GOOD (  14.83  )
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

V6: Fix some whitespace
    Fix issues with calculating the closest divider
    
V5: Updates patch 1 of 5 for whitespace and comment updates
      Patches 1 and 2 add RB tags
      No functional changes from V4
      
Adam Ford (5):
  phy: freescale: fsl-samsung-hdmi: Replace register defines with macro
  phy: freescale: fsl-samsung-hdmi: Simplify REG21_PMS_S_MASK lookup
  phy: freescale: fsl-samsung-hdmi: Support dynamic integer
  phy: freescale: fsl-samsung-hdmi: Use closest divider
  phy: freescale: fsl-samsung-hdmi: Remove unnecessary LUT entries

 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 570 ++++++++++---------
 1 file changed, 292 insertions(+), 278 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BAEBC02191
	for <linux-phy@archiver.kernel.org>; Sat, 14 Sep 2024 11:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+gF8KXTAkejnY9x92eR0VNIFFW7MAozhT/xS/tBuj/U=; b=dIaF+Qofd9BN/1
	F7UTvJd97lZPkWB0amvX3vKuaXkdomPaBtq6JIuxDYbNhT/FYiy3R2fKxCTYJFh/26FaBoNbPLbYQ
	oIeFaPCG1mckjDa8pB4CObrH72JX2VfhbktNm3h07MeXSIDUf88vguNl+lCR1eiwNy47sJRRZ08tG
	IMEYToqTUjqy88sfiEO+bPYB8ghRy6TcXtcGE/OHeChTl+uyc/OAGvR83MeWAxWAdzKUKCULicKgH
	3JF3L3Ov/yWqENZ45f4ahR1Ekvi/8SMMOxOl8lP1eMS/tVlBUH/Kb7+2mjjVeDBYYbSKYHm7sK+w+
	c/SGehHERqH4x2d2NClA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spQx2-00000000bRb-2iaO;
	Sat, 14 Sep 2024 11:28:28 +0000
Received: from mail-io1-xd35.google.com ([2607:f8b0:4864:20::d35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spQx0-00000000bQp-0dOM
	for linux-phy@lists.infradead.org;
	Sat, 14 Sep 2024 11:28:27 +0000
Received: by mail-io1-xd35.google.com with SMTP id ca18e2360f4ac-82aef2c1e5fso63628439f.1
        for <linux-phy@lists.infradead.org>; Sat, 14 Sep 2024 04:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726313304; x=1726918104; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PAVjeaAIlz54nRRU+R00d7cGt2iVae2/gffgn/qC9ZU=;
        b=NM7kQhJexRjZDCCCj5rdDyA9xdQyAeDvxX9ue0bm9wF6gCW7HgSpLPkPqgiKY+1Xq9
         SduQ4DT7ADO+0EICqDE2561bOT6e+zA3LOW3XmgHQMsvwGHKifFJUwgabJf+jfAl+tvT
         LSMNG8NultpFBNiBScGGIS+8vBpJ4j3ODspPeGaSywBCwxehTgoEuBhkyhwDpC73vYng
         GCxUo++gtS2JfApyEwAoizsdjvvZteD2OfTrr4Dg51Cvt70LGkGC6vo8PnTwreGAmvXP
         gla2g87LFVaHB8xEX5LG2MKr0rsXo7JTHhnwQ1asZ081fZn5BmRMliRLBAyaEjTjUOAN
         B5/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726313304; x=1726918104;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PAVjeaAIlz54nRRU+R00d7cGt2iVae2/gffgn/qC9ZU=;
        b=czLmMUiTZl78YhzrotuwEFGEu+xA4PC/9jCOxt7gH5l2vRxXU8+y/RVqZfNEPJvi9d
         RLSNNOmE39QtAAmfit8wNoamsxHeaXj+izKch/KjIt/nPiLSqCtOKrRPBfx8uo0Za7+N
         FHKFMTSJoSBjTuunDvGa1jhZmJzbWWCX5GrUCwgaDdLo8YlL4vrFG9kBC5MRsi8euJZ1
         x1WE+xW8fcoptkyvO6d5Pk0Qm99zxKnzZFQG5lBNz99pVfgZVNyH+abqt1gmNDXWta6Z
         WqFEvpHryjLUK5qji4ZaM+QzWFYbbg79kC6V0zczj8K9AeWF1eCd3pDLvSx3AI8aVxHQ
         tvow==
X-Gm-Message-State: AOJu0YxV6q4EucJ9EeoDuw6xo1ZdzHMKq/gIxWnmw+RJh2MyYIy+T3LW
	gJKiBYU/RVdopjCx2Mp/A5wCBROXb4rHEWH05ta2tN3+OXmpl2sfmo7Siw==
X-Google-Smtp-Source: AGHT+IGorVJHU4xMZQfYjHd7AVJc43hrhdZ2GAS9mpcJ7RW+2UJfZzUdqy5mPL2kG2NZqWjMjN8aCQ==
X-Received: by 2002:a92:c567:0:b0:39d:25d8:43a9 with SMTP id e9e14a558f8ab-3a08b65fec5mr55199625ab.0.1726313303906;
        Sat, 14 Sep 2024 04:28:23 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4d37ed35572sm350307173.131.2024.09.14.04.28.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Sep 2024 04:28:23 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-phy@lists.infradead.org
Cc: dominique.martinet@atmark-techno.com,
	linux-imx@nxp.com,
	festevam@gmail.com,
	frieder.schrempf@kontron.de,
	aford@beaconembedded.com,
	Sandor.yu@nxp.com,
	neil.armstrong@linaro.org,
	Adam Ford <aford173@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: [PATCH V8 0/5] phy: freescale: fsl-samsung-hdmi: Expand phy clock options
Date: Sat, 14 Sep 2024 06:27:44 -0500
Message-ID: <20240914112816.520224-1-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_042826_212959_6F72D6CE 
X-CRM114-Status: GOOD (  13.42  )
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

 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 604 ++++++++++---------
 1 file changed, 325 insertions(+), 279 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

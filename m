Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C73E8EE01FB
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 01:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eHOLfNuLojnKlI0Cl/SgXUhtBfHq+Hc8+p19Dhz+tF8=; b=eiNEeaSbOfT/yK
	ehdhdijeAU1G1z6xK5dfIw7ve66QpQchZMoyB39eT0UJONE2r6eDuRNv0SY+DBLttxmeoLjkai7md
	nzHZXVJ95FktASLP1AsxbxSu//H429Ss88bz+sCwrm1uXe+t0BqJjrX2iogOTVZhxcKWe2i9KgttB
	3JQo1NUiHvX9y21m4Os70rKbulBLy5pPhU1PaLLxgB7oMw1aP/NyHgaEw3BcA1dgdPDKjoSRo8j8F
	oXtkcaBBSAbKpcqWomeGo/jGAkJOOPqp3HI62BkwGXolbtC9oXJdgY7NPWFJMrZ45A4bbQg6XU6mM
	x6pbEglZl8kZToUsD+8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soCAG-00000007gv3-2Ek5;
	Wed, 11 Sep 2024 01:29:00 +0000
Received: from mail-il1-x12e.google.com ([2607:f8b0:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soCAD-00000007guW-3jOP
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 01:28:59 +0000
Received: by mail-il1-x12e.google.com with SMTP id e9e14a558f8ab-39e6b1ab200so27661895ab.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Sep 2024 18:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726018136; x=1726622936; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ka8v+nuFAA0Gh9Hx/tLInP2OJKYP8TUm7K91UqDbkbY=;
        b=WCSTnvQRp6w3Ybv0/Ig5AMjocgSgL58yz2Jx6hw5iI8zo/pMWNG5g/oBTC95seXdzs
         iOMrKsb6DOezLSgmlOpFUW9sxZuLSTFECnpoQg0kCaAuX2qYceTs1mXa4po3GZf7UUus
         gbsvHDBsceElQnqv96mbwEmjtpvojEZiFW3iQoKr4oBN+FOpaDuzQre1LVRQ0BxaCIT5
         G4KuIGHFFbE3KDPBxxkb2/92J5X2nOOSuiqi8I9I+G3pxoT9xpdK49bOuTspbugNwniG
         Nv2zicAEM0pae3mrWEBBDnc0xuRV8DaeNHgaJLrtskVRsQDiH9mbWfJZLcaq90BwOLkS
         Yq0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726018136; x=1726622936;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ka8v+nuFAA0Gh9Hx/tLInP2OJKYP8TUm7K91UqDbkbY=;
        b=X0EBt9uvtpz91cE0BzYN7LW0x86Ir4uezJtgl2wfvKG7nRqiKBo9Or/1hPcj9AzXvn
         JI3o8WbbEbNFz1HY4DHFIHZSe6qo6HevLkyLVlgsISHDOFk5Q73s5lYqk79ly+QncEge
         FEZfqGHgY9UF9oZOprFxnMbfskiShHLHY8xc4+QHskXQ8oLpGXu0YuBG2O3xPEuozM7h
         g+fBEvl/cM1lvLD6IGMTwUr/lxssmFvEjx/wqYa1K/5ZZR78tFubk664VqRwDJgWLVlV
         GBRRwGNiw7RrG0aNRhwqiOdd8iiepH4j7gkjZ2VciScNFz7c3RwSlM2v2Z7SPA/XV6EE
         41RQ==
X-Gm-Message-State: AOJu0YzFmdh6ogGCHiSaEFoQqzNd7kQi/iGzQgKslhI1xWgQ7g4K/cYS
	tk85puw7Xs91FjUQws/nCDz+y4QlQLbc+dazY+s5tK2ESGXJ7xyktedsbA==
X-Google-Smtp-Source: AGHT+IF+mE7+NwgL4kVINEDilY0cUwrweJIzqC5lwqmEt2ov9DI4+B+MFPZFyGsaQH8Hv60GO2chfA==
X-Received: by 2002:a92:874a:0:b0:3a0:65a0:460a with SMTP id e9e14a558f8ab-3a065a04863mr62567995ab.19.1726018136265;
        Tue, 10 Sep 2024 18:28:56 -0700 (PDT)
Received: from aford-System-Version.lan (c-75-72-166-104.hsd1.mn.comcast.net. [75.72.166.104])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4d094561c8csm1917945173.62.2024.09.10.18.28.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2024 18:28:50 -0700 (PDT)
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
Subject: [PATCH V7 0/5] phy: freescale: fsl-samsung-hdmi: Expand phy clock options
Date: Tue, 10 Sep 2024 20:28:06 -0500
Message-ID: <20240911012838.944630-1-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_182857_951136_1F60B1F1 
X-CRM114-Status: GOOD (  13.87  )
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
  xphy: freescale: fsl-samsung-hdmi: Support dynamic integer
  phy: freescale: fsl-samsung-hdmi: Use closest divider
  phy: freescale: fsl-samsung-hdmi: Remove unnecessary LUT entries

 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 596 ++++++++++---------
 1 file changed, 318 insertions(+), 278 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

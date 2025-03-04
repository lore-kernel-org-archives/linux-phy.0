Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2203DC282D3
	for <linux-phy@archiver.kernel.org>; Tue,  4 Mar 2025 12:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mNRRXZWVC8ZXoOv7Gd2bEX/e6mAq3XTOMiPGWgXwC4E=; b=nBgD7GuZTA/Kai
	JPB89T2gGDBn0maM5g06R7GLiP7rPHOhncy1GSH1krhZ8RfCZnu2t/mDVd9GfG4asuPZch0N/YPS5
	deTIHN1lAZhM2uqcNeHfz8RrSORCqAXiPLuZEy5bjKVZqVEkAl4HzmQNZ5eSqD95tYLYjHfYSI+5M
	1x2J/7rPJjFBnoM968m4gZ8lvDyIUo9nvDw6CJhYVwzLwkXqlIlUZR6D/R1yFneDwZMgyb4redcpe
	rDHYP53Nii1a8Huny01hnt2l3DnQhDhvdGmoAfAKez/0WESUsdLySrx8Qmsq0M1VPQiMty4TBeyDI
	cwhDFxwZQZw/7gKv1tbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpR4n-00000004Wcc-47CE;
	Tue, 04 Mar 2025 12:08:45 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpPpA-00000004GKC-2qxn
	for linux-phy@lists.infradead.org;
	Tue, 04 Mar 2025 10:48:33 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-390e3b3d3f4so2794886f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 04 Mar 2025 02:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1741085310; x=1741690110; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9XPB1HGwlRjHpgwyLpPMHl+9QLJ8Tbr4jECS3aE3w44=;
        b=nktdIta7thYUxGSiZvmv4V4btof1ZitoIKxz9pv8pSXDVCR8ndpHCjQUnsMo7Idsx2
         4xKSR8rYgv4S4fmgF1pUTLNAsu/fGmCsj1/LkVYlENHWApUCpPj/kyrIXXIgBODAxisB
         ogqVmM7Xdj6AfPg2QUcnxXiV4J+NZsdvwp10l2Ite9XrymM4/fp9KWM1ItlWcxD8bn44
         ZqtrnXRrmxteli/7UCeEVNe6i66Q45CJRQgEeeljL7/hla90wZNcT/kHI5tS73iIBsta
         GND1iiiVZD+1b9Pp4+2iaWZ940ujsqlqMlfvtnL0bgkAKYHrgv+x8natBkZomzA536B1
         9kIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741085310; x=1741690110;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9XPB1HGwlRjHpgwyLpPMHl+9QLJ8Tbr4jECS3aE3w44=;
        b=TOPUVeMmjLgPJrzzmL2fRW0p1Xh8OizSooSbrXR18P94mcSSj2sC/YRDdxcLKxdB40
         I1PvMkZXJ97HeCrTminufb3NpTy4gfi/aF21fSRNzCQcLFNZA1k2c4McpHEyGIxTbSdL
         +89EV/jepSxSjT53nG5mMqFp9wGPVgMKTJdOTqQnwL39gXdOhA2SzygOnuf+vqgHDFi/
         /Cf54ZjjJppKw5532B7AygbnSLaiZCr3ixhjcz+DyO6ALfGm0a0JYxADzisWkFYpP6/n
         lLEH7MRS0pvXwtixNpoOPuNAoiy/TNZmCNGaNiiJXNqyMH2JzA5B8S8nuwKaynwDf+7F
         qpxg==
X-Forwarded-Encrypted: i=1; AJvYcCVn6bUGbkpFwnK6ktfoL00Cns9QHmR+O24OPmEjaztHE2SnPSMZtvV+nUF/ubnH6CYpUZ1DaFquydI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxINa752NQZ2MUD2rlEeWkSrNExLn9lGVybyomIJT6W2iSHNucY
	ukDRCAqKI784KmI4DW7i4lE7HnOd5uDR1YLPK/ZtZVb/IUsXlG45Bm1eo8MfA34=
X-Gm-Gg: ASbGncuwKnuMAUaqKRFdqFRO4Zpo+S8RteM+1696lSpx+jWOcqmV4ekt6iu0vSGOVkj
	QZrElOuabbk4VqEEr2BJPHI/jVVr21a2HNc7Hj4nOvnMn4f59oI/AafV9DOEyc1kipB6TSoR/Ll
	15aSgrG6zU46OrviadcPgFDhkDclGXRLKTjfbjYhfLjD6HSLve+W1X2zhJ3pvOq6e+JbUy/VovU
	IIdBJJbOpddDT3SJmxxw/HBgv5LXcs6dDPL3OS+Pb78nkPfo8L43Qmj/ZG83hg2I4dZ7sYonO0g
	BGbEHGtubYiAv4cQ3TZeO2qBNlqe5KjDXYBX34p0vtBsqMZySxSTvsoY4TCPMcDtYL//pEb5Wis
	=
X-Google-Smtp-Source: AGHT+IFVrf0sQSW1RaHIuqMe1zsgZYOxQjalOSZJpBfpyvJNxn0RgZcyjbBC1AuujFsNmEiAisqIpA==
X-Received: by 2002:a5d:5f93:0:b0:38f:23f4:2d7a with SMTP id ffacd0b85a97d-390eca070a7mr13797386f8f.40.1741085310559;
        Tue, 04 Mar 2025 02:48:30 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e4844a38sm17445161f8f.75.2025.03.04.02.48.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 02:48:30 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: yoshihiro.shimoda.uh@renesas.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	horms+renesas@verge.net.au,
	fabrizio.castro.jz@renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 0/5] phy: renesas: rcar-gen3-usb2: Fixes for Renesas RZ/G3S
Date: Tue,  4 Mar 2025 12:48:21 +0200
Message-ID: <20250304104826.4173394-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_024832_720153_849453F0 
X-CRM114-Status: UNSURE (   8.78  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

Series add fixes for the Renesas USB2 PHY driver identified while
working on the Renesas RZ/G3S USB support. These changes are
needed for the upcomming RZ/G3S USB support (especially for the
power management support).

Series (with [1] on top) was tested on Renesas RZ/G3S with consecutive
unbind/bind and data transfer tests before/after the unbind/bind.

The unbind/bind was also tested on the devices with the following
device trees but w/o checking the data transfer (as I only had
remote access w/o USB devices connected):
- r8a7742-iwg21d-q7.dts
- r8a7743-iwg20d-q7.dts
- r8a7744-iwg20d-q7.dts
- r8a7745-iwg22d-sodimm.dts
- r8a77470-iwg23s-sbc.dts
- r8a774a1-hihope-rzg2m-ex.dts
- r8a774b1-hihope-rzg2n-ex.dts
- r8a774e1-hihope-rzg2h-ex.dts
- r9a07g043u11-smarc.dts
- r9a07g044c2-smarc.dts
- r9a07g044l2-smarc.dts
- r9a07g054l2-smarc.dts
- r9a07g043f01-smarc.dts

Thank you,
Claudiu Beznea

Changes in v3:
- collected tags
- improve the validation on the code that requests the
  optional IRQ as suggested in the review process

Changes in v2:
- dropped RFT
- collected tags
- fixed checkpatch.pl warnings

[1] https://lore.kernel.org/all/20250219161239.1751756-1-claudiu.beznea.uj@bp.renesas.com/

Claudiu Beznea (5):
  phy: renesas: rcar-gen3-usb2: Fix role detection on unbind/bind
  phy: renesas: rcar-gen3-usb2: Move IRQ request in probe
  phy: renesas: rcar-gen3-usb2: Lock around hardware registers and
    driver data
  phy: renesas: rcar-gen3-usb2: Assert PLL reset on PHY power off
  phy: renesas: rcar-gen3-usb2: Set timing registers only once

 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 135 +++++++++++++----------
 1 file changed, 75 insertions(+), 60 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3D27CF31B4
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 12:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vn56azcOTB2rwX+FZzHtBQaZN3V1UNrszKSpBcEhO5E=; b=k4MDV3xiXc9AWT
	+49UgCFKY96K5oWYMyg0Skm9fkPlmmk+oLseFBsu1UetbIoIOBBU5kHaHsugPVQlXtrB6O0UOge+X
	4tcMC8u7OIvpY8y/QxTLtcDwndmeKrn4F0U5c/hzjNzbdkuctfX6zzI37/NoCsBpnAbUGEhRYvzDh
	qi5nlPLqOqZNSuUtXU6p9NWDt/1SP3lfWSg+xKB42lBqA9SOtYnBYiZYHR037G+jUkz1uqFjjxHmP
	nGTnfmEq7vOGxYFKI2KTVEJZs8CGGWTz7GynTN8lCrbkpEGYCD1cLxk7gQ2AqXQlTMUpJNSqz/jvm
	zRrX0mxwVMKhfz/uD4Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLgvC-000000035Or-1MVC;
	Wed, 19 Nov 2025 12:04:26 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLgv9-000000035No-2M0k
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 12:04:24 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-42b379cd896so3830785f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 04:04:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1763553861; x=1764158661; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rnwi3hxPgLaT7fwS78Sg25bBZLOYpJ/bNpPRyg6chqY=;
        b=S6QTNAzvHA5wEanx7uFzoZ8ahTKYBwSkQU4lSMkWkhGpe91hlrc7Z48Qg/CQny34JF
         jcUcUOkMm4iQ6kvCQJS5ElsrNUsVCUsdK71+Ewd+6M3jpsk5zf5xzwLcLsW4ZLD5dt0o
         gJr5EQIJn+pjNJTvneZM6842o+m8Ad26XUSe/qM3sT0/QT1fu12eoMIa0koBhntmi4+U
         DVOHZW+lBr4LTHnm3o/8eIXBz+qBq2fAk3wB7UpKp7TyWnXsF1lPaXrK1MlDhXfMwEAm
         mJX1HBMRTJaBg6awl3hlHL97SpL+xrZ/yXP5l9vUHlqTmSnlpQJjnEBhr79SXEON5e8L
         oBKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763553861; x=1764158661;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rnwi3hxPgLaT7fwS78Sg25bBZLOYpJ/bNpPRyg6chqY=;
        b=NSkcI2AS8Cj97KFj3uAzGx/uJrgylO49aNpmj7uNjVlLoOwSftbShdTpW3Te1lSBTH
         Q5NIW7kMf+k1u9k/6i6AGMxkH3js709JPsCwfRGanVx7ke58vN2mIdCNyR2wC4Ptx42P
         5wuUZwk4CapTwFsZrg3d9g3pVUyEu2mby+eQFfPYbDcKwGZXn/e2/x/9RGBdF6dZBqx1
         mz/jcfG5yW8mNsUMbyXrats6fMLMZH9VxZALnduROoLs5U+pDxCIcRWwbpSCBh0kJQO1
         pBp6XclJoupqL7esh/C05KVcaPs+x3B4xsUFQSRei5jD4ygzPJ71jix5B+VZPcv5LksU
         NXog==
X-Forwarded-Encrypted: i=1; AJvYcCXUSygarKVo+7LYC4X9UB2leyHiAxk/qvWUgxbGkQKL7Bjf45Q9ii9rOBsBP9TR0E23ylYnA/1VKdY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzQ/wapjG7co9nZ5qtlqXoKg4FF/DmTHBAgKcwYWqx8ZalRHqNA
	iIBm/bp/NPxPgP+xvEbs0agrmEXgB8rQm/vs4VfPDnz7f4wZjTxjiG4p4DWOyNJpkQCQGv898ur
	pBfbTJyg=
X-Gm-Gg: ASbGncuMLKII7YTBoWinL2DhzrcyFkmwSoMFXYbipcgxZZ0mrWg3r1Te7c0dXPt9WoW
	FIHxYTS6l2Uok3GkNPLV4IASrbOShGzUWTyT3IR8qH7vgpY5CPhR+HNGyhdg2KEqjGrtmja2l3v
	HTBsOtH/Ve29WDxaGHI6lO/W1sHTmCnqqc5G03paDQQXoeRpe+SnRsUZXuJbT3eIeYROO/MJFSK
	jNK97HWsmSo4/NPul8tzS4PHdJtLy/VxvuxE9BIxnNm0lt0isRDtq61mGd4/gA8faqxEYpvS1q/
	ImTqQM+6th9HnNFQESWLIWT79PP7v9bYvM3kXbXgnMK2M2FEJVCAucThMa67jJW5JBvfreZYy+P
	BFtQT1q0g5ijwfNMGrpHu2D99SQM7vAjEobfkD62oMXkyChJLtOzRIMpHRuWXQOFdri7I7vEs2I
	VYZ1nBfNKBrUAn3bSniB+W+Yvd/wm0yw2XR7LBynmhpSNmAp760mQ=
X-Google-Smtp-Source: AGHT+IGkGo4aCle/4SU9mLoLvq2s+j/Xoht3I9410x1lkX+uBg2DhRd+83qLvaEMvdhA8OqjMnnNmA==
X-Received: by 2002:a05:6000:430e:b0:429:d41b:9fe5 with SMTP id ffacd0b85a97d-42b59367b08mr18325024f8f.24.1763553861556;
        Wed, 19 Nov 2025 04:04:21 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f2084dsm38431132f8f.42.2025.11.19.04.04.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 04:04:20 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: yoshihiro.shimoda.uh@renesas.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 0/2] phy: renesas: rcar-gen3-usb2: Add suspend to RAM support
Date: Wed, 19 Nov 2025 14:04:16 +0200
Message-ID: <20251119120418.686224-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_040423_655415_F21BFBA4 
X-CRM114-Status: UNSURE (   7.70  )
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

Series adds suspend to RAM support for the Renesas R-Car GEN3 USB2 PHY
driver. Along with it, a preparatory patch was added (patch 1/2).

Series is built on top of patches 1/7, 2/7 at [1]

Thank you,
Claudiu

Changes in v2:
- added patch 1/2 which was initially part of suspend to RAM support
  patch

[1] https://lore.kernel.org/all/20251023135810.1688415-2-claudiu.beznea.uj@bp.renesas.com

Claudiu Beznea (2):
  phy: renesas: rcar-gen3-usb2: Move phy_data->init_bus check
  phy: renesas: rcar-gen3-usb2: Add suspend/resume support

 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 66 +++++++++++++++++-------
 1 file changed, 47 insertions(+), 19 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 329C2C88E7F
	for <linux-phy@archiver.kernel.org>; Mon, 26 Jan 2026 09:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YVBoH8fco47iUkDuAlg3g1O+G3uanLq1vHM6hpngmHg=; b=NCDuDHwhtvGf9M
	DcHk75W800KA0xxCz1b5pO6F7WdKX4w1a0pBP7C5/F0YuWO2AXMahWzhYV4GIg1LIONNgxkZaVnNd
	JXtLjUqvffKN+L+4xOROVPN1wznZU8F0gamidpoPHUvZr4SfLQTOKVif7j0yxS9xblbdic7x4Tsqz
	upynAE2Fl3+GAxJ86wMd6ztLW0uA+/g4+qPPtCVEy18G1jfBEVQgWik5Wo5zDwvGlnMsp+yO3ZM5c
	ffkhtLkyVS4DGmRC6m4al9wVuHNGwexG5QqroRgKIdTrQcvKIXuJBYtqEMKpnbBeZhlTR7Mkgsbeq
	jF1N96fqE8AMMYD/C5ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkInN-0000000CB9H-3I7J;
	Mon, 26 Jan 2026 09:22:05 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkInL-0000000CB7r-1XE2
	for linux-phy@lists.infradead.org;
	Mon, 26 Jan 2026 09:22:04 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-47f5c2283b6so32411985e9.1
        for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 01:22:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769419321; x=1770024121; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OI5Ny9D74Cc/ioYhww8l8XjzBGWxzHq8lI7GocImLIY=;
        b=H3chatQbDNVa7VqATG6sJAfPrHh9vWkePOes8npiLeg0goKGiy/laLERWatJW2GdC+
         U948f1z7i+VWPCnQm9YQ/gVJhW5Iq0bMjQZTUwuYjYKCouyJA0JCX3IqAiMZbE+TDkWm
         OddaFo8QlkxdBf4TSHLuMN3tT7Ef32gE4ZhWvFWP2JfMHTn4PHvi4VcTUPCyx+AsKT5s
         AhjIMhMcb6Hp42CnBv08bi4mn3pp8br6htB/tBbnS197HwZvJFsoDJXpwqLnxAIcgFOb
         qiJRSySoVZXoNWwL8FpW87DBCoiziLOXZO7h0zgyAr2J82q40br6fK3fNd4O/gk6roXp
         9Bmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769419321; x=1770024121;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OI5Ny9D74Cc/ioYhww8l8XjzBGWxzHq8lI7GocImLIY=;
        b=a9fCcvS+9FvfcY4+H6qNQXh/AdFowIuL6Idu39UY+E4LDKUqWLuWKVaB1CuvAynGMO
         G1l7pQ7xu+TECc55niOCA2IwB0i+sxzVwxAGlYyDqkBSbb2i9FuheT4ZQs4cDCzl2vGN
         wkXFcxNMHNmebtqWYbfMFrOWedj8/V7C0Prz+Jddbwaspdm1YqwrKbmiwwYmANW6lHvV
         x/xv9R8H/lpopWLHDFE2cwmHQoWnqKBLSedvyatxA+oi+qkw5jTlwwJkqHZgatP17dHl
         YtG8Y21htZxzpPgCxI4cKXnu1ChmY9185pnR1QrCDT2D3JQVazugW8Qj6g9iSR+53Ufm
         cFsQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwBhXDn66VySyO12vofcmA1EmsvqfVXDG7X4Gojam4vNrClD5ft4BcrxYKeeE+zjnUPK4YcYBPGQk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxHanDCbCAPQvj6QNa0nTmoxISJD9Znk0F5aXUD+MIYWv7cixCI
	+KNQataFh7yp6UPJRKkSyOl4HtjGleDlve0b99u47atmvZfhmTKaIB0boeeK2liV7Ng=
X-Gm-Gg: AZuq6aJQQClCXUbi8w1wCh/5zFrjsjujIk+SLT4VhBLtHMENWdHv3Q/X2S5FK2TkJZQ
	5m0oULxgwwDInkFbO+vi8zZnRQojFYohGfTSKGEj4wTAQB7nwV6Wm31kBV0wwMDTgxYy69pmfJx
	bPakuyxd9OihXYUjlxMYNcB9+lsBsaF+YwIQAlr09uszEVlgjNrRYFfM7tsbEZNBdOAet0B3wUC
	V2I6Gc7hbActSb2om4M1V+eEJtPTBTgdNelQWhlkJcQPnE7SRECDHFUy5SU0iOXNawIuHgikZ/f
	BVEj7KAg0UTONPYUR8EG1nk05BUFnn/AGmz/uA5X5YXn+dLaEe4sRXwviNgiSYnMWdSN1Rm8dbr
	IVZ0NcI4zuYFeIRKlX42KNfkXiPbQtE06Db8oQse/+8Ri10jayxgcldxzgpJGOQF9/3NIfJd+Hf
	NccGBs9D9/cKiFRNPJWCE=
X-Received: by 2002:a05:600c:3b17:b0:477:7975:30ea with SMTP id 5b1f17b1804b1-4805d06616fmr56869205e9.29.1769419320889;
        Mon, 26 Jan 2026 01:22:00 -0800 (PST)
Received: from vingu-cube.. ([2a01:e0a:f:6020:e270:a43a:f2fa:900a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-480470cf1acsm346669855e9.14.2026.01.26.01.22.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 01:22:00 -0800 (PST)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ciprianmarian.costea@oss.nxp.com,
	s32@nxp.com,
	p.zabel@pengutronix.de,
	linux@armlinux.org.uk,
	ghennadi.procopciuc@nxp.com,
	bogdan-gabriel.roman@nxp.com,
	Ionut.Vicovan@nxp.com,
	alexandru-catalin.ionita@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org
Cc: Frank.li@nxp.com
Subject: [PATCH 0/4] Serdes: s32g: Add support for serdes subsystem
Date: Mon, 26 Jan 2026 10:21:55 +0100
Message-ID: <20260126092159.815968-1-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_012203_407415_AA694EA5 
X-CRM114-Status: UNSURE (   9.60  )
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

s32g SoC family includes 2 serdes subsystems which are made of one PCIe
controller, 2 XPCS and a shared Phy. The Phy got 2 lanes that can be
configured to output PCIe lanes and/or SGMII.
    
Implement PCIe phy and XPCS support.
    
Vincent Guittot (4):
  dt-bindings: serdes: s32g: Add NXP serdes subsystem
  phy: s32g: Add serdes subsystem phy
  phy: s32g: Add serdes xpcs subsystem
  MAINTAINERS: Add MAINTAINER for NXP S32G Serdes driver

 .../bindings/phy/nxp,s32g-serdes.yaml         |  154 +++
 MAINTAINERS                                   |    9 +
 drivers/phy/freescale/Kconfig                 |   10 +
 drivers/phy/freescale/Makefile                |    1 +
 drivers/phy/freescale/phy-nxp-s32g-serdes.c   |  926 ++++++++++++++
 drivers/phy/freescale/phy-nxp-s32g-xpcs.c     | 1082 +++++++++++++++++
 drivers/phy/freescale/phy-nxp-s32g-xpcs.h     |   47 +
 include/linux/pcs/pcs-nxp-xpcs.h              |   13 +
 8 files changed, 2242 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
 create mode 100644 drivers/phy/freescale/phy-nxp-s32g-serdes.c
 create mode 100644 drivers/phy/freescale/phy-nxp-s32g-xpcs.c
 create mode 100644 drivers/phy/freescale/phy-nxp-s32g-xpcs.h
 create mode 100644 include/linux/pcs/pcs-nxp-xpcs.h

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

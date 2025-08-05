Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1490ECA0EC1
	for <linux-phy@archiver.kernel.org>; Tue,  5 Aug 2025 12:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=58VImbNjkvnwgpDEW6o9iXIwwQVflOc28BurzFIrWIM=; b=2fXD7aiYYENE5H
	zabbdvQhx9lu8bh1o9T+BijtW3221QUYzz3P2Iu3xz8NDn4yQhoQ3VydfeDDKEV65RN9qIFwxzVFT
	6LHZYO8Nvupa7mBOT6wFjwtzBXXaPgzfxbq6/3TPCj27dkhq3B4bpRDjf43Co92La+KqBcVpdzVSU
	xtHCwzBFQjDyKJAhQ4H0N3gzhirjhhxHScq7hsB/oVFUtWdj/Q9vMtjYyefOkord8rD3WAX8Pou8e
	86GWqa57HiU3aieSn5xTyxQnhd0h8LTSqm7wsMow8YqQzWO586bqNgVry8a2jfF1bmTc0HGK8DAgO
	KkA/Jrjw38xXluDDzSoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujH02-0000000Ck6T-3VlB;
	Tue, 05 Aug 2025 12:42:38 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujGjf-0000000ChZ7-04lN
	for linux-phy@lists.infradead.org;
	Tue, 05 Aug 2025 12:25:44 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3b7834f2e72so3451453f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 05 Aug 2025 05:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754396741; x=1755001541; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mSDq+Hn2dE0wUvavZKQ03gFbBr/qOvzFs7wRJoGmD5I=;
        b=SP08WraD3KvPvb1QvsMKVT/oQo9+XZZNWLKdfvKfKMyCJ96+omIS0P+1FsGT9+xtPA
         CGry8kd6pP2Vx+plv9ToieVsyV96ZcxrvPgW8+7c+ZZ9LMUZZdPiekkvE2pphYlWbpFZ
         ELoN6GwzMumKtBo1fm3sRwRCBS2C8aXGiy9/Qq9eBxHavjc8sPSKCKCf4v5IKudjCtpq
         TqTfSi8eB/KIbmAGH1iEkVeAMU5dHA5Ngw9turUnRvWpVDdThPN/a6dWKH1kHMepxcRK
         rVyVGN4SdK1i3VS87BIUX36Ac8eZQYpnFaRKdIjAJsreaSbzZeiABxm7JTk70WMnwBP3
         VGSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754396741; x=1755001541;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mSDq+Hn2dE0wUvavZKQ03gFbBr/qOvzFs7wRJoGmD5I=;
        b=mxr+nntaP7i8cDWnauP2YWk3xb8chdkDLY6D4/Yi8BOXj1wy+QoJZaLQ090yx4wZwo
         k4C3VU3lmQyqII5F15JQw29pLShvgYLqqZJ3NWVGM+j8hcEu1bwqCRaf0UCF1NUxZc2p
         tKlycze4vNRH/SvWnsbC78NgLA86JjDskUYjzxePL2Crrm1pKGJGmTtmKCeBSvYrtRXF
         5/ehTYMMOhriTAcueoMNGsM/k5EcN3DyID1/yaWn/lRCHXljblm8tWVt3pj5b6YBqBQR
         EyYl1LyDHWNCm/70Be64P+iz6tcMJNkQ6hCruJ9sYj9sMtW7sH0WfI4YvUiqy/dUJmOQ
         +nxQ==
X-Gm-Message-State: AOJu0Yz+sM61VjB1fVT2bAYjamfRY0s44qjyKvJtN309H9rhcITpsMIp
	YaVTkL9GSiSrWTMIfnJ6UhfYOgaHzkq9VuMiZgvGlxdch9mY8Tu5djwL
X-Gm-Gg: ASbGnctKQh3U8pMQm/QHjUh3RNOuXwj/1paVJU4yzE+qdptP92Bgca4GmuknxlGGID3
	Ee6P8cP6J1Zkqff9BPtjyiWAIZ+S3b2V3a/dJpwWmOAtdTcVdCX6+7vVTuyLvxgzkPxbJRudLpv
	OxC5ZQYkK64rtW+W68DGBcsUcw+wCGLWja+BxcEBunti97PrR1ASRObS+ZczGlaVSwcrFPr+rmu
	1PEmdKns0/3Au+CRXdgB+mAy6nQtfxBLYWZ1rFbyuKNVf23hOzFI4q8Sfh04RFDbZUfMyQ+acfT
	awLFzGoiHbQzbHr5hPzrJ24pDFpRYtfVdn71C9GcPk4aI6eeQjSKEzVNHicDD1vVomBlB0NGdiX
	W4/abk8qiSmEXb/7X3PGJO3nUV9mljtDB9FEQmlC1YU70sy7+WJ4bOBDwtV5Jx3ezg/fRpN4fCQ
	==
X-Google-Smtp-Source: AGHT+IEy0zA+ghxMfTtdoc1SPyYprPnGLBo5MjQWsC90kxL/dA+l2LKxoz8yb8Dy7AGzGDkZvD9z2Q==
X-Received: by 2002:a05:6000:24c8:b0:3b7:99cb:16f6 with SMTP id ffacd0b85a97d-3b8d94ce483mr9806106f8f.53.1754396741365;
        Tue, 05 Aug 2025 05:25:41 -0700 (PDT)
Received: from iku.Home (97e54365.skybroadband.com. [151.229.67.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c48a05bsm19153986f8f.69.2025.08.05.05.25.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 05:25:40 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 5/5] phy: renesas: rcar-gen3-usb2: Move debug print after register value is updated
Date: Tue,  5 Aug 2025 13:25:29 +0100
Message-ID: <20250805122529.2566580-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250805122529.2566580-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250805122529.2566580-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_052543_057149_4A170382 
X-CRM114-Status: GOOD (  11.89  )
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

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Relocate the debug print in rcar_gen3_enable_vbus_ctrl() to appear after
the `val` variable is assigned and updated based on the VBUS state. This
ensures that the debug log reflects the actual register value being
written, improving debugging accuracy.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index bc841982a19a..86689d0cf74a 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -209,7 +209,6 @@ static void rcar_gen3_enable_vbus_ctrl(struct rcar_gen3_chan *ch, int vbus)
 	u32 vbus_ctrl_val = USB2_ADPCTRL_DRVVBUS;
 	u32 val;
 
-	dev_vdbg(ch->dev, "%s: %08x, %d\n", __func__, val, vbus);
 	if (ch->drvdata->no_adp_ctrl || ch->drvdata->vblvl_ctrl) {
 		if (ch->vbus)
 			regulator_hardware_enable(ch->vbus, vbus);
@@ -223,6 +222,7 @@ static void rcar_gen3_enable_vbus_ctrl(struct rcar_gen3_chan *ch, int vbus)
 		val |= vbus_ctrl_val;
 	else
 		val &= ~vbus_ctrl_val;
+	dev_vdbg(ch->dev, "%s: %08x, %d\n", __func__, val, vbus);
 	writel(val, usb2_base + vbus_ctrl_reg);
 }
 
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09B04D3B7EA
	for <linux-phy@archiver.kernel.org>; Mon,  8 Dec 2025 15:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ch7ZThYD2NCtWllVI9Q2PCKbt/LR7pfDivJtbxT35M=; b=gaoWWGE6GdDNkt
	4kIAzPnx5IHGHBaGyV1Zm5AUt4U9c7ACOeimFzISAx372S3rY1qFqiuNrzHLTv70cHf80wAF+edvN
	mVEMXdZLOYlGdlVaYVTbhNC8r6b+PmYKuVCTN3GXj3X04QMGkyY6Bgk2Ve4UmdtT5HS0bSd6h0fkZ
	OhKogzu33E30mBGRYPgavplmAcwNU7jzPudrUjWnuvUq+BdM5DfjSUf4xm1pWs0DQUu1WSoicwwXZ
	r4HJEih5eOHI5hqC408i4aAb2hnyTtqM+tJRC9UvxVbkTQo3WiXI8X2kmt4M6aMJVFlDmmUAkOsNt
	TqmQCFD1JMaV4kJHqCug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSdVS-0000000DGe6-250D;
	Mon, 08 Dec 2025 15:50:35 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSdVP-0000000DGbT-2KXy
	for linux-phy@lists.infradead.org;
	Mon, 08 Dec 2025 15:50:32 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so43258945e9.2
        for <linux-phy@lists.infradead.org>; Mon, 08 Dec 2025 07:50:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765209030; x=1765813830; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x527E6uKOf42KbGTdBLjmQLImi6xcMvFsFTQ4sivsqc=;
        b=MPi1VF2L61veZhfzRskOinQHFHlczlA0qgY5LIEVK1BYGubHvj+wQ/QhDFa1TMB0Ud
         eo8ThueA0WKti0K5jdRpnUyfWznAVwlKp3VgoWo5wkE6zaqtbFaoFpCn7LrvrwhrH7sZ
         jk1MeR9BYgmwcHIdn3WcPMlg5QYZoVKpvDV/T088d+iGNNw+QarWx9V2k6FoqU4ztGN5
         uS/g/cbz3mnO8aSStXJHgeeyeE8vBFMN5QsJlgBuEGz3hvzBRVi3npRuV38ZwxBY1LLg
         GHu9r/Brn5+k92Llw6IbDptv355uIjZTnBPNshaaDCAEPS2pXfseKsM7JxbYxi1QN5U1
         FOKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765209030; x=1765813830;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=x527E6uKOf42KbGTdBLjmQLImi6xcMvFsFTQ4sivsqc=;
        b=PmorfZdOtm7RREFZdnysvPlLNwEJJ9cHsno2pHjQDJWpjLx15jTk2gpp0/12so1EoO
         Sw1TqFVw3XH9FasFnnelwjS9VN8S9dgpbTeSJRbw1mG1nczCgDZI2h6xFobTc23iE0bf
         a5Cj+KpiHkx0uO4QH1t0D1D91oicU7CDAxqWGe01VsZLWcy7QPq0vdYfZ6Kpk6tyXeKr
         qajRaP+INWobSYkfH47+KalJrPn2XXPujCREmaWe6+h6GijXnYe9iGmZsNnv1JgWUvXn
         hk0krarr9wKwTmDqYCtIBCHBol/MhhSUE1DiPWaEcOoCyZUO+n43Iw61tJ+uN3Uw3WeZ
         upeA==
X-Forwarded-Encrypted: i=1; AJvYcCVwqKe4x790mJjUlj+vGWnWu6ueTadQ3eaWYohpJusScGcQoRgNH7Ny/TajjztgQDcIsfPzeksT0ZM=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywbi8uvqRIigKIuY+s/wJ22xlmtCGQOsmYis3bghFsQ9+54ossh
	6xnT2xAT4ZjsT5BXs/eMiXKixvPhKDV1851NKfdqJN8occuUkQNa5uY1
X-Gm-Gg: ASbGncuvoho+TogOU1rDHar9DzLYSSwAXKaXPjQ8VatBHf9VbB6axJkJPsVt9R0+bbB
	GlRdsVgiMPybOvLymvauPrTugMI1YWEbfDViszR2JB32c4mRPE0WnB0kC55Sndw3LQB/T1pDtSW
	2tY5e5oU7xUiIa7/cSAEAZ5atGJ6L859yZm2qX12VG0IwKdDcRismuxh+eMJv+PaC7ahfVpUQpJ
	3qxBNNc1QtAcaZCShMhqyQg0hNnNGe5+QmPEXFKUAhdfmMb8Jq0LGswoj0T5XTwoIFf0ix/CsME
	s1WhfR+KdGMd0Ipe1jwvAucUDD9f8XCXIr4bk++pTgOxozrFYVWhaMu6JlOspNdk9kDr9pVfWJA
	0Xj5pfl0M7Eib6xxxkbC9tPGybX1QOWDjwW4l8uuVRbfTakG3W8DBSZJoMidRkoB5UsT/ZGC8m7
	mwzL9tLnwY7O3uS+IMehK0Nhv3R3kvJdOrZv6ih387/T9U
X-Google-Smtp-Source: AGHT+IELv3HyBqVX0oHKmVkUANGckslLO3vK36bXV7AlfWxHA8Rsm8SHLGtTzBdm1cf0bnBgruDknw==
X-Received: by 2002:a05:600c:4707:b0:477:641a:1402 with SMTP id 5b1f17b1804b1-47939df28d8mr67860885e9.4.1765209029622;
        Mon, 08 Dec 2025 07:50:29 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:9aa6:8a23:82c5:2b7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4792b150878sm147717845e9.3.2025.12.08.07.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 07:50:28 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 2/2] phy: phy-can-transceiver: Add support for TI TCAN1046
Date: Mon,  8 Dec 2025 15:50:19 +0000
Message-ID: <20251208155019.136076-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251208155019.136076-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251208155019.136076-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_075031_612550_7DF398B0 
X-CRM114-Status: GOOD (  10.17  )
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

Add support for the TI TCAN1046 automotive CAN transceiver. The TCAN1046
provides dual CAN channels and exposes STB1/2 control pins similar to the
NXP TJA1048. Reuse the existing `tja1048_drvdata` configuration for
TCAN1046.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/phy/phy-can-transceiver.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index 330356706ad7..41026bc2410a 100644
--- a/drivers/phy/phy-can-transceiver.c
+++ b/drivers/phy/phy-can-transceiver.c
@@ -106,6 +106,10 @@ static const struct of_device_id can_transceiver_phy_ids[] = {
 		.compatible = "ti,tcan1043",
 		.data = &tcan1043_drvdata
 	},
+	{
+		.compatible = "ti,tcan1046",
+		.data = &tja1048_drvdata
+	},
 	{
 		.compatible = "nxp,tja1048",
 		.data = &tja1048_drvdata
-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

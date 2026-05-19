Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A4C2CD4F3C
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 15:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tngg7DWxZkeXU8W/KpVrAwE68vpX2MI1Zp2xntHB0Jc=; b=02L21dz4orU7MR
	6Ti5bC0eiTGzkHswarPmMnisOXROO79D1zw1e5CiZdBF+n5D9NoefrHOC4ys9VIy1gBJnsAbs/0mT
	bWQS5c0lbZqatUiNELaBDSazBRafdUl7yrw7DaIYH9PTZVC3msocB7xRrU6vepZwTBGC2lOgsedDX
	rho+l/N2UirPwOLepOoXh+IFQeNGhpxiYzJtJQprVXxQnuFHGIreyzxN8x5CLEoFlfq7tY6TRdvzp
	NgSO8BrFPFsN/WakSiWJT1LCjG1zKbdsWEq8E0hW0P2c+BUcianI3O/PXbpt6IFvKqA6u7lbNYGSo
	LCtmlURbrUU7BXJLzJxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPMEt-00000001zre-15lT;
	Tue, 19 May 2026 15:20:11 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPMEp-00000001zpV-2jra
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 15:20:09 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-488a9033b2cso30496585e9.2
        for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 08:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1779204006; x=1779808806; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hwCcBmwavBVCJWzCp+c36LUoqjkVTauvQKvnfp7nhdc=;
        b=BeWRSCIsu8OIMYtTSoK1zdRSC9Wb/+F5MkCmLy8Jn9ZQZCwsr4InzLxadd7dCKtvL5
         X6TfzNCiK+IGwhrwTfwZgBVFtkkpyYYBAqa1LGKL2e82py6zIx7IoNKZvI9eAYYYnF1/
         NZPpqgPJ93GYjssC9vW/5Nyg1bqsYmvu96i6YFeEe35uMZNZAU8TYCYq7PCd8mfBIXDr
         iXK4zR2Id+TogRjg9CnSdRro9Js+00k9cdqPZMnJyq8BTJM3xJFJMbZQPooJmtKurVG6
         Gb6T/UA5NXmE2aXXp/5Wim75OyZp9sl+TayoTiy2FSm/+OaqqIG1R4xvD0AbSSQREwjL
         SXBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779204006; x=1779808806;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hwCcBmwavBVCJWzCp+c36LUoqjkVTauvQKvnfp7nhdc=;
        b=Sxo7ZUQlDpaVNuDS1fKBJ4/D4BUqIZLuiQWZnqZgJBZlHMfo5qBAXxmbMMVmTDgjUq
         pOvWrWrKTK6VlWQBZ/bQN9emowY54Uz993pu5vSGG3+sity423O5wLR0SuRaO5FAFpst
         DPnt+QHyjkrlzFRDMutFHJdt4PV71RRHgxBnEEin6GqXYROccOZ8ZrTAM0uK4NF009W3
         7lf2nrCyhg1WPsDxcxdEMtMey5A2B/IGHa8wERoyORLEyzvUGwa8FccOZZFdsFXiCT26
         R7+gmUb3GsGTuz8y3tN2w+F0MSfc2mKWalijyO9C4uIv0yuOTF1My9pHI25ln9D3XyXc
         MzhQ==
X-Forwarded-Encrypted: i=1; AFNElJ8XUO///Vfbn4X2SfcdkAnn9TYqtfZOuMWuZSVcMKamUbB2zGCGnsJVg9+XzhgT80SJv9wxu5JaWpg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyjoHrquoppQUIlji4QPyWMuMgsCuJoaa4zwGYuBltLdy8md8jG
	LUOzThmP1mua1cJbEyjPulPJTvazGHH2/v6hu8MApc0fpW4LyV+b7Ne6McB/vhQdhOQ=
X-Gm-Gg: Acq92OEelLFMQmsiDLI60CTPCF+xi14yn/zpbR7rtm5WTsZuUTIgvaRkWBCrokVCyaQ
	zOSme5ybussWNOi7zbjz51+e9MJoETXTxzca/jIgklcfKIAQ20/+otVIYznkNpV1EZQ32A+dc9l
	HoZn612v2NmK9U2BVQSh/gPCeMTUT7yKCWq421umT0GCmMCYLF2BFAk7/C2piB9zzmfCrGplXee
	XPW5Scpr1NblRDSrcnLG5s8FK+RysHz8OylFYpkv7zTb5V6pTDhxvihP4g3+nCyh7S2W9MHV9FG
	ZTeKSM7AWf34WOBz+yvd+qudCADQevFdXe4NumxdPPGZvKRONauna3T4o5xxxUgBoMKGtZqPRiN
	GarX+O+KwZArK1b6LJNmyyYnOdbaVgkmt46VxkOM+hIL8BL1sHMLuQm2pEzHNK9Pj0ayEaUZ5n1
	7H96PuiJeGEWR6RQ1cdYyvXyOaYQHXZ3GgU7SfnJkUC6+P+uEJ5s+uk8NQFGsiMKOkFl4cD6fEe
	7rBi6elbO6IgKwqvsX3QXPFAQ==
X-Received: by 2002:a05:600c:3b12:b0:488:a824:fdff with SMTP id 5b1f17b1804b1-48fe61ed2cfmr295373205e9.22.1779204005684;
        Tue, 19 May 2026 08:20:05 -0700 (PDT)
Received: from localhost (p200300f65f47db048a8dfcf61053817f.dip0.t-ipconnect.de. [2003:f6:5f47:db04:8a8d:fcf6:1053:817f])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-48fe4c8344asm563003675e9.1.2026.05.19.08.20.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2026 08:20:03 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig=20=28The=20Capable=20Hub=29?= <u.kleine-koenig@baylibre.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] phy: nxp-ptn3222: Use named initializers for struct i2c_device_id
Date: Tue, 19 May 2026 17:19:57 +0200
Message-ID: <20260519151957.1593214-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1568; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=G6h3h+AQvii7Rd03uciCOrbEpPKggEJtO0biGxitxj0=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBqDH+dfCYGrP0jbkzKS02iLKVVvQXiUqAlIDxub Ikfi6cnHh6JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCagx/nQAKCRCPgPtYfRL+ TrQyB/9TUnrgt4Lq5lTBMX8R/pkcbUXw8nCeySijN91Te5poSsLT6mi3WqH43Iua+OufnP+nZO3 eYiw5w0R7QYcpbcY/nAfr4usdx7lqHdT8RGKj7T+fZNy8mfttzOANX/3NfyTkjJHO3iLcjVA5tA sW4ry9XRPDLgeDe1mIMDJdf5a6ld1JXrgyO32xDq07kupEKA/xNYINAzW6a/i7X5TapB+6KD1tT cwQRVX9adWYfokzWGCLOeVNLotzHgAHc0qsuFy2SNX4DKWga2z/jP1GQ96QB1nZuvbz3PzWbl4u 9HHkMlM/W+HMXKO8fdvqOl6Yc4qwQCgDLc2X+x9t3Y0N8mIX
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_082007_708243_D83573CA 
X-CRM114-Status: GOOD (  14.47  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

V2hpbGUgYmVpbmcgbGVzcyBjb21wYWN0LCB1c2luZyBuYW1lZCBpbml0aWFsaXplcnMgYWxsb3dz
IHRvIG1vcmUgZWFzaWx5CnNlZSB3aGljaCBtZW1iZXJzIG9mIHRoZSBzdHJ1Y3RzIGFyZSBhc3Np
Z25lZCB3aGljaCB2YWx1ZSB3aXRob3V0IGhhdmluZwp0byBsb29rdXAgdGhlIGRlY2xhcmF0aW9u
IG9mIHRoZSBzdHJ1Y3QuIEFuZCBpdCdzIGFsc28gbW9yZSByb2J1c3QKYWdhaW5zdCBjaGFuZ2Vz
IHRvIHRoZSBzdHJ1Y3QgZGVmaW5pdGlvbi4KClRoaXMgcGF0Y2ggZG9lc24ndCBtb2RpZnkgdGhl
IGNvbXBpbGVkIGFycmF5cywgb25seSB0aGVpciByZXByZXNlbnRhdGlvbgppbiBzb3VyY2UgZm9y
bSBiZW5lZml0cy4gVGhlIGZvcm1lciB3YXMgY29uZmlybWVkIHdpdGggeDg2IGFuZCBhcm02NApi
dWlsZHMuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyAoVGhlIENhcGFibGUgSHVi
KSA8dS5rbGVpbmUta29lbmlnQGJheWxpYnJlLmNvbT4KLS0tCkhlbGxvLAoKdGhpcyBwYXRjaCBp
cyBwYXJ0IG9mIGEgYmlnZ2VyIHF1ZXN0IHRvIHVzZSBuYW1lZCBpbml0aWFsaXplcnMgZm9yCm1h
aW5seSBzdHJ1Y3QgaTJjX2RldmljZV9pZDo6ZHJpdmVyX2RhdGEgdG8gYmUgYWJsZSB0byBtb2Rp
ZnkKaTJjX2RldmljZV9pZC4gU2VlIGUuZy4KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIw
MjYwNTE4MTExMjAzLjYzOTYwMy0yLXUua2xlaW5lLWtvZW5pZ0BiYXlsaWJyZS5jb20vCmZvciB0
aGUgZGV0YWlscy4KClRoaXMgcGF0Y2ggaGVyZSBpc24ndCBjcml0aWNhbCBmb3IgdGhpcyBxdWVz
dCwgYXMgdGhlIGRyaXZlciBkb2Vzbid0Cm1ha2UgdXNlIG9mIC5kcml2ZXJfZGF0YSwgc28gYXBh
cnQgZnJvbSB0aGUgYmV0dGVyIHJlYWRhYmlsaXR5IHRoaXMgaXMKb25seSBhYm91dCBjb25zaXN0
ZW5jeSB3aXRoIG90aGVyIHN1YnN5c3RlbXMuCgpCZXN0IHJlZ2FyZHMKVXdlCgogZHJpdmVycy9w
aHkvcGh5LW54cC1wdG4zMjIyLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9waHktbnhwLXB0bjMy
MjIuYyBiL2RyaXZlcnMvcGh5L3BoeS1ueHAtcHRuMzIyMi5jCmluZGV4IGM2MTc5ZDg3MDFlNi4u
NmNiNzliNWM0ZmRiIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9waHktbnhwLXB0bjMyMjIuYwor
KysgYi9kcml2ZXJzL3BoeS9waHktbnhwLXB0bjMyMjIuYwpAQCAtOTcsNyArOTcsNyBAQCBzdGF0
aWMgaW50IHB0bjMyMjJfcHJvYmUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCkKIH0KIAogc3Rh
dGljIGNvbnN0IHN0cnVjdCBpMmNfZGV2aWNlX2lkIHB0bjMyMjJfdGFibGVbXSA9IHsKLQl7ICJw
dG4zMjIyIiB9LAorCXsgLm5hbWUgPSAicHRuMzIyMiIgfSwKIAl7IH0KIH07CiBNT0RVTEVfREVW
SUNFX1RBQkxFKGkyYywgcHRuMzIyMl90YWJsZSk7CgpiYXNlLWNvbW1pdDogMjU0ZjQ5NjM0ZWUx
NmE3MzExNzRkMmFlMzRiYzUwYmQ1ZjQ1ZTczMQotLSAKMi40Ny4zCgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

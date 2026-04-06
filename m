Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B303BEF4EB8
	for <linux-phy@archiver.kernel.org>; Mon,  6 Apr 2026 07:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hxj9/EaTlwXfyFBAT1uf4zcPNNoPi2qVwkBS3pqYJv4=; b=IPVrYS2SObL1wM
	V/wigr3YJk4490ERpxiHKmSxT2L+IuPC53M4ga75DDiqJY1bqmM6akMKiZMQE4GYYbC05lQN3Z0x/
	GLUZj0J5DxZM7lsAeFHRltsou5BsI3NmLOBWhyCdou0EVINLzXSMZFae2L3Xrq+EIBVEK7Oj4YO6n
	AeU1A6tlqhu5vTd0HPAIzLoiyawNesnHxmKhI4wS7GJKMTyVnBhkRDMrhlHkCSGwmDgwtIW94ekLj
	ZsLpWD/8O0h7elXXLfUxU77pL5/i7sZPDbGrs0NZIxRoXKxF5utV95Hy9qRaHMP1ia+XJYAO1+/cj
	T+lwow4gaZVZBAxs0oJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9e2g-00000004sGi-0lOM;
	Mon, 06 Apr 2026 07:06:38 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9e2d-00000004sG4-04J8
	for linux-phy@lists.infradead.org;
	Mon, 06 Apr 2026 07:06:36 +0000
Received: by mail-ed1-f66.google.com with SMTP id 4fb4d7f45d1cf-66f2ea5c500so86176a12.3
        for <linux-phy@lists.infradead.org>; Mon, 06 Apr 2026 00:06:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775459192; x=1776063992;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CmI+hzyBqRr28Y++VrQXgi0DtpH9W0BGd3T//ob2zds=;
        b=XakxhrCMcgG2bBd7hzffXJuljn8PalwoKZPogeXWQ84epYgOEO59Oqdzn67T7Pb1tV
         ciwX28kMIjtGsAWohlnxaqmpJBCUJnoa3pfTdCNIByHtT+MfbdKMcekG7JkbQXioBnIj
         8kuzBRFzXAvIeog2BvEGy23UFaktqjELSg7ulIhfylNa4oEp84Zh6rzfiAj/YFDrD7Hh
         /wBmxa4vvOEAtei4UYzcCZ5gwW5DSSga8toxg2Dioo3YpYGw8WeBtahUqOHVncbRUbaG
         x/eT5zyKBo2D7qmxeJal4Q455CPbqIFsmYW29hpoEZuZqQSERIiKFqs93vD2+BrL0v0y
         VyDA==
X-Forwarded-Encrypted: i=1; AJvYcCU8IW4TJd87mRnca/p0YA6kKsbmm+3gs1zb+LYLB8Lj4n1/A4H4rdyUjOxXZY3uTs+LVvBe2VWlN8I=@lists.infradead.org
X-Gm-Message-State: AOJu0YxHrPxSlVhUTWferBIhhuvEnrvemQyJ9fBta8ZIwzL+o7aJMGoo
	dSmILmOfHBUmXHT8P9FbfKqrFO0/qVZszQf2/ZO+xtYf3c391u4htcxh
X-Gm-Gg: AeBDievoNeRw/6QmLEonbjyAam3lMTmSObldx5ZnH+QQ2gr2BqKkrFNM1hK4v4JbAJ1
	lbws3E2mVh1/E808LPL6BnXZlgBml3visWuW91i04rTZIEdYCyC5Qx2OJfGBZ4hprBx3vgdAyrz
	SowIgXOzbGl/zKxX9ab+f3u7xcB53R1fhJGhvyM0TA4BfIKFrz49GUpRoD7xV2SMheIy0dwPyku
	/OJ4nIVbwVFpUgu0b8hBzEEUNN6t178U78G7P1S5fynlaXWbGbETsvGp8AHgjXPnRmf/Gdo98m/
	diD6YjUqMgFVsyVWlzNpfNtLWCFrCnVcJ6bNNfUv5e3QIRPQOUt42Rq2h9iY6a/8RVz3qMPiNCA
	fNz85oKWfxssz3E/mdv9PUt8nE7+VTSHR92UhLg34zZSyP4z1phPyC/Hr8+EOHlJw9+8mGz2vJu
	hcpvdpW+c5t7f26RSPeMNdUHwFPanGZ9wCoLdGIMkkL4tSTDx2Ip1fxFybkcNZ6A==
X-Received: by 2002:a17:906:4fd4:b0:b96:e11e:97c4 with SMTP id a640c23a62f3a-b9c676ad8bfmr559766366b.20.1775459192157;
        Mon, 06 Apr 2026 00:06:32 -0700 (PDT)
Received: from aorus.localdomain (5.185.72.109.ipv4.public.orange.pl. [5.185.72.109])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9c3cff131csm450129466b.52.2026.04.06.00.06.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2026 00:06:31 -0700 (PDT)
From: =?UTF-8?q?=C5=81ukasz=20Lebiedzi=C5=84ski?= <kernel@lvkasz.us>
To: vkoul@kernel.org
Cc: neil.armstrong@linaro.org,
	krzk@kernel.org,
	alim.akhtar@samsung.com,
	andre.draszik@linaro.org,
	pritam.sutar@samsung.com,
	kauschluss@disroot.org,
	johan@kernel.org,
	ivo.ivanov.ivanov1@gmail.com,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?utf-8?q?=C5=81ukasz=20Lebiedzi=C5=84ski?= <kernel@lvkasz.us>,
	stable@vger.kernel.org
Subject: [PATCH] phy: exynos5-usbdrd: fix USB 2.0 HS PHY tuning values for Exynos7870
Date: Mon,  6 Apr 2026 09:05:48 +0200
Message-ID: <20260406070548.132491-1-kernel@lvkasz.us>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260406_000635_074995_60B02EFE 
X-CRM114-Status: UNSURE (   8.84  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhlIGV4aXN0aW5nIFBIWVBBUkFNMCB0dW5pbmcgdmFsdWVzIGZvciBFeHlub3M3ODcwIGFyZSBp
bmNvcnJlY3QsCmNhdXNpbmcgdGhlIFVTQiAyLjAgUEhZIHRvIGZhaWwgaGlnaC1zcGVlZCBuZWdv
dGlhdGlvbiBhbmQgZmFsbCBiYWNrCnRvIGZ1bGwtc3BlZWQgKDEyTWJwcykgb3BlcmF0aW9uLgoK
Rml4IFRYVlJFRlRVTkUgKHRyYW5zbWl0dGVyIHZvbHRhZ2UgcmVmZXJlbmNlKSBmcm9tIDE0IHRv
IDMsClRYUkVTVFVORSAodHJhbnNtaXR0ZXIgaW1wZWRhbmNlKSBmcm9tIDMgdG8gMiwgYW5kIFNR
UlhUVU5FCihzcXVlbGNoIHRocmVzaG9sZCkgZnJvbSA2IHRvIDUuIEFsc28gZXhwbGljaXRseSBz
ZXQKVFhQUkVFTVBQVUxTRVRVTkUgdG8gMCwgd2hpY2ggd2FzIHByZXZpb3VzbHkgbWlzc2luZyBm
cm9tIHRoZQp0dW5pbmcgdGFibGUgZGVzcGl0ZSBiZWluZyBpbmNsdWRlZCBpbiB0aGUgcmVnaXN0
ZXIgbWFzay4KCkFsbCB2YWx1ZXMgYXJlIGRlcml2ZWQgZnJvbSB0aGUgdmVuZG9yIGtlcm5lbCBm
b3IgdGhlIFNhbXN1bmcKR2FsYXh5IEE2IChTTS1BNjAwRk4pLCBhcyBubyBwdWJsaWMgaGFyZHdh
cmUgZG9jdW1lbnRhdGlvbiBpcwphdmFpbGFibGUgZm9yIHRoZSBFeHlub3M3ODcwIFVTQiBEUkQg
UEhZLiBXaXRoIHRoZXNlIGNvcnJlY3Rpb25zLAp0aGUgUEhZIHN1Y2Nlc3NmdWxseSBuZWdvdGlh
dGVzIGhpZ2gtc3BlZWQgKDQ4ME1icHMpIG9wZXJhdGlvbi4KCkZpeGVzOiA1ODhkNWQyMGNhOGQg
KCJwaHk6IGV4eW5vczUtdXNiZHJkOiBhZGQgZXh5bm9zNzg3MCBVU0JEUkQgc3VwcG9ydCIpCkNj
OiBzdGFibGVAdmdlci5rZXJuZWwub3JnClRlc3RlZC1ieTogxYF1a2FzeiBMZWJpZWR6acWEc2tp
IDxrZXJuZWxAbHZrYXN6LnVzPgpUZXN0ZWQtYnk6IEthdXN0YWJoIENoYWtyYWJvcnR5IDxrYXVz
Y2hsdXNzQGRpc3Jvb3Qub3JnPgpTaWduZWQtb2ZmLWJ5OiDFgXVrYXN6IExlYmllZHppxYRza2kg
PGtlcm5lbEBsdmthc3oudXM+Ci0tLQogZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11
c2JkcmQuYyB8IDcgKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1
LXVzYmRyZC5jIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwppbmRl
eCA1YTE4MWNiNDU5N2UuLjg3MTFhM2I2MmM4ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvc2Ft
c3VuZy9waHktZXh5bm9zNS11c2JkcmQuYworKysgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1l
eHlub3M1LXVzYmRyZC5jCkBAIC0xOTU4LDEzICsxOTU4LDE0IEBAIGNvbnN0IHN0cnVjdCBleHlu
b3M1X3VzYmRyZF9waHlfdHVuaW5nIGV4eW5vczc4NzBfdHVuZXNfdXRtaV9wb3N0aW5pdFtdID0g
ewogCQkJICAgICAgUEhZUEFSQU0wX1RYUFJFRU1QQU1QVFVORSB8IFBIWVBBUkFNMF9UWEhTWFZU
VU5FIHwKIAkJCSAgICAgIFBIWVBBUkFNMF9UWEZTTFNUVU5FIHwgUEhZUEFSQU0wX1NRUlhUVU5F
IHwKIAkJCSAgICAgIFBIWVBBUkFNMF9PVEdUVU5FIHwgUEhZUEFSQU0wX0NPTVBESVNUVU5FKSwK
LQkJCSAgICAgKEZJRUxEX1BSRVBfQ09OU1QoUEhZUEFSQU0wX1RYVlJFRlRVTkUsIDE0KSB8CisJ
CQkgICAgIChGSUVMRF9QUkVQX0NPTlNUKFBIWVBBUkFNMF9UWFZSRUZUVU5FLCAzKSB8CiAJCQkg
ICAgICBGSUVMRF9QUkVQX0NPTlNUKFBIWVBBUkFNMF9UWFJJU0VUVU5FLCAxKSB8Ci0JCQkgICAg
ICBGSUVMRF9QUkVQX0NPTlNUKFBIWVBBUkFNMF9UWFJFU1RVTkUsIDMpIHwKKwkJCSAgICAgIEZJ
RUxEX1BSRVBfQ09OU1QoUEhZUEFSQU0wX1RYUkVTVFVORSwgMikgfAorCQkJICAgICAgRklFTERf
UFJFUF9DT05TVChQSFlQQVJBTTBfVFhQUkVFTVBQVUxTRVRVTkUsIDApIHwKIAkJCSAgICAgIEZJ
RUxEX1BSRVBfQ09OU1QoUEhZUEFSQU0wX1RYUFJFRU1QQU1QVFVORSwgMCkgfAogCQkJICAgICAg
RklFTERfUFJFUF9DT05TVChQSFlQQVJBTTBfVFhIU1hWVFVORSwgMCkgfAogCQkJICAgICAgRklF
TERfUFJFUF9DT05TVChQSFlQQVJBTTBfVFhGU0xTVFVORSwgMykgfAotCQkJICAgICAgRklFTERf
UFJFUF9DT05TVChQSFlQQVJBTTBfU1FSWFRVTkUsIDYpIHwKKwkJCSAgICAgIEZJRUxEX1BSRVBf
Q09OU1QoUEhZUEFSQU0wX1NRUlhUVU5FLCA1KSB8CiAJCQkgICAgICBGSUVMRF9QUkVQX0NPTlNU
KFBIWVBBUkFNMF9PVEdUVU5FLCAyKSB8CiAJCQkgICAgICBGSUVMRF9QUkVQX0NPTlNUKFBIWVBB
UkFNMF9DT01QRElTVFVORSwgMykpKSwKIAlQSFlfVFVOSU5HX0VOVFJZX0xBU1QKCmJhc2UtY29t
bWl0OiBjYWYwODUxNGJiZWUwNzM2YzMxZDhkNGY0MDZlMzQxNWNkZjcyNmJiCi0tIAoyLjUzLjAK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E69D0F46C42
	for <linux-phy@archiver.kernel.org>; Mon,  6 Apr 2026 13:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ls+tgRRlhF2IPBVNrDHKO2r8FDmk2jeTNnQfTD9NgmU=; b=PZry9bEN/K0J0M
	u58957zu/pJ8EU6ZVHsRYuS3QsMx6uHKaZGL5mOCIgjhDliRBHO4tCxI7KruN69DFBaFomo5Bzuwo
	5PhEMuDNMJKrCojqoz+Z7d9Xh23JIyZAmi4kbAfzs3RMj8NbwvpfLY2xYhcFqmIRYvNvm4X7HZYEI
	hTEUAgm7TE7w6gHUzVbv3tSsTrIO9sR2roP+WI/huJ9dEeaT3mL0t5wzRgzSgaVeaAyZFl9l62JYq
	QVqYCnepr1MUB/gi4BwQNaZbuY2evCPnhHweuA4s0qntlD0prTH8q4ZYe++2BSovCYhE8Ak/+7SjF
	qbfTBTdMF54No0unc36g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9kRk-00000005ARe-1mD0;
	Mon, 06 Apr 2026 13:56:56 +0000
Received: from mail-ej1-f68.google.com ([209.85.218.68])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9kRh-00000005AQl-1D9t
	for linux-phy@lists.infradead.org;
	Mon, 06 Apr 2026 13:56:54 +0000
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-b9c04152730so602954966b.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Apr 2026 06:56:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775483811; x=1776088611;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OQtUgZBlTwv+xDoaiKb2N7gT+/y7cOGsVK3GMzZHFqc=;
        b=mB+4XxJ2KCpHasPUe7hhOeAK0Izhnr1T8ly1BG3iSvINVjD5TI3LmPaShF/ek2j2wv
         MAK62eMxyBG3lREJ6QFCEEWPwdKrPg2qpUMDxmm3PO+sFamoHGVEkLLIx7+EP7cocx8E
         KOBatDqrjDyjGpwesxLtOTrFbSDkJ3mgsFYaXBP/Srid1fDOtxJMh87IgWtjR6CwCh+T
         fA89AqD0NErqSFtdos1dLFgV0Kw8cAhKeuM3LfnBkNjjcT2Z3ifnlfeaeRu+Y58y4OiO
         cE0JEjM9uD+pjqIvDZ6P+lbqKJrL7J6F2Fx/yZTVwIzsDIBTBA8f79vpS5siWbtNhHIT
         nkng==
X-Forwarded-Encrypted: i=1; AJvYcCVovLrxNpx9bvEqb3xwwIDZp7kg6C4muAyfxLFnJTnQ/eYJvxXcXLfbFtl1NzQOc0j9rvEiaxApp4Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxw9JTYhOxyBjgZCK8/ZOSPIK3h6pHgElYHo5WTGZ2r5dVsaIiN
	iRHvWASpbiQmVGG/SB94wxAyGh7oYdEbTQDRgSUsHtIpr405sVQlbRQM
X-Gm-Gg: AeBDievxKa5MDZq5ekUtmTEj7ESjl2CwPqAoVpoxdu9cY+m7JzbHFtJOnwSEknyC9yN
	VuxszYztSlJ5r/r1zkI5N2Bukdi4jAhkeJU6+da3wAVOZaengGIYOOccHnXCCGLt6DlRs2BlOaN
	OI3uCChqkANn8Hz7XcCLqwE2ROgCu0vV1vSCqxzhqbe9gaPNNmveii/MNY+pp+iLuh9NjaNUGLw
	GNbOBYKxeGXPWyA7nHtPUw+ZAXUDViTYtd/ueeXtjZkDfEn3AimNdspvVJXt5yj6Ukn8kaxnreq
	IpoB575LEXYrB/Zkg3k2YuFOAEI62etp2KK98SpdqhNQWkQ+VQD9XqHfx4/C40OSG3wlfITx4CE
	O3U66pjlWHXTGjXpzUFcTQwCjIAROTjgYKYURywnnG4AW4/K8fkWVi9RZjc+h/YbHgrBmJwDWa3
	6guDtC4hJN5s2hRLkiH6gFBuNl9pChy1Q/sCmj1JI9Wxe3yxelNIcQlZzrD+rFyA==
X-Received: by 2002:a17:907:2d9f:b0:b9c:b3b5:bbf0 with SMTP id a640c23a62f3a-b9cb3b5bc8fmr276106266b.6.1775483810728;
        Mon, 06 Apr 2026 06:56:50 -0700 (PDT)
Received: from aorus.localdomain (5.185.72.109.ipv4.public.orange.pl. [5.185.72.109])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9c3cac0e1asm472921266b.27.2026.04.06.06.56.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2026 06:56:50 -0700 (PDT)
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
	stable@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2] phy: exynos5-usbdrd: fix USB 2.0 HS PHY tuning values for Exynos7870
Date: Mon,  6 Apr 2026 15:56:27 +0200
Message-ID: <20260406135627.234835-1-kernel@lvkasz.us>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260406_065653_347149_24F42B65 
X-CRM114-Status: UNSURE (   8.91  )
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
OiBzdGFibGVAdmdlci5rZXJuZWwub3JnClRlc3RlZC1ieTogS2F1c3RhYmggQ2hha3JhYm9ydHkg
PGthdXNjaGx1c3NAZGlzcm9vdC5vcmc+ClJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tp
IDxrcnp5c3p0b2Yua296bG93c2tpQG9zcy5xdWFsY29tbS5jb20+ClNpZ25lZC1vZmYtYnk6IMWB
dWthc3ogTGViaWVkemnFhHNraSA8a2VybmVsQGx2a2Fzei51cz4KLS0tCiBkcml2ZXJzL3BoeS9z
YW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIHwgNyArKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5
L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1l
eHlub3M1LXVzYmRyZC5jCmluZGV4IDVhMTgxY2I0NTk3ZS4uODcxMWEzYjYyYzhlIDEwMDY0NAot
LS0gYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCisrKyBiL2RyaXZl
cnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKQEAgLTE5NTgsMTMgKzE5NTgsMTQg
QEAgY29uc3Qgc3RydWN0IGV4eW5vczVfdXNiZHJkX3BoeV90dW5pbmcgZXh5bm9zNzg3MF90dW5l
c191dG1pX3Bvc3Rpbml0W10gPSB7CiAJCQkgICAgICBQSFlQQVJBTTBfVFhQUkVFTVBBTVBUVU5F
IHwgUEhZUEFSQU0wX1RYSFNYVlRVTkUgfAogCQkJICAgICAgUEhZUEFSQU0wX1RYRlNMU1RVTkUg
fCBQSFlQQVJBTTBfU1FSWFRVTkUgfAogCQkJICAgICAgUEhZUEFSQU0wX09UR1RVTkUgfCBQSFlQ
QVJBTTBfQ09NUERJU1RVTkUpLAotCQkJICAgICAoRklFTERfUFJFUF9DT05TVChQSFlQQVJBTTBf
VFhWUkVGVFVORSwgMTQpIHwKKwkJCSAgICAgKEZJRUxEX1BSRVBfQ09OU1QoUEhZUEFSQU0wX1RY
VlJFRlRVTkUsIDMpIHwKIAkJCSAgICAgIEZJRUxEX1BSRVBfQ09OU1QoUEhZUEFSQU0wX1RYUklT
RVRVTkUsIDEpIHwKLQkJCSAgICAgIEZJRUxEX1BSRVBfQ09OU1QoUEhZUEFSQU0wX1RYUkVTVFVO
RSwgMykgfAorCQkJICAgICAgRklFTERfUFJFUF9DT05TVChQSFlQQVJBTTBfVFhSRVNUVU5FLCAy
KSB8CisJCQkgICAgICBGSUVMRF9QUkVQX0NPTlNUKFBIWVBBUkFNMF9UWFBSRUVNUFBVTFNFVFVO
RSwgMCkgfAogCQkJICAgICAgRklFTERfUFJFUF9DT05TVChQSFlQQVJBTTBfVFhQUkVFTVBBTVBU
VU5FLCAwKSB8CiAJCQkgICAgICBGSUVMRF9QUkVQX0NPTlNUKFBIWVBBUkFNMF9UWEhTWFZUVU5F
LCAwKSB8CiAJCQkgICAgICBGSUVMRF9QUkVQX0NPTlNUKFBIWVBBUkFNMF9UWEZTTFNUVU5FLCAz
KSB8Ci0JCQkgICAgICBGSUVMRF9QUkVQX0NPTlNUKFBIWVBBUkFNMF9TUVJYVFVORSwgNikgfAor
CQkJICAgICAgRklFTERfUFJFUF9DT05TVChQSFlQQVJBTTBfU1FSWFRVTkUsIDUpIHwKIAkJCSAg
ICAgIEZJRUxEX1BSRVBfQ09OU1QoUEhZUEFSQU0wX09UR1RVTkUsIDIpIHwKIAkJCSAgICAgIEZJ
RUxEX1BSRVBfQ09OU1QoUEhZUEFSQU0wX0NPTVBESVNUVU5FLCAzKSkpLAogCVBIWV9UVU5JTkdf
RU5UUllfTEFTVAotLSAKMi41My4wCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==

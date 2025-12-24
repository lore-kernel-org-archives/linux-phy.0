Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3FFFE7491E
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 06:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JptxMzRTT7Al/XIbj3ev0M+QxHPThF+JE5xTw8hW4mU=; b=erjOALVahUf1Nj
	gBXuG62mUFQ97nTzeHYk/Ng0KPJYpQw8Q2UNgub2A+8HGljDxKZY+s6vIcwtK5mWxKH9VirExVxev
	Ib+42fy12L8iVWSFsGaP1/hADffVf+3qSaz+6ua8mUC5XhyYfch7QpV2+qgwSQN8mduq05lSfQYJY
	HKhwAHm/04PKvTQYEqlD6Yn/DLFzYGAycBQ17exz/QvD0KM8sl0UwscEj0IwaMc12ISow5xIo8FDJ
	tIqkqJZdnRTFg27e1TP61nBrfBNufWcpY8czUDgymVFC+B9aZ2gtwgwBBN6pjXNCwl09F3dAd/vhn
	kmQMv1zW/HYSrZwNLMgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYIMC-0000000GUbx-15uW;
	Wed, 24 Dec 2025 06:28:24 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYIM8-0000000GUap-3jXw
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 06:28:22 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-64baaa754c6so5534123a12.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Dec 2025 22:28:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766557698; x=1767162498; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F4dAiFKwTWptkfRy3Dd68537gC9f6NFHvDz9Jg6ijxs=;
        b=JCtiwMtbL5gfzBUugYYD4Z94N4R3FtFCzuJXPNRbOxGZ4RddYXsnKP6LexsTp10BqM
         97ywRfG3txFFuCiVGT4loYOIQwBY+67G6BjVpZm5SrGHf4VF0vlWnJweFQUo2Ol0ou5D
         sQmcVFLnFV39/BToKowS4sjP6q/+9xk6B5GCvpVo1UDU3UYJMIJ2vxDKmo9tUcxXsx9l
         lrgt6+myqRzQCZap20FB4Gsa25dYZcPmM6CGHDVIIl5yM87inIiz0vkJ98t7g0gs0tv9
         DjIRqOMYZzQY+tr9nD+D9nP8ZEmfp0dvVY+RWuNt4r5yLVz4is1c8gAcVJHzMfWkkU5m
         i6xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766557698; x=1767162498;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F4dAiFKwTWptkfRy3Dd68537gC9f6NFHvDz9Jg6ijxs=;
        b=YX85EtzSwNjXCOXXkYowAgbN7m7IE1n+N7YV+dAXtOiA/GeAQ95HQRvhIImA/1t/dX
         Xdq+Ji0tuMCLGLQlLM3r1qI9vWcirBj42adDrQF5+gfuOECWzRG8DaU7Fbm80DvRkfv/
         OWhvEaNaV/K2c0y+Yuqjbk/cKRn33CqaXKu3axNIluVhJKiKVqqlBt0meyut6FskVJuX
         EuUCbCO/4IQnXtYvUAMb2rQJRf9GKROsxIAPE5x5HWEaXs/VFkL1rgwtph9s1/K+oDJb
         M3wFrQgIvJykm/Qawkp2DquisKzluRJjNA2xldQpRniVSy7g8aNXLxpzaopXQTKVwm5l
         wNrw==
X-Forwarded-Encrypted: i=1; AJvYcCVix0HkiqIscDcf4AexSn/22iyrrPWnY0vgr/Cdy6D6g7NNL6AmdO9+EnerSvzFCYMM9mAf3Ht+Wq4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyXfkRQGllcJFjLsZPWYlfmXQmqdP5cynD+YRK/az2mEgOfW7iB
	cv1PjsdrpdAwkX1QBJCqtaCmCR8F2jqzVmDadSXCZp/1cH4NUoiDw+BdERE/WfyU8qI=
X-Gm-Gg: AY/fxX7z2/ZMG8C4qWzSMbNDYIBb/83GiAKGiOE6DhOUEQKeviZUl/gHeBpKm+OAede
	4Bzg/gA+JhRLOiFjpnQB9kKknPldBL8ObQnsSiXvaAc/aEyONF46w+G5EdbMynN038+I/VrJxU6
	bycHhDhqwthfujJ48D9fiPSaFU9weJEvnbusviKIBT7DQNfFF1JvLgQcoVTlbAEBYXHQTwc+YaV
	GCZ1zw98VOVSxGhzhBgdCfLJE7vADfJL688pYzUAbq+vTUZiyXvp8I432Xb7FuV9PyzHgYDwkhY
	SUTAOOyxzUpw/uHN+63UILqVPY77zLa7LFGho7xI8kNmrx8B7yCaTS+DDcp+FHwDIfteu+gxFxI
	u0DeEWxj11tHuwj5Asvhe6x1CNmbqtMtPBoS9orO2yv1SC8isfoW/co5PSwNy79ynRhSSCWImaU
	SUIC3UW0TmJHYTjUXZOAlLX8v8GwD/HRGh1wh1nLT4SdH6s3gCwct0iDs7arRCBbjYsuFxMGd9C
	ZNvnw==
X-Google-Smtp-Source: AGHT+IHpTGeqQrqbg/3iUSfWdW5r9wslLj0+p+voKM+vw9cuuETMRnt6TZg28rR3+DNHjPB2uu4z2A==
X-Received: by 2002:a17:907:75fa:b0:b80:3fff:5fe6 with SMTP id a640c23a62f3a-b803fff60f3mr909610366b.9.1766557698300;
        Tue, 23 Dec 2025 22:28:18 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0cc52sm1643366766b.52.2025.12.23.22.28.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 22:28:17 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v2 0/2] dt-bindings: phy: add power-domains to samsung UFS
 and USB phys
Date: Wed, 24 Dec 2025 06:28:16 +0000
Message-Id: <20251224-power-domains-dt-bindings-phy-samsung-ufs-phy-v2-0-581089639982@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAACIS2kC/53NQQ6CMBCF4auQrh3TFoniynsYFpVOyyTSkg6gh
 HB3K97A5fcW718FYyJkcS1WkXAmphgy9KEQbWeCRyCbLbTUlZLyDEN8YQIbe0OBwY7woGApeIa
 hW4BNz1PwMLmfXYt1hRoNlheRP4eEjt57795kd8RjTMuen9V3/bc0K1Bga1lKq07GVfXtScGke
 IzJi2bbtg9HsAR36wAAAA==
X-Change-ID: 20251007-power-domains-dt-bindings-phy-samsung-ufs-phy-fce95e2eae38
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_222820_962341_2C9A9BA0 
X-CRM114-Status: UNSURE (   8.51  )
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

SGksCgpUaGUgc2Ftc3VuZyBVRlMgYW5kIFVTQiBwaHlzIGNhbiBiZSBwYXJ0IG9mIGEgcG93ZXIg
ZG9tYWluLCBzbyB3ZSBuZWVkCnRvIGFsbG93IHRoZSByZWxldmFudCBwcm9wZXJ0eSAncG93ZXIt
ZG9tYWlucycuCgpUaGlzIHYyIGlzIGVzc2VudGlhbGx5IGp1c3QgYSByZXNlbmQgYXMgdGhlIHBh
dGNoZXMgc3RpbGwgaGF2ZW4ndCBiZWVuCnF1ZXVlZC4KCk5vdGUgdGhhdCBpbiB2MSB0aGUgcGF0
Y2hlcyB3ZXJlIHNlbnQgaW5kaXZpZHVhbGx5LCB3aGlsZSBoZXJlIEkndmUKZm9sZGVkIHRoZW0g
aW50byBvbmUgc2VyaWVzIGFzIHRoZXkgZ28gdmlhIHRoZSBzYW1lIHRyZWUgYW55d2F5LgoKU2ln
bmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KLS0t
CkNoYW5nZXMgaW4gdjI6Ci0gY29sbGVjdCB0YWdzCi0gZm9sZCBVRlMgYW5kIFVTQiBiaW5kaW5n
IHBhdGNoZXMgaW50byBzYW1lIHNlcmllcwotIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL3IvMjAyNTEwMDctcG93ZXItZG9tYWlucy1kdC1iaW5kaW5ncy1waHktc2Ftc3VuZy11
ZnMtcGh5LXYxLTEtZDkwMzBkMTRhZjU5QGxpbmFyby5vcmcKLSBMaW5rIHRvIHYxOiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9yLzIwMjUxMDA3LXBvd2VyLWRvbWFpbnMtcGh5LXNhbXN1bmctdXNi
My1kcmQtcGh5LXYxLTEtM2NiNWY4MGE3MmVmQGxpbmFyby5vcmcKCi0tLQpBbmRyw6kgRHJhc3pp
ayAoMik6CiAgICAgIGR0LWJpbmRpbmdzOiBwaHk6IHNhbXN1bmcsdWZzLXBoeTogYWRkIHBvd2Vy
LWRvbWFpbnMKICAgICAgZHQtYmluZGluZ3M6IHBoeTogc2Ftc3VuZyx1c2IzLWRyZC1waHk6IGFk
ZCBwb3dlci1kb21haW5zCgogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9z
YW1zdW5nLHVmcy1waHkueWFtbCAgICAgIHwgMyArKysKIERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbCB8IDMgKysrCiAyIGZpbGVz
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQotLS0KYmFzZS1jb21taXQ6IGNjM2FhNDNiNDRiZGI0
M2RmYmFjMGZjYjUxYzU2NTk0YTExMzM4YTgKY2hhbmdlLWlkOiAyMDI1MTAwNy1wb3dlci1kb21h
aW5zLWR0LWJpbmRpbmdzLXBoeS1zYW1zdW5nLXVmcy1waHktZmNlOTVlMmVhZTM4CgpCZXN0IHJl
Z2FyZHMsCi0tIApBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

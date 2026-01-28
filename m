Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBDEBD46C04
	for <linux-phy@archiver.kernel.org>; Wed, 28 Jan 2026 21:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:From:Subject:Message-ID:
	Mime-Version:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1paEQYLX0FdY0yszC0cTDExcLyXDnQ/JiJ+3Pss3Hc4=; b=CFu
	ais1AUAaiEkwMsjuzUu5Wd27ElNLbvKc2Gh11/Y/gsCCFRlyj1jReu5OHELAIs2USRwLrdsdCYLv2
	mutbOAdSaqZA2/hDBOvdQW321ql2L6+RM30II8yhvW2XB5Z8HZJWnM33BB3arzafqTjH2ppvvvEeF
	aPjkogfk5WPRNnpmSxfgj6HVWbo/tuz1ZH+PxwjvXHrJuCSeOTWmk+WDkzNS1M9v4aeAgplBYgdQo
	mT7Dkns1/8vIM3wXNo61+C3/wMXvp59VHKjDG777RhZi3hWsXlIIzph4F5C1xPtqbRj5kHVlZRJ/x
	ajPDvGjPyW40AoKsgNy7BruTwssfmTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlD0I-0000000GqGr-0pQN;
	Wed, 28 Jan 2026 21:23:14 +0000
Received: from mail-dl1-x1249.google.com ([2607:f8b0:4864:20::1249])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlD0A-0000000GqF6-2Xxv
	for linux-phy@lists.infradead.org;
	Wed, 28 Jan 2026 21:23:03 +0000
Received: by mail-dl1-x1249.google.com with SMTP id a92af1059eb24-124a38e8980so380349c88.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Jan 2026 13:23:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1769635381; x=1770240181; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZMLVQkjt0m3jqSNYOC481vG6R4cAFLtNHdlE/5eHfzg=;
        b=Zv7/DJiQHOyMqxIS18N+0KOJdT288+lsziLXX6U8ogPNDfyiU9xHchZgG1hLTuxYD9
         yFMs7qV8pafGSnsawf3qPSqVJa2XVMhY6bSs5FHqtICCOf1COHqMq2lzoaW6r1X/TkYN
         U2M5ftIuvmzHvpD7ut/6fLdrn9Z8bBmC7JO1B727JJ44gwwMFX6AmVCqhJgcX/Z39cq8
         hpbuHi3PebToP756YWCrWkLFxVyYIgr0gr+XB9WEf7Y5SehTIoKeoIuTsDz3tHkqAQqw
         TVw60Iqa1NKWC4FjUGwzmX3wCM4ygj9iinRalp0/LSrRYC+rSYPRWZe6TZSQ7OryD1dp
         caqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769635381; x=1770240181;
        h=content-transfer-encoding:cc:to:from:subject:message-id
         :mime-version:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZMLVQkjt0m3jqSNYOC481vG6R4cAFLtNHdlE/5eHfzg=;
        b=Ax2P/PW7pilb9pkVst9hjX4N+eO1+7jQVc9jcDFney24OiYJb3baX22DUHJeWu0zNb
         ugJu6GRji0Kp7zxUP2pxBJY2gLuyLety4ZxiTqj4rLRKWtu0l18VtJ2OaxLE6PrEdppp
         gZj4P90SrfYWD9K7SZSHaunk0NGB0uAVfUQslnUNB3rbPIGfGF/7E27Ill/27qzMQ89G
         ZgYthZEEejua0NE/FvKgZnBRgBU+GrAhmHCf/b1Cv9nbKkj98drlGXJ5rr/Exwdw6vv3
         G20sE59jHnj7we9IfDUIcDCtn9zYe1aBDmw2R+iSZXA8zOc0+E8H/1PVLpNO1Tj3Jf4J
         k3Xw==
X-Gm-Message-State: AOJu0YxrsMcWwn/DOUszYL2+oU+m3U3r7O/QgW8MZK+oGR7TQld4+VR+
	zGMJAqX6ALpHv2UXZLFzIWKiwbDs7wJzrjUidKfrXbnbj8QP5akVUoH/eClV0zAl8hFAgC5sDFw
	vu/NRtQ==
X-Received: from dlbqk7.prod.google.com ([2002:a05:7022:ec87:b0:121:ac3c:21fe])
 (user=royluo job=prod-delivery.src-stubby-dispatcher) by 2002:a05:7022:aa6:b0:11c:b3ae:c9f1
 with SMTP id a92af1059eb24-124a005f29amr4013133c88.1.1769635380815; Wed, 28
 Jan 2026 13:23:00 -0800 (PST)
Date: Wed, 28 Jan 2026 21:22:53 +0000
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACx+emkC/1WMQQrDIBBFrxJmXYsjIWhXvUfJItqJGWhj0SAJw
 bvXuuvy/f94JySKTAlu3QmRMicOawV16cAt0+pJ8LMyKKkGiQrFSvsmrOkNauMmN/dQ1U+kmfe WecDPgLGuC6ctxKO1M7bvP5NRoHCo5aCtNGjN3YfgX3R14Q1jKeULh6SdiZ8AAAA=
X-Change-Id: 20260121-next-b949189cacf4
X-Developer-Key: i=royluo@google.com; a=ed25519; pk=nTq1n8WcJActRWe1s8jdcy+TzpTK4a+IYRCIWvQfq5k=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769635379; l=1872;
 i=royluo@google.com; s=20251120; h=from:subject:message-id;
 bh=8xH4IQmMfR9c9jcVFAJY2hsd6wxCeTQFe70KrSkvl+w=; b=LZ5VqZJrkv+XgN3hBBFqILY3EJnoB9fW4PusyWmGQVIp0/q5vbTOUH82B9ql04LuwDe4v9Sfr
 hqIIifUwbBTCo0pHZN66s5GMKXPbUPuJGfJQ1GE5BfQ1kbV3gD3zeya
X-Mailer: b4 0.14.2
Message-ID: <20260128-next-v2-1-624bdae8e6d0@google.com>
Subject: [PATCH next v2] phy: google: fix build dependency for Google Tensor
 USB PHY
From: Roy Luo <royluo@google.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Griffin <peter.griffin@linaro.org>, 
	"=?utf-8?q?Andr=C3=A9_Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	kernel test robot <lkp@intel.com>, Roy Luo <royluo@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260128_132302_640661_06D6F21E 
X-CRM114-Status: UNSURE (   9.97  )
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

VGhlIEdvb2dsZSBUZW5zb3IgVVNCIFBIWSBkcml2ZXIgdXNlcyB0aGUgVHlwZS1DIHN3aXRjaCBm
cmFtZXdvcmsgdG8KaGFuZGxlIG9yaWVudGF0aW9uIGNoYW5nZXMuIEhvd2V2ZXIsIHRoZSBLY29u
ZmlnIGRpZCBub3Qgc3BlY2lmeSBhCmRlcGVuZGVuY3kgb24gdGhlIFRZUEVDIGZyYW1ld29yaywg
bGVhZGluZyB0byB1bmRlZmluZWQgcmVmZXJlbmNlCmVycm9ycyB3aGVuIGJ1aWxkaW5nIGZvciBh
cmNoaXRlY3R1cmVzIG9yIGNvbmZpZ3VyYXRpb25zIHdoZXJlCkNPTkZJR19UWVBFQyBpcyBjb25m
aWd1cmVkIGFzIGEgbW9kdWxlIHdoaWxlIENPTkZJR19QSFlfR09PR0xFX1VTQgppcyBjb25maWd1
cmVkIGFzIGJ1aWx0LWluLgoKQWRkICdkZXBlbmRzIG9uIFRZUEVDJyB0byB0aGUgUEhZX0dPT0dM
RV9VU0IgZW50cnkgdG8gZW5zdXJlIGFsbApyZXF1aXJlZCBzeW1ib2xzIGFyZSBhdmFpbGFibGUg
ZHVyaW5nIGxpbmtpbmcsIGFuZCAnQ09NUElMRV9URVNUJwp0byBleHBhbmQgdGVzdCBjb3ZlcmFn
ZS4KCkZpeGVzOiBjYmNlNjY2NjljODIgKCJwaHk6IEFkZCBHb29nbGUgVGVuc29yIFNvQyBVU0Ig
UEhZIGRyaXZlciIpClJlcG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8bGtwQGludGVsLmNv
bT4KQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9vZS1rYnVpbGQtYWxsLzIwMjYwMTIx
MDgyNS5FTHJwUWVFRC1sa3BAaW50ZWwuY29tLwpSZXZpZXdlZC1ieTogUGV0ZXIgR3JpZmZpbiA8
cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgpTaWduZWQtb2ZmLWJ5OiBSb3kgTHVvIDxyb3lsdW9A
Z29vZ2xlLmNvbT4KLS0tCkNoYW5nZXMgaW4gdjI6Ci0gQWRkICcoVFlQRUM9biAmJiBDT01QSUxF
X1RFU1QpJyB0byBidWlsZCBkZXBlbmRlbmN5IHRvIGV4cGFuZCB0ZXN0CiAgY292ZXJhZ2UgYXMg
c3VnZ2VzdGVkIGJ5IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Ci0g
S2VlcCBQZXRlcidzIFJldmlld2VkLWJ5IHRhZyBiZWNhdXNlIHRoZSBjaGFuZ2Ugc3VnZ2VzdGVk
IGJ5IEFuZHLDqQogIGlzIGEgdHJpdmlhbCBpbXByb3ZlbWVudC4KLSBMaW5rIHRvIHYxOiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9yLzIwMjYwMTIxLW5leHQtdjEtMS1jMTgwNjhiMDkxYjlAZ29v
Z2xlLmNvbQotLS0KIGRyaXZlcnMvcGh5L0tjb25maWcgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L0tjb25maWcgYi9kcml2ZXJz
L3BoeS9LY29uZmlnCmluZGV4IDE0MmU3YjBlZjJlZmI5MjA5NzgxODAwZWU0N2I4MjBhOTFiMTE1
YWUuLjI5OTUzYzkxMWRlZGE1ZmQzYzQzYWVmNmRhMjhkOTY5NTRhMjJmOGQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvcGh5L0tjb25maWcKKysrIGIvZHJpdmVycy9waHkvS2NvbmZpZwpAQCAtNDksNiAr
NDksNyBAQCBjb25maWcgR0VORVJJQ19QSFlfTUlQSV9EUEhZCiAKIGNvbmZpZyBQSFlfR09PR0xF
X1VTQgogCXRyaXN0YXRlICJHb29nbGUgVGVuc29yIFNvQyBVU0IgUEhZIGRyaXZlciIKKwlkZXBl
bmRzIG9uIFRZUEVDIHx8IChUWVBFQz1uICYmIENPTVBJTEVfVEVTVCkKIAlzZWxlY3QgR0VORVJJ
Q19QSFkKIAloZWxwCiAJICBFbmFibGUgc3VwcG9ydCBmb3IgdGhlIFVTQiBQSFkgb24gR29vZ2xl
IFRlbnNvciBTb0NzLCBzdGFydGluZyB3aXRoCgotLS0KYmFzZS1jb21taXQ6IDhiYjkyZmQ3YTA0
MDc3OTI1YzgzMzBmNDZhNmFiNDRjODBjYTU5ZjQKY2hhbmdlLWlkOiAyMDI2MDEyMS1uZXh0LWI5
NDkxODljYWNmNAoKQmVzdCByZWdhcmRzLAotLSAKUm95IEx1byA8cm95bHVvQGdvb2dsZS5jb20+
CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==

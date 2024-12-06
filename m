Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99483E77173
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 16:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wYwPbNMvVYPrweW0+ISKK/P8FOQAUuPcRCsnDgNnGcA=; b=LGxZHCIXS1TERW
	xWLaiVaysN7qhE58/+k3ZfjoEkNIppGZlltJ78fcpkmHsv6325x7CdxBoUjKg/Q/6h9GJlpw/4W2h
	FLiicFvSvrClDv2FRGVVpKIjAYSZBi45ijYg3HfWxjoYCcqvOLU2fY6Qy8GIUc/+Mvymd+50lPFM7
	quGrsMUn4kqXIeTws0CSI7bVtN17c3Ijnz9LRhSyGZsBebQlvsDSrJRmFfWe3oQ2gxo7XSp97i6rh
	0Sh3n8otQBopnjTf2FpWS8lkPJcqFY/WQYaQx3/QEykjC92lGxbmn/h2Wp991fwxfbcoVAsGfluxy
	XpGWU4tZQBXsn2A+/fFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJbFS-00000002Ae8-12de;
	Fri, 06 Dec 2024 16:32:10 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJbEO-00000002ACu-0wrK
	for linux-phy@lists.infradead.org;
	Fri, 06 Dec 2024 16:31:06 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-aa5366d3b47so357125466b.0
        for <linux-phy@lists.infradead.org>; Fri, 06 Dec 2024 08:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733502662; x=1734107462; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=b7nSjvUx63MADVpt7oEUea+FY7rhNfLzD9bh4ADhfVg=;
        b=lMUPLVHGv6s85YQiloZGCe0B9HB2KMHKDBkd7Ih+844snCrUSRo4LByNlF3rEITtNR
         E0tuRuvY93RQDcpl8ap91bYoiR3sQ1O05NuEeeQv37AKennkSgDAj5aTBXuhlgtlfxyB
         x5bat5L+TDR5Ng1b0M0teYf5CNvk7Mu1p8KhjV/AJd4lOmwlyJlFKZmz9naQDWzfWfLJ
         kjYNqUJ603jBwctkwco0aKZ9OrPZYzkdt3tprSw9TwgMdGA/LS5mhD/EYwqbod6qZ7W1
         ID+xIV3kjtjiD70+msqUiiGpYzLcYV/WIb8yvy9VjKDriZCl3WYwq8nxseBzxN0LO3TM
         5ttg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733502662; x=1734107462;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b7nSjvUx63MADVpt7oEUea+FY7rhNfLzD9bh4ADhfVg=;
        b=P7DshoAbpDctlkiN2XR1zX9iLcE3lCU/SYSMOuvmx3ZU0ktUMbXbST98bHRQCZoLgj
         WBc/5KNF13F9NegGIl5K1Tq4Mtdm0VVVSYoOAYWmnAqPANncq37hYGotOs+tb3lcAFXT
         WXMcPosiavFZPOrimZoW0yRDVgHwk8+kn6wuI5MW1K752wm7072bdnqUTYFy3Yy0zFj6
         7Ny5PpLcPGLMvDk7WVeO4p+YaYFHJa/en7mR3HfB8dI/oNiO8LOprJLRttxK1eoDwaN0
         i0pdc3czEC3GeL+MnH8urITnpdLYbe5F/AGz2zd3z2rRgDCZIPzt+xGBWgjVBX7qga2z
         vCTA==
X-Forwarded-Encrypted: i=1; AJvYcCVK+D59BnsYO0FWYZlmScQTgbRz5SzI2gn3DpIrFwYLzRZSHayTtvGG5UL8tZdZpBE1tab67SfKHiU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzHMQygYeFaNl7lIOyg0ANJgPQOvi1wO+7WhqrddBxzv4O646Tu
	vc3AWB6MZEStlmQvCb10LKuDL/ugf9vl1AiloBl0ZiJfbfI//Ji6YkDCkI5tUIo=
X-Gm-Gg: ASbGncv+PEWsGHj7dhX3lrQ6FWNmac6u8YIhjYb1iG/3pCDXLrlFx4Osw9WHYy6+R4f
	d6+vt9aMZxtca65ZWDoNYw9fuVn819PJXY0vprLZ9FnUwIGljGgVsmFHbjqOKxHKFmzJBlQvUVT
	tbYVgQbrUJnNieJg1A0t1B9qLF8SMGcqPpVo8EiybStQ1gncuFVTzDWM2ODi4a5X+MP9JG3a7qL
	hZSrJonLj2kdBcPRZrnMNIAU0+NBvNHpjjbdahPVJERtffQOep2mlMsQaE+QAyN3mSfpE3iLMw9
	+m3Q6hcL4bUm90tKX18AS0qoEIxDjUGz9g==
X-Google-Smtp-Source: AGHT+IG5YohV/4iJ4GCzEmX7QvPbyvRE1dHLvIsPCNB971me4/Bxko7NAtS9jjY0kEtDTyMZljoJ8A==
X-Received: by 2002:a17:907:770d:b0:aa6:23ba:d8c4 with SMTP id a640c23a62f3a-aa639fb1a24mr339321566b.4.1733502661682;
        Fri, 06 Dec 2024 08:31:01 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260e8af8sm257710266b.191.2024.12.06.08.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 08:31:01 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v4 0/7] USB31DRD phy updates for Google Tensor gs101
 (orientation & DWC3 rpm)
Date: Fri, 06 Dec 2024 16:31:00 +0000
Message-Id: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMQmU2cC/43NQQ6CMBQE0KuYrq3p/1QqrryHcQG0hSakJS0hE
 sLd/bBR4wKXM8m8mVky0ZnEroeZRTO65IKnII8HVrelbwx3mjJDgRIAFW8SCOB9O/Gu9CbxQHM
 /lAPtthYLjaLO9UVqZKT00Vj33B7uD8qtS0OI03Y4wtr+b4/ABYdK2dqgLHJR3TrnyxhOITZsx
 Ud8gyiyfRAJlELXltRcCf0DZp/geR/MCMzQKoTKaITiC1yW5QUJoFYgcQEAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_083104_263195_C4AA9B45 
X-CRM114-Status: GOOD (  12.74  )
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

SGksCgpUaGlzIHNlcmllcyBlbmFibGVzIFVTQjMgVHlwZS1DIGxhbmUgb3JpZW50YXRpb24gZGV0
ZWN0aW9uIGFuZApjb25maWd1cmF0aW9uIG9uIHBsYXRmb3JtcyB0aGF0IHN1cHBvcnQgdGhpcyAo
R29vZ2xlIGdzMTAxKSwgYW5kIGl0CmFsc28gYWxsb3dzIHRoZSBEV0MzIGNvcmUgdG8gZW50ZXIg
cnVudGltZSBzdXNwZW5kIGV2ZW4gd2hlbiBVREMgaXMKYWN0aXZlLgoKRm9yIGxhbmUgb3JpZW50
YXRpb24sIHRoaXMgZHJpdmVyIG5vdyBvcHRpb25hbGx5IChiYXNlZCBvbiBEVCkKc3Vic2NyaWJl
cyB0byB0aGUgVENQQydzIGxhbmUgb3JpZW50YXRpb24gbm90aWZpZXIgYW5kIHJlbWVtYmVycyB0
aGUKb3JpZW50YXRpb24gdG8gbGF0ZXIgYmUgdXNlZCBkdXJpbmcgcGh5X2luaXQoKS4KClRvIGVu
YWJsZSBEV0MzIHJ1bnRpbWUgc3VzcGVuZCwgdGhlIGdhZGdldCBuZWVkcyB0byBpbmZvcm0gdGhl
IGNvcmUgdmlhCmR3YzNfZ2FkZ2V0X2ludGVycnVwdCgpIHdpdGggZXZlbnQgdHlwZSA9PSBEV0Mz
X0RFVklDRV9FVkVOVF9ESVNDT05ORUNUCm9mIGEgY2FibGUgZGlzY29ubmVjdC4gRm9yIHRoYXQg
dG8gYWxsb3cgdG8gaGFwcGVuLCB0aGlzIGRyaXZlcgp0aGVyZWZvcmUgbmVlZHMgdG8gc3RvcCBm
b3JjaW5nIHRoZSBWYnVzIGFuZCBidmFsaWQgc2lnbmFscyB0byBhY3RpdmUKYW5kIGluc3RlYWQg
Y2hhbmdlIHRoZWlyIHN0YXRlIGJhc2VkIG9uIGFjdHVhbCBjb25kaXRpb25zLiBUaGUgc2FtZQpU
Q1BDIG5vdGlmaWVyIGlzIHVzZWQgdG8gZGV0ZWN0IHRoaXMsIGFuZCBwcm9ncmFtIHRoZSBoYXJk
d2FyZQphY2NvcmRpbmdseS4KClRoYXQgc2lnbmFsIHN0YXRlIGlzIGJhc2VkIG9uIGFkdmljZSBn
aXZlbiBieSBUaGluaCBpbgpodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNDA4MTMyMzA2
MjUuamdrYXRxc3R5aGNtcGV6dkBzeW5vcHN5cy5jb20vCgpCb3RoIGNoYW5nZXMgdG9nZXRoZXIg
bm93IGFsbG93IGNhYmxlIG9yaWVudGF0aW9uIGRldGVjdGlvbiB0byB3b3JrLCBhcwp0aGUgRFdD
MyB3aWxsIG5vdyBjYWxsIHBoeV9leGl0KCkgb24gY2FibGUgZGlzY29ubmVjdCwgYW5kIHdlIGNh
bgpyZXByb2dyYW0gdGhlIGxhbmUgbXV4IGluIHBoeV9pbml0KCkuCgpPbiB0b3Agb2YgdGhhdCwg
dGhlcmUgYXJlIHNvbWUgc21hbGwgcmVsYXRlZCBjbGVhbnVwIHBhdGNoZXMuCgpTaWduZWQtb2Zm
LWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgotLS0KQ2hhbmdl
cyBpbiB2NDoKLSBzZXBhcmF0ZSBvdXQgcGF0Y2ggNSAncGh5OiBleHlub3M1LXVzYmRyZDogZ3Mx
MDE6IGVuc3VyZSBwb3dlciBpcwogIGdhdGVkIHRvIFNTIHBoeSBpbiBwaHlfZXhpdCgpJyBmcm9t
IHRoaXMgc2VyaWVzLCBhcyBhIHN0YWJsZSBwYXRjaAogIHNob3VsZG4ndCBiZSBidXJpZWQgaW5z
aWRlIGEgc2VyaWVzIGxpa2UgdGhpcyAoR3JlZykKICBMaW5rOiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9hbGwvMjAyNDEyMDUtZ3MxMDEtdXNiLXBoeS1maXgtdjQtMS0wMjc4ODA5ZmI4MTBAbGlu
YXJvLm9yZy8KLSBMaW5rIHRvIHYzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjQxMjA1
LWdzMTAxLXBoeS1sYW5lcy1vcmllbnRhdGlvbi1waHktdjMtMC0zMmY3MjFiZWQyMTlAbGluYXJv
Lm9yZwoKQ2hhbmdlcyBpbiB2MzoKLSBwYXRjaGVzIDEgJiAyOiB1cGRhdGUgYXMgcGVyIFJvYidz
IHN1Z2dlc3Rpb25zCi0gcGF0Y2ggNyAmIDg6IGRyb3AgaW5pdCB0byAtMSBvZiBwaHlfZHJkLT5v
cmllbnRhdGlvbiAoVmlub2QpCi0gcGF0Y2ggNzogYXZvaWQgYW4gI2lmZGVmIAotIExpbmsgdG8g
djI6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNDEyMDMtZ3MxMDEtcGh5LWxhbmVzLW9y
aWVudGF0aW9uLXBoeS12Mi0wLTQwZGNmMWI3NjcwZEBsaW5hcm8ub3JnCgpDaGFuZ2VzIGluIHYy
OgotIHNxdWFzaCBwYXRjaGVzICMyIGFuZCAjMyBmcm9tIHYxIHRvIGFjdHVhbGx5IGRpc2FsbG93
CiAgb3JpZW50YXRpb24tc3dpdGNoIG9uICFnczEwMSAobm90IGp1c3Qgb3B0aW9uYWwpIChDb25v
cikKLSB1cGRhdGUgYmluZGluZ3MgY29tbWl0IG1lc3NhZ2UgdG8gY2xhcmlmeSB0aGF0IHRoZSBp
bnRlbnRpb24gZm9yIHRoZQogIGRyaXZlciBpcyB0byB3b3JrIHdpdGggb2xkIGFuZCBuZXcgRFRT
IChDb25vcikKLSBhZGQgY2Mtc3RhYmxlIGFuZCBmaXhlcyB0YWdzIHRvIHBvd2VyIGdhdGluZyBw
YXRjaCAoS3J6eXN6dG9mKQotIGZpeCBhbiAjaW5jbHVkZSBhbmQgdHlwbyAoUGV0ZXIpCi0gTGlu
ayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI0MTEyNy1nczEwMS1waHktbGFu
ZXMtb3JpZW50YXRpb24tcGh5LXYxLTAtMWI3ZmNlMjQ5NjBiQGxpbmFyby5vcmcKCi0tLQpBbmRy
w6kgRHJhc3ppayAoNyk6CiAgICAgIGR0LWJpbmRpbmdzOiBwaHk6IHNhbXN1bmcsdXNiMy1kcmQt
cGh5OiBhZGQgYmxhbmsgbGluZXMgYmV0d2VlbiBEVCBwcm9wZXJ0aWVzCiAgICAgIGR0LWJpbmRp
bmdzOiBwaHk6IHNhbXN1bmcsdXNiMy1kcmQtcGh5OiBnczEwMTogcmVxdWlyZSBUeXBlLUMgcHJv
cGVydGllcwogICAgICBwaHk6IGV4eW5vczUtdXNiZHJkOiBjb252ZXJ0IHRvIGRldl9lcnJfcHJv
YmUKICAgICAgcGh5OiBleHlub3M1LXVzYmRyZDogZml4IEVEUyBkaXN0cmlidXRpb24gdHVuaW5n
IChnczEwMSkKICAgICAgcGh5OiBleHlub3M1LXVzYmRyZDogZ3MxMDE6IGNvbmZpZ3VyZSBTUyBs
YW5lcyBiYXNlZCBvbiBvcmllbnRhdGlvbgogICAgICBwaHk6IGV4eW5vczUtdXNiZHJkOiBzdWJz
Y3JpYmUgdG8gb3JpZW50YXRpb24gbm90aWZpZXIgaWYgcmVxdWlyZWQKICAgICAgcGh5OiBleHlu
b3M1LXVzYmRyZDogYWxsb3cgRFdDMyBydW50aW1lIHN1c3BlbmQgd2l0aCBVREMgYm91bmQgKEU4
NTArKQoKIC4uLi9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbCAgICAgICAg
IHwgIDIxICsrLQogZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgIDEgKwogZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyAg
ICAgICAgICAgfCAyMDIgKysrKysrKysrKysrKysrKy0tLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDE4
MiBpbnNlcnRpb25zKCspLCA0MiBkZWxldGlvbnMoLSkKLS0tCmJhc2UtY29tbWl0OiBjMjQ1YTdh
Nzk2MDJjY2JlZTc4MGMwMDRjMWU0YWJjZGE2NmFlYzMyCmNoYW5nZS1pZDogMjAyNDExMjctZ3Mx
MDEtcGh5LWxhbmVzLW9yaWVudGF0aW9uLXBoeS0yOWQyMGM2ZDg0ZDIKCkJlc3QgcmVnYXJkcywK
LS0gCkFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+CgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

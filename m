Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 724EBC369CB
	for <linux-phy@archiver.kernel.org>; Sat, 26 Apr 2025 08:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eeFSA5s3dAlHBQiKSVAB/c7vDnLHY7iwPxaakLtgVe0=; b=tl1yep3Y0OEmoG
	XOYZkny82ORenO+TMiYCpZy69hrIUDnQXcD42FK8G+irSYYqESTzB7aNQzngmoxch6eYlNjKO4PPu
	CHCe3JKN/hnH6tLut99xi/kDy8ehk2KhW9LsUg9V95W5gIqq+7m21JOki/I9hBQUnbKOBk2kTI6Sz
	QRG0V/+P1bkwzRg7HCbhhGizUUb75H9u7wmD5bhnjHS7kGLeiZx/GpqQ7zNHJvBNfNZvKS5PFq6MC
	QL7mHKtJICgVOismUwZ4rWABgrx1yADv4JPf3Rf7VlgdQtX0+r+2XEWaAyMehh8ZbLF7rlj2eXnv5
	Scd7vYqQ1LAuvNxml8CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8aiD-00000001iHz-3vB2;
	Sat, 26 Apr 2025 08:16:37 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8aiB-00000001iHc-2Urw
	for linux-phy@lists.infradead.org;
	Sat, 26 Apr 2025 08:16:36 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-2243803b776so53057665ad.0
        for <linux-phy@lists.infradead.org>; Sat, 26 Apr 2025 01:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745655394; x=1746260194; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f5nFF9hrf8k+mrJsshn3YqKT1TsxR5hPPisEV2OefvY=;
        b=OGqY5xowUjuMhm74S3vaKZptRzV7UwztidozOgUcsXY1V0KNm/xfcHwPif3JQly2yJ
         +nM/EPQYDcPOy9dzgWfa7CeJrO4N1GKuTgj8Xlzm6qx2Z8tqvg6RamsSYJGYq46vO64c
         To5TyGZq+hxfISiAn5yK9wSAJKTJWehsAPIdIH/RpiMMsvFdIAV5XENGcijoy7xkHOmU
         863/HiK7szF4RclmFulh80B8Rb/kUMvytx+eYCUCo1yJUtY2YJMOPyd4z+Jeljz9F0Ez
         ZUqvD7Umy0S9THBLGetd7xBubwqbjqEU7tMZIg6ybAZV+mu4VY7uQNWOdtpIRXota8bH
         B2bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745655394; x=1746260194;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f5nFF9hrf8k+mrJsshn3YqKT1TsxR5hPPisEV2OefvY=;
        b=gOhLYhwjZctp8p+TPmWyK3xRUC6hZrRq9dcmooEsdAhyKgNuWNn68FjUUV9MCoKTdP
         l87c7NXAgawUpBqEGBG3ljjWfMShoQWPiSuJqFYzgXf6FV6et5C6Ot03vlTa9ONKdJKQ
         WcVDE/ioTJFoYWrYhkt5Pui9U7zrvahUUsrlKf7cFysnpOZFti6d05z/GtGP5uPjw+US
         5GnkoHiLslZfk4fSDVpAdhtv7YABHq7ooXHN8d1tar9t0R19QIegm4GqpeGq6cYeQLxN
         d0Hjo8VnSUTjt7Rsky5CgObiwwlgvP+gSANu5f2FZehCiE/ArICcOVEiL60nZLfAYfEP
         rlkg==
X-Forwarded-Encrypted: i=1; AJvYcCULTqh79fTTzk28DZijMsEfDgQh0DPMK3DBEJPN0MDTifqJ4DQ/+EXLUiI19XJylDLJdyEb/wpLyq8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyGaTq4MDo5PRyIpDrJQ4jGDVkKmNZsWiXpfDmwVHT4f5JB7kRn
	S6UeWXg/feA6WWoHYyyMSQe56hCo3P+Czbi8bJp+xPKVV5u27el8
X-Gm-Gg: ASbGncsn1/QmA3FFkdHzMcCQJYA0Eac6TyNgIrCJId2FsVN2Z3FepYjLJy+yRIIR12b
	eLTGj/p2W1qofqWF2v0M4k1TgBQ7SeWir1lSbjsw6IDV1Hh2cPwBarKwlz1FGRtw1b3xoIycg1y
	ICeSl2Rf+yHGgKux3KaIiEU6MiHq7rddRkpK5zpFDTs0oiNcHrZSPeOCflHuflluu0zprUBZc7T
	jN3E+Puyn2Ex3v0cdnqQnAi7FFIZPw1u9TxdygeIi+s+6B1WFt6xraAAzJ6rrPDgTGcTCVOpHIc
	gmNk//HOblQU7wlb02jKlCtK4iC+UKTPyPegeuE=
X-Google-Smtp-Source: AGHT+IH2uRpVPaRuKcj/Dnooeg5tCZHg5INKprYzVhvYC8u33M/5h6/1Yrvk8VqXDWgVX0OSW7Ou1w==
X-Received: by 2002:a17:903:41c8:b0:224:76f:9e44 with SMTP id d9443c01a7336-22dbf4c84e4mr63259185ad.8.1745655394358;
        Sat, 26 Apr 2025 01:16:34 -0700 (PDT)
Received: from nuvole.. ([144.202.86.13])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db5219c47sm44906405ad.240.2025.04.26.01.16.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Apr 2025 01:16:33 -0700 (PDT)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: dmitry.baryshkov@oss.qualcomm.com
Cc: abel.vesa@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	kishon@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	mitltlatltl@gmail.com,
	robh@kernel.org,
	sfr@canb.auug.org.au,
	vkoul@kernel.org
Subject: Re: [PATCH v2 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: rework reg override handler
Date: Sat, 26 Apr 2025 16:14:23 +0800
Message-ID: <20250426081424.422590-1-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <q6zqfk3l2khp3tkodxd4pzhufiesyjcypl66zoqzslolwoveyo@ltrw2iulrkqs>
References: <q6zqfk3l2khp3tkodxd4pzhufiesyjcypl66zoqzslolwoveyo@ltrw2iulrkqs>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250426_011635_635946_76C16D58 
X-CRM114-Status: GOOD (  16.27  )
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

T24gU2F0LCBBcHIgMjYsIDIwMjUgYXQgMzo0MeKAr0FNIERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRy
eS5iYXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4gT24gV2VkLCBBcHIgMTYsIDIw
MjUgYXQgMDg6MDI6MDFQTSArMDgwMCwgUGVuZ3l1IEx1byB3cm90ZToKPiA+IEluIGRvd25zdHJl
YW0gdHJlZSwgbWFueSByZWdpc3RlcnMgbmVlZCB0byBiZSBvdmVycmlkZGVuLCBpdCB2YXJpZXMK
PiA+IGZyb20gZGV2aWNlcyBhbmQgcGxhdGZvcm1zLCB3aXRoIHRoZXNlIHJlZ2lzdGVycyBnZXR0
aW5nIG1vcmUsIGFkZGluZwo+ID4gYSBoYW5kbGVyIGZvciB0aGlzIGlzIGhlbHBmdWwuCj4KPiBJ
dCBzaG91bGQgYmUgbm90ZWQgdGhhdCBwcmV2aW91c2x5IGFsbCB2YWx1ZXMgd2VyZSBhcHBsaWVk
IGR1cmluZyBfaW5pdAo+IHBoYXNlLCBiZWZvcmUgY2hlY2tpbmcgdGhlIHN0YXR1cyBldGMuIE5v
dyB0aGUgb3ZlcnJpZGVzIGFyZSBwcm9ncmFtbWVkCj4gZnJvbSB0aGUgc2V0X21vZGUuIFNob3Vs
ZCB5b3Ugc3RpbGwgcHJvZ3JhbSBzYW5lIGRlZmF1bHRzIGF0IHRoZSBpbml0Cj4gc3RhZ2UgdG9v
Pwo+CgpJIHRoaW5rIHByb2dyYW1taW5nIGluIHNldF9tb2RlIGlzIG9rLiBXaGVuIHdlIGluaXQo
ZHdjM19jb3JlX2luaXQpLCB3ZQpzZXRfbW9kZShkd2MzX2NvcmVfaW5pdF9tb2RlKSBsYXRlciwg
cGxlYXNlIGNoZWNrCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjE0LjMvc291
cmNlL2RyaXZlcnMvdXNiL2R3YzMvY29yZS5jI0wyMjg3CgpBY3R1YWxseSwgaW4gdGhlIGRvd25z
dHJlYW0sIGFsbCB0aGUgdGhpbmdzIGFyZSBkb25lIGluIGluaXQsIGl0Cm92ZXJyaWRlcyBmaXJz
dCwgdGhlbiBtYXNrZWQgd3JpdGUgdGhlIGRlYXVsdHMsIGZpbmFsbHkgaXQgc2V0X21vZGUsCnlv
dSBjYW4gY2hlY2sgaGVyZQpodHRwczovL2dpdGh1Yi5jb20vT25lUGx1c09TUy9hbmRyb2lkX2tl
cm5lbF9vbmVwbHVzX3NtODY1MC9ibG9iL29uZXBsdXMvc204NjUwX3ZfMTUuMC4wX3BhZF9wcm8v
ZHJpdmVycy91c2IvcmVwZWF0ZXIvcmVwZWF0ZXItcXRpLXBtaWMtZXVzYjIuYyNMMzU2Cgo+IEJU
VywgaXMgdGhlcmUgYSByZWFsIG5lZWQgdG8gb3ZlcnJpZGUgdGhvc2UgZm9yIHRoZSBwbGF0Zm9y
bSB5b3UgYXJlCj4gd29ya2luZyBvbj8gQ291bGQgeW91IHBsZWFzZSBwcm92aWRlIHNvbWUgZGV0
YWlscywgbWF5YmUgaW4gdGhlIGNvdmVyCj4gbGV0dGVyLgoKSSBhbSBub3QgcXVpdGUgc3VyZSwg
cmVjZW50bHksIEkgZXhwaXJlbmNlZCBtb2RlIHN3aXRjaGluZyBmYWlsdXJlLAp3aGVuIEkgYGVj
aG8gZGV2aWNlID4gL3N5cy9rZXJuZWwvZGVidWcvdXNiL2E2MDAwMDAudXNiL21vZGVgLCBFdGhl
cm5ldApHYWRnZXQgd291bGRuJ3Qgd29yayBhZ2FpbiwgbXkgZGVza3RvcCBjYW4ndCBjb25uZWN0
IHRvIGl0LgoKQlRXLCBhcyB5b3UgY2FuIHNlZSBpbiBsaW5lIDM1NiwgaXQgaXMgbW9zdCBsaWtl
bHkgdGhhdCBvdmVycmlkZXMKcmVsYXRlZCB0byBjaGFyZ2luZyBmZWF0dXJlLiBJIGhhdmUgbm90
IHBvcnRlZCBjaGFyZ2luZyB5ZXQsIGJ1dCBhZGRpbmcKbW9yZSBvdmVycmlkZXMgc2VlbXMgaGFy
bWxlc3MsIGFuZCBpZiBvdmVycmlkaW5nLCBkaXN0aW5ndWlzaGluZyB3aGljaAptb2RlIHNlZW1z
IG5lY2Vzc2FyeSwgZXZlbiBpZiBzb21lIGRldmljZXMgdXNlIHRoZSBzYW1lIHNlcXVlbmNlLiBT
byBJCnNlbnQgdGhlIHBhdGNoLgoKQmVzdCB3aXNoZXMsClBlbmd5dQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

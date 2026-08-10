Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B033C5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 07:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TKuXGxV74aZPtvWD5lrAc1LjwoUj7mMijogbEOc2Ozo=; b=v8aI46+SL9fheR
	N7OmFPeOBdj9thhchGX4aRZQ2xoCn8A5JJEbD0QyfoNdjDzl4RWA80f5x/uBBK3RTTLQm7SZ8QepT
	wVkqWXAtL4NsLtCcAap+KuDEEqXOcdjxopMMgmtCgXZRdVf2ZTGWV+t1m7EYF61/fGKD3dWb8WNPP
	YCmiEHDb/2JJkqCo4molcl6Rg5V4Vt4Bq7nTrGzwQCDlsgFdWdKO9TxuUmTLziZR+xJXQkgE+OJa2
	7St/UQ0qtkQdmEDZ+LR6seZwpMew5RFR1AlVjgylw9nXDrvFko9L3Ozdt97X2z918Qa/ie9Q88zg9
	2LwrudDfenlmWNy5CAcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtK2e-0000000BAQb-3Icj;
	Mon, 10 Aug 2026 07:03:24 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtK2c-0000000BAPP-0s3E
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 07:03:23 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-495635a85d2so13716355e9.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 00:03:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786345400; x=1786950200; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=UFqgR5GSvMOEuQrtPZNNyIXv51CHwIdUk1flHNLoxSo=;
        b=lmdywwCS6Z19LYZdooUJM9mHUJ+a4FL1qmiuQX4ceoZYUMXK1cM4P0iIMggprXHwTK
         oBNOv0TPjpw+LLVJAHq4eOhxivJEJjKvr0v88UGN47PRwBusWS/ybpWbnzyIwP8bnUxo
         d62oCKOygqYV85H0900dBqOg0B2zgBUmRwROdQowBv8nzGKfYZi2fmBqsr764f409pW1
         J0uAki/HutK26IyeE9KvowuYoGHudNvezR++0Av4E42QRonpXF0x5/8TDgPr1wUBOO0I
         4gAN32bMAEaeF6Vm41Qqt2rdm1Z9NBqNRJsUiZIOty3XS5tpBHM1sK1WrTjD36LHK7jO
         EWyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786345400; x=1786950200;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UFqgR5GSvMOEuQrtPZNNyIXv51CHwIdUk1flHNLoxSo=;
        b=rGNffsY4L9G9LATpu334Y69pDzE1oCyc56EGTUnQgjg+tJjvirlVxi3OSWEE9HHm6X
         MSdyg6X6Zlb76t1BwjRlZ4wzfKgc5ilWbxWF2rNK9NsQTQKTafYODXm63cpbYnpn2LPn
         kTHynEixeP6v0dOBeL2mh9eSGahoah596SsrER0EhO5E00U+SL1YqBUFvhb3ZJe4WNml
         dNwrngdLJsn2g0aEeySqLrF64KKh03stGtJnUEriT8ObGSShtbQkrFBq2t0yPywq8SIG
         rGKLSGpwX4007UCb4idR6b6VyMs/CPN9z3ql9tl28A2x15lQu+Nbt4wtXxAwCuovSYqi
         f50w==
X-Forwarded-Encrypted: i=1; AHgh+Rr9iccwIMcqJn98mKLHzZmolrkZjMAd91p+OPs7QoAxuboZmdShGsESLpnniDmbrHnlPlZ5yf8wrEI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzh7QAXYJ/t9tnyrZc6Vdr+GkzUDH/ntJuQ26b/WSx2HULFTHGk
	CsnqsG6tdWkXrhv5G1pE3e/SoJHNiv6WXm+onA65RWe/5IbKJe2mkMXL
X-Gm-Gg: AR+sD13lD11U2erS4NjXWBcwMKYWIb7xI9xbSj8EXXUP65qsgEgb77Jfk0fFh0Sl8Ql
	ussOwK38ly98r0mJLmJDwAjB1oSpl4AfI9Xraazi6NJI1lM5X6KJ+ZeTXW+/JNHRbaFzs0/rQZX
	lf24RJ9wEKvdKy7nGjbjcgQtqSAjq1bnGYX3yJkNe51zDpoIUeVPVPxU0YXz8/bKlkJHfe4CY39
	G7/LkrdRW3rDTVQJqPpH8YH3aeJVccH8gcplCtAOUxWI4UbTAzrwh67E2Zz9N+fTdCNrQqvV3TC
	TNf01TMci2RTUiKcOgZ7E2GBTCQFTUV6Zy+WYMMfrugp3X9Jb7H/lsUP1/ooosRye/D+Ye6twGX
	7zv/X1bd3gT6vkTFiunrTY8FMJD+ExyHCYPOeYyDz5rsUUQWpPKCOWUV61V+LqDbjmhVUDmX2OQ
	pAf3WoTa2y795fSZaVKznTRXLYXb88vcnsy/lZWv+Vv5zt9X+LT+QDYHFycnS9YgY/J40nB1wen
	E2VsFJKBQY=
X-Received: by 2002:a05:600c:3b20:b0:499:4893:97d3 with SMTP id 5b1f17b1804b1-4994e7cb8ebmr498120745e9.13.1786345400094;
        Mon, 10 Aug 2026 00:03:20 -0700 (PDT)
Received: from strix.doe.home ([197.250.226.68])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4800215078asm30548038f8f.12.2026.08.10.00.03.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 00:03:19 -0700 (PDT)
From: =?UTF-8?q?Stefan=20D=C3=B6singer?= <stefandoesinger@gmail.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	bmasney@redhat.com,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	linux@armlinux.org.uk,
	lee@kernel.org
Cc: linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	mfd@lists.linux.dev
Subject: [PATCH v10 12/12] ARM: dts: zte: Declare zx297520v3 CRM device nodes
Date: Mon, 10 Aug 2026 10:03:10 +0300
Message-ID: <20260810070311.1110849-1-stefandoesinger@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_000322_276421_390DC459 
X-CRM114-Status: GOOD (  14.09  )
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

VGhpcyBtYWtlcyB1c2Ugb2YgdGhlIGRyaXZlciBhZGRlZCBpbiB0aGUgcHJldmlvdXMgcGF0Y2hl
cy4gSXQgd2lyZXMgdXAKdGhlIHVhcnQgY2xvY2tzIGFuZCByZXNldHMgYW5kIGFsbG93cyBnZXR0
aW5nIHJpZCBvZiB0aGUgcGxhY2Vob2xkZXIKdWFydGNsayBub2RlLgoKU2lnbmVkLW9mZi1ieTog
U3RlZmFuIETDtnNpbmdlciA8c3RlZmFuZG9lc2luZ2VyQGdtYWlsLmNvbT4KCi0tLQoKVmVyc2lv
biAxMDogRml4IGlzc3VlcyB3aXRoIGR0LWNoZWNrLXN0eWxlIC0tbW9kZT1zdHJpY3QgaW4gbmV3
bHkgYWRkZWQKY29kZSwgYnV0IGxlZnQgaXNzdWVzIGluIGV4aXN0aW5nIG5vZGVzIGFsb25lLgoK
VmVyc2lvbiA5OgpTb3J0IG5ldyBub2RlcyBieSBtbWlvIGFkZHJlc3MKcmVuYW1lIHN5c2Nvbi1y
ZWJvb3QgdG8gInJlYm9vdCIKYWRqdXN0IHRvIGNoYW5nZXMgaW4gYmluZGluZ3MKClZlcnNpb24g
NzoKQWRkIHBoeSBub2RlcyB0byB0b3Bjcm0KUmVtb3ZlIHN5c2NvbiBmcm9tIG1hdHJpeGNsayBh
Z2FpbgpBZGFwdCByZW1vdmUgbm93LXJlbW92ZWQgZXh0cmEgY2xrIGlucHV0cyBmcm9tIG1hdHJp
eApBZGQgcmVzZXQgdG8gTFNQCm9zYzI2bSAtPiBjbG9jay0yNm0gZm9yIHRoZSBmaXhlZCByYXRl
IGNsb2NrcywgbGlrZXdpc2UgZm9yIDMyawoKVmVyc2lvbiA2OgpBZGQgc3lzY29uIHRvIG1hdHJp
eGNsawoKVmVyc2lvbiA1OgpSZS1uYW1lIGZyb20gKmNsayB0byAqY3JtCkFkZCB0aGUgc3lzY29u
LXJlYm9vdCBub2RlIGhlcmUgYmVjYXVzZSB0aGUgYmluZGluZyByZXF1aXJlcyBpdApSZS1hZGQg
YWNjaWRlbnRhbGx5IGRyb3BwZWQgdWFydDIgSVJRCi0tLQogYXJjaC9hcm0vYm9vdC9kdHMvenRl
L3p4Mjk3NTIwdjMuZHRzaSB8IDEwMSArKysrKysrKysrKysrKysrKysrKysrKy0tLQogMSBmaWxl
IGNoYW5nZWQsIDg5IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2Jvb3QvZHRzL3p0ZS96eDI5NzUyMHYzLmR0c2kgYi9hcmNoL2FybS9ib290L2R0
cy96dGUvengyOTc1MjB2My5kdHNpCmluZGV4IGExNmMzMGExNjRiYi4uZWJhYzNjZDEzN2RmIDEw
MDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy96dGUvengyOTc1MjB2My5kdHNpCisrKyBiL2Fy
Y2gvYXJtL2Jvb3QvZHRzL3p0ZS96eDI5NzUyMHYzLmR0c2kKQEAgLTMsMTIgKzMsMjYgQEAKICAq
IENvcHlyaWdodCAoYykgMjAyNiBTdGVmYW4gRMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21h
aWwuY29tPgogICovCiAKKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay96dGUsengyOTc1MjB2
My1jbGsuaD4KICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0t
Z2ljLmg+CisjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcmVzZXQvenRlLHp4Mjk3NTIwdjMtcmVzZXQu
aD4KIAogLyB7CiAJI2FkZHJlc3MtY2VsbHMgPSA8MT47CiAJI3NpemUtY2VsbHMgPSA8MT47CiAK
Kwlvc2MyNm06IGNsb2NrLTI2bSB7CisJCWNvbXBhdGlibGUgPSAiZml4ZWQtY2xvY2siOworCQkj
Y2xvY2stY2VsbHMgPSA8MD47CisJCWNsb2NrLWZyZXF1ZW5jeSA9IDwyNjAwMDAwMD47CisJfTsK
KworCW9zYzMyazogY2xvY2stMzJrIHsKKwkJY29tcGF0aWJsZSA9ICJmaXhlZC1jbG9jayI7CisJ
CSNjbG9jay1jZWxscyA9IDwwPjsKKwkJY2xvY2stZnJlcXVlbmN5ID0gPDMyNzY4PjsKKwl9Owor
CiAJY3B1cyB7CiAJCSNhZGRyZXNzLWNlbGxzID0gPDE+OwogCQkjc2l6ZS1jZWxscyA9IDwwPjsK
QEAgLTIwLDE1ICszNCw2IEBAIGNwdUAwIHsKIAkJfTsKIAl9OwogCi0JLyogQmFzZSBidXMgY2xv
Y2sgYW5kIGRlZmF1bHQgZm9yIHRoZSBVQVJULiBJdCB3aWxsIGJlIHJlcGxhY2VkIG9uY2UgYSBj
bG9jayBkcml2ZXIgaGFzCi0JICogYmVlbiBhZGRlZC4KLQkgKi8KLQl1YXJ0Y2xrOiB1YXJ0Y2xr
LTI2MDAwMDAwIHsKLQkJI2Nsb2NrLWNlbGxzID0gPDA+OwotCQljb21wYXRpYmxlID0gImZpeGVk
LWNsb2NrIjsKLQkJY2xvY2stZnJlcXVlbmN5ID0gPDI2MDAwMDAwPjsKLQl9OwotCiAJdGltZXIg
ewogCQljb21wYXRpYmxlID0gImFybSxhcm12Ny10aW1lciI7CiAJCWludGVycnVwdHMgPSA8R0lD
X1BQSSAxMyBJUlFfVFlQRV9MRVZFTF9MT1c+LApAQCAtNzUsMTggKzgwLDg3IEBAIHVhcnQwOiBz
ZXJpYWxAMTMxMDAwIHsKIAkJCWFybSxwcmltZWNlbGwtcGVyaXBoaWQgPSA8MHgwMDE4YzAxMT47
CiAJCQlyZWcgPSA8MHgwMDEzMTAwMCAweDEwMDA+OwogCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJ
IDAgSVJRX1RZUEVfTEVWRUxfSElHSD47Ci0JCQljbG9ja3MgPSA8JnVhcnRjbGs+LCA8JnVhcnRj
bGs+OworCQkJY2xvY2tzID0gPCZ0b3Bjcm0gWlgyOTc1MjBWM19VQVJUMF9XQ0xLPiwKKwkJCQkg
PCZ0b3Bjcm0gWlgyOTc1MjBWM19VQVJUMF9QQ0xLPjsKIAkJCWNsb2NrLW5hbWVzID0gInVhcnRj
bGsiLCAiYXBiX3BjbGsiOworCQkJcmVzZXRzID0gPCZ0b3Bjcm0gWlgyOTc1MjBWM19VQVJUMF9S
RVNFVD47CisKIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJCX07CiAKKwkJdG9wY3JtOiBjbG9j
ay1jb250cm9sbGVyQDEzYjAwMCB7CisJCQljb21wYXRpYmxlID0gInp0ZSx6eDI5NzUyMHYzLXRv
cGNybSIsICJzeXNjb24iOworCQkJcmVnID0gPDB4MDAxM2IwMDAgMHg0MDA+OworCQkJI2Nsb2Nr
LWNlbGxzID0gPDE+OworCQkJY2xvY2tzID0gPCZvc2MyNm0+LCA8Jm9zYzMyaz47CisJCQljbG9j
ay1uYW1lcyA9ICJvc2MyNm0iLCAib3NjMzJrIjsKKwkJCWludGVycnVwdHMgPSA8R0lDX1NQSSA0
MiBJUlFfVFlQRV9FREdFX1JJU0lORz4sCisJCQkJICAgICA8R0lDX1NQSSA0MyBJUlFfVFlQRV9F
REdFX1JJU0lORz4sCisJCQkJICAgICA8R0lDX1NQSSA0NSBJUlFfVFlQRV9FREdFX1JJU0lORz4s
CisJCQkJICAgICA8R0lDX1NQSSA0NiBJUlFfVFlQRV9FREdFX1JJU0lORz47CisJCQlpbnRlcnJ1
cHQtbmFtZXMgPSAidXNiLXVwIiwgInVzYi1kb3duIiwKKwkJCQkJICAiaHNpYy11cCIsICJoc2lj
LWRvd24iOworCQkJI3BoeS1jZWxscyA9IDwxPjsKKwkJCSNyZXNldC1jZWxscyA9IDwxPjsKKwor
CQkJcmVib290IHsKKwkJCQljb21wYXRpYmxlID0gInN5c2Nvbi1yZWJvb3QiOworCQkJCW1hc2sg
PSA8MHgxPjsKKwkJCQlvZmZzZXQgPSA8MHgwPjsKKwkJCQl2YWx1ZSA9IDwweDE+OworCQkJfTsK
KwkJfTsKKworCQltYXRyaXhjcm06IGNsb2NrLWNvbnRyb2xsZXJAMTMwNjAwMCB7CisJCQljb21w
YXRpYmxlID0gInp0ZSx6eDI5NzUyMHYzLW1hdHJpeGNybSI7CisJCQlyZWcgPSA8MHgwMTMwNjAw
MCAweDQwMD47CisJCQkjY2xvY2stY2VsbHMgPSA8MT47CisJCQljbG9ja3MgPSA8Jm9zYzI2bT4s
IDwmb3NjMzJrPiwKKwkJCQkgPCZ0b3Bjcm0gWlgyOTc1MjBWM19BSEJfUENMSz4sCisJCQkJIDwm
dG9wY3JtIFpYMjk3NTIwVjNfTVBMTD4sCisJCQkJIDwmdG9wY3JtIFpYMjk3NTIwVjNfTVBMTF9E
NT4sCisJCQkJIDwmdG9wY3JtIFpYMjk3NTIwVjNfRFBMTD4sCisJCQkJIDwmdG9wY3JtIFpYMjk3
NTIwVjNfR1BMTD4sCisJCQkJIDwmdG9wY3JtIFpYMjk3NTIwVjNfR1BMTF9EMj4sCisJCQkJIDwm
dG9wY3JtIFpYMjk3NTIwVjNfR0FURURfT1NDMjZNPjsKKwkJCWNsb2NrLW5hbWVzID0gIm9zYzI2
bSIsICJvc2MzMmsiLCAiYWhiIiwgIm1wbGwiLAorCQkJCSAgICAgICJtcGxsLWQ1IiwgImRwbGwi
LCAiZ3BsbCIsICJncGxsLWQyIiwKKwkJCQkgICAgICAid2Nsay1vc2MyNm0iOworCQkJI2h3bG9j
ay1jZWxscyA9IDwxPjsKKwkJCSNyZXNldC1jZWxscyA9IDwxPjsKKwkJfTsKKworCQlsc3Bjcm06
IGNsb2NrLWNvbnRyb2xsZXJAMTQwMDAwMCB7CisJCQljb21wYXRpYmxlID0gInp0ZSx6eDI5NzUy
MHYzLWxzcGNybSI7CisJCQlyZWcgPSA8MHgwMTQwMDAwMCAweDEwMD47CisJCQkjY2xvY2stY2Vs
bHMgPSA8MT47CisJCQljbG9ja3MgPSA8Jm1hdHJpeGNybSBaWDI5NzUyMFYzX0xTUF9NUExMX0Q1
X1dDTEs+LAorCQkJCSA8Jm1hdHJpeGNybSBaWDI5NzUyMFYzX0xTUF9NUExMX0Q0X1dDTEs+LAor
CQkJCSA8Jm1hdHJpeGNybSBaWDI5NzUyMFYzX0xTUF9NUExMX0Q2X1dDTEs+LAorCQkJCSA8Jm1h
dHJpeGNybSBaWDI5NzUyMFYzX0xTUF9NUExMX0Q4X1dDTEs+LAorCQkJCSA8Jm1hdHJpeGNybSBa
WDI5NzUyMFYzX0xTUF9NUExMX0QxMl9XQ0xLPiwKKwkJCQkgPCZtYXRyaXhjcm0gWlgyOTc1MjBW
M19MU1BfT1NDMjZNX1dDTEs+LAorCQkJCSA8Jm1hdHJpeGNybSBaWDI5NzUyMFYzX0xTUF9PU0Mz
MktfV0NMSz4sCisJCQkJIDwmbWF0cml4Y3JtIFpYMjk3NTIwVjNfTFNQX1BDTEs+LAorCQkJCSA8
Jm1hdHJpeGNybSBaWDI5NzUyMFYzX0xTUF9URE1fV0NMSz4sCisJCQkJIDwmbWF0cml4Y3JtIFpY
Mjk3NTIwVjNfTFNQX0RQTExfRDRfV0NMSz47CisJCQljbG9jay1uYW1lcyA9ICJtcGxsLWQ1Iiwg
Im1wbGwtZDQiLCAibXBsbC1kNiIsCisJCQkJICAgICAgIm1wbGwtZDgiLCAibXBsbC1kMTIiLCAi
b3NjMjZtIiwgIm9zYzMyayIsCisJCQkJICAgICAgInBjbGsiLCAidGRtLXdjbGsiLCAiZHBsbC1k
NCI7CisJCQkjcmVzZXQtY2VsbHMgPSA8MT47CisJCQlyZXNldHMgPSA8Jm1hdHJpeGNybSBaWDI5
NzUyMFYzX0xTUF9SRVNFVD47CisJCX07CisKIAkJdWFydDE6IHNlcmlhbEAxNDA4MDAwIHsKIAkJ
CWNvbXBhdGlibGUgPSAiYXJtLHBsMDExIiwgImFybSxwcmltZWNlbGwiOwogCQkJYXJtLHByaW1l
Y2VsbC1wZXJpcGhpZCA9IDwweDAwMThjMDExPjsKIAkJCXJlZyA9IDwweDAxNDA4MDAwIDB4MTAw
MD47CiAJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKLQkJ
CWNsb2NrcyA9IDwmdWFydGNsaz4sIDwmdWFydGNsaz47CisJCQljbG9ja3MgPSA8JmxzcGNybSBa
WDI5NzUyMFYzX1VBUlQxX1dDTEs+LAorCQkJCSA8JmxzcGNybSBaWDI5NzUyMFYzX1VBUlQxX1BD
TEs+OwogCQkJY2xvY2stbmFtZXMgPSAidWFydGNsayIsICJhcGJfcGNsayI7CisJCQlyZXNldHMg
PSA8JmxzcGNybSBaWDI5NzUyMFYzX1VBUlQxX1JFU0VUPjsKKwogCQkJc3RhdHVzID0gImRpc2Fi
bGVkIjsKIAkJfTsKIApAQCAtOTUsOCArMTY5LDExIEBAIHVhcnQyOiBzZXJpYWxAMTQwZDAwMCB7
CiAJCQlhcm0scHJpbWVjZWxsLXBlcmlwaGlkID0gPDB4MDAxOGMwMTE+OwogCQkJcmVnID0gPDB4
MDE0MGQwMDAgMHgxMDAwPjsKIAkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAyIElSUV9UWVBFX0xF
VkVMX0hJR0g+OwotCQkJY2xvY2tzID0gPCZ1YXJ0Y2xrPiwgPCZ1YXJ0Y2xrPjsKKwkJCWNsb2Nr
cyA9IDwmbHNwY3JtIFpYMjk3NTIwVjNfVUFSVDJfV0NMSz4sCisJCQkJIDwmbHNwY3JtIFpYMjk3
NTIwVjNfVUFSVDJfUENMSz47CiAJCQljbG9jay1uYW1lcyA9ICJ1YXJ0Y2xrIiwgImFwYl9wY2xr
IjsKKwkJCXJlc2V0cyA9IDwmbHNwY3JtIFpYMjk3NTIwVjNfVUFSVDJfUkVTRVQ+OworCiAJCQlz
dGF0dXMgPSAiZGlzYWJsZWQiOwogCQl9OwogCX07Ci0tIAoyLjU0LjAKCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

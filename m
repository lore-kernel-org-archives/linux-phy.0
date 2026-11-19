Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB427606A320
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 10:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IzddOAlM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=ZQKqgCta
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=8xBMuURrBGRMSDBGvP13Bbg5xwcD4crKMm6ZoYx7SKA=; b=IzddOAlM9fdzau6YjliYJKkT+M
	nLhhH0Kkp2UCFoMRKL/3Ut2CM0lu8bFtQTew9wfjdeuS23V0LeEK90LOW9btWmMP0cg/DPCWJf2nm
	Bw+MjlZ/0uS05DhzqPXBMG+R1tjR8Qh4Nnb4ipKnW8tOe7fTKf8mp6AfzgaWQ4KMnz692LCNWi+rn
	Wt3UZgJSXaadTAi+RSdwMk8uHGdK8P5hH8qS9VXCpNcxGZ6APH7TJrvO+AxnHXmX//8gHscyq0mOf
	HqV6MzwF9r/ttODcwwAN2hxxe7+g6rxkQDnfR0lloAA0UlkbCqVC+7bV6npMdGMUxQef1QdyqZts7
	HxcPzVXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTzfr-0000000Bb7W-1yma;
	Thu, 19 Nov 2026 10:47:27 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTzfp-0000000Bb66-0GxV
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 10:47:26 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-6b2237b596cso4848352a12.0
        for <linux-phy@lists.infradead.org>; Thu, 19 Nov 2026 02:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795085242; x=1795690042; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=8Has6+xC9RPzwVP2kqZn9jyid5dpYq0lsSdFVF0q6BI=;
        b=ZQKqgCtaMsPpbZCEXMpO4CebWX5Kw9WGD3T5mGqNmxw8dGfrHHmWuJto4HkJwsGK17
         LENbXbmZkGfwV/zN0MycEDc1jMQAlFrFSyBf1Tibdd9c6xp/Z7sBqfSXpgH2wq+eTAR/
         YQFhsIxwGFx3WJG38cvvbUhs1tKwQ3yolfKj5SFoY4GXU8+XTaheUZuHijbGcg5FaAEo
         gevaWUGnnekYCYU+RK5lWMZcnSoh7V5e4Giq/ex9sbm1kzP4N70dob5PreFR2t2FZVF8
         aAJS3ZVKN0Ix5CGBTXUTKdYMwZMHyYGTg53eYcy/rqwpeciLPxt50Q0BNMpM/C1xm5XK
         sSDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795085242; x=1795690042;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=8Has6+xC9RPzwVP2kqZn9jyid5dpYq0lsSdFVF0q6BI=;
        b=g2jcT+d4jVzJueSRyiOdiVUcJSpegkDV/nVJyKliTuGrcISjw7DNKucYFofmtTGOiz
         OFP2l+XczAudTNkzwj+pMujFbZ46sov25njkzuWvc7l5Lj/B9O9sJwjA6XP2FfIszEsb
         Q2VLheg36POf+vA94jIfbE1ITJMOY15XzB7Z5g1FMIBHIsZiuQd5TZZN3EIABgjfgDd4
         eGELmhJCpR1wUTWlTg5N95ckIc9vw+6OLO8xjEO+RXfo28BfVfg1bhG1/GR4dp9CH77c
         Vex9UPKCGGOvDzt0vQG2m4JZsJtIQi5AqwCFZdpt63FFywjgsdJ/AlX2jTezvB9lDgZq
         gaDw==
X-Forwarded-Encrypted: i=1; AL+hErEz0lE4f577vdYq0n7emJ7BYFM6/voGS1w+HoKcG76AwS18fJzvh27q42+5Oa9QbYQKqhZRHKv9iiU=@lists.infradead.org
X-Gm-Message-State: APuU4Z9rJ6kn+bMzjlUU0ljjBJgI32jOJGnifWH//sgzexM3DxO0/Rvo
	WioANiWWnYYDUgLOBI1ZkOnhgM6ABMLjUcPpqQzb9v1SbLfT9yGLgnS5ScUn/oUbl9IgjDg26Mv
	y0d22i5g3fg==
X-Gm-Gg: AYBFou1sXH5MMbT0r7GHzt3mwOE+qvP2jkvy4oIazJ7/bXA0ssCWebQTDRBZZUbwQNa
	cUFExLpre2RcIfgp9O/2/JWVlw05NeuoGPmc89FA3tc3pNFzAFkq6qat9jpHIgx0X8bnrvaD83d
	cRdN15Xdr4bnGE18BtcdLsQ6mRA/4Mc/LMrBE/x16IGUvzY/b9Zk67vdQr20Jpaq96cBKkcxwCK
	NwwFuLdJtKL+OgrPnjMmhxwMeOO0MC4iXQ/xfFJpIk/IZBeeYow2Wz0fO52nJz3MNnQIpfUfxcj
	pEghmaVuhUQRgcM0V66z40u9MTshpFAcU1rcKRz+J4gUB+rk0XHa/uzvlJrfJQCmMJVJUkB1uAc
	Y6oAiAviXcA9WiNufZ6VxYsitpTIgQTiZVj3T9s4Lt0XOZ582Ts9BIzj6aq+l7fscFrhGp5ey1j
	OlQ8tdQI2VrCplzQq3H609kyyLfa2A7PCcmZHt64RY8C24JwcvbhHeXrC2pt8Jmcopv2GF6h/s1
	gzCLkOcTdoMlONyd9ANPE3gky0edtlBY8cpBRUC2wyEPR5mDMMkt8yLcCdsQH4ZnLy0hloRWbN6
	Sn3pGuQ1QM6ueRNTgsZA1f1at/hwiV3wSeYvL1l3ESP6pgy2jBMbimnMv4h7D1V1zvw2FatMEIX
	YJyujhaj5Ntx9fJHBOg==
X-Received: by 2002:a17:906:f5a5:b0:c48:1977:e1c3 with SMTP id a640c23a62f3a-c510e2ecf42mr554018366b.21.1795085242017;
        Thu, 19 Nov 2026 02:47:22 -0800 (PST)
Received: from puffmais2.c.googlers.com (226.124.90.34.bc.googleusercontent.com. [34.90.124.226])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c51234c9089sm93095666b.72.2026.11.19.02.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2026 02:47:21 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 19 Nov 2026 10:47:07 +0000
Subject: [PATCH] phy: phy-google-usb: reset USB3 PHY before init
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261119-lga-usbphy-init-v1-1-1de4e0e6b191@linaro.org>
X-B4-Tracking: v=1; b=H4sIAKvT/moC/x3MQQqAIBBA0avErBtIC6muEi2sRh0IC60opLsnL
 d/i/wSRAlOEvkgQ6OLIm88QZQGz094S8pINspJKCNHhajWecdrdg+z5QK1k09aKjJEKcrUHMnz
 /x2F83w+WqoWUYQAAAA==
X-Change-ID: 20261119-lga-usbphy-init-a624836eff26
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, RD Babiera <rdbabiera@google.com>, 
 Neill Kapron <nkapron@google.com>
Cc: Juan Yescas <jyescas@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_024725_143920_2FA6E468 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Z29vZ2xlX3VzYjNfcGh5X2luaXQoKSBhc3N1bWVzIHRoYXQgdGhlIFBIWSBpcyBpbiByZXNldCBh
bmQgdGhhdCB0aGUKVHlwZS1DIEFzc2lzdCAoVENBKSBibG9jayBpcyBpbiBpdHMgcG93ZXItb24g
c3RhdGUuIE5laXRoZXIgaXMgdGhlCmNhc2Ugd2hlbiB0aGUgZHJpdmVyIHByb2JlcyBmb3IgdGhl
IGZpcnN0IHRpbWUgb24gUGl4ZWwgMTAsIHdoZXJlIHRoZQpib290IGxvYWRlciBoYXMgdXNlZCBV
U0IgYmVmb3JlOiB0aGUgUEhZIGlzIG91dCBvZiByZXNldCBhbmQKb3BlcmF0aW9uYWwgKGxhbmUw
IHBoeXN0YXR1cyBpcyBsb3cgcmlnaHQgYXdheSwgd2hlcmVhcyBpdCB0YWtlcyBhYm91dAoxMm1z
IGZvciBhIFBIWSB0aGF0IHJlYWxseSB3YXMgaW4gcmVzZXQpLCBhbmQgdGhlIFRDQSBoYXMgYmVl
bgpzd2l0Y2hlZCB0byBVU0IgYWxyZWFkeSAoVENBX1RDUEMgcmVhZHMgMHgxKS4KCldoZW4gdGhl
IFBIWSBpcyBpbml0aWFsaXNlZCBpbiB0aGF0IHN0YXRlLCB0aGUgc29mdCByZXNldCBvZiB0aGUg
RFdDMwpjb250cm9sbGVyIGhhbmdzIGluIGFib3V0IG9uZSBvdXQgb2YgZm91ciBib290cyBvbiBi
bGF6ZXIgKFBpeGVsIDEwClBybywgMTIgb2YgNTAgYm9vdHMpLCB3aXRoIERDVEwuQ1NGVFJTVCBz
dGlsbCBzZXQgc2Vjb25kcyBsYXRlcjoKCiAgICBkd2MzLWdvb2dsZSBjNDAwMDAwLnVzYjogRFdD
MyBjb250cm9sbGVyIHNvZnQgcmVzZXQgZmFpbGVkLgogICAgZHdjMy1nb29nbGUgYzQwMDAwMC51
c2I6IGVycm9yIC1FVElNRURPVVQ6IGZhaWxlZCB0byBpbml0aWFsaXplIGNvcmUKCkluIGFkZGl0
aW9uLCBnb29nbGVfdXNiM19waHlfcG93ZXJfb24oKSB3YWl0cyBmb3IgdGhlIFRDQSB0byByZXBv
cnQKdGhhdCB0aGUgdHJhbnNpdGlvbiB0byAnbm8gY29ubmVjdGlvbicgaGFzIGNvbXBsZXRlZC4g
VGhlIFRDQSBzdGFydHMKdGhhdCB0cmFuc2l0aW9uIGJ5IGl0c2VsZiBhZnRlciBhIHBvd2VyLW9u
IHJlc2V0IChUQ0FfVENQQyByZXNldHMgdG8gYQpyZXF1ZXN0IGZvciBpdCkuIFdpdGhvdXQgYSBw
b3dlci1vbiByZXNldCB0aGVyZSBpcyBubyBzdWNoIHRyYW5zaXRpb24sCmFuZCB0aGUgd2FpdCBv
bmx5IHN1Y2NlZWRzIGFzIGxvbmcgYXMgdGhlIGV2ZW50IGlzIHN0aWxsIHBlbmRpbmcgZnJvbQpl
YXJsaWVyLiBKdXN0IGFzc2VydGluZyB0aGUgUEhZIHJlc2V0cyBiZWZvcmUgaW5pdGlhbGlzaW5n
IHRoZSBQSFkgaXMKdGhlcmVmb3JlIG5vdCBlbm91Z2g6IHRoZSBldmVudCB3YXMgZ29uZSBpbiA4
IG9mIDMyIGJvb3RzIHRoZW4sIGFuZApwb3dlcmluZyBvbiB0aGUgUEhZIGZhaWxlZCB3aXRoICJQ
b1ItPk5DIHRyYW5zaXRpb24gdGltZW91dCIuCgpTbywgYmVmb3JlIGluaXRpYWxpc2luZyB0aGUg
UEhZOgoqIGFzc2VydCBpdHMgcmVzZXRzIGFuZCBkcm9wIHRoZSByZWZlcmVuY2UgY2xvY2sgcmVx
dWVzdCwgd2hpY2ggaXMgdGhlCiAgc3RhdGUgZ29vZ2xlX3VzYjNfcGh5X2V4aXQoKSBsZWF2ZXMg
dGhlIFBIWSBpbgoqIGNsZWFyIHRoZSBUQ0EncyBldmVudHMgYW5kIHJlcXVlc3QgdGhlIHRyYW5z
aXRpb24gdG8gJ25vCiAgY29ubmVjdGlvbicsIHNvIHRoYXQgZ29vZ2xlX3VzYjNfcGh5X3Bvd2Vy
X29uKCkgd2FpdHMgZm9yIGEKICB0cmFuc2l0aW9uIHRoYXQgdGhpcyBpbml0aWFsaXNhdGlvbiBo
YXMgY2F1c2VkCgpUaGUgcmVzZXRzIGFyZSBrZXB0IGFzc2VydGVkIGZvciAxbXMuIFRoYXQgaXMg
dGhlIGR1cmF0aW9uIHRoYXQgaGFzCmJlZW4gdGVzdGVkLCBub3QgYSBkb2N1bWVudGVkIHJlcXVp
cmVtZW50LgoKV2l0aCB0aGlzLCBVU0IgY2FtZSB1cCBpbiAyMCBvZiAyMCBib290cyBvbiBibGF6
ZXIsIGFuZCBpbiAyNSBvZiAyNQpyZS1wcm9iZXMgb2YgdGhlIGNvbnRyb2xsZXIgKHVuYmluZCBh
bmQgYmluZCBvZiBkd2MzLWdvb2dsZSkuCgpGaXhlczogOGMyYjMzMWU2MzI3ICgicGh5OiBBZGQg
VVNCMyBQSFkgc3VwcG9ydCB0byBHb29nbGUgVGVuc29yIFNvQyBVU0IgUEhZIGRyaXZlciIpClNp
Z25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Ci0t
LQpGb3Igbm93LCBJJ3ZlIG5vdCBhZGRlZCBzdGFibGVAIGFzIHRoZSBwaHkgZHJpdmVyIG9ubHkg
ZXhpc3RzIHNpbmNlCjcuNC1yYzEuIElmIHRoaXMgcGF0Y2ggaXNuJ3QgYXBwbGllZCBiZWZvcmUg
Ny40IGNvbWVzIG91dCwgaXQnbGwgbmVlZAp0aGUgdGFnLgotLS0KIGRyaXZlcnMvcGh5L3BoeS1n
b29nbGUtdXNiLmMgfCAyMCArKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDIw
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9waHktZ29vZ2xlLXVzYi5j
IGIvZHJpdmVycy9waHkvcGh5LWdvb2dsZS11c2IuYwppbmRleCAyYWNkYjJiMGU1MzQuLjRkNzBi
MmYxY2ZlMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvcGh5LWdvb2dsZS11c2IuYworKysgYi9k
cml2ZXJzL3BoeS9waHktZ29vZ2xlLXVzYi5jCkBAIC04LDYgKzgsNyBAQAogI2luY2x1ZGUgPGxp
bnV4L2JpdGZpZWxkLmg+CiAjaW5jbHVkZSA8bGludXgvY2xlYW51cC5oPgogI2luY2x1ZGUgPGxp
bnV4L2Nsay5oPgorI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+CiAjaW5jbHVkZSA8bGludXgvaW8u
aD4KICNpbmNsdWRlIDxsaW51eC9pb3BvbGwuaD4KICNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4K
QEAgLTM2Niw2ICszNjcsMjUgQEAgc3RhdGljIGludCBnb29nbGVfdXNiM19waHlfaW5pdChzdHJ1
Y3QgcGh5ICpfcGh5KQogCQlyZXR1cm4gMDsKIAl9CiAKKwkvKgorCSAqIFRoZSBQSFkgbWlnaHQg
YmUgcnVubmluZyBhbHJlYWR5LCBlLmcuIGJlY2F1c2UgdGhlIGJvb3QgbG9hZGVyIGhhcworCSAq
IHVzZWQgVVNCLiBTdGFydCBmcm9tIHRoZSBzdGF0ZSBnb29nbGVfdXNiM19waHlfZXhpdCgpIGxl
YXZlcyBpdCBpbi4KKwkgKi8KKwlyZXQgPSByZXNldF9jb250cm9sX2J1bGtfYXNzZXJ0KGluc3Qt
Pm51bV9yc3RzLCBpbnN0LT5yc3RzKTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OworCXNldF9w
bWd0X3JlZl9jbGtfcmVxX24oZ3BoeSwgZmFsc2UpOworCXVzbGVlcF9yYW5nZSgxMDAwLCAyMDAw
KTsKKworCS8qCisJICogUmVxdWVzdCB0aGUgdHJhbnNpdGlvbiB0byAnbm8gY29ubmVjdGlvbicg
dGhlIFRDQSBkb2VzIGJ5IGl0c2VsZgorCSAqIGFmdGVyIGEgcG93ZXItb24gcmVzZXQsIGFuZCBj
bGVhciB0aGUgZXZlbnRzIG9mIHdoYXQgaGFwcGVuZWQKKwkgKiBiZWZvcmU6IGdvb2dsZV91c2Iz
X3BoeV9wb3dlcl9vbigpIHdhaXRzIGZvciBpdCB0byBjb21wbGV0ZS4KKwkgKi8KKwlyZWcgPSBy
ZWFkbChncGh5LT51c2IzX3RjYV9iYXNlICsgVENBX0lOVFJfU1RTX09GRlNFVCk7CisJd3JpdGVs
KHJlZywgZ3BoeS0+dXNiM190Y2FfYmFzZSArIFRDQV9JTlRSX1NUU19PRkZTRVQpOworCXdyaXRl
bChUQ0FfVENQQ19WQUxJRCwgZ3BoeS0+dXNiM190Y2FfYmFzZSArIFRDQV9UQ1BDX09GRlNFVCk7
CisKIAlyZWcgPSByZWFkbChncGh5LT51c2IzX3RjYV9iYXNlICsgVENBX0NUUkxTWU5DTU9ERV9D
RkcxX09GRlNFVCk7CiAJcmVnICY9IH5UQ0FfQ1RSTFNZTkNNT0RFX0NGRzFfWEFfVElNRU9VVF9W
QUw7CiAJcmVnIHw9IEZJRUxEX1BSRVAoVENBX0NUUkxTWU5DTU9ERV9DRkcxX1hBX1RJTUVPVVRf
VkFMLAoKLS0tCmJhc2UtY29tbWl0OiA3NDlhNGRlMzcwNDA5NDY0Y2Y4NTAxZWM1YjI0NTFkZjQ1
Yzg0ZWI0CmNoYW5nZS1pZDogMjAyNjExMTktbGdhLXVzYnBoeS1pbml0LWE2MjQ4MzZlZmYyNgoK
QmVzdCByZWdhcmRzLAotLSAKQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9y
Zz4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK

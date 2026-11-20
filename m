Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0CFA606A6DA
	for <linux-phy@archiver.kernel.org>; Fri, 20 Nov 2026 19:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=eM9k4PkV;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=t2sWuc2I
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=G6CfNFqJNDL0K4QcCftvaFDln/6j+G0IM0+8CfmJgwI=; b=eM9k4PkVqCR1zE7KXOJJyL8qfb
	gTtuNWUHQHVb8mymHSMXYZi6EhLoQsqq0fHdEWTM6ldJxr1lIEhqm2ymwqL5ey7d502fBiOLa7pfF
	wHmrPc9O5NINTZxlO12yDmCVwdz1MZqHLFWFvFAV74ZfujjRVqFQdpSFZR2CJ2LkE4IBI8n9gN6Ag
	oz9k9kOXjb6WcLmXYLFOJtFXgzTljj1ivb3+VsxF88V0AxTjtAaCcAEgAseVIUuM46m3T5ecEd6ZL
	64XMTulu0p+XnS4vo11MNFlj3Fc/lj7AGQcpCBCHphULgVjlq6ud70DG6OvZ7sR2IR6iMV8O1msEp
	fBri2mOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUUBU-0000000G4A2-1gMA;
	Fri, 20 Nov 2026 19:22:08 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUUAw-0000000G3xC-2wy8
	for linux-phy@lists.infradead.org;
	Fri, 20 Nov 2026 19:21:41 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-48e09aa5264so702291f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 20 Nov 2026 11:21:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795202493; x=1795807293; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bBmqP69mry+lGbki19N79NWmhaQ/6EL+J2EA0Ie++Zo=;
        b=t2sWuc2IFC9AsEXgmNKXhTZQ8e82AR8x9r46X32Tdw1t33HM7v1ZbqHTLi+TZdcfF9
         Cm2qG0C3bBF3dd/gEx/PZcmCmhYio2Y/hkct269uQpYt2DBfHuHLTkMlKafGsmDPoowz
         XfSRFLExzoPpkmRnZAkhmTBx4t3XabQKlj3xfcPKFOVSNh0gd3soB5nKdk7fwlWhwKM3
         5xYZ70M664TeHYgMvbtY2gjPoKEcsdgD6L1Y9ShAoZDuuh5OCf2K6gJKtW1y2i+oDhwn
         n4IElfvsplPaBBQArBjVLwFXlj88iUMo6HNUhNarBpWp2ZBkIzoNcXIrZir91gsK7FzB
         jQJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795202493; x=1795807293;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bBmqP69mry+lGbki19N79NWmhaQ/6EL+J2EA0Ie++Zo=;
        b=Q2CFOTMg+UZkLDrAr7W2FSxf/oaIl/upDZmvWgSlyShZ4xNWKTZPNqWOcKhIq5SUgX
         7LALLTy7r09808xIGJN80E5HBqrw0heW0VA5U4qnoEZv5I4slQvwFghCIT7riDBgrDn2
         sbqp92cLUiwMAwRbWTB555WDF4ForjpfUQG17Al/id+OoLU5ygWSEwpZ1Xo8VCiDFDlC
         7e7/r8RUvIxRmFJWE8Q38LhNalUVuwlhwWljSOpBUgKTOClgm1ZY9llCSM6HC67jQizJ
         2bxv6TNlg/zTx5oU1SA7RoQWK5HY38/nPzRVEtoO85P4llJ0dHuobxI/4tpojdK6uxDl
         0Qiw==
X-Forwarded-Encrypted: i=1; AL+hErFvokvGW+lPweSnvfGK/o2yAxOr1J9ryEoMWmX9yfUf+TUgQ7fPL3Z8omiE4NTewVTqwvmQRQlTwhY=@lists.infradead.org
X-Gm-Message-State: APuU4Z/85E3UbtmBv0WqIEiKr0kWd6tj5WHRuEUtU7HaBM3MZkauWLUV
	H6mtBVaoA7vNUqw2dxtb3UFXD/jrRB3YP3uoj+WBPGb05DvhbILMwkdi
X-Gm-Gg: AZFdTZf9GrcKSlJNZI+or/mZKf0Q422AwyXP7thKTe8nte6t8KjrWzADYLaOYDVMoj0
	7f0J/CouTO94iaPJnsNXsEH2Xylr0i9DeKKivWfmd4nz8MolOuQItv9vbu7xKMUW5mQB6izA60+
	P5NZkJuss1FK7toYV5zYJnbsl+/ajqW+mgcOn1eIwzRlHQkSaZ77280EIVM1x2aumVePiHe0Kv6
	sIieY/49qLb2tFVXhLsejvo/24WQHOqgcHkEJXcvxDefX7JS4BSZn1Nzrd93I6fDgchgyQGx8yS
	QUX0oD5lZrQY1FGq+g/GtCisS2C9eA47kzj9Lr0YwHQ7P4tAmSFEqQjr7UwcYlXtFgNn7R3jfma
	1X8gOO2sGl0Yq1s6H4plhqyRJceMbA/mCf7qTC6FphERkPqM+bVyzoEZyQPsUdQFp2BuSxsY8nH
	x19h5+J9FcX6fm0Sbe6jNvFL8TXKYthjgKpRcH0iiLhSoHUWyEfBzCrYqGy+PZkIOD4M9hKFgVd
	W7/J+rSJ4Bd5xPGHWXJdjOwnCQqw7brlvko9lZSYoJlNG22ijo6MNbo/TI+OKw9NSGq7jZcDYEd
	hhym2R+PZRrksBA6s4TTWVHz195CDZ0oBbffsk5gxQ==
X-Received: by 2002:a05:6000:4812:b0:491:a219:8506 with SMTP id ffacd0b85a97d-4abb55183dbmr8227192f8f.48.1795202493000;
        Fri, 20 Nov 2026 11:21:33 -0800 (PST)
Received: from [192.168.0.2] ([197.250.160.206])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6a67f204sm8405703f8f.21.2026.11.20.11.21.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 11:21:32 -0800 (PST)
From: =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
Date: Fri, 20 Nov 2026 22:20:54 +0300
Subject: [PATCH 5/6] ARM: dts: zte: Declare nodes to enable the board's
 dwc2 controller
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261120-zx29usb-v1-5-b0433258e51b@gmail.com>
References: <20261120-zx29usb-v1-0-b0433258e51b@gmail.com>
In-Reply-To: <20261120-zx29usb-v1-0-b0433258e51b@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee@kernel.org>, 
 Ulf Hansson <ulfh@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Agustin Santiago Isasmendi <isasmendi.agus@gmail.com>, 
 Navid Ghahremani <ghahramani.navid@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, mfd@lists.linux.dev, 
 linux-pm@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1980;
 i=stefandoesinger@gmail.com; h=from:subject:message-id;
 bh=VM93HH2t+Y1jF4XnpLTskujk8HKKI0SNwO3Nkis00qQ=;
 b=owEBiQJ2/ZANAwAIAT0TvMhUTxoiAcsmYgBrAJ2XsdE4XtHXB32BoPfUssqGek5Snakxjcygb
 ymjgroPEw2JAk8EAAEIADkWIQRDFvS2qgVbJ5UyXWw9E7zIVE8aIgUCawCdlxsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwyLDIACgkQPRO8yFRPGiKGoA/+Jg//JNfc0k8TCoWlB57VTEUolY5k3Cb
 /BrSS9BX50YVGu/+HzfpBKoj+zDVoYQYMR7YMv3QDqnLEU+zqcZFaXyh476zzi72itSOU4kGTtj
 +9SgKtUdCm9bxN8rdctWmeWLqbXPrcrpQiTk2ZL61TLT0AGOki56beImFwuqbro8vkjpAV8Lr1a
 lSYW04G/FKMIVyuygKvLKGhZ+Mu/RRYRMvtFuPJ4E0XeRJ7JbwR4g0yjpiAhyybMRWetDuHwJoX
 UASgZ7aaIcGMMm7ajBQ/9Iy/r3MxVZNdRk0P4lncHRPXhQuYxo5/LA92VPadtxDJcuBppv6hBar
 aUDxcmjqvs/zZlTHMMQxcHKoqI7tdfmYUx7ziw4WSIDgmSf8myzoZq00XAGfhpf9BAP3ObuDTQg
 R0xumTXxnByaAMo9QJH8ZzLGg6xl6ZdP405AeqkNreNOCBOZxMOcTIomfdZsSo6Dg02Oqu4W+fO
 onN/KsBNwl/BPAny3WdPYb8Fp5GmIbqLvqxXfCqwfi8TveidunVclh+TDa+nb4eSQsf5tncF94t
 c7FQEK65ldHG9HnblB6KbWI42xu02XXFa88SwSd1qspzIKrbBji6lNs+6Yyp27DZLOPb9mJqVll
 NYFWkTtipcDBCYyRbXgSu5TnxIFdOcZePEEYjNqtlJEwn1S+kLzQ=
X-Developer-Key: i=stefandoesinger@gmail.com; a=openpgp;
 fpr=4F9C2C8728019633893EBBB98CB81F9A72BBA155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_112136_287365_99609752 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 1.2 (+)
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhpcyBhZGRzIHRoZSBzb2NzeXMgc3lzY29uIHRoYXQgcHJvdmlkZXMgdGhlIHBvd2VyIGNvbnRy
b2wgZm9yIHRoZQpjb250cm9sbGVyIGFuZCB0aGUgZHdjMiBjb250cm9sbGVyIGl0c2VsZi4KCk9u
IGFsbCBib2FyZHMgSSBoYXZlIHNlZW4gc28gZmFyIHRoZSBVU0IgY29ubmVjdG9yIGNhbiBvbmx5
IG9wZXJhdGUgaW4KcGVyaXBoZXJhbCBtb2RlIC0gaW5jbHVkaW5nIG9uZSBkZXZpY2UgdGhhdCBh
Y3R1YWxseSBoYXMgYSBVU0IgQQpjb25uZWN0b3IuIERXQzIgYW5kIHRoZSBQSFkgY2FuIGJlIHBy
b2dyYW1tZWQgaW50byBob3N0IG1vZGUsIGJ1dCB0aGVyZQppcyBubyBWQlVTIHBvd2VyIHN1cHBs
eS4KClNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFp
bC5jb20+Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvenRlL3p4Mjk3NTIwdjMuZHRzaSB8IDIzICsr
KysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3p0ZS96eDI5NzUyMHYzLmR0c2kgYi9hcmNo
L2FybS9ib290L2R0cy96dGUvengyOTc1MjB2My5kdHNpCmluZGV4IGViYWMzY2QxMzdkZi4uMmZj
ODg4YjEwMDA2IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy96dGUvengyOTc1MjB2My5k
dHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3p0ZS96eDI5NzUyMHYzLmR0c2kKQEAgLTUsNiAr
NSw4IEBACiAKICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay96dGUsengyOTc1MjB2My1jbGsu
aD4KICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+
CisjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcGh5L3p0ZSx6eDI5NzUyMHYzLXRvcGNybS5oPgorI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL3Bvd2VyL3p0ZSx6eDI5NzUyMHYzLXNvY3N5cy5oPgogI2luY2x1
ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0L3p0ZSx6eDI5NzUyMHYzLXJlc2V0Lmg+CiAKIC8gewpAQCAt
MTExLDYgKzExMywxMyBAQCByZWJvb3QgewogCQkJfTsKIAkJfTsKIAorCQlzb2NzeXM6IHN5c2Nv
bkAxNDAwMDAgeworCQkJY29tcGF0aWJsZSA9ICJ6dGUsengyOTc1MjB2My1zb2NzeXMiLCAic3lz
Y29uIjsKKwkJCXJlZyA9IDwweDAwMTQwMDAwIDB4NDAwPjsKKwkJCSNwb3dlci1kb21haW4tY2Vs
bHMgPSA8MT47CisJCQkjcmVzZXQtY2VsbHMgPSA8MT47CisJCX07CisKIAkJbWF0cml4Y3JtOiBj
bG9jay1jb250cm9sbGVyQDEzMDYwMDAgewogCQkJY29tcGF0aWJsZSA9ICJ6dGUsengyOTc1MjB2
My1tYXRyaXhjcm0iOwogCQkJcmVnID0gPDB4MDEzMDYwMDAgMHg0MDA+OwpAQCAtMTc2LDUgKzE4
NSwxOSBAQCB1YXJ0Mjogc2VyaWFsQDE0MGQwMDAgewogCiAJCQlzdGF0dXMgPSAiZGlzYWJsZWQi
OwogCQl9OworCisJCXVzYkAxNTAwMDAwIHsKKwkJCWNvbXBhdGlibGUgPSAic25wcyxkd2MyIjsK
KwkJCXJlZyA9IDwweDAxNTAwMDAwIDB4NDAwMDA+OworCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJ
IDQxIElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQkJY2xvY2tzID0gPCZ0b3Bjcm0gWlgyOTc1MjBW
M19VU0JfV0NMSz4sIDwmdG9wY3JtIFpYMjk3NTIwVjNfVVNCX1BDTEs+OworCQkJY2xvY2stbmFt
ZXMgPSAib3RnIiwgInV0bWkiOworCQkJZHJfbW9kZSA9ICJwZXJpcGhlcmFsIjsKKwkJCXJlc2V0
cyA9IDwmdG9wY3JtIFpYMjk3NTIwVjNfVVNCX1JFU0VUPjsKKwkJCXJlc2V0LW5hbWVzID0gImR3
YzIiOworCQkJcG93ZXItZG9tYWlucyA9IDwmc29jc3lzIFpYMjk3NTIwVjNfUERfVVNCPjsKKwkJ
CXBoeXMgPSA8JnRvcGNybSBaWDI5NzUyMFYzX1VTQl9QSFk+OworCQkJcGh5LW5hbWVzID0gInVz
YjItcGh5IjsKKwkJfTsKIAl9OwogfTsKCi0tIAoyLjU2LjEKCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

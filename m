Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D11CEC98338
	for <linux-phy@archiver.kernel.org>; Sun, 27 Sep 2026 20:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMjPKVQ6J4AsXFm0t9qxcO2UERSDnPAhxdCRbRsuuIY=; b=GLiW9yqvbCepmU
	nxtlOGpdzM38Guhd4GMMS+F/38XYHBJxI/2c6i9tSzM05ZjrPj/r/juxyP8/KYW7yre05VpEuRwZ/
	0THwFNqsI8xA//DOJjbAiie33PwqW4k1C5SdVIhmabRhlcoqboK/pqxkPYx6I9c2BJN1JNVOs7vHg
	OlBlTjDv2NMLuFuxt/sW8m1ap6s3t1DgmFtbNiPtpLPNhZVVnYQAi82/Qn8He5B59FRVZHuykKV0J
	fXiSwgj5x78SGHBvVgDJ4RMLINY1aGnyC3i81voaQNbMud6UGaEVQelWnB+MchnyLu88M3tBXbNb0
	yEKZLQZ5I29qlP7qUZwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvH8-0000000GoHN-1juD;
	Sun, 27 Sep 2026 20:15:06 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvH3-0000000Go98-0XDl
	for linux-phy@lists.infradead.org;
	Sun, 27 Sep 2026 20:15:04 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49b912d391aso16917715e9.2
        for <linux-phy@lists.infradead.org>; Sun, 27 Sep 2026 13:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790540099; x=1791144899; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=cTauSR6H/8NKinLJSb31gMD112liycecOTxKay+MW1Y=;
        b=BDWysMLa6ZszkFoW/bVYbnhd2ZaO0eF4rz950zRVwGqrYFOxE23e/7fuMgLXKgHJ9H
         3q3WTeSqeYpfafVDAHFRygCzDzjZsseIQ2NHaBNZ60+GviaUHOBHpgG86p4ZgjY841nH
         8mauhxehAJhyQYnQtaW7rHOFk4jewATem2PLJA0A+uwqzCZNT5XIAuXWPa+RkYUyNW/L
         IwDniT+vhJQmE61pquwp6Rjq2S8ywlEHJw8O95KYj5aG3NeDH2kqS1WUqE8gVr/frDrF
         I2Q4uFfeuWX9EVh3EghSMjEf+4r4qeKnQDpvdWxW48I2QJHPTGyQu0VOzhQzgC7Npi4z
         AlYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790540099; x=1791144899;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cTauSR6H/8NKinLJSb31gMD112liycecOTxKay+MW1Y=;
        b=XgsX1Pz9HN4SU04jHlHT5jR2e1DjIUSuQD4aHuybjdQlC2iUC4lN293rwszA1237hF
         geXEhD2Cs9EjQo/P2y8yZnoEsWz+eX0zJm8fAqp6/UR+ghpDkzk/lJGLGy3Oz1ePncPW
         IfvFG1zR93WIqyVAEnMMekxmMYGdO+Xy/cZ0zJ3wbR6expLLZGTRbK/khSSSfuqFcR74
         Q5C/SxomfMCQ2FONeS6PdEni/rM7H8ze0W7KPQLt+9Y6PU8JLBQLW/Co9cjFC8csdiq+
         ZwNkhaWi8RPz3V8KIlYkDIE8eTSIA73T0TEZioGKpd+qpqpnxBpnjiMhupx+qldK6doi
         22XA==
X-Forwarded-Encrypted: i=1; AKwUvBx3V3EwWp60zP7Dg0Sb1VgngURdsoUH3aZuvnjHU8vcoLlNmlmYCSaj9zfiZvHkHzjN+3Q9BflgdgE=@lists.infradead.org
X-Gm-Message-State: AFq9FYKhyS+kkqUlkUWlHOUW1gyZ18o8GTmZrMxTzfkUK9IAm2AeXpBP
	+uB9I4Gh53yeSZq+SXEc/k5rg3eNRUjfZuCEDDBLyB7uRTSAMM6Ue4/s
X-Gm-Gg: AYBFou19i1aQRsplf71dJAQ5Z71BIFQ6DsF/fCFbCyAK7uDXhW/XgopGAesKgabxFTL
	h84xeYyXUM9doWZbhej25lQfy1CSZRZO/OtVyEOzRcIv41YlW2kMNPm6Fd6QYL8BgbjB9n/zSrj
	aiLn1lv623VZEHP+tzrmBur25wjruwPdhWS7OMpCblYRSxBB1Zhsk6/7zOdCg3JNrsTe5NVmXwY
	B2uNAe0CbiYMA57N2QotyUl8U5UhsKJ4ehAH7DumfVTr1O7URfltDMyUFUtkaPMPE9jIWxsEXH+
	pHKOdF9i/OpETHitAXVTWvoOn+PsCu2bomHcEdGDTzgZa7Kss6wFFnIlXY0JzrebnHFSD+3oXhz
	olIXjFUzzjxVnnIhx7ELCgBlvAskeyW5GLUjS0DounqjuXCz6p5KUyBfcuBGzeSjI19ZWPdGwX3
	jNWk3TSob2rnaxuNxKF05QsU5CzTTPu46l+/EQjMwcOD3yt2m2zLCsQn4RUBpLW/HBXAiMpMOhw
	GIQeUQv
X-Received: by 2002:a05:6000:2893:b0:487:10a9:57cb with SMTP id ffacd0b85a97d-488719756c5mr18798018f8f.49.1790540099202;
        Sun, 27 Sep 2026 13:14:59 -0700 (PDT)
Received: from [192.168.0.2] ([197.250.96.148])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4887a34a570sm21781514f8f.13.2026.09.27.13.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Sep 2026 13:14:58 -0700 (PDT)
From: =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
Date: Sun, 27 Sep 2026 23:13:41 +0300
Subject: [PATCH v13 13/13] ARM: dts: zte: Declare zx297520v3 CRM device
 nodes
MIME-Version: 1.0
Message-Id: <20260927-zx29clk-v13-13-70d8f673386c@gmail.com>
References: <20260927-zx29clk-v13-0-70d8f673386c@gmail.com>
In-Reply-To: <20260927-zx29clk-v13-0-70d8f673386c@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Brian Masney <bmasney@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Russell King <linux@armlinux.org.uk>, Lee Jones <lee@kernel.org>, 
 Brian Masney <bmasney+clk@redhat.com>, 
 Jerome Brunet <jbrunet+clk@baylibre.com>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-phy@lists.infradead.org, mfd@lists.linux.dev, 
 =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5992;
 i=stefandoesinger@gmail.com; h=from:subject:message-id;
 bh=nf0EyPFH35tSBIK5oZ5/jJ+smy+BLU/nT0Pmxgc+7L8=;
 b=owEBiQJ2/ZANAwAIAT0TvMhUTxoiAcsmYgBquXj1qMOhF4nhM5GAH4C4zIE2KCnpV3p7yPYxy
 HsWLuBVq++JAk8EAAEIADkWIQRDFvS2qgVbJ5UyXWw9E7zIVE8aIgUCarl49RsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwyLDIACgkQPRO8yFRPGiJNaRAAi92rO1TFDPk6AfkbezqImo7QQMmSE6G
 xzjgXmYfqzaDzA2JJ2MEt5ITYiH4sslWTHYOvxV8iBS0oaH8J4O5H6+xcPniz3W+snQvwwuz+Yt
 lJqDvK1FyY3Hw/TjoVzVYp+dI1DBj7J9iWFfcy62abwG2+FdE4877GYT88X4gM8LqUZ6goT9y4c
 SFMG3ERQS+PZeBNqDTU3xVZlm46MD6LGvThLvfsEOu6Lr/NKGn5Q4lufzGqnegL5evrbyBrVQWy
 Ggro6IegTW6hARhscDuM5zFxFCeX44v7fJwUFLf/MWk2Q7DVUbkhxtpyyqWWYnCuswA0jilu3XW
 Gh5vHFd1V9VnC7/l9vWCi56t7nnoQpKSfnYoR2q3EeJ1pn4+kO20uIWoy/q044FLzTrLsuM/Jc2
 +oLuGv/kJ0UWvzASZhsQkA9UFeDQ5JIRbKOj2/fFHtMjGAiHztjkrdV/n/UpThoNPHsEG38+Pg/
 SkknToYjaa9dUutBVehuE35RlMFKpxXyUHlvaCqLszJ+p3hC4kj3827Hs13LMFJa+QfqkLLcrjG
 0NcahDzzscsP7c/wSY9/uiLJtg8PsXGjzck854E9fxdxsZvKWAVQQ4GWnQYzi5kVWqlj2ZX4w1c
 l/+S4y5w44rxz8Nd4u4tem251TqfpZuBDEvKzJOadl8pAcn1W8jk=
X-Developer-Key: i=stefandoesinger@gmail.com; a=openpgp;
 fpr=4F9C2C8728019633893EBBB98CB81F9A72BBA155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260927_131501_316167_0903A2C9 
X-CRM114-Status: GOOD (  15.47  )
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

VGhpcyBwYXRjaCBhZGRzIERUIG5vZGVzIGZvciB0aGUgbWFpbiBjbG9jayBhbmQgcmVzZXQgY29u
dHJvbGxlcnMgb24gdGhlCnp4Mjk3NTIwdjMgYm9hcmQuIEl0IHJlcGxhY2VzIHRoZSB0ZW1wb3Jh
cnkgcGxhY2Vob2xkZXIgVUFSVCBjbG9ja3Mgd2l0aAp0aGUgcHJvcGVyIGNsb2NrcyBleHBvcnRl
ZCBieSB0b3Bjcm0gYW5kIGxzcGNybS4KClJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tp
IDxrcnp5c3p0b2Yua296bG93c2tpQG9zcy5xdWFsY29tbS5jb20+ClNpZ25lZC1vZmYtYnk6IFN0
ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+Ci0tLQoKVmVyc2lvbiAx
MTogSW1wcm92ZWQgdGhlIGFib3ZlIHRoZSBsaW5lIGNvbW1pdCBkZXNjcmlwdGlvbiwgcmVtb3Zp
bmcKcmVmZXJlbmNlcyB0byAicHJldmlvdXMgcGF0Y2hlcyIgdGhhdCB3b24ndCBtYWtlIHNlbnNl
IHdoZW4gcmVhZGluZyBpdAppbiB0aGUga2VybmVsIGNvbW1pdCBsb2cuCgpWZXJzaW9uIDEwOiBG
aXggaXNzdWVzIHdpdGggZHQtY2hlY2stc3R5bGUgLS1tb2RlPXN0cmljdCBpbiBuZXdseSBhZGRl
ZApjb2RlLCBidXQgbGVmdCBpc3N1ZXMgaW4gZXhpc3Rpbmcgbm9kZXMgYWxvbmUuCgpWZXJzaW9u
IDk6ClNvcnQgbmV3IG5vZGVzIGJ5IG1taW8gYWRkcmVzcwpyZW5hbWUgc3lzY29uLXJlYm9vdCB0
byAicmVib290IgphZGp1c3QgdG8gY2hhbmdlcyBpbiBiaW5kaW5ncwoKVmVyc2lvbiA3OgpBZGQg
cGh5IG5vZGVzIHRvIHRvcGNybQpSZW1vdmUgc3lzY29uIGZyb20gbWF0cml4Y2xrIGFnYWluCkFk
YXB0IHJlbW92ZSBub3ctcmVtb3ZlZCBleHRyYSBjbGsgaW5wdXRzIGZyb20gbWF0cml4CkFkZCBy
ZXNldCB0byBMU1AKb3NjMjZtIC0+IGNsb2NrLTI2bSBmb3IgdGhlIGZpeGVkIHJhdGUgY2xvY2tz
LCBsaWtld2lzZSBmb3IgMzJrCgpWZXJzaW9uIDY6CkFkZCBzeXNjb24gdG8gbWF0cml4Y2xrCgpW
ZXJzaW9uIDU6ClJlLW5hbWUgZnJvbSAqY2xrIHRvICpjcm0KQWRkIHRoZSBzeXNjb24tcmVib290
IG5vZGUgaGVyZSBiZWNhdXNlIHRoZSBiaW5kaW5nIHJlcXVpcmVzIGl0ClJlLWFkZCBhY2NpZGVu
dGFsbHkgZHJvcHBlZCB1YXJ0MiBJUlEKLS0tCiBhcmNoL2FybS9ib290L2R0cy96dGUvengyOTc1
MjB2My5kdHNpIHwgMTAxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCA4OSBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9hcmNoL2FybS9ib290L2R0cy96dGUvengyOTc1MjB2My5kdHNpIGIvYXJjaC9hcm0vYm9vdC9k
dHMvenRlL3p4Mjk3NTIwdjMuZHRzaQppbmRleCBhMTZjMzBhMTY0YmIuLmViYWMzY2QxMzdkZiAx
MDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvenRlL3p4Mjk3NTIwdjMuZHRzaQorKysgYi9h
cmNoL2FybS9ib290L2R0cy96dGUvengyOTc1MjB2My5kdHNpCkBAIC0zLDEyICszLDI2IEBACiAg
KiBDb3B5cmlnaHQgKGMpIDIwMjYgU3RlZmFuIETDtnNpbmdlciA8c3RlZmFuZG9lc2luZ2VyQGdt
YWlsLmNvbT4KICAqLwogCisjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svenRlLHp4Mjk3NTIw
djMtY2xrLmg+CiAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJt
LWdpYy5oPgorI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0L3p0ZSx6eDI5NzUyMHYzLXJlc2V0
Lmg+CiAKIC8gewogCSNhZGRyZXNzLWNlbGxzID0gPDE+OwogCSNzaXplLWNlbGxzID0gPDE+Owog
CisJb3NjMjZtOiBjbG9jay0yNm0geworCQljb21wYXRpYmxlID0gImZpeGVkLWNsb2NrIjsKKwkJ
I2Nsb2NrLWNlbGxzID0gPDA+OworCQljbG9jay1mcmVxdWVuY3kgPSA8MjYwMDAwMDA+OworCX07
CisKKwlvc2MzMms6IGNsb2NrLTMyayB7CisJCWNvbXBhdGlibGUgPSAiZml4ZWQtY2xvY2siOwor
CQkjY2xvY2stY2VsbHMgPSA8MD47CisJCWNsb2NrLWZyZXF1ZW5jeSA9IDwzMjc2OD47CisJfTsK
KwogCWNwdXMgewogCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKIAkJI3NpemUtY2VsbHMgPSA8MD47
CkBAIC0yMCwxNSArMzQsNiBAQCBjcHVAMCB7CiAJCX07CiAJfTsKIAotCS8qIEJhc2UgYnVzIGNs
b2NrIGFuZCBkZWZhdWx0IGZvciB0aGUgVUFSVC4gSXQgd2lsbCBiZSByZXBsYWNlZCBvbmNlIGEg
Y2xvY2sgZHJpdmVyIGhhcwotCSAqIGJlZW4gYWRkZWQuCi0JICovCi0JdWFydGNsazogdWFydGNs
ay0yNjAwMDAwMCB7Ci0JCSNjbG9jay1jZWxscyA9IDwwPjsKLQkJY29tcGF0aWJsZSA9ICJmaXhl
ZC1jbG9jayI7Ci0JCWNsb2NrLWZyZXF1ZW5jeSA9IDwyNjAwMDAwMD47Ci0JfTsKLQogCXRpbWVy
IHsKIAkJY29tcGF0aWJsZSA9ICJhcm0sYXJtdjctdGltZXIiOwogCQlpbnRlcnJ1cHRzID0gPEdJ
Q19QUEkgMTMgSVJRX1RZUEVfTEVWRUxfTE9XPiwKQEAgLTc1LDE4ICs4MCw4NyBAQCB1YXJ0MDog
c2VyaWFsQDEzMTAwMCB7CiAJCQlhcm0scHJpbWVjZWxsLXBlcmlwaGlkID0gPDB4MDAxOGMwMTE+
OwogCQkJcmVnID0gPDB4MDAxMzEwMDAgMHgxMDAwPjsKIAkJCWludGVycnVwdHMgPSA8R0lDX1NQ
SSAwIElSUV9UWVBFX0xFVkVMX0hJR0g+OwotCQkJY2xvY2tzID0gPCZ1YXJ0Y2xrPiwgPCZ1YXJ0
Y2xrPjsKKwkJCWNsb2NrcyA9IDwmdG9wY3JtIFpYMjk3NTIwVjNfVUFSVDBfV0NMSz4sCisJCQkJ
IDwmdG9wY3JtIFpYMjk3NTIwVjNfVUFSVDBfUENMSz47CiAJCQljbG9jay1uYW1lcyA9ICJ1YXJ0
Y2xrIiwgImFwYl9wY2xrIjsKKwkJCXJlc2V0cyA9IDwmdG9wY3JtIFpYMjk3NTIwVjNfVUFSVDBf
UkVTRVQ+OworCiAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwogCQl9OwogCisJCXRvcGNybTogY2xv
Y2stY29udHJvbGxlckAxM2IwMDAgeworCQkJY29tcGF0aWJsZSA9ICJ6dGUsengyOTc1MjB2My10
b3Bjcm0iLCAic3lzY29uIjsKKwkJCXJlZyA9IDwweDAwMTNiMDAwIDB4NDAwPjsKKwkJCSNjbG9j
ay1jZWxscyA9IDwxPjsKKwkJCWNsb2NrcyA9IDwmb3NjMjZtPiwgPCZvc2MzMms+OworCQkJY2xv
Y2stbmFtZXMgPSAib3NjMjZtIiwgIm9zYzMyayI7CisJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkg
NDIgSVJRX1RZUEVfRURHRV9SSVNJTkc+LAorCQkJCSAgICAgPEdJQ19TUEkgNDMgSVJRX1RZUEVf
RURHRV9SSVNJTkc+LAorCQkJCSAgICAgPEdJQ19TUEkgNDUgSVJRX1RZUEVfRURHRV9SSVNJTkc+
LAorCQkJCSAgICAgPEdJQ19TUEkgNDYgSVJRX1RZUEVfRURHRV9SSVNJTkc+OworCQkJaW50ZXJy
dXB0LW5hbWVzID0gInVzYi11cCIsICJ1c2ItZG93biIsCisJCQkJCSAgImhzaWMtdXAiLCAiaHNp
Yy1kb3duIjsKKwkJCSNwaHktY2VsbHMgPSA8MT47CisJCQkjcmVzZXQtY2VsbHMgPSA8MT47CisK
KwkJCXJlYm9vdCB7CisJCQkJY29tcGF0aWJsZSA9ICJzeXNjb24tcmVib290IjsKKwkJCQltYXNr
ID0gPDB4MT47CisJCQkJb2Zmc2V0ID0gPDB4MD47CisJCQkJdmFsdWUgPSA8MHgxPjsKKwkJCX07
CisJCX07CisKKwkJbWF0cml4Y3JtOiBjbG9jay1jb250cm9sbGVyQDEzMDYwMDAgeworCQkJY29t
cGF0aWJsZSA9ICJ6dGUsengyOTc1MjB2My1tYXRyaXhjcm0iOworCQkJcmVnID0gPDB4MDEzMDYw
MDAgMHg0MDA+OworCQkJI2Nsb2NrLWNlbGxzID0gPDE+OworCQkJY2xvY2tzID0gPCZvc2MyNm0+
LCA8Jm9zYzMyaz4sCisJCQkJIDwmdG9wY3JtIFpYMjk3NTIwVjNfQUhCX1BDTEs+LAorCQkJCSA8
JnRvcGNybSBaWDI5NzUyMFYzX01QTEw+LAorCQkJCSA8JnRvcGNybSBaWDI5NzUyMFYzX01QTExf
RDU+LAorCQkJCSA8JnRvcGNybSBaWDI5NzUyMFYzX0RQTEw+LAorCQkJCSA8JnRvcGNybSBaWDI5
NzUyMFYzX0dQTEw+LAorCQkJCSA8JnRvcGNybSBaWDI5NzUyMFYzX0dQTExfRDI+LAorCQkJCSA8
JnRvcGNybSBaWDI5NzUyMFYzX0dBVEVEX09TQzI2TT47CisJCQljbG9jay1uYW1lcyA9ICJvc2My
Nm0iLCAib3NjMzJrIiwgImFoYiIsICJtcGxsIiwKKwkJCQkgICAgICAibXBsbC1kNSIsICJkcGxs
IiwgImdwbGwiLCAiZ3BsbC1kMiIsCisJCQkJICAgICAgIndjbGstb3NjMjZtIjsKKwkJCSNod2xv
Y2stY2VsbHMgPSA8MT47CisJCQkjcmVzZXQtY2VsbHMgPSA8MT47CisJCX07CisKKwkJbHNwY3Jt
OiBjbG9jay1jb250cm9sbGVyQDE0MDAwMDAgeworCQkJY29tcGF0aWJsZSA9ICJ6dGUsengyOTc1
MjB2My1sc3Bjcm0iOworCQkJcmVnID0gPDB4MDE0MDAwMDAgMHgxMDA+OworCQkJI2Nsb2NrLWNl
bGxzID0gPDE+OworCQkJY2xvY2tzID0gPCZtYXRyaXhjcm0gWlgyOTc1MjBWM19MU1BfTVBMTF9E
NV9XQ0xLPiwKKwkJCQkgPCZtYXRyaXhjcm0gWlgyOTc1MjBWM19MU1BfTVBMTF9ENF9XQ0xLPiwK
KwkJCQkgPCZtYXRyaXhjcm0gWlgyOTc1MjBWM19MU1BfTVBMTF9ENl9XQ0xLPiwKKwkJCQkgPCZt
YXRyaXhjcm0gWlgyOTc1MjBWM19MU1BfTVBMTF9EOF9XQ0xLPiwKKwkJCQkgPCZtYXRyaXhjcm0g
WlgyOTc1MjBWM19MU1BfTVBMTF9EMTJfV0NMSz4sCisJCQkJIDwmbWF0cml4Y3JtIFpYMjk3NTIw
VjNfTFNQX09TQzI2TV9XQ0xLPiwKKwkJCQkgPCZtYXRyaXhjcm0gWlgyOTc1MjBWM19MU1BfT1ND
MzJLX1dDTEs+LAorCQkJCSA8Jm1hdHJpeGNybSBaWDI5NzUyMFYzX0xTUF9QQ0xLPiwKKwkJCQkg
PCZtYXRyaXhjcm0gWlgyOTc1MjBWM19MU1BfVERNX1dDTEs+LAorCQkJCSA8Jm1hdHJpeGNybSBa
WDI5NzUyMFYzX0xTUF9EUExMX0Q0X1dDTEs+OworCQkJY2xvY2stbmFtZXMgPSAibXBsbC1kNSIs
ICJtcGxsLWQ0IiwgIm1wbGwtZDYiLAorCQkJCSAgICAgICJtcGxsLWQ4IiwgIm1wbGwtZDEyIiwg
Im9zYzI2bSIsICJvc2MzMmsiLAorCQkJCSAgICAgICJwY2xrIiwgInRkbS13Y2xrIiwgImRwbGwt
ZDQiOworCQkJI3Jlc2V0LWNlbGxzID0gPDE+OworCQkJcmVzZXRzID0gPCZtYXRyaXhjcm0gWlgy
OTc1MjBWM19MU1BfUkVTRVQ+OworCQl9OworCiAJCXVhcnQxOiBzZXJpYWxAMTQwODAwMCB7CiAJ
CQljb21wYXRpYmxlID0gImFybSxwbDAxMSIsICJhcm0scHJpbWVjZWxsIjsKIAkJCWFybSxwcmlt
ZWNlbGwtcGVyaXBoaWQgPSA8MHgwMDE4YzAxMT47CiAJCQlyZWcgPSA8MHgwMTQwODAwMCAweDEw
MDA+OwogCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDEgSVJRX1RZUEVfTEVWRUxfSElHSD47Ci0J
CQljbG9ja3MgPSA8JnVhcnRjbGs+LCA8JnVhcnRjbGs+OworCQkJY2xvY2tzID0gPCZsc3Bjcm0g
WlgyOTc1MjBWM19VQVJUMV9XQ0xLPiwKKwkJCQkgPCZsc3Bjcm0gWlgyOTc1MjBWM19VQVJUMV9Q
Q0xLPjsKIAkJCWNsb2NrLW5hbWVzID0gInVhcnRjbGsiLCAiYXBiX3BjbGsiOworCQkJcmVzZXRz
ID0gPCZsc3Bjcm0gWlgyOTc1MjBWM19VQVJUMV9SRVNFVD47CisKIAkJCXN0YXR1cyA9ICJkaXNh
YmxlZCI7CiAJCX07CiAKQEAgLTk1LDggKzE2OSwxMSBAQCB1YXJ0Mjogc2VyaWFsQDE0MGQwMDAg
ewogCQkJYXJtLHByaW1lY2VsbC1wZXJpcGhpZCA9IDwweDAwMThjMDExPjsKIAkJCXJlZyA9IDww
eDAxNDBkMDAwIDB4MTAwMD47CiAJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMiBJUlFfVFlQRV9M
RVZFTF9ISUdIPjsKLQkJCWNsb2NrcyA9IDwmdWFydGNsaz4sIDwmdWFydGNsaz47CisJCQljbG9j
a3MgPSA8JmxzcGNybSBaWDI5NzUyMFYzX1VBUlQyX1dDTEs+LAorCQkJCSA8JmxzcGNybSBaWDI5
NzUyMFYzX1VBUlQyX1BDTEs+OwogCQkJY2xvY2stbmFtZXMgPSAidWFydGNsayIsICJhcGJfcGNs
ayI7CisJCQlyZXNldHMgPSA8JmxzcGNybSBaWDI5NzUyMFYzX1VBUlQyX1JFU0VUPjsKKwogCQkJ
c3RhdHVzID0gImRpc2FibGVkIjsKIAkJfTsKIAl9OwoKLS0gCjIuNTUuMAoKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

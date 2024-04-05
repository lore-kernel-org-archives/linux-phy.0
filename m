Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9419C67861
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 07:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UVRM0I9pilesKLDeYV2ncbOkhZWJxoEu+EgGz35AADA=; b=TLR2DvJIkfPaPF
	Uv5yW81I9Gspk+LNIxhSkuEh0wttlujsZwEdWOg/C/Er0IJ36QRnOehfHKDh5xv3J/lyYKECW1l4i
	3qUi3r1yVQCF8rNJqPBPF+kVSSBfq6bLBd0sXqfQn8HxyhUg7v7yYYOLsbDvRdThOQXSoAttFhjZu
	rf7D5d7hkfY0mlJNKuJd0wJipJDqmfHuR8+Z52s7b2CFRBCaBf/HtyMyIOpRfpCYM0r3oxC3qpilI
	oAaEEI+L75CN6nVAAL8BrhkQYvNamZon8+Th8jGV2j0cSLeTBnKiDqDhcZFSZehNOJC67W8Lkgw5o
	HGCUUV7KZeNLDEMLm0yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsdnC-00000005ciF-0dpw;
	Fri, 05 Apr 2024 07:15:18 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsdn7-00000005cgt-1r5j
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 07:15:15 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-343620589easo884250f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 05 Apr 2024 00:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712301311; x=1712906111; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZQRZDYqA6aP2iutVThlq5tpmCslswP1QsB6CFhMiTH0=;
        b=u5is0BUt2bcY4ZI/SX97Uct8V4d77FWuuwdut23iEqOIM+BAIL+WjM1myQUyRuwiT/
         5jQBVA5kU8p7Z3Ol04q4Oer23Qfzj5sOGzSI2wSviV1OIkh73YoVxIqQVgKUbj2VPv0l
         FIIAKDyW2ct983s/hMADmrlFM177/t6tSWzhUfSL3TY9SYHPL+or9J6ajzSBjY9CvRJc
         uOjad/flyjuVAaTdfm1eH6G5oHxL6XHhO8ILrhSWguHbZ2t325XjHypoT8ypv4p9syfG
         WTcYVu9r19w9VwBw4bUBnyu3A5L4Z0/28pbK2t0wDE713sSygvV+uHkBb5V55mRMsmDD
         /GjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712301311; x=1712906111;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZQRZDYqA6aP2iutVThlq5tpmCslswP1QsB6CFhMiTH0=;
        b=jtRF6jaoXxgehQnQXPSdkjN5SfNC3xaU503qa3J+R0cKc0uQSFZvtCkS1QjYnz6/p6
         I4/LYWNLei/J4Xw1mmv+4dgJ8xOLxYomRPhBGNBbzSIZ3/ZSdE9hbJv8914VAwBnQzxh
         rebrU8Hxgc2/2+HfBIRs56C/xviTd9sZIA9ilXNwowM9fQKeFXittaRB364wVCnZUOSO
         UY6ArTQVrrvCUG6oL8DzpLCXUzmG7TkZvGFiMLDikPIB+z+e2yLwFBnkhZxMK4kKKDGr
         J+c1+SMCBNff7/LjG8F09X6sKnZshSuLo23+1rA0ipEhPQkSRsN/SQqzeo8ef2tvD6E8
         ffiA==
X-Forwarded-Encrypted: i=1; AJvYcCUZpooIRVOOlT+adV84Kc/+GkhEpXqyK1jDouP6TyRqHmemwn8zOer0vhGYgRWmx9zOV3giukmbAdF3uNDUm5973LtO7DYDi+ouvS003Q==
X-Gm-Message-State: AOJu0YzyIPBUNj1/aS4FReoERs879u976uZKlBod9sAf+5xBDKSbQ18a
	O/dqArwlfGdv5a9+FLjYOBk/R/PlEVcBcj4qWuBm98bVhrCQO7d8SkwtZFoc4Lc=
X-Google-Smtp-Source: AGHT+IF3TQ9xIZ1T/P0vZPLv2tjkqzrrnsOBy+FFNKa6jwX5G7cmYjLQCMB/2P2Fzf20qbcX8C+AiQ==
X-Received: by 2002:adf:f184:0:b0:343:d06e:51c8 with SMTP id h4-20020adff184000000b00343d06e51c8mr387939wro.18.1712301311433;
        Fri, 05 Apr 2024 00:15:11 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id f11-20020a5d568b000000b00343c9ce4b50sm1279358wrv.53.2024.04.05.00.15.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 00:15:11 -0700 (PDT)
Message-ID: <d1aaa3a350315b8eb60aaee416fad4382385ca3a.camel@linaro.org>
Subject: Re: [PATCH 01/17] dt-bindings: clock: google,gs101-clock:  add HSI2
 clock management unit
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, mturquette@baylibre.com, 
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
  vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com,  bvanassche@acm.org, s.nawrocki@samsung.com,
 cw00.choi@samsung.com,  jejb@linux.ibm.com, martin.petersen@oracle.com,
 chanho61.park@samsung.com,  ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
Date: Fri, 05 Apr 2024 08:15:09 +0100
In-Reply-To: <20240404122559.898930-2-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
	 <20240404122559.898930-2-peter.griffin@linaro.org>
User-Agent: Evolution 3.50.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_001514_082737_6CD22A68 
X-CRM114-Status: GOOD (  12.20  )
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

SGkgUGV0ZSwKCk9uIFRodSwgMjAyNC0wNC0wNCBhdCAxMzoyNSArMDEwMCwgUGV0ZXIgR3JpZmZp
biB3cm90ZToKPiBBZGQgZHQgc2NoZW1hIGRvY3VtZW50YXRpb24gYW5kIGNsb2NrIElEcyBmb3Ig
dGhlIEhpZ2ggU3BlZWQgSW50ZXJmYWNlCj4gMiAoSFNJMikgY2xvY2sgbWFuYWdlbWVudCB1bml0
LiBUaGlzIENNVSBmZWVkcyBoaWdoIHNwZWVkIGludGVyZmFjZXMKPiBzdWNoIGFzIFBDSWUgYW5k
IFVGUy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBHcmlmZmluIDxwZXRlci5ncmlmZmluQGxp
bmFyby5vcmc+Cj4gLS0tCj4gwqAuLi4vYmluZGluZ3MvY2xvY2svZ29vZ2xlLGdzMTAxLWNsb2Nr
LnlhbWzCoMKgwqAgfCAzMCArKysrKysrKysrKysrKysrKy0tCj4gwqAxIGZpbGUgY2hhbmdlZCwg
MjggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2dvb2dsZSxnczEwMS1jbG9jay55YW1s
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2dvb2dsZSxnczEwMS0K
PiBjbG9jay55YW1sCj4gaW5kZXggMWQyYmNlYTQxYzg1Li5hMjAyZmQ1ZDFlYWQgMTAwNjQ0Cj4g
LS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2dvb2dsZSxnczEw
MS1jbG9jay55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Ns
b2NrL2dvb2dsZSxnczEwMS1jbG9jay55YW1sCj4gQEAgLTMyLDE0ICszMiwxNSBAQCBwcm9wZXJ0
aWVzOgo+IMKgwqDCoMKgwqDCoCAtIGdvb2dsZSxnczEwMS1jbXUtbWlzYwo+IMKgwqDCoMKgwqDC
oCAtIGdvb2dsZSxnczEwMS1jbXUtcGVyaWMwCj4gwqDCoMKgwqDCoMKgIC0gZ29vZ2xlLGdzMTAx
LWNtdS1wZXJpYzEKPiArwqDCoMKgwqDCoCAtIGdvb2dsZSxnczEwMS1jbXUtaHNpMgoKQ2FuIHlv
dSBrZWVwIHRoaXMgYWxwaGFiZXRpY2FsIGFuZCBhZGQgaHNpIGJlZm9yZSBtaXNjIHBsZWFzZS4K
PiDCoAo+IMKgwqAgY2xvY2tzOgo+IMKgwqDCoMKgIG1pbkl0ZW1zOiAxCj4gLcKgwqDCoCBtYXhJ
dGVtczogMwo+ICvCoMKgwqAgbWF4SXRlbXM6IDUKPiDCoAo+IMKgwqAgY2xvY2stbmFtZXM6Cj4g
wqDCoMKgwqAgbWluSXRlbXM6IDEKPiAtwqDCoMKgIG1heEl0ZW1zOiAzCj4gK8KgwqDCoCBtYXhJ
dGVtczogNQo+IMKgCj4gwqDCoCAiI2Nsb2NrLWNlbGxzIjoKPiDCoMKgwqDCoCBjb25zdDogMQo+
IEBAIC0xMTIsNiArMTEzLDMxIEBAIGFsbE9mOgo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAt
IGNvbnN0OiBidXMKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogaXAKPiDCoAo+
ICvCoCAtIGlmOgo+ICvCoMKgwqDCoMKgIHByb3BlcnRpZXM6Cj4gK8KgwqDCoMKgwqDCoMKgIGNv
bXBhdGlibGU6Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoCBjb250YWluczoKPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBlbnVtOgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGdvb2dsZSxn
czEwMS1jbXUtaHNpMgoKdGhpcyBibG9jayBzaG91bGQgYWxzbyBjb21lIGJlZm9yZSBtaXNjIHBs
ZWFzZS4KCk9uY2UgZG9uZSwgZmVlbCBmcmVlIHRvIGFkZAoKUmV2aWV3ZWQtYnk6IEFuZHLDqSBE
cmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+CgoKPiArCj4gK8KgwqDCoCB0aGVuOgo+
ICvCoMKgwqDCoMKgIHByb3BlcnRpZXM6Cj4gK8KgwqDCoMKgwqDCoMKgIGNsb2NrczoKPiArwqDC
oMKgwqDCoMKgwqDCoMKgIGl0ZW1zOgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gZGVzY3Jp
cHRpb246IEV4dGVybmFsIHJlZmVyZW5jZSBjbG9jayAoMjQuNTc2IE1IeikKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9uOiBIaWdoIFNwZWVkIEludGVyZmFjZSBidXMgY2xv
Y2sgKGZyb20gQ01VX1RPUCkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9u
OiBIaWdoIFNwZWVkIEludGVyZmFjZSBwY2llIGNsb2NrIChmcm9tIENNVV9UT1ApCj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogSGlnaCBTcGVlZCBJbnRlcmZhY2UgdWZz
IGNsb2NrIChmcm9tIENNVV9UT1ApCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBkZXNjcmlw
dGlvbjogSGlnaCBTcGVlZCBJbnRlcmZhY2UgbW1jIGNsb2NrIChmcm9tIENNVV9UT1ApCj4gKwo+
ICvCoMKgwqDCoMKgwqDCoCBjbG9jay1uYW1lczoKPiArwqDCoMKgwqDCoMKgwqDCoMKgIGl0ZW1z
Ogo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IG9zY2Nsawo+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIC0gY29uc3Q6IGJ1cwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29u
c3Q6IHBjaWUKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiB1ZnNfZW1iZAo+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IG1tY19jYXJkCj4gKwo+IMKgYWRkaXRpb25h
bFByb3BlcnRpZXM6IGZhbHNlCj4gwqAKPiDCoGV4YW1wbGVzOgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

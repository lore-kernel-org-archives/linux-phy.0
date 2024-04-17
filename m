Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6A92C4345F
	for <linux-phy@archiver.kernel.org>; Wed, 17 Apr 2024 07:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2WLPh7Cavc0me3WXTFMQoLXoBqOW9v2Ar6Pu2VQn/c=; b=S5Yu49dM3T0mYN
	gxocySWpOR9HDU1boZgijCgwD4rtoQBrUB+HGnArC/tvij7ra9BU4OJ15OXl06uxb7RHyvhPBPSu9
	tDwnzYdED035wCbJ5aXCQxzF/t+GETwq7HeXsSo/03NPZ8BzvNmqlAT81Aque8bQNPSk6rgC6a5Ly
	ZcbsJ8KSlYGoBZSqKYDoyPBzZnneKFhprvr7c0yXJzDq9qGEhPcQaDW7CjbcP7BcotXFTqmx4btvH
	T/OWIfacEkvDseLgWRaaf3oOgyYDVG38y4ZC9rhbX80Ra+gpXZieNLNYx5HO+EqvruUOh0UJeFrBQ
	XZZ3GeYXP0PZrNVp4T+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwzoH-0000000F2y7-2bKM;
	Wed, 17 Apr 2024 07:34:25 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwzoD-0000000F2wC-077X
	for linux-phy@lists.infradead.org;
	Wed, 17 Apr 2024 07:34:23 +0000
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-2a564ca6f67so4369029a91.2
        for <linux-phy@lists.infradead.org>; Wed, 17 Apr 2024 00:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713339260; x=1713944060; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0K72Tz2ZkclPVJuZv0gvxvgq7QFl2/X172+ji7HZ4mc=;
        b=tH2EE+nWVHnUXhc3LIDa6wJjLiIDwhkwAxJJ3tinqhwZnCZ3ih8Dl1WX/mfFicpup8
         rm5J+1WPCf+BKMN9lJn6V+uMjWwKdL6pWaKRvp+pPrgVIemZe5bHRLHV6U4W79I1ZTXa
         vZU78hS/3PvjakvWqJcKD2Ft6nzqfooZxojctNUkLHefNFl0bfgXKu4zJzOIcXVT0ckN
         /sPG9BzBw2ku0QwZFiYZ5Jpn6RrpDph1Y5q3TlhYdjbb+tPdcTqyFXNAtiHfuBK0Jui7
         pt4auy5jJn2sDYHqtjbE2kpHFel9JgwaVx0z70ktUIqgKFIa8SSCPJgnruIdsB9DdDJp
         1Ihw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713339260; x=1713944060;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0K72Tz2ZkclPVJuZv0gvxvgq7QFl2/X172+ji7HZ4mc=;
        b=NFs2En72P5hHK511/v1DNlJzGmzjtymEPVj3f12xcEgVFmOk9oUSow9VOGXO/vldt2
         wijeNHTKh4EW5tWCqcyUbVj0qLbV0mf//aYmClXuDg3DVyebgv3Czi2GxY/ns+9caJX3
         JLmaK0HkWDmCot8mNH8Mem+ba54J6kUCgm/R8XfxcM/pj8sFPt1zbvdTiOBkidJrcLX8
         ZsNFSPp6YLyYdhUlmLD4lxZGhPWVhbFMnvzBpCn3hpQTqlTRNIXx7BlKujmUjCnZf6WA
         NzYK+xXixk8FEZoPNPUvXZ8EB0NDvm35fqTMimRZUpvJsGWYUzPiezEhLKmxi6wRwSIX
         mi6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVzzY9gnKY4SsBV52qg/eVVDugeX9iXIAqLzdRtuBYKxUEF+ycB9gNvpX/jrM9/S0IVHrixplKaml7cNXnUyaxjxAx5Riz6jTqIgVS46Q==
X-Gm-Message-State: AOJu0Yz1vKClBTbNXpA3BgfYFBM73eWIqP5W8iVwu7k4mJWMlkIQqb5L
	WnxJmZ8wxhTgpsh5KHXiX7GBS650HJ0sSkYSvgKgk1uGZj7L3CLVYz3yAmDlHg==
X-Google-Smtp-Source: AGHT+IGIAgoL/zhZk3pa0SMj5BgxpoFiLpBLAx6xC/5k4oCxlIq9Bo6Xf+jtd58QVgNCbJOeHuSBkQ==
X-Received: by 2002:a17:90b:3c3:b0:2a6:db3:1aa5 with SMTP id go3-20020a17090b03c300b002a60db31aa5mr15282164pjb.18.1713339259756;
        Wed, 17 Apr 2024 00:34:19 -0700 (PDT)
Received: from thinkpad ([120.60.54.9])
        by smtp.gmail.com with ESMTPSA id e3-20020a17090a728300b002a2b28de64esm742387pjg.14.2024.04.17.00.34.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Apr 2024 00:34:19 -0700 (PDT)
Date: Wed, 17 Apr 2024 13:04:12 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v3 7/7] arm64: dts: qcom: ipq9574: add PCIe2 nodes
Message-ID: <20240417073412.GD3894@thinkpad>
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
 <20240415182052.374494-8-mr.nuke.me@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240415182052.374494-8-mr.nuke.me@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_003421_160841_5EB396B5 
X-CRM114-Status: GOOD (  17.42  )
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

T24gTW9uLCBBcHIgMTUsIDIwMjQgYXQgMDE6MjA6NTJQTSAtMDUwMCwgQWxleGFuZHJ1IEdhZ25p
dWMgd3JvdGU6Cj4gT24gaXBxOTU3NCwgdGhlcmUgYXJlIDQgUENJZSBjb250cm9sbGVycy4gRGVz
Y3JpYmUgdGhlIHBjaWUyIG5vZGUsIGFuZAo+IGl0cyBQSFkgaW4gZGV2aWNldHJlZS4KPiAKPiBP
bmx5IHBjaWUyIGlzIGRlc2NyaWJlZCwgYmVjYXVzZSBvbmx5IGhhcmR3YXJlIHVzaW5nIHRoYXQg
Y29udHJvbGxlcgo+IHdhcyBhdmFpbGFibGUgZm9yIHRlc3RpbmcuCj4gCgpZb3Ugc2hvdWxkIGRl
c2NyaWJlIGFsbCB0aGUgaW5zdGFuY2VzIGluIERULiBTaW5jZSB0aGUgdW51c2VkIG9uZXMgd2ls
bCBiZQonZGlzYWJsZWQnLCBpdCB3b24ndCBhZmZlY3QgYW55b25lLgoKPiBTaWduZWQtb2ZmLWJ5
OiBBbGV4YW5kcnUgR2Fnbml1YyA8bXIubnVrZS5tZUBnbWFpbC5jb20+Cj4gLS0tCj4gIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE5NTc0LmR0c2kgfCA5MyArKysrKysrKysrKysrKysrKysr
KysrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDkyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTk1NzQuZHRz
aSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE5NTc0LmR0c2kKPiBpbmRleCA3ZjJlNWNi
ZjNiYmIuLmYwNzVlMjcxNTMwMCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fj
b20vaXBxOTU3NC5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTk1NzQu
ZHRzaQo+IEBAIC0zMDAsNyArMzAwLDcgQEAgZ2NjOiBjbG9jay1jb250cm9sbGVyQDE4MDAwMDAg
ewo+ICAJCQkJIDwwPiwKPiAgCQkJCSA8MD4sCj4gIAkJCQkgPDA+LAo+IC0JCQkJIDwwPiwKPiAr
CQkJCSA8JnBjaWUyX3BoeT4sCj4gIAkJCQkgPDA+LAo+ICAJCQkJIDwwPjsKPiAgCQkJI2Nsb2Nr
LWNlbGxzID0gPDE+Owo+IEBAIC03NDUsNiArNzQ1LDk3IEBAIGZyYW1lQGIxMjgwMDAgewo+ICAJ
CQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgCQkJfTsKPiAgCQl9Owo+ICsKPiArCQlwY2llMl9w
aHk6IHBoeUA4YzAwMCB7Cj4gKwkJCWNvbXBhdGlibGUgPSAicWNvbSxpcHE5NTc0LXFtcC1nZW4z
eDItcGNpZS1waHkiOwo+ICsJCQlyZWcgPSA8MHgwMDA4YzAwMCAweDE0ZjQ+Owo+ICsKPiArCQkJ
Y2xvY2tzID0gPCZnY2MgR0NDX1BDSUUyX0FVWF9DTEs+LAo+ICsJCQkJIDwmZ2NjIEdDQ19QQ0lF
Ml9BSEJfQ0xLPiwKPiArCQkJCSA8JmdjYyBHQ0NfUENJRTJfUElQRV9DTEs+LAo+ICsJCQkJIDwm
Z2NjIEdDQ19BTk9DX1BDSUUyXzJMQU5FX01fQ0xLPiwKPiArCQkJCSA8JmdjYyBHQ0NfU05PQ19Q
Q0lFMl8yTEFORV9TX0NMSz47Cj4gKwkJCWNsb2NrLW5hbWVzID0gImF1eCIsCj4gKwkJCQkgICAg
ICAiY2ZnX2FoYiIsCj4gKwkJCQkgICAgICAicGlwZSIsCj4gKwkJCQkgICAgICAiYW5vYyIsCj4g
KwkJCQkgICAgICAic25vYyI7Cj4gKwo+ICsJCQljbG9jay1vdXRwdXQtbmFtZXMgPSAicGNpZV9w
aHkyX3BpcGVfY2xrIjsKPiArCQkJI2Nsb2NrLWNlbGxzID0gPDA+Owo+ICsJCQkjcGh5LWNlbGxz
ID0gPDA+Owo+ICsKPiArCQkJcmVzZXRzID0gPCZnY2MgR0NDX1BDSUUyX1BIWV9CQ1I+LAo+ICsJ
CQkJIDwmZ2NjIEdDQ19QQ0lFMlBIWV9QSFlfQkNSPjsKPiArCQkJcmVzZXQtbmFtZXMgPSAicGh5
IiwKPiArCQkJCSAgICAgICJjb21tb24iOwo+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICsJ
CX07Cj4gKwo+ICsJCXBjaWUyOiBwY2llQDIwMDAwMDAwIHsKPiArCQkJY29tcGF0aWJsZSA9ICJx
Y29tLHBjaWUtaXBxOTU3NCI7Cj4gKwkJCXJlZyA9IDwweDIwMDAwMDAwIDB4ZjFkPiwKPiArCQkJ
ICAgICAgPDB4MjAwMDBmMjAgMHhhOD4sCj4gKwkJCSAgICAgIDwweDIwMDAxMDAwIDB4MTAwMD4s
Cj4gKwkJCSAgICAgIDwweDAwMDg4MDAwIDB4NDAwMD4sCj4gKwkJCSAgICAgIDwweDIwMTAwMDAw
IDB4MTAwMD47Cj4gKwkJCXJlZy1uYW1lcyA9ICJkYmkiLCAiZWxiaSIsICJhdHUiLCAicGFyZiIs
ICJjb25maWciOwo+ICsKPiArCQkJcmFuZ2VzID0gPDB4ODEwMDAwMDAgMHgwIDB4MjAyMDAwMDAg
MHgyMDIwMDAwMCAweDAgMHgwMDEwMDAwMD4sCS8qIEkvTyAqLwoKUGxlYXNlIHVzZSBiZWxvdyBy
YW5nZToKCjwweDAxMDAwMDAwIDB4MCAweDAwMDAwMDAwIDB4MjAyMDAwMDAgMHgwIDB4MDAxMDAw
MDA+CjwweDAyMDAwMDAwIDB4MCAweDIwMzAwMDAwIDB4MjAzMDAwMDAgMHgwIDB4MDdkMDAwMDA+
Cgo+ICsJCQkJIDwweDgyMDAwMDAwIDB4MCAweDIwMzAwMDAwIDB4MjAzMDAwMDAgMHgwIDB4MDdk
MDAwMDA+OwkvKiBNRU0gKi8KPiArCj4gKwkJCWRldmljZV90eXBlID0gInBjaSI7Cj4gKwkJCWxp
bnV4LHBjaS1kb21haW4gPSA8Mz47Cj4gKwkJCWJ1cy1yYW5nZSA9IDwweDAwIDB4ZmY+Owo+ICsJ
CQludW0tbGFuZXMgPSA8Mj47Cj4gKwkJCW1heC1saW5rLXNwZWVkID0gPDM+Owo+ICsJCQkjYWRk
cmVzcy1jZWxscyA9IDwzPjsKPiArCQkJI3NpemUtY2VsbHMgPSA8Mj47Cj4gKwo+ICsJCQlwaHlz
ID0gPCZwY2llMl9waHk+Owo+ICsJCQlwaHktbmFtZXMgPSAicGNpZXBoeSI7Cj4gKwo+ICsJCQlp
bnRlcnJ1cHRzID0gPEdJQ19TUEkgMTI2IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsJCQlpbnRl
cnJ1cHQtbmFtZXMgPSAibXNpIjsKPiArCj4gKwkJCSNpbnRlcnJ1cHQtY2VsbHMgPSA8MT47Cj4g
KwkJCWludGVycnVwdC1tYXAtbWFzayA9IDwwIDAgMCAweDc+Owo+ICsJCQlpbnRlcnJ1cHQtbWFw
ID0gPDAgMCAwIDEgJmludGMgMCAwIDE2NAo+ICsJCQkJCSBJUlFfVFlQRV9MRVZFTF9ISUdIPiwg
LyogaW50X2EgKi8KPiArCQkJCQk8MCAwIDAgMiAmaW50YyAwIDAgMTY1Cj4gKwkJCQkJIElSUV9U
WVBFX0xFVkVMX0hJR0g+LCAvKiBpbnRfYiAqLwo+ICsJCQkJCTwwIDAgMCAzICZpbnRjIDAgMCAx
ODYKPiArCQkJCQkgSVJRX1RZUEVfTEVWRUxfSElHSD4sIC8qIGludF9jICovCj4gKwkJCQkJPDAg
MCAwIDQgJmludGMgMCAwIDE4Nwo+ICsJCQkJCSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsgLyogaW50
X2QgKi8KClVzZSBhIHNpbmdsZSBsaW5lIGZvciBlYWNoIElOVFggZW50cnkgZXZlbiBpZiBpdCBl
eGNlZWRzIDgwIGNvbHVtbiB3aWR0aC4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCu
o+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

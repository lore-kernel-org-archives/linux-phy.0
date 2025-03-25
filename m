Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1791AC3600B
	for <linux-phy@archiver.kernel.org>; Tue, 25 Mar 2025 16:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W72PQXBJMkt5Yq+vV04sHbK5SR4RWzotdxH9ZrkCAvM=; b=GA/pmlcqk3/95Y
	/Gd1IoDvIjorOfCFV+9znR1bFFg+71L1CfrHSb8hqfVbpDj7jT/NZvpfGezMdMKpi4UMj33LZmsPo
	r6x2fMEyuulZtWVxfFkmzXxNUnFMrSO+j1vUqqW/xUgo/9yORJEDUGqiCxglDT3S9f0ESXSvkobg6
	IM/NoadKXow2S7X52iYSg1XuNiWJa31jqG2RWa5fg9wY9u7yIkzGAcMyJFqa43YvHzamlAEHBe66m
	YwkY1d2ds5YesTAyZR8S+doCU9qYFVwZQtyxWsEgo7BGZni5ypwPe3ozku5TOtnunRTOsApS9j9Gz
	doUqaG+ycRrzpqSk6lmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx7Wj-00000006Xgx-2oy1;
	Tue, 25 Mar 2025 16:53:21 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx7Wh-00000006XgO-0d8S
	for linux-phy@lists.infradead.org;
	Tue, 25 Mar 2025 16:53:20 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-227d6b530d8so45642645ad.3
        for <linux-phy@lists.infradead.org>; Tue, 25 Mar 2025 09:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742921598; x=1743526398; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5L9ZiZQAjB02Svt4Qm10JSTX6pFY5X9IvVK51QfXpvc=;
        b=kqoDV2x5kZybNAHpvU6BgLoBjuKD1lv4bRo4NUbTL+pZGXnDAyI2jGu8l58yH5uadi
         a2oH8h3sdhZJy0woshKGFVGlnMLpKe+LWlyMKuSRiF/6wQqPXDc5Dt7TjF7YglQyEXdl
         xUw5ls0xndb0uukkyXXVwPNafpBuiLNFKAkdKMW+Rt0F2IgVYl6ntia5SpyTMiCjMETs
         wek7bKXq6FS+Ox21o/5X8H60AuijRYBiddcyEiwz1jgXsE5CkBgrWL97zXEUPgW+Miqg
         cpuHJq1H0IhjnH+Igl5JihIJ22EqkCrqYBUqkYLN/VJyf5LjgAg2Q2np5wJ+MeCLI90l
         n04g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742921598; x=1743526398;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5L9ZiZQAjB02Svt4Qm10JSTX6pFY5X9IvVK51QfXpvc=;
        b=m3LquhPOAr22YJTvDEWWiXehgD1PhaZq6iLXCuTS8Dqh52bjU5xiLJA8Nrq76aN17A
         YP1cVqFsgVL7z04pAHJ9++/o58EDPGyzPbhkR9xmB4vU6uHJKKt/0MnSFoFU+5XEbCrL
         57oZUEeiKduX+ECXGL+PKAga16FqNBYD9neCzUBcqFDhk+3f+6J0FCb45bsvWIVAOh+d
         LbSDcfEAcHmNZm/u6u2N71SuDQyZzOu0s4BCIma7I6beysfleLO+HG5UrxGzakDz6QTJ
         eiiO5hYtyxn4kMxEw/dG5daijHm4aaOhJr7bBPsS9LN9z9WvAaOwj+OVJO6FNZOjdGin
         zg2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUL6bTbikvsvRHWVJv7PT6zAKOUo9/NC/28U/GGMFh5hDxOtSN3JSMS7ORC9J3iwxPQ8xceaGQSk04=@lists.infradead.org
X-Gm-Message-State: AOJu0YwTGAyamvfr3i2AFTEG+U1lcHqMGLxXAoiCWOb515klbA6sKs1H
	vvBFKfqtUG+Jw0zKE0eyecXsSZApI3QIq9W71Rw3r5HM5pUwsDfXu6mqBAF9OQ==
X-Gm-Gg: ASbGnctLgUzDwmmuzCOy38lCRplKEXbel9ArIy8hg5WcmP9yCLje66eYaHcSUzfU9KV
	Yr7KamkuXSsjDTt5jR0oRjhfWL82H8HV4z8fDF3SmmaH7XtUs814GyIPDc9Q7r9FJXFWlQwUEqB
	L3XG6w227yXxwl3y4TRKSTLaO3qNPxKkC3kFHQEaS6GczvPb0vCH/vesTAv0l3BBc/WpFCof05O
	Yjv0Kkq+8JOP0dxxiFiu2Z0AuBDG8TKLGKUPwlxqeI1Rd/K2oJ8lKm/z1rtg9ZhulSc0V4tCyjy
	b1ciJMMSqb46zHnoGPcdh/9zKA3OxL3caUp0J8yrnz08WIMWASKvdRAT
X-Google-Smtp-Source: AGHT+IE9jFkoNlNzUIhIhtPYr1hz43laKNyex5k4hiZRJylP0309zHaG4irN98J58MRDRzo0Phd2MA==
X-Received: by 2002:a05:6a00:84d:b0:736:a540:c9b5 with SMTP id d2e1a72fcca58-73905a2763bmr24061167b3a.22.1742921598338;
        Tue, 25 Mar 2025 09:53:18 -0700 (PDT)
Received: from thinkpad ([120.60.136.104])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-af8a28059e8sm9333330a12.20.2025.03.25.09.53.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 09:53:17 -0700 (PDT)
Date: Tue, 25 Mar 2025 22:23:10 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nitheesh Sekar <quic_nsekar@quicinc.com>, Varadarajan Narayanan <quic_varada@quicinc.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	20250317100029.881286-2-quic_varada@quicinc.com, Sricharan R <quic_srichara@quicinc.com>
Subject: Re: [PATCH v6 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
Message-ID: <ycv74l5nop5mptj6uobuacffnwho2gvznh4dhxagupt5gh6x4k@vgik7ouydy6f>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-5-b7d659a76205@outlook.com>
 <a4n3w62bg6x2iux4z7enu3po56hr5pcavjfmvtzdcwv2w4ptrr@ssvfdrltfg5y>
 <6fa2bd30-762b-4a3a-b94f-8798c027764a@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6fa2bd30-762b-4a3a-b94f-8798c027764a@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_095319_197270_68575F8C 
X-CRM114-Status: GOOD (  22.57  )
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

T24gTW9uLCBNYXIgMjQsIDIwMjUgYXQgMDQ6NDg6MzRQTSArMDUzMCwgUHJhdmVlbmt1bWFyIEkg
d3JvdGU6Cj4gCj4gCj4gT24gMy8yNC8yMDI1IDE6MjYgUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZh
bSB3cm90ZToKPiA+IE9uIEZyaSwgTWFyIDIxLCAyMDI1IGF0IDA0OjE0OjQzUE0gKzA0MDAsIEdl
b3JnZSBNb3Vzc2FsZW0gdmlhIEI0IFJlbGF5IHdyb3RlOgo+ID4gPiBGcm9tOiBOaXRoZWVzaCBT
ZWthcjxxdWljX25zZWthckBxdWljaW5jLmNvbT4KPiA+ID4gCj4gPiA+IEFkZCBwaHkgYW5kIGNv
bnRyb2xsZXIgbm9kZXMgZm9yIGEgMi1sYW5lIEdlbjIgYW5kCj4gPiBDb250cm9sbGVyIGlzIEdl
biAzIGNhcGFibGUgYnV0IHlvdSBhcmUgbGltaXRpbmcgaXQgdG8gR2VuIDIuCj4gPiAKPiA+ID4g
YSAxLWxhbmUgR2VuMiBQQ0llIGJ1cy4gSVBRNTAxOCBoYXMgOCBNU0kgU1BJIGludGVycnVwdHMg
YW5kCj4gPiA+IG9uZSBnbG9iYWwgaW50ZXJydXB0Lgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1i
eTogTml0aGVlc2ggU2VrYXI8cXVpY19uc2VrYXJAcXVpY2luYy5jb20+Cj4gPiA+IFNpZ25lZC1v
ZmYtYnk6IFNyaWNoYXJhbiBSPHF1aWNfc3JpY2hhcmFAcXVpY2luYy5jb20+Cj4gPiA+IFNpZ25l
ZC1vZmYtYnk6IEdlb3JnZSBNb3Vzc2FsZW08Z2VvcmdlLm1vdXNzYWxlbUBvdXRsb29rLmNvbT4K
PiA+IE9uZSBjb21tZW50IGJlbG93LiBXaXRoIHRoYXQgYWRkcmVzc2VkLAo+ID4gCj4gPiBSZXZp
ZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5h
cm8ub3JnPgo+ID4gCj4gPiA+IC0tLQo+ID4gPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9p
cHE1MDE4LmR0c2kgfCAyMzQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLQo+ID4g
PiAgIDEgZmlsZSBjaGFuZ2VkLCAyMzIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+
ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBxNTAxOC5k
dHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUwMTguZHRzaQo+ID4gPiBpbmRleCA4
OTE0ZjJlZjBiYzQuLmQwODAzNGI1N2U4MCAxMDA2NDQKPiA+ID4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9xY29tL2lwcTUwMTguZHRzaQo+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3Fjb20vaXBxNTAxOC5kdHNpCj4gPiA+IEBAIC0xNDcsNiArMTQ3LDQwIEBAIHVzYnBoeTA6IHBo
eUA1YjAwMCB7Cj4gPiA+ICAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ID4gICAJCX07Cj4g
PiA+ICsJCXBjaWUxX3BoeTogcGh5QDdlMDAwewo+ID4gPiArCQkJY29tcGF0aWJsZSA9ICJxY29t
LGlwcTUwMTgtdW5pcGh5LXBjaWUtcGh5IjsKPiA+ID4gKwkJCXJlZyA9IDwweDAwMDdlMDAwIDB4
ODAwPjsKPiA+ID4gKwo+ID4gPiArCQkJY2xvY2tzID0gPCZnY2MgR0NDX1BDSUUxX1BJUEVfQ0xL
PjsKPiA+ID4gKwo+ID4gPiArCQkJcmVzZXRzID0gPCZnY2MgR0NDX1BDSUUxX1BIWV9CQ1I+LAo+
ID4gPiArCQkJCSA8JmdjYyBHQ0NfUENJRTFQSFlfUEhZX0JDUj47Cj4gPiA+ICsKPiA+ID4gKwkJ
CSNjbG9jay1jZWxscyA9IDwwPjsKPiA+ID4gKwkJCSNwaHktY2VsbHMgPSA8MD47Cj4gPiA+ICsK
PiA+ID4gKwkJCW51bS1sYW5lcyA9IDwxPjsKPiA+ID4gKwo+ID4gPiArCQkJc3RhdHVzID0gImRp
c2FibGVkIjsKPiA+ID4gKwkJfTsKPiA+ID4gKwo+ID4gPiArCQlwY2llMF9waHk6IHBoeUA4NjAw
MHsKPiA+ID4gKwkJCWNvbXBhdGlibGUgPSAicWNvbSxpcHE1MDE4LXVuaXBoeS1wY2llLXBoeSI7
Cj4gPiA+ICsJCQlyZWcgPSA8MHgwMDA4NjAwMCAweDgwMD47Cj4gPiA+ICsKPiA+ID4gKwkJCWNs
b2NrcyA9IDwmZ2NjIEdDQ19QQ0lFMF9QSVBFX0NMSz47Cj4gPiA+ICsKPiA+ID4gKwkJCXJlc2V0
cyA9IDwmZ2NjIEdDQ19QQ0lFMF9QSFlfQkNSPiwKPiA+ID4gKwkJCQkgPCZnY2MgR0NDX1BDSUUw
UEhZX1BIWV9CQ1I+Owo+ID4gPiArCj4gPiA+ICsJCQkjY2xvY2stY2VsbHMgPSA8MD47Cj4gPiA+
ICsJCQkjcGh5LWNlbGxzID0gPDA+Owo+ID4gPiArCj4gPiA+ICsJCQludW0tbGFuZXMgPSA8Mj47
Cj4gPiA+ICsKPiA+ID4gKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiA+ICsJCX07Cj4gPiA+
ICsKPiA+ID4gICAJCXRsbW06IHBpbmN0cmxAMTAwMDAwMCB7Cj4gPiA+ICAgCQkJY29tcGF0aWJs
ZSA9ICJxY29tLGlwcTUwMTgtdGxtbSI7Cj4gPiA+ICAgCQkJcmVnID0gPDB4MDEwMDAwMDAgMHgz
MDAwMDA+Owo+ID4gPiBAQCAtMTcwLDggKzIwNCw4IEBAIGdjYzogY2xvY2stY29udHJvbGxlckAx
ODAwMDAwIHsKPiA+ID4gICAJCQlyZWcgPSA8MHgwMTgwMDAwMCAweDgwMDAwPjsKPiA+ID4gICAJ
CQljbG9ja3MgPSA8JnhvX2JvYXJkX2Nsaz4sCj4gPiA+ICAgCQkJCSA8JnNsZWVwX2Nsaz4sCj4g
PiA+IC0JCQkJIDwwPiwKPiA+ID4gLQkJCQkgPDA+LAo+ID4gPiArCQkJCSA8JnBjaWUwX3BoeT4s
Cj4gPiA+ICsJCQkJIDwmcGNpZTFfcGh5PiwKPiA+ID4gICAJCQkJIDwwPiwKPiA+ID4gICAJCQkJ
IDwwPiwKPiA+ID4gICAJCQkJIDwwPiwKPiA+ID4gQEAgLTM4Nyw2ICs0MjEsMjAyIEBAIGZyYW1l
QGIxMjgwMDAgewo+ID4gPiAgIAkJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gPiAgIAkJCX07
Cj4gPiA+ICAgCQl9Owo+ID4gPiArCj4gPiA+ICsJCXBjaWUxOiBwY2llQDgwMDAwMDAwIHsKPiA+
ID4gKwkJCWNvbXBhdGlibGUgPSAicWNvbSxwY2llLWlwcTUwMTgiOwo+ID4gPiArCQkJcmVnID0g
PDB4ODAwMDAwMDAgMHhmMWQ+LAo+ID4gPiArCQkJICAgICAgPDB4ODAwMDBmMjAgMHhhOD4sCj4g
PiA+ICsJCQkgICAgICA8MHg4MDAwMTAwMCAweDEwMDA+LAo+ID4gPiArCQkJICAgICAgPDB4MDAw
NzgwMDAgMHgzMDAwPiwKPiA+ID4gKwkJCSAgICAgIDwweDgwMTAwMDAwIDB4MTAwMD4sCj4gPiA+
ICsJCQkgICAgICA8MHgwMDA3YjAwMCAweDEwMDA+Owo+ID4gPiArCQkJcmVnLW5hbWVzID0gImRi
aSIsCj4gPiA+ICsJCQkJICAgICJlbGJpIiwKPiA+ID4gKwkJCQkgICAgImF0dSIsCj4gPiA+ICsJ
CQkJICAgICJwYXJmIiwKPiA+ID4gKwkJCQkgICAgImNvbmZpZyIsCj4gPiA+ICsJCQkJICAgICJt
aGkiOwo+ID4gPiArCQkJZGV2aWNlX3R5cGUgPSAicGNpIjsKPiA+ID4gKwkJCWxpbnV4LHBjaS1k
b21haW4gPSA8MD47Cj4gPiA+ICsJCQlidXMtcmFuZ2UgPSA8MHgwMCAweGZmPjsKPiA+ID4gKwkJ
CW51bS1sYW5lcyA9IDwxPjsKPiA+ID4gKwkJCW1heC1saW5rLXNwZWVkID0gPDI+Owo+ID4gVGhp
cyBzdGlsbCBuZWVkcyBzb21lIGp1c3RpZmljYXRpb24uIElmIFFjb20gZm9sa3MgZGlkbid0IHJl
cGx5LCBhdGxlYXN0IG1vdmUKPiA+IHRoaXMgdG8gYm9hcmQgZHRzIHdpdGggYSBjb21tZW50IHNh
eWluZyB0aGF0IHRoZSBsaW5rIGlzIG5vdCBjb21pbmcgdXAgd2l0aAo+ID4gR2VuMy4KPiA+IAo+
ID4gLSBNYW5pCj4gVGhlIElQUTUwMTggUENJZSBjb250cm9sbGVyIGNhbiBzdXBwb3J0IEdlbjMs
IGJ1dCB0aGUgUENJZSBwaHkgaXMgbGltaXRlZAo+IEdlbjIgYW5kIGRvZXMgbm90IHN1cHBvcnRl
ZCBHZW4zLgoKSG1tLCBzbyBpZiBhIEdlbiAzIGNhcGFibGUgZGV2aWNlIGlzIGNvbm5lY3RlZCwg
dGhlIGxpbmsgd2lsbCBub3Qgd29yayBhdCBHZW4gMj8KSXQgc2VlbXMgc28gZnJvbSB0aGUgZXJy
b3IgdGhhdCBHZW9yZ2Ugc2hhcmVkIHByZXZpb3VzbHkuCgo+IEhlbmNlLCBpdCBpcyByZXN0cmlj
dGVkIHVzaW5nIHRoZSBEVFNJIHByb3BlcnR5Lgo+IAoKT2suIEdlb3JnZSwgcGxlYXNlIGFkZCBh
IGNvbW1lbnQgZm9yIHRoZSBwcm9wZXJ0eSBzdGF0aW5nIHRoZSByZWFzb24uCgotIE1hbmkKCi0t
IArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A944C36002
	for <linux-phy@archiver.kernel.org>; Mon, 24 Mar 2025 07:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0dBF8OF5OrGXApj7IBWI+LnUsAhPtxbD94Ehxu2jsRo=; b=jyMZeuoyFnBbzv
	ywU/qbcGYGPXB9Psg9VvBkLcQ48X3nBj2zTUGnDIrHwBNEU/fuHu9pWgwh77RblXkFv7pnfbGhSiF
	1EFn798dKtFhuTYK/IIpn6lN271tvoFJm4lwSvZaXoGGA2q6Vh2Xqnu/zeDuPJgeqk7b8+y4u8iX1
	ckrICdsxP5TqwJ66P4GR7YvzkISTypzsyQ3CyfoSUHY+X02yHzUDRysN/xldkmekqycuC3weraxqp
	D2qT7UwegLug91naAbCxnQe1sr2QsgCZR/fu7Fg5P3NY1i3mazqpNvxrgQ/1F2CU7WpB6XaYUmBHW
	BChl+fbNocwO4U3m5eVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twccO-00000002VDn-15A4;
	Mon, 24 Mar 2025 07:53:08 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twccL-00000002VDB-2ZJU
	for linux-phy@lists.infradead.org;
	Mon, 24 Mar 2025 07:53:06 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-22435603572so68989635ad.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Mar 2025 00:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742802785; x=1743407585; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pb0coG8ELzx5NL39dsEd5n2HDvAmuNrsLf2r8J2plFk=;
        b=PwfUhdfGlw1X+Yz4GjdttevIsAoHy2MkVMWV6lHItqXmJveWiM9bHqCrJakqVXh9lB
         bzVfXBrAf1ODVE068jowIgwEWdkS4xxSprNMPiDEc91LgvDhxredcNFE+Hu33zcIkGnK
         GRA5FQUK77a/s4iaOi9MH5Ah/V3EvpdUNIW9ewUqGa2iTvNEzUgFDEm4xK91hKDwQSoe
         cFTc+iHH8hVU++kRKtPVTvoVrgnEwQ+mTV/vOCH29RUujTaoWmq7KtNPKiZXnCw13Bdw
         0cCaJJzHWREKAEg68yRxuIg/ZvKe648NzuTzWu4qr3i2MMSpBTxUP2vKgmbgppjLLAzO
         WHdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742802785; x=1743407585;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pb0coG8ELzx5NL39dsEd5n2HDvAmuNrsLf2r8J2plFk=;
        b=Z/bzAq9UmYHk17sMORQeWxxFaS96Huqunwjh1yh60dGn5+wcwRUlaAF3uSYIh8a3ax
         eQk2amB1L7iWnKWZUZHmDnBlBPn8hF9sI7Mx0lNj2BkTiybrgPbpfG3Rc4uqMuJSq8Sl
         OSpxDIhppEl2qw/AcY7CToptO4l/kJXyi1+AXE6HnR8JXYcAd8s6YZ72wG4j7XGzHv5k
         tnbOrDmagipfX+XdKvTQWG5o1yMGU6ZXofifKP1eVfvcpXDkJh7uczTMLCk2LK6rrb/8
         MyLZjcjF0CvfvhnRujSLsOTXyRmSXcRyiztDNbpnQDJDAzaqKHyO79IL5USYwV4v0LFM
         XmJg==
X-Forwarded-Encrypted: i=1; AJvYcCV12XdZzW/TzzJ8h4gponSmG5FXeFPNMM4hGILbExWeCY+2sehJxBkR9RuhsZMQcg6Gc06wN886RKA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxg8SdjafGbmjkJZn8Y322bfG9pXQAQBKmI8EJzkOjSd/Cozd8M
	Xqc5FJA+AFGJVSoCFVTP6gLeFLkZwNmGcvDo9+tx6cqvRA6tPu490QnuFFQbQw==
X-Gm-Gg: ASbGncvNVfYzPWU31ztBLLGwhN7rHLLpHwEf4irsdn5PFGtzSlvDwkKMqyF++8OJSsG
	E0stRDvETb+UMPT9mZ4NuHukuRXX4C3BSKEDcJhoM3voDkhEObGkh3ViM5VjEwf4qsBaBDEXFia
	X6I0zgGaRwxm5cGhhJ96NvDpg+bS6P31MfNuifrSEUM+OSDWSlac1AdUBPVs//FbU6j+pY0dkZK
	r5pIayC281UtgXlidzn6bisR6N9rRpKgUekcVMimLMkkASvdO3MSeMRCjh3CoVWtmIutDvrg4ca
	Mk+8siBGmBTvwur+Q/fr8/Mzv1I6EtQrYPpw6omYmZ08RXO1c9sDX4Ah
X-Google-Smtp-Source: AGHT+IFuvV2cV8WX5aMgqIPZN8PMDNislgN7gD7Fd0kyz13UcCKy/E1fYKahvWMm/QdrilzlKJE56w==
X-Received: by 2002:a17:902:ebc6:b0:223:39ae:a98 with SMTP id d9443c01a7336-22780d825c4mr224115485ad.22.1742802784591;
        Mon, 24 Mar 2025 00:53:04 -0700 (PDT)
Received: from thinkpad ([220.158.156.91])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-227811f9a68sm64496325ad.241.2025.03.24.00.52.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 00:53:03 -0700 (PDT)
Date: Mon, 24 Mar 2025 13:22:56 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: george.moussalem@outlook.com
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nitheesh Sekar <quic_nsekar@quicinc.com>, Varadarajan Narayanan <quic_varada@quicinc.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	20250317100029.881286-2-quic_varada@quicinc.com, Sricharan Ramabadhran <quic_srichara@quicinc.com>
Subject: Re: [PATCH v6 3/6] dt-bindings: PCI: qcom: Add IPQ5018 SoC
Message-ID: <uenisk2rrlx5sh6xagd7texx3dpxyav6yxpqxmk3fcdq44vb75@tk3pimdajilb>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-3-b7d659a76205@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250321-ipq5018-pcie-v6-3-b7d659a76205@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_005305_653718_6335683A 
X-CRM114-Status: GOOD (  13.91  )
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

T24gRnJpLCBNYXIgMjEsIDIwMjUgYXQgMDQ6MTQ6NDFQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxl
bSB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4gRnJvbTogTml0aGVlc2ggU2VrYXIgPHF1aWNfbnNla2Fy
QHF1aWNpbmMuY29tPgo+IAo+IEFkZCBzdXBwb3J0IGZvciB0aGUgUENJZSBjb250cm9sbGVyIG9u
IHRoZSBRdWFsY29tbQo+IElQUTUxMDggU29DIHRvIHRoZSBiaW5kaW5ncy4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBOaXRoZWVzaCBTZWthciA8cXVpY19uc2VrYXJAcXVpY2luYy5jb20+Cj4gU2lnbmVk
LW9mZi1ieTogU3JpY2hhcmFuIFJhbWFiYWRocmFuIDxxdWljX3NyaWNoYXJhQHF1aWNpbmMuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IEdlb3JnZSBNb3Vzc2FsZW0gPGdlb3JnZS5tb3Vzc2FsZW1Ab3V0
bG9vay5jb20+CgpBY2tlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNh
ZGhhc2l2YW1AbGluYXJvLm9yZz4KCi0gTWFuaQoKPiAtLS0KPiAgLi4uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGNpL3Fjb20scGNpZS55YW1sICAgICAgICAgfCA1MCArKysrKysrKysrKysrKysrKysr
KysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA1MCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLnlhbWwgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS55YW1sCj4gaW5k
ZXggNDY5Yjk5ZmEwZjBlLi42NjhmZjAzZjI1NjEgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUueWFtbAo+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLnlhbWwKPiBAQCAtMjEsNiAr
MjEsNyBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICAgICAgLSBxY29tLHBjaWUtYXBxODA2NAo+ICAg
ICAgICAgICAgLSBxY29tLHBjaWUtYXBxODA4NAo+ICAgICAgICAgICAgLSBxY29tLHBjaWUtaXBx
NDAxOQo+ICsgICAgICAgICAgLSBxY29tLHBjaWUtaXBxNTAxOAo+ICAgICAgICAgICAgLSBxY29t
LHBjaWUtaXBxNjAxOAo+ICAgICAgICAgICAgLSBxY29tLHBjaWUtaXBxODA2NAo+ICAgICAgICAg
ICAgLSBxY29tLHBjaWUtaXBxODA2NC12Mgo+IEBAIC0xNjgsNiArMTY5LDcgQEAgYWxsT2Y6Cj4g
ICAgICAgICAgY29tcGF0aWJsZToKPiAgICAgICAgICAgIGNvbnRhaW5zOgo+ICAgICAgICAgICAg
ICBlbnVtOgo+ICsgICAgICAgICAgICAgIC0gcWNvbSxwY2llLWlwcTUwMTgKPiAgICAgICAgICAg
ICAgICAtIHFjb20scGNpZS1pcHE2MDE4Cj4gICAgICAgICAgICAgICAgLSBxY29tLHBjaWUtaXBx
ODA3NC1nZW4zCj4gICAgICAgICAgICAgICAgLSBxY29tLHBjaWUtaXBxOTU3NAo+IEBAIC0zMjQs
NiArMzI2LDUzIEBAIGFsbE9mOgo+ICAgICAgICAgICAgICAtIGNvbnN0OiBhaGIgIyBBSEIgcmVz
ZXQKPiAgICAgICAgICAgICAgLSBjb25zdDogcGh5X2FoYiAjIFBIWSBBSEIgcmVzZXQKPiAgCj4g
KyAgLSBpZjoKPiArICAgICAgcHJvcGVydGllczoKPiArICAgICAgICBjb21wYXRpYmxlOgo+ICsg
ICAgICAgICAgY29udGFpbnM6Cj4gKyAgICAgICAgICAgIGVudW06Cj4gKyAgICAgICAgICAgICAg
LSBxY29tLHBjaWUtaXBxNTAxOAo+ICsgICAgdGhlbjoKPiArICAgICAgcHJvcGVydGllczoKPiAr
ICAgICAgICBjbG9ja3M6Cj4gKyAgICAgICAgICBtaW5JdGVtczogNgo+ICsgICAgICAgICAgbWF4
SXRlbXM6IDYKPiArICAgICAgICBjbG9jay1uYW1lczoKPiArICAgICAgICAgIGl0ZW1zOgo+ICsg
ICAgICAgICAgICAtIGNvbnN0OiBpZmFjZSAjIFBDSWUgdG8gU3lzTk9DIEJJVSBjbG9jawo+ICsg
ICAgICAgICAgICAtIGNvbnN0OiBheGlfbSAjIEFYSSBNYXN0ZXIgY2xvY2sKPiArICAgICAgICAg
ICAgLSBjb25zdDogYXhpX3MgIyBBWEkgU2xhdmUgY2xvY2sKPiArICAgICAgICAgICAgLSBjb25z
dDogYWhiICMgQUhCIGNsb2NrCj4gKyAgICAgICAgICAgIC0gY29uc3Q6IGF1eCAjIEF1eGlsaWFy
eSBjbG9jawo+ICsgICAgICAgICAgICAtIGNvbnN0OiBheGlfYnJpZGdlICMgQVhJIGJyaWRnZSBj
bG9jawo+ICsgICAgICAgIHJlc2V0czoKPiArICAgICAgICAgIG1pbkl0ZW1zOiA4Cj4gKyAgICAg
ICAgICBtYXhJdGVtczogOAo+ICsgICAgICAgIHJlc2V0LW5hbWVzOgo+ICsgICAgICAgICAgaXRl
bXM6Cj4gKyAgICAgICAgICAgIC0gY29uc3Q6IHBpcGUgIyBQSVBFIHJlc2V0Cj4gKyAgICAgICAg
ICAgIC0gY29uc3Q6IHNsZWVwICMgU2xlZXAgcmVzZXQKPiArICAgICAgICAgICAgLSBjb25zdDog
c3RpY2t5ICMgQ29yZSBzdGlja3kgcmVzZXQKPiArICAgICAgICAgICAgLSBjb25zdDogYXhpX20g
IyBBWEkgbWFzdGVyIHJlc2V0Cj4gKyAgICAgICAgICAgIC0gY29uc3Q6IGF4aV9zICMgQVhJIHNs
YXZlIHJlc2V0Cj4gKyAgICAgICAgICAgIC0gY29uc3Q6IGFoYiAjIEFIQiByZXNldAo+ICsgICAg
ICAgICAgICAtIGNvbnN0OiBheGlfbV9zdGlja3kgIyBBWEkgbWFzdGVyIHN0aWNreSByZXNldAo+
ICsgICAgICAgICAgICAtIGNvbnN0OiBheGlfc19zdGlja3kgIyBBWEkgc2xhdmUgc3RpY2t5IHJl
c2V0Cj4gKyAgICAgICAgaW50ZXJydXB0czoKPiArICAgICAgICAgIG1pbkl0ZW1zOiA5Cj4gKyAg
ICAgICAgICBtYXhJdGVtczogOQo+ICsgICAgICAgIGludGVycnVwdC1uYW1lczoKPiArICAgICAg
ICAgIGl0ZW1zOgo+ICsgICAgICAgICAgICAtIGNvbnN0OiBtc2kwCj4gKyAgICAgICAgICAgIC0g
Y29uc3Q6IG1zaTEKPiArICAgICAgICAgICAgLSBjb25zdDogbXNpMgo+ICsgICAgICAgICAgICAt
IGNvbnN0OiBtc2kzCj4gKyAgICAgICAgICAgIC0gY29uc3Q6IG1zaTQKPiArICAgICAgICAgICAg
LSBjb25zdDogbXNpNQo+ICsgICAgICAgICAgICAtIGNvbnN0OiBtc2k2Cj4gKyAgICAgICAgICAg
IC0gY29uc3Q6IG1zaTcKPiArICAgICAgICAgICAgLSBjb25zdDogZ2xvYmFsCj4gKwo+ICAgIC0g
aWY6Cj4gICAgICAgIHByb3BlcnRpZXM6Cj4gICAgICAgICAgY29tcGF0aWJsZToKPiBAQCAtNTY0
LDYgKzYxMyw3IEBAIGFsbE9mOgo+ICAgICAgICAgICAgICAgIGVudW06Cj4gICAgICAgICAgICAg
ICAgICAtIHFjb20scGNpZS1hcHE4MDY0Cj4gICAgICAgICAgICAgICAgICAtIHFjb20scGNpZS1p
cHE0MDE5Cj4gKyAgICAgICAgICAgICAgICAtIHFjb20scGNpZS1pcHE1MDE4Cj4gICAgICAgICAg
ICAgICAgICAtIHFjb20scGNpZS1pcHE4MDY0Cj4gICAgICAgICAgICAgICAgICAtIHFjb20scGNp
ZS1pcHE4MDY0djIKPiAgICAgICAgICAgICAgICAgIC0gcWNvbSxwY2llLWlwcTgwNzQKPiAKPiAt
LSAKPiAyLjQ4LjEKPiAKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k
4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK

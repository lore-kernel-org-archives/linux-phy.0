Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 019E6C36002
	for <linux-phy@archiver.kernel.org>; Mon, 24 Mar 2025 07:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=laiVc0MjD7v1Z9E6whVwxgYmMFeeM8/Hp9b7SShnKw8=; b=1dBu3VIMXQTjph
	htAnBd9pm176NkDZk5ZUuykCEJ7OzlPacv1Z9105RIjPrImksGFekzEaVWR3xNptqYE0ibtO5y+/G
	PzvXEg7Wa4zVD+rdl87usQ6mDx+98eRT6u3IUkdjSNFyqXNCvEv2NuojmK3ksj2RPVrAqZMZPI9P+
	lwljCPaW7v0ujDaIfnpV9DKnGOov7Bl/qigzhgQym4ckObBwR1Y6esZLjuxkSIPCaNcjhjRLDx84S
	5bSRTA6qntSEpxKMSwmbUw5PvO4PX/rcEMJWE0vCA36JtJ44I3vnw9H9FzqFTOkgs3dCGD1lqtC9Q
	8PetiJPTK3LmU5AtXh+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twcfu-00000002Vl1-3CX9;
	Mon, 24 Mar 2025 07:56:46 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twcfs-00000002VkW-3B5D
	for linux-phy@lists.infradead.org;
	Mon, 24 Mar 2025 07:56:45 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-2243803b776so63969135ad.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Mar 2025 00:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742803004; x=1743407804; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ucovPPIZbMhnnUBesgcZ12lDzz3S1j4cMh54lyRVHno=;
        b=N2pZNXLAs1iSU+XN6EloFm30ns22Pl0pE1u4UsRaUhZ4FPB4Kb3vfIf1HJC07aVEAP
         8Pi6M+2I5XsYf+y32mQZ5pAYvyXAsPM57hZn+CcpJze6vQ/B2IhwMEsVuwaR3bXPEHpt
         WAoz6ndHW9mqNaN5v0F87LpvsAsxAjUQk7+EKXjkwnLf76suYuq/wblWDzHc+eZ3U8pn
         jBeOmCwfhKl1Zv3d70teuCQGamAVTndy91C0XbzGW2i+cFQfmGHyjd1yL353bPqh3LuW
         CkvvNW2i/MgaiMU5nRCxeT2xPFlm2X/zYwZ8AaRoMcVg84H8atSomqHqCtxn79w8rjGs
         EsTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742803004; x=1743407804;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ucovPPIZbMhnnUBesgcZ12lDzz3S1j4cMh54lyRVHno=;
        b=xS4pCl9OC9oVwPkWDzVHyrJ1mB+5N7u2SFuZl1Zg+SUxcr5jzMQi7Tftay12eUMW+N
         Qh/tU2NTJ8mAhjXtFTUoX40r4Z9kxIcV9udp6fOKhWrIs31t0s+bbOOqVZvmb6893k2m
         WnGJDw9oFx5pD3ix7KBGshi8MTquvZTnJJo0DJm/s2eRAy0ljJqC1aRA5ximyb0JGkbs
         WAfC3NHOl6K5y17VPafZYXnVZyIKQk6bQJG9U65Utjc31Rjw8aXUnaGwHsIDucGPxMqX
         dMw5qOz+8WyNfLPqSX0WcuV76WbTvkvTdRVkR72hqGONL2OJHWZSbSn3gV71KXrnoX8K
         kYyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjJMNq3RlHXaIhIGskcR3QJ2TTgEIHsdehzsdctsdjJp+b9+a1JoYl8SEzF0jzPFM9DYX+DGIGj3E=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0YSjlKf972u803auaCgqXpm7q1apDzFd1ib7Ggg0zuCxRj9zb
	XGSbIxaDNdCQZn5q5xH04aoo9pflQQ9PinPDBPxHHY02qnb/u2YETL+1uUoNiA==
X-Gm-Gg: ASbGncu2QR46XHUXqVtNO0TRMwYmlyKvMBaswwwShkcUIdpG4yH1qNNgEnkf57CoUZU
	218SW/WO+NE8x+/b0ksN8PGnjwtr0YUjujt/e0rmdq5ofCsMNIsdCYyGF671yp+ba4RSURHtayQ
	sQvBEIkKb1Qad23+s6Y0P+iTrj0EZ+/lXMUtA63Znh5lQ5PJ0umf6OAHelHWRzep9zdxWmmh2L3
	yK46EQbr8GdrqNPSSgET0dExFm7+JmAgRcDusQtP3rFW3zHnJUsbuWrzY4m0+0hGgKUsHFlySME
	NRZaxtwvQ8UDTSiUXAK5kL+Hj7qGF38ygwLIBNKW2gyJ+fjrRTtvuRtBa3f9NzIIis0=
X-Google-Smtp-Source: AGHT+IEgOcZILiKswo2zmluq8e4AdwrjHS4ZAEDQVeVb9xSziePjjxKkYCCAw6aWXllXLfOHqJMcCQ==
X-Received: by 2002:a05:6a21:168e:b0:1f5:709d:e0cb with SMTP id adf61e73a8af0-1fe43437231mr20411659637.39.1742803003855;
        Mon, 24 Mar 2025 00:56:43 -0700 (PDT)
Received: from thinkpad ([220.158.156.91])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7390611c950sm7425477b3a.104.2025.03.24.00.56.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 00:56:43 -0700 (PDT)
Date: Mon, 24 Mar 2025 13:26:36 +0530
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
	20250317100029.881286-2-quic_varada@quicinc.com, Sricharan R <quic_srichara@quicinc.com>
Subject: Re: [PATCH v6 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
Message-ID: <a4n3w62bg6x2iux4z7enu3po56hr5pcavjfmvtzdcwv2w4ptrr@ssvfdrltfg5y>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-5-b7d659a76205@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250321-ipq5018-pcie-v6-5-b7d659a76205@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_005644_800683_612BFCEB 
X-CRM114-Status: GOOD (  15.35  )
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

T24gRnJpLCBNYXIgMjEsIDIwMjUgYXQgMDQ6MTQ6NDNQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxl
bSB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4gRnJvbTogTml0aGVlc2ggU2VrYXIgPHF1aWNfbnNla2Fy
QHF1aWNpbmMuY29tPgo+IAo+IEFkZCBwaHkgYW5kIGNvbnRyb2xsZXIgbm9kZXMgZm9yIGEgMi1s
YW5lIEdlbjIgYW5kCgpDb250cm9sbGVyIGlzIEdlbiAzIGNhcGFibGUgYnV0IHlvdSBhcmUgbGlt
aXRpbmcgaXQgdG8gR2VuIDIuCgo+IGEgMS1sYW5lIEdlbjIgUENJZSBidXMuIElQUTUwMTggaGFz
IDggTVNJIFNQSSBpbnRlcnJ1cHRzIGFuZAo+IG9uZSBnbG9iYWwgaW50ZXJydXB0Lgo+IAo+IFNp
Z25lZC1vZmYtYnk6IE5pdGhlZXNoIFNla2FyIDxxdWljX25zZWthckBxdWljaW5jLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBTcmljaGFyYW4gUiA8cXVpY19zcmljaGFyYUBxdWljaW5jLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBHZW9yZ2UgTW91c3NhbGVtIDxnZW9yZ2UubW91c3NhbGVtQG91dGxvb2su
Y29tPgoKT25lIGNvbW1lbnQgYmVsb3cuIFdpdGggdGhhdCBhZGRyZXNzZWQsCgpSZXZpZXdlZC1i
eTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9y
Zz4KCj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE1MDE4LmR0c2kgfCAyMzQg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjMy
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcWNvbS9pcHE1MDE4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
aXBxNTAxOC5kdHNpCj4gaW5kZXggODkxNGYyZWYwYmM0Li5kMDgwMzRiNTdlODAgMTAwNjQ0Cj4g
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUwMTguZHRzaQo+ICsrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE1MDE4LmR0c2kKPiBAQCAtMTQ3LDYgKzE0Nyw0MCBAQCB1
c2JwaHkwOiBwaHlANWIwMDAgewo+ICAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAJCX07Cj4g
IAo+ICsJCXBjaWUxX3BoeTogcGh5QDdlMDAwewo+ICsJCQljb21wYXRpYmxlID0gInFjb20saXBx
NTAxOC11bmlwaHktcGNpZS1waHkiOwo+ICsJCQlyZWcgPSA8MHgwMDA3ZTAwMCAweDgwMD47Cj4g
Kwo+ICsJCQljbG9ja3MgPSA8JmdjYyBHQ0NfUENJRTFfUElQRV9DTEs+Owo+ICsKPiArCQkJcmVz
ZXRzID0gPCZnY2MgR0NDX1BDSUUxX1BIWV9CQ1I+LAo+ICsJCQkJIDwmZ2NjIEdDQ19QQ0lFMVBI
WV9QSFlfQkNSPjsKPiArCj4gKwkJCSNjbG9jay1jZWxscyA9IDwwPjsKPiArCQkJI3BoeS1jZWxs
cyA9IDwwPjsKPiArCj4gKwkJCW51bS1sYW5lcyA9IDwxPjsKPiArCj4gKwkJCXN0YXR1cyA9ICJk
aXNhYmxlZCI7Cj4gKwkJfTsKPiArCj4gKwkJcGNpZTBfcGh5OiBwaHlAODYwMDB7Cj4gKwkJCWNv
bXBhdGlibGUgPSAicWNvbSxpcHE1MDE4LXVuaXBoeS1wY2llLXBoeSI7Cj4gKwkJCXJlZyA9IDww
eDAwMDg2MDAwIDB4ODAwPjsKPiArCj4gKwkJCWNsb2NrcyA9IDwmZ2NjIEdDQ19QQ0lFMF9QSVBF
X0NMSz47Cj4gKwo+ICsJCQlyZXNldHMgPSA8JmdjYyBHQ0NfUENJRTBfUEhZX0JDUj4sCj4gKwkJ
CQkgPCZnY2MgR0NDX1BDSUUwUEhZX1BIWV9CQ1I+Owo+ICsKPiArCQkJI2Nsb2NrLWNlbGxzID0g
PDA+Owo+ICsJCQkjcGh5LWNlbGxzID0gPDA+Owo+ICsKPiArCQkJbnVtLWxhbmVzID0gPDI+Owo+
ICsKPiArCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiArCQl9Owo+ICsKPiAgCQl0bG1tOiBwaW5j
dHJsQDEwMDAwMDAgewo+ICAJCQljb21wYXRpYmxlID0gInFjb20saXBxNTAxOC10bG1tIjsKPiAg
CQkJcmVnID0gPDB4MDEwMDAwMDAgMHgzMDAwMDA+Owo+IEBAIC0xNzAsOCArMjA0LDggQEAgZ2Nj
OiBjbG9jay1jb250cm9sbGVyQDE4MDAwMDAgewo+ICAJCQlyZWcgPSA8MHgwMTgwMDAwMCAweDgw
MDAwPjsKPiAgCQkJY2xvY2tzID0gPCZ4b19ib2FyZF9jbGs+LAo+ICAJCQkJIDwmc2xlZXBfY2xr
PiwKPiAtCQkJCSA8MD4sCj4gLQkJCQkgPDA+LAo+ICsJCQkJIDwmcGNpZTBfcGh5PiwKPiArCQkJ
CSA8JnBjaWUxX3BoeT4sCj4gIAkJCQkgPDA+LAo+ICAJCQkJIDwwPiwKPiAgCQkJCSA8MD4sCj4g
QEAgLTM4Nyw2ICs0MjEsMjAyIEBAIGZyYW1lQGIxMjgwMDAgewo+ICAJCQkJc3RhdHVzID0gImRp
c2FibGVkIjsKPiAgCQkJfTsKPiAgCQl9Owo+ICsKPiArCQlwY2llMTogcGNpZUA4MDAwMDAwMCB7
Cj4gKwkJCWNvbXBhdGlibGUgPSAicWNvbSxwY2llLWlwcTUwMTgiOwo+ICsJCQlyZWcgPSA8MHg4
MDAwMDAwMCAweGYxZD4sCj4gKwkJCSAgICAgIDwweDgwMDAwZjIwIDB4YTg+LAo+ICsJCQkgICAg
ICA8MHg4MDAwMTAwMCAweDEwMDA+LAo+ICsJCQkgICAgICA8MHgwMDA3ODAwMCAweDMwMDA+LAo+
ICsJCQkgICAgICA8MHg4MDEwMDAwMCAweDEwMDA+LAo+ICsJCQkgICAgICA8MHgwMDA3YjAwMCAw
eDEwMDA+Owo+ICsJCQlyZWctbmFtZXMgPSAiZGJpIiwKPiArCQkJCSAgICAiZWxiaSIsCj4gKwkJ
CQkgICAgImF0dSIsCj4gKwkJCQkgICAgInBhcmYiLAo+ICsJCQkJICAgICJjb25maWciLAo+ICsJ
CQkJICAgICJtaGkiOwo+ICsJCQlkZXZpY2VfdHlwZSA9ICJwY2kiOwo+ICsJCQlsaW51eCxwY2kt
ZG9tYWluID0gPDA+Owo+ICsJCQlidXMtcmFuZ2UgPSA8MHgwMCAweGZmPjsKPiArCQkJbnVtLWxh
bmVzID0gPDE+Owo+ICsJCQltYXgtbGluay1zcGVlZCA9IDwyPjsKClRoaXMgc3RpbGwgbmVlZHMg
c29tZSBqdXN0aWZpY2F0aW9uLiBJZiBRY29tIGZvbGtzIGRpZG4ndCByZXBseSwgYXRsZWFzdCBt
b3ZlCnRoaXMgdG8gYm9hcmQgZHRzIHdpdGggYSBjb21tZW50IHNheWluZyB0aGF0IHRoZSBsaW5r
IGlzIG5vdCBjb21pbmcgdXAgd2l0aApHZW4zLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j
4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

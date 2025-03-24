Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99674C36002
	for <linux-phy@archiver.kernel.org>; Mon, 24 Mar 2025 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IC3FgpGMM7b6R2NlOXvw1uimFNdd4cUbAX/XmKXEQmk=; b=r1QvLwWzd5Qa7s
	gD/Y1jhhCLYbsxlp9aUqavIDhhnT3081u7n7zp+pmLgdGZ1ClKsTgLObHUq9vCCUNhjFVfZTMhPk9
	hBawNhdTaoP0Vd9ggxb3EUDfI0j5JvmorHM2IHrrdnlmaH31DRPb0K9T/7eYUZUtacj8HvENPPqrF
	ujWxdzVR04Ue50OU0oKo2pQJ66vw5C0f6+ss4L882JA8an6KPOJqIWxfRzR2k4YZl3lRSaEO4ucSk
	/n9MB3GKrOdC5vd6VQuuu7N6+9ILUTG2hZE6wdJGjn9onjG319xgU/4JrKAV4r+U9slc1gV2kxiAb
	dyjhycoc7qylJN9gkCUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twchd-00000002W1B-1Z2P;
	Mon, 24 Mar 2025 07:58:33 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twchb-00000002W0V-1cvv
	for linux-phy@lists.infradead.org;
	Mon, 24 Mar 2025 07:58:32 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-3032aa1b764so1719273a91.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Mar 2025 00:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742803110; x=1743407910; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bp4ddfe4Vf8vx05tu7Jns3bwbMSMgp5+mmtijBmV9ns=;
        b=MxKhZ1tDHEHsS9Blp5qPP4aXpsKCioSJL6w6k2CoG/5hFeOED7Li3uo7LZ7+OIrwwB
         AY87h99GXQ+/rmWIHH17Nz9irbQRWANsHibAEBMV6YsrqEkETBgM9yctBk76nW0Rn/Wp
         Z/EaoLaM7sVP7ywKGQHgzdNzei6qCJKoolZZ3cIUEIiRk1yHY+YLFf1VgA/98RqyfYaW
         /nzGRsFwqa+KOQ0r0mrw47LP8TVOCBIe0jcw56h8T78ALRwzdG82DVUMKCkNfiOUBbOu
         FcBntcs71bvrbWEYqWeASDTvUUcZO6uM6vNx6zHuE4SVVPON7qAgX8zProIYu/FTfgrF
         5s/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742803110; x=1743407910;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bp4ddfe4Vf8vx05tu7Jns3bwbMSMgp5+mmtijBmV9ns=;
        b=K2xstdkziFFS63wzfnun9LbBMaB/L4Zq85TAO12bT6X8NIIUvkVdrYGgtqiNfg2p5T
         WVRlMXqxKZlTu00cYEd+/YSrvvq2N/ws0fRi0I/3mIU+9JFjfZ6XnfSRSulaB63f8rmT
         PVNc41qVbD05/BJHjGfHbwLQtnPyDilaZ/4MNwrtpEVcfALw1h3amGATpXwRoSvPH3Hd
         6j5muXlSCcV5pi/RqOdPGgHgm6PK9Tr+2CFPLhEXw+AtyOI2EY9l5qC5nJt6DbNmESYQ
         H2ay7hGfepyCFMRT4MSoiJHREVLyZVugGVKlQfsa2b0SUUGQ5/X6fw5KsR20tNc7LlZH
         qysg==
X-Forwarded-Encrypted: i=1; AJvYcCUNrHTXiH+mKZqzP5yrWMR9vdPL7Go1SldHupYOlU004+ck3mWxPbMeo/kpA7eNKciakKyOHHlt2Ic=@lists.infradead.org
X-Gm-Message-State: AOJu0YyqcGYqHA4JAD131VI21G6SNx6tmgtB56y8qF/vKVbz+msEpDGR
	g2S7nsmQbRyI+lg2ffUtLUBuBHDs1Rrx0o6NbeR9qOa149nOUPZzVbyDWo2nvA==
X-Gm-Gg: ASbGncujnF2BTlqkHS5hoTn9/XMuaHyvqARUdhdRcBkHUcz5Il6uwjnD3lazJSOVU/1
	+NvFYrmN7IX/hkf2PJIn9x3e1Cq9z4Yu9gSTJBl+oj77RCgwVEjbCBITBLrbndxPysmIMAYQ/Pr
	y4FAd8Ad69OeF7XN2LMaT4oQUWRYuaezTh8R9Hfas/PiYXj06oxBidyd71p1Ksoc0p8AN6tLLEY
	HwrtGoo0ZiBTpWdLh8bfzivVhJaKc0SIz03/CsoQhhimIuBWgOyMM3mrRxmcTv5UukbGC49BFEV
	KNNTOvXJqkgrb32qHyDRYU+xZPm4xkMXK4TZI92yYSHgj4LFmPdH4hTY
X-Google-Smtp-Source: AGHT+IFaEEcjY/AaCnl8GGjUdE+Ran73MpkIfwVAljqCouhk2XWNRH1ssUSjHwSPezwzAjIBoXcYhw==
X-Received: by 2002:a17:90b:2647:b0:2ee:d7d3:3019 with SMTP id 98e67ed59e1d1-3030fe95343mr23608416a91.12.1742803110159;
        Mon, 24 Mar 2025 00:58:30 -0700 (PDT)
Received: from thinkpad ([220.158.156.91])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-301bf576bf0sm11434777a91.7.2025.03.24.00.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 00:58:29 -0700 (PDT)
Date: Mon, 24 Mar 2025 13:28:21 +0530
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
Subject: Re: [PATCH v6 6/6] arm64: dts: qcom: ipq5018: Enable PCIe
Message-ID: <bn74cvfyprkwdw3moh3qqwxjnoa4nff7ycm63pqvoe7g5efplj@u7t3tmmbqapk>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-6-b7d659a76205@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250321-ipq5018-pcie-v6-6-b7d659a76205@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_005831_428932_BE5240D5 
X-CRM114-Status: GOOD (  14.30  )
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

T24gRnJpLCBNYXIgMjEsIDIwMjUgYXQgMDQ6MTQ6NDRQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxl
bSB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4gRnJvbTogTml0aGVlc2ggU2VrYXIgPHF1aWNfbnNla2Fy
QHF1aWNpbmMuY29tPgo+IAo+IEVuYWJsZSB0aGUgUENJZSBjb250cm9sbGVyIGFuZCBQSFkgbm9k
ZXMgZm9yIFJEUCA0MzItYzIuCj4gCj4gU2lnbmVkLW9mZi1ieTogTml0aGVlc2ggU2VrYXIgPHF1
aWNfbnNla2FyQHF1aWNpbmMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFNyaWNoYXJhbiBSYW1hYmFk
aHJhbiA8cXVpY19zcmljaGFyYUBxdWljaW5jLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBHZW9yZ2Ug
TW91c3NhbGVtIDxnZW9yZ2UubW91c3NhbGVtQG91dGxvb2suY29tPgoKQWNrZWQtYnk6IE1hbml2
YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+CgotIE1h
bmkKCj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE1MDE4LXJkcDQzMi1jMi5k
dHMgfCA0MCArKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNDAg
aW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
aXBxNTAxOC1yZHA0MzItYzIuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUwMTgt
cmRwNDMyLWMyLmR0cwo+IGluZGV4IDg0NjBiNTM4ZWI2YS4uNDNkZWY5NWU5Mjc1IDEwMDY0NAo+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE1MDE4LXJkcDQzMi1jMi5kdHMKPiAr
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBxNTAxOC1yZHA0MzItYzIuZHRzCj4gQEAg
LTksNiArOSw4IEBACj4gIAo+ICAjaW5jbHVkZSAiaXBxNTAxOC5kdHNpIgo+ICAKPiArI2luY2x1
ZGUgPGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPgo+ICsKPiAgLyB7Cj4gIAltb2RlbCA9ICJRdWFs
Y29tbSBUZWNobm9sb2dpZXMsIEluYy4gSVBRNTAxOC9BUC1SRFA0MzIuMS1DMiI7Cj4gIAljb21w
YXRpYmxlID0gInFjb20saXBxNTAxOC1yZHA0MzItYzIiLCAicWNvbSxpcHE1MDE4IjsKPiBAQCAt
MjgsNiArMzAsMjAgQEAgJmJsc3AxX3VhcnQxIHsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAgfTsK
PiAgCj4gKyZwY2llMCB7Cj4gKwlwaW5jdHJsLTAgPSA8JnBjaWUwX2RlZmF1bHQ+Owo+ICsJcGlu
Y3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArCj4gKwlwZXJzdC1ncGlvcyA9IDwmdGxtbSAxNSBH
UElPX0FDVElWRV9MT1c+Owo+ICsJd2FrZS1ncGlvcyA9IDwmdGxtbSAxNiBHUElPX0FDVElWRV9M
T1c+Owo+ICsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4gKyZwY2llMF9waHkgewo+
ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiAgJnNkaGNfMSB7Cj4gIAlwaW5jdHJsLTAg
PSA8JnNkY19kZWZhdWx0X3N0YXRlPjsKPiAgCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4g
QEAgLTQzLDYgKzU5LDMwIEBAICZzbGVlcF9jbGsgewo+ICB9Owo+ICAKPiAgJnRsbW0gewo+ICsJ
cGNpZTBfZGVmYXVsdDogcGNpZTAtZGVmYXVsdC1zdGF0ZSB7Cj4gKwkJY2xrcmVxLW4tcGlucyB7
Cj4gKwkJCXBpbnMgPSAiZ3BpbzE0IjsKPiArCQkJZnVuY3Rpb24gPSAicGNpZTBfY2xrIjsKPiAr
CQkJZHJpdmUtc3RyZW5ndGggPSA8OD47Cj4gKwkJCWJpYXMtcHVsbC11cDsKPiArCQl9Owo+ICsK
PiArCQlwZXJzdC1uLXBpbnMgewo+ICsJCQlwaW5zID0gImdwaW8xNSI7Cj4gKwkJCWZ1bmN0aW9u
ID0gImdwaW8iOwo+ICsJCQlkcml2ZS1zdHJlbmd0aCA9IDw4PjsKPiArCQkJYmlhcy1wdWxsLXVw
Owo+ICsJCQlvdXRwdXQtbG93Owo+ICsJCX07Cj4gKwo+ICsJCXdha2Utbi1waW5zIHsKPiArCQkJ
cGlucyA9ICJncGlvMTYiOwo+ICsJCQlmdW5jdGlvbiA9ICJwY2llMF93YWtlIjsKPiArCQkJZHJp
dmUtc3RyZW5ndGggPSA8OD47Cj4gKwkJCWJpYXMtcHVsbC11cDsKPiArCQl9Owo+ICsJfTsKPiAr
Cj4gIAlzZGNfZGVmYXVsdF9zdGF0ZTogc2RjLWRlZmF1bHQtc3RhdGUgewo+ICAJCWNsay1waW5z
IHsKPiAgCQkJcGlucyA9ICJncGlvOSI7Cj4gCj4gLS0gCj4gMi40OC4xCj4gCj4gCgotLSAK4K6u
4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

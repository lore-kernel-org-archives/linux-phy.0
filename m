Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4605FC02192
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 16:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CueShzIRO58RlqXagqLF5QpvncU8A/RArVcmuS6ktoo=; b=X1n3b196+DJusp
	9yB/OgLGNwLogZHr0/IncYvvLOLalJwk4C886Zrx/by1jqoBIlFCGaPN7tnw3jl6tqABw41XiZZYc
	GG1NHhpNIAKFmBqWBafw6w05ngdQ1lS3iHo9JkmC3pky1sTMVoock35Z7DVB5Jtwbvy+cmEfa20XF
	HM1mJylWD4ZMjFqkCKCwc8wmshvAo8MbWloxDnSqy6lPgMY6g8hDASSAdd+X0rcK+NtsL+sOF6DVG
	0oN0HYW1L3o2np1BuZ3s1bCa1102t9nyedE0uJ3zhjAIJ4/bm0/Y0/MbBNRC6kpafGzqVRhke8g1A
	wMxLy7lrUAGDDoHhcz9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tezI4-0000000FzD3-3kws;
	Mon, 03 Feb 2025 16:27:16 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tezI3-0000000FzCi-2PuM
	for linux-phy@lists.infradead.org;
	Mon, 03 Feb 2025 16:27:16 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-21c2f1b610dso106405655ad.0
        for <linux-phy@lists.infradead.org>; Mon, 03 Feb 2025 08:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738600035; x=1739204835; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JBg6gLdWMQpS46gItbVGZbM0/ir52n7XG2Rtnoa7Rhs=;
        b=xLO+rsLtMQ0X3+0sQFNzJUj+r3LQnHn+dG2CIVGtfH4qdkVSvcuAcYmtxNrbsupbdb
         qiU14k6C4LMbHGFpSmsFoCRjDzsxyTVAw75Cg/uz1nEFXLM+Xc09fVfs5HwvpltgkJSA
         YilMr+4liuSHp4/2vWIxO6XY+DK47xoRkxdpMCeZuwyu78+t3QC1NlJ/ZT9OB3vpfVXI
         G4h06WUMaX/wr5xMmYU78ikAHdl5m/IE268slzsIvK/lpCIPZFB8XORNoT7ofOhp2ao/
         LyvSf8KWUjebN+khH8hb8sCdDAuyj1LBBKz2sk3nBPZoabl9CvP/pvjx7MguEZ0YRQlO
         Lv4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738600035; x=1739204835;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JBg6gLdWMQpS46gItbVGZbM0/ir52n7XG2Rtnoa7Rhs=;
        b=HlDN7unb6aNL2Z07AoBzLWjGRlNpxElZq3pifDI5j9zzuJsS1NGPTzx5Y1fDq+XplD
         6gimqR0KPXrRT5dECMyqsC0FSCKFEnLJI7zyniE86kvkqzJ/m6xBQ7WsIFsG82r+yA73
         qPO0jwXIHPNyNvoNxKbKve4qb1KQEEYM5J5zJDrwlDLkWu4ZWnjdn1S9DtXQ8S3/ahR6
         svMQxZe+meubO4y4Wt4aLoZmo8DAINielm3u4B4Gap92ApMrBr0YgOudDd6qpemmaIYH
         CA6jwz52gfjzV+CjzO1vXDyzSgb+6bDeEK28bcqAas2N37/DgBn1UFXUDu95JenXOJ7J
         9mig==
X-Forwarded-Encrypted: i=1; AJvYcCW9Kr4TEsuGpuSzgCLqD0xF3CNDzyj84YxrMpVDUSX2MzTQTLYgDphdon6hO9iFpGpSL+nj45R3vz8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzxh+f0FSlLVjWKtUYE8zWjCwtntuj3FzNTEtCZlFwd8Q9L6pHc
	md/rUtLOUKw8f8hSAhdqO3j574L/ARGEk2N0ICWBSjd/8a4lzPRyNoQ+MkUbZw==
X-Gm-Gg: ASbGncsP6Jz5TuS6iaavI7i1XJpRDBqpm4qK91skudgD51mnk3HA1PYj1Eh5CbRetXY
	czdg8DsB4aBYvDSWS6sXnXSZyxdJRXPjbdAtZ1tsoimf+N3lazW0hVQVc49bBKJf4QMHwXITEmR
	5MlPMxCpncAajcAgDg/ONzIcBJprdnXCa7hogCref7boCXs+rlT+D+4CMdnSYGeRfG66Henw2l4
	DQs1LWMu+ZUevHT8Y7TGVUR1IsPEkRe0H6/1Up7QluzVUgu3O1f3U6o8622KbWSuJYtfykiWz1P
	1v8VXr8H518czeJey8dBs73feg==
X-Google-Smtp-Source: AGHT+IHuJ1CvxSLBHcjRE6fl9BYtU6v4T+2YCHXV92PHfDZwQle0B9YOYr0Awsg0UnhM953ytkygeg==
X-Received: by 2002:a17:902:7c93:b0:21b:bc95:e8d4 with SMTP id d9443c01a7336-21dd7dcb1e7mr291187365ad.35.1738600033231;
        Mon, 03 Feb 2025 08:27:13 -0800 (PST)
Received: from thinkpad ([120.60.129.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21de31f7927sm78526795ad.99.2025.02.03.08.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 08:27:12 -0800 (PST)
Date: Mon, 3 Feb 2025 21:57:06 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, p.zabel@pengutronix.de,
	dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Praveenkumar I <quic_ipkumar@quicinc.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v7 7/7] arm64: dts: qcom: ipq5332-rdp441: Enable PCIe
 phys and controllers
Message-ID: <20250203162706.bz2xtpyuvylgzfdw@thinkpad>
References: <20250122063411.3503097-1-quic_varada@quicinc.com>
 <20250122063411.3503097-8-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250122063411.3503097-8-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_082715_623162_E79D9B06 
X-CRM114-Status: GOOD (  14.90  )
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

T24gV2VkLCBKYW4gMjIsIDIwMjUgYXQgMTI6MDQ6MTFQTSArMDUzMCwgVmFyYWRhcmFqYW4gTmFy
YXlhbmFuIHdyb3RlOgo+IEZyb206IFByYXZlZW5rdW1hciBJIDxxdWljX2lwa3VtYXJAcXVpY2lu
Yy5jb20+Cj4gCj4gRW5hYmxlIHRoZSBQQ0llIGNvbnRyb2xsZXIgYW5kIFBIWSBub2RlcyBmb3Ig
UkRQIDQ0MS4KPiAKPiBSZXZpZXdlZC1ieTogS29ucmFkIER5YmNpbyA8a29ucmFkLmR5YmNpb0Bv
c3MucXVhbGNvbW0uY29tPgo+IFNpZ25lZC1vZmYtYnk6IFByYXZlZW5rdW1hciBJIDxxdWljX2lw
a3VtYXJAcXVpY2luYy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVmFyYWRhcmFqYW4gTmFyYXlhbmFu
IDxxdWljX3ZhcmFkYUBxdWljaW5jLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhh
c2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgoKLSBNYW5pCgo+IC0tLQo+
IHY1OiBBZGQgJ1Jldmlld2VkLWJ5OiBLb25yYWQgRHliY2lvJwo+IAo+IHY0OiBGaXggbm9kZXMg
c29ydCBvcmRlcgo+ICAgICBVc2UgcHJvcGVydHktbiBmb2xsb3dlZCBieSBwcm9wZXJ0eS1uYW1l
cwo+IAo+IHYzOiBSZW9yZGVyIG5vZGVzIGFscGhhYmV0aWNhbGx5Cj4gICAgIEZpeCBjb21taXQg
c3ViamVjdAo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBxNTMzMi1yZHA0NDEu
ZHRzIHwgNzYgKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA3NiBpbnNl
cnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9pcHE1
MzMyLXJkcDQ0MS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBxNTMzMi1yZHA0NDEu
ZHRzCj4gaW5kZXggODQ2NDEzODE3ZTlhLi43OWVjNzdjZmU1NTIgMTAwNjQ0Cj4gLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUzMzItcmRwNDQxLmR0cwo+ICsrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcWNvbS9pcHE1MzMyLXJkcDQ0MS5kdHMKPiBAQCAtMzIsNiArMzIsMzQgQEAg
JnNkaGMgewo+ICAJc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+ICAKPiArJnBjaWUwIHsKPiArCXBp
bmN0cmwtMCA9IDwmcGNpZTBfZGVmYXVsdD47Cj4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQi
Owo+ICsKPiArCXBlcnN0LWdwaW9zID0gPCZ0bG1tIDM4IEdQSU9fQUNUSVZFX0xPVz47Cj4gKwl3
YWtlLWdwaW9zID0gPCZ0bG1tIDM5IEdQSU9fQUNUSVZFX0xPVz47Cj4gKwo+ICsJc3RhdHVzID0g
Im9rYXkiOwo+ICt9Owo+ICsKPiArJnBjaWUwX3BoeSB7Cj4gKwlzdGF0dXMgPSAib2theSI7Cj4g
K307Cj4gKwo+ICsmcGNpZTEgewo+ICsJcGluY3RybC0wID0gPCZwY2llMV9kZWZhdWx0PjsKPiAr
CXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwo+ICsJcGVyc3QtZ3Bpb3MgPSA8JnRsbW0g
NDcgR1BJT19BQ1RJVkVfTE9XPjsKPiArCXdha2UtZ3Bpb3MgPSA8JnRsbW0gNDggR1BJT19BQ1RJ
VkVfTE9XPjsKPiArCj4gKwlzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwo+ICsmcGNpZTFfcGh5
IHsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4gICZ0bG1tIHsKPiAgCWkyY18xX3Bp
bnM6IGkyYy0xLXN0YXRlIHsKPiAgCQlwaW5zID0gImdwaW8yOSIsICJncGlvMzAiOwo+IEBAIC00
MCw2ICs2OCw1NCBAQCBpMmNfMV9waW5zOiBpMmMtMS1zdGF0ZSB7Cj4gIAkJYmlhcy1wdWxsLXVw
Owo+ICAJfTsKPiAgCj4gKwlwY2llMF9kZWZhdWx0OiBwY2llMC1kZWZhdWx0LXN0YXRlIHsKPiAr
CQljbGtyZXEtbi1waW5zIHsKPiArCQkJcGlucyA9ICJncGlvMzciOwo+ICsJCQlmdW5jdGlvbiA9
ICJwY2llMF9jbGsiOwo+ICsJCQlkcml2ZS1zdHJlbmd0aCA9IDw4PjsKPiArCQkJYmlhcy1wdWxs
LXVwOwo+ICsJCX07Cj4gKwo+ICsJCXBlcnN0LW4tcGlucyB7Cj4gKwkJCXBpbnMgPSAiZ3BpbzM4
IjsKPiArCQkJZnVuY3Rpb24gPSAiZ3BpbyI7Cj4gKwkJCWRyaXZlLXN0cmVuZ3RoID0gPDg+Owo+
ICsJCQliaWFzLXB1bGwtdXA7Cj4gKwkJCW91dHB1dC1sb3c7Cj4gKwkJfTsKPiArCj4gKwkJd2Fr
ZS1uLXBpbnMgewo+ICsJCQlwaW5zID0gImdwaW8zOSI7Cj4gKwkJCWZ1bmN0aW9uID0gInBjaWUw
X3dha2UiOwo+ICsJCQlkcml2ZS1zdHJlbmd0aCA9IDw4PjsKPiArCQkJYmlhcy1wdWxsLXVwOwo+
ICsJCX07Cj4gKwl9Owo+ICsKPiArCXBjaWUxX2RlZmF1bHQ6IHBjaWUxLWRlZmF1bHQtc3RhdGUg
ewo+ICsJCWNsa3JlcS1uLXBpbnMgewo+ICsJCQlwaW5zID0gImdwaW80NiI7Cj4gKwkJCWZ1bmN0
aW9uID0gInBjaWUxX2NsayI7Cj4gKwkJCWRyaXZlLXN0cmVuZ3RoID0gPDg+Owo+ICsJCQliaWFz
LXB1bGwtdXA7Cj4gKwkJfTsKPiArCj4gKwkJcGVyc3Qtbi1waW5zIHsKPiArCQkJcGlucyA9ICJn
cGlvNDciOwo+ICsJCQlmdW5jdGlvbiA9ICJncGlvIjsKPiArCQkJZHJpdmUtc3RyZW5ndGggPSA8
OD47Cj4gKwkJCWJpYXMtcHVsbC11cDsKPiArCQkJb3V0cHV0LWxvdzsKPiArCQl9Owo+ICsKPiAr
CQl3YWtlLW4tcGlucyB7Cj4gKwkJCXBpbnMgPSAiZ3BpbzQ4IjsKPiArCQkJZnVuY3Rpb24gPSAi
cGNpZTFfd2FrZSI7Cj4gKwkJCWRyaXZlLXN0cmVuZ3RoID0gPDg+Owo+ICsJCQliaWFzLXB1bGwt
dXA7Cj4gKwkJfTsKPiArCX07Cj4gKwo+ICAJc2RjX2RlZmF1bHRfc3RhdGU6IHNkYy1kZWZhdWx0
LXN0YXRlIHsKPiAgCQljbGstcGlucyB7Cj4gIAkJCXBpbnMgPSAiZ3BpbzEzIjsKPiAtLSAKPiAy
LjM0LjEKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/
4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK

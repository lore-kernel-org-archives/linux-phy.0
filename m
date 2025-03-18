Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D19BC282EC
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 05:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oh8ZDi03p6E5ZVqBWz55xRourSMXXp+Pg82gWe+dWmE=; b=4AAuVm/NlXMMqQ
	zbJx8Tjg017/lEWZjdXRZsizOYy9Nz3/X53xsCDHnr/Fav5sASRVZJTHmXLk2CfUViJbAy9cLtJ1A
	BzcZvE1fR2S6fY9q6a+F5SRzE1PhzL2p3nrjaAFjHUtqrtZzzHgkWW6W103g7ewlKJpvcaGsAeLyP
	aFCbQcauoK7mEQXhKyz3nSb2XVxmGHygX7g8tBo4jgg1J8A70L2dDwhgNnMk+73kRrTDaTV0JbCpd
	lzDJ/5V2WX/q1+Xbt/yMExyE6S45FJ6niwE5ePLn2X83B1EngTVy97FuWgRjC9bQKE1HzmnCfA8es
	yZNnQppQG15gywlN2H5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuPVU-00000004iOy-01LW;
	Tue, 18 Mar 2025 05:28:52 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuPVR-00000004iOC-1Bnp
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 05:28:50 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2232aead377so115581385ad.0
        for <linux-phy@lists.infradead.org>; Mon, 17 Mar 2025 22:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742275728; x=1742880528; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VRqPHtspOPLV5fzzZRBSafJQnspJw3fNNbyVspVhWQ4=;
        b=g8nsZLUSXwl2HZSg9iAmKB9VewzQFujscI05sK36LR30LFZpHJvM5Fpn8lfGLFDnLF
         S+OPhFHm7Jios508S5B73OoBFs/Q/rJYQMl9/wGkP+pChc6p0/Z7ZH2H6kds/X5Iyrdm
         mdIY/ZMrMskB6Orc2b6dNB0JAJyPDfM25DiA/WzQ2q3Nt0O0ZWgMegFg/dJW1oyQOi21
         sTjyRAgoJDo0TEy9ssHAX68GgolvirfTjS0AMnq+1a94/4SBCKOAy75fyhR/nsherByS
         A+D54yVjLCzo3ARhy69LrK+agm2laNP+iuFkKFtCz+/gQncFz5jDdCzi0v4Y/95KNjXa
         /Dag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742275728; x=1742880528;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VRqPHtspOPLV5fzzZRBSafJQnspJw3fNNbyVspVhWQ4=;
        b=vl5HBFnahiH+Dx3ncoovwA+bevFMWdShDy8JzuTTrEKfq0JKLITl2XPFrN54QGJ9br
         2/bHNhM3JryF/7lP9jFXDnhVlYKP5aOnOpzlVl029PoS3eLYl0JP8SxA7bmn+nHML7Kb
         WRU9fReW+7jnurbvNcMx5OVsuFQ/SVxT3/io227ap+6BDYDACV+ssTG2XqnklPXvmwO2
         5ATnTRloZwZBmUVV7Ie1EbevX1vnCB4Hy3vEy8xk401lfZLMQ9x6sXbh2DSqUgyb5yo2
         hWTknN4+4aZ7aYDFCPtjUgdu0PPeUC2KCAl4LSNBLkY9WM4Q0D5XRSYVwgM9XZHCdsaU
         VpDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWL9pBHRge6l2mYnFINKK2sV9dalPDLVICyUg+MmGD8divsCZcLAPejxiBcaRWchaUjwt7XgPtadWQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9bBtW0oDTwLzJmwB/QATp68q0uaeG69jBD+eCz9v3M5oNxSzz
	NeMxLCLoQFkG5ANgL2bCrOmeGgYX4/TTMd5f32R3SSTL1BfkF044Hmkm0coIIwPBZ4gXmpgbJ4g
	=
X-Gm-Gg: ASbGncugMJ5n4fdILHu73pT1RR6z3suIMa7UdWVfmfxR7OV66OR3mAh8UtKtfBGjw5F
	An3J+PtAz78pXPKBW7rQ/3NHl9fJixovz0YPOGUKwyvdb+v8TiInjtrP8FM+xKlIzNDVPkQWyu2
	ytxJK5k3GGOD5RqbM25JcKj/ZiohZoTuVXTlmMwmzWB5fCkFoapcE/alFVnnENHPZUEdKAdW23N
	0CzDcFm2uYDxTGo6Uwnn7m5E9LWqp9nklBMT5WGwoQSsWPu1IW6AjfyzA8JMTY4foNp2rHUIFKM
	tSsY4R9ZxGDesRD7dZwUGqpkzQJm8SDauCbLXOBdx4kZmtXs9KHMrgDYENZajdLiAFk=
X-Google-Smtp-Source: AGHT+IFG5Sp+xZKN+EExsVukhBXmwQgVJv7iaqIRzDwSj/npYT8oIBOs7InzmHh3m7smIDKT/Xzh+w==
X-Received: by 2002:a17:902:d4c6:b0:223:58ea:6fdf with SMTP id d9443c01a7336-225e0a7a005mr192432975ad.28.1742275728222;
        Mon, 17 Mar 2025 22:28:48 -0700 (PDT)
Received: from thinkpad ([120.56.195.170])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22637cf43ffsm2371755ad.129.2025.03.17.22.28.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 22:28:47 -0700 (PDT)
Date: Tue, 18 Mar 2025 10:58:41 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	Nitin Rawat <quic_nitirawa@quicinc.com>,
	Manish Pandey <quic_mapa@quicinc.com>
Subject: Re: [PATCH v2 4/6] arm64: dts: qcom: sm8750: Add UFS nodes for
 SM8750 SoC
Message-ID: <20250318052841.bdiqbzxrpzwqf7h7@thinkpad>
References: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
 <20250310-sm8750_ufs_master-v2-4-0dfdd6823161@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250310-sm8750_ufs_master-v2-4-0dfdd6823161@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_222849_324209_E35602EF 
X-CRM114-Status: GOOD (  14.31  )
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

T24gTW9uLCBNYXIgMTAsIDIwMjUgYXQgMDI6MTI6MzJQTSAtMDcwMCwgTWVsb2R5IE9sdmVyYSB3
cm90ZToKPiBGcm9tOiBOaXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3YUBxdWljaW5jLmNvbT4KPiAK
PiBBZGQgVUZTIGhvc3QgY29udHJvbGxlciBhbmQgUEhZIG5vZGVzIGZvciBTTTg3NTAgU29DLgo+
IAo+IENvLWRldmVsb3BlZC1ieTogTWFuaXNoIFBhbmRleSA8cXVpY19tYXBhQHF1aWNpbmMuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IE1hbmlzaCBQYW5kZXkgPHF1aWNfbWFwYUBxdWljaW5jLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBOaXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3YUBxdWljaW5jLmNvbT4K
PiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtODc1MC5kdHNpIHwgMTA2ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMDYgaW5z
ZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc204
NzUwLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc204NzUwLmR0c2kKPiBpbmRleCA1
MjllNGU0ZTFkMGVhOWU5OWU4OWMxMmQwNzJlMjdjNDUwOTFmMjllLi43MmY2OWU3MTdjZTA0OWJi
MGM1MjRhYTM4OWQ4MzdlY2QxNDU5NTM1IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcWNvbS9zbTg3NTAuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zbTg3
NTAuZHRzaQo+IEBAIC0xMyw2ICsxMyw3IEBACj4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9wb3dl
ci9xY29tLHJwbWhwZC5oPgo+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcG93ZXIvcWNvbS1ycG1w
ZC5oPgo+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3Mvc29jL3Fjb20scnBtaC1yc2MuaD4KPiArI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPgoKU29ydCBpbmNsdWRlcyBhbHBoYWJldGlj
YWxseS4KCj4gIAo+ICAvIHsKPiAgCWludGVycnVwdC1wYXJlbnQgPSA8JmludGM+Owo+IEBAIC0y
Njc1LDYgKzI2NzYsMTExIEBAIGdpY19pdHM6IG1zaS1jb250cm9sbGVyQDE2MDQwMDAwIHsKPiAg
CQkJfTsKPiAgCQl9Owo+ICAKPiArCQl1ZnNfbWVtX3BoeTogcGh5QDFkODAwMDAgewo+ICsJCQlj
b21wYXRpYmxlID0gInFjb20sc204NzUwLXFtcC11ZnMtcGh5IjsKPiArCQkJcmVnID0gPDAgMHgw
MWQ4MDAwMCAwIDB4MjAwMD47CgpVc2UgMHgwIGZvciBjb25zaXN0ZW5jeS4KCj4gKwo+ICsJCQlj
bG9ja3MgPSA8JnJwbWhjYyBSUE1IX0NYT19DTEs+LAo+ICsJCQkJPCZnY2MgR0NDX1VGU19QSFlf
UEhZX0FVWF9DTEs+LAo+ICsJCQkJIDwmdGNzcmNjIFRDU1JfVUZTX0NMS1JFRl9FTj47CgpQbGVh
c2UgYWxpZ24gdGhlIGNsb2Nrcy4KCj4gKwo+ICsJCQljbG9jay1uYW1lcyA9ICJyZWYiLAo+ICsJ
CQkJICAgICAgInJlZl9hdXgiLAo+ICsJCQkJICAgICAgInFyZWYiOwo+ICsKPiArCQkJcmVzZXRz
ID0gPCZ1ZnNfbWVtX2hjIDA+Owo+ICsJCQlyZXNldC1uYW1lcyA9ICJ1ZnNwaHkiOwo+ICsKPiAr
CQkJcG93ZXItZG9tYWlucyA9IDwmZ2NjIEdDQ19VRlNfTUVNX1BIWV9HRFNDPjsKPiArCj4gKwkJ
CSNjbG9jay1jZWxscyA9IDwxPjsKPiArCQkJI3BoeS1jZWxscyA9IDwwPjsKPiArCj4gKwkJCXN0
YXR1cyA9ICJkaXNhYmxlZCI7Cj4gKwkJCX07CgpIZXJlIHRvby4KCj4gKwo+ICsJCXVmc19tZW1f
aGM6IHVmc0AxZDg0MDAwIHsKPiArCQkJY29tcGF0aWJsZSA9ICJxY29tLHNtODc1MC11ZnNoYyIs
Cj4gKwkJCQkgICAgICJxY29tLHVmc2hjIiwKPiArCQkJCSAgICAgImplZGVjLHVmcy0yLjAiOwoK
Q29tcGF0aWJsZXMgY2FuIGJlIG9yZGVyZWQgaW4gdGhlIHNhbWUgbGluZS4KCj4gKwkJCXJlZyA9
IDwwIDB4MDFkODQwMDAgMCAweDMwMDA+OwoKMHgwCgo+ICsKPiArCQkJaW50ZXJydXB0cyA9IDxH
SUNfU1BJIDI2NSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPiArCj4gKwkJCWNsb2NrcyA9IDwmZ2Nj
IEdDQ19VRlNfUEhZX0FYSV9DTEs+LAo+ICsJCQkJIDwmZ2NjIEdDQ19BR0dSRV9VRlNfUEhZX0FY
SV9DTEs+LAo+ICsJCQkJIDwmZ2NjIEdDQ19VRlNfUEhZX0FIQl9DTEs+LAo+ICsJCQkJIDwmZ2Nj
IEdDQ19VRlNfUEhZX1VOSVBST19DT1JFX0NMSz4sCj4gKwkJCQkgPCZycG1oY2MgUlBNSF9MTl9C
Ql9DTEszPiwKPiArCQkJCSA8JmdjYyBHQ0NfVUZTX1BIWV9UWF9TWU1CT0xfMF9DTEs+LAo+ICsJ
CQkJIDwmZ2NjIEdDQ19VRlNfUEhZX1JYX1NZTUJPTF8wX0NMSz4sCj4gKwkJCQkgPCZnY2MgR0ND
X1VGU19QSFlfUlhfU1lNQk9MXzFfQ0xLPjsKPiArCQkJY2xvY2stbmFtZXMgPSAiY29yZV9jbGsi
LAo+ICsJCQkJICAgICAgImJ1c19hZ2dyX2NsayIsCj4gKwkJCQkgICAgICAiaWZhY2VfY2xrIiwK
PiArCQkJCSAgICAgICJjb3JlX2Nsa191bmlwcm8iLAo+ICsJCQkJICAgICAgInJlZl9jbGsiLAo+
ICsJCQkJICAgICAgInR4X2xhbmUwX3N5bmNfY2xrIiwKPiArCQkJCSAgICAgICJyeF9sYW5lMF9z
eW5jX2NsayIsCj4gKwkJCQkgICAgICAicnhfbGFuZTFfc3luY19jbGsiOwo+ICsKPiArCQkJb3Bl
cmF0aW5nLXBvaW50cy12MiA9IDwmdWZzX29wcF90YWJsZT47Cj4gKwo+ICsJCQlyZXNldHMgPSA8
JmdjYyBHQ0NfVUZTX1BIWV9CQ1I+Owo+ICsJCQlyZXNldC1uYW1lcyA9ICJyc3QiOwo+ICsKPiAr
CQkJaW50ZXJjb25uZWN0cyA9IDwmYWdncmUxX25vYyBNQVNURVJfVUZTX01FTSBRQ09NX0lDQ19U
QUdfQUxXQVlTCj4gKwkJCQkJICZtY192aXJ0IFNMQVZFX0VCSTEgUUNPTV9JQ0NfVEFHX0FMV0FZ
Uz4sCj4gKwkJCQkJPCZnZW1fbm9jIE1BU1RFUl9BUFBTU19QUk9DIFFDT01fSUNDX1RBR19BQ1RJ
VkVfT05MWQo+ICsJCQkJCSAmY29uZmlnX25vYyBTTEFWRV9VRlNfTUVNX0NGRyBRQ09NX0lDQ19U
QUdfQUNUSVZFX09OTFk+Owo+ICsJCQlpbnRlcmNvbm5lY3QtbmFtZXMgPSAidWZzLWRkciIsCj4g
KwkJCQkJICAgICAiY3B1LXVmcyI7Cj4gKwo+ICsJCQlwb3dlci1kb21haW5zID0gPCZnY2MgR0ND
X1VGU19QSFlfR0RTQz47Cj4gKwkJCXJlcXVpcmVkLW9wcHMgPSA8JnJwbWhwZF9vcHBfbm9tPjsK
PiArCj4gKwkJCWlvbW11cyA9IDwmYXBwc19zbW11IDB4NjAgMD47Cj4gKwkJCWRtYS1jb2hlcmVu
dDsKPiArCj4gKwkJCWxhbmVzLXBlci1kaXJlY3Rpb24gPSA8Mj47Cj4gKwo+ICsJCQlwaHlzID0g
PCZ1ZnNfbWVtX3BoeT47Cj4gKwkJCXBoeS1uYW1lcyA9ICJ1ZnNwaHkiOwo+ICsKPiArCQkJI3Jl
c2V0LWNlbGxzID0gPDE+Owo+ICsKPiArCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiArCgpFeHRy
YSBuZXdsaW5lCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k
4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK

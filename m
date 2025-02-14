Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12D67C02198
	for <linux-phy@archiver.kernel.org>; Fri, 14 Feb 2025 06:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DrvUV/B6+CBLCIOoO9czFD/CC4PkJdkwUZkL4+isOw=; b=wS152Xjvqj2ByK
	wG9wFZPrk7QiEaq4BVTvSVRfCE9uZeyJVkRNVNp4R+DNOwq9GywR3O6WgjRZoTi0wczLcSUeryoko
	3+mI1JpTegqXTkYanTPDanIjZGqaMGw4rTNxulVx5EIW48N8SYZ5w4Qb4BGTlSM/Uy0TEDf6L77eM
	VczwULw7TYEZoxQwv10Bs/KXmrX4PqDRHPRRsWhtN7xm4CLJK9bm9rL68MOTzKiC++cDEPUFFYa3t
	ekEOBg2GPE7BqeuUwqv43GdNpJyMCkBARSwoQx5sjoaIjnsoXL+XttL0Wtd0ojJhkyW2KCKdd32cO
	5+IcUFbuwwuxhkQSMPCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tipXg-0000000DrwP-17rq;
	Fri, 14 Feb 2025 06:51:16 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tipWn-0000000Drpn-2u8Q
	for linux-phy@lists.infradead.org;
	Fri, 14 Feb 2025 06:50:22 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-2fc0d44a876so2518757a91.3
        for <linux-phy@lists.infradead.org>; Thu, 13 Feb 2025 22:50:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739515820; x=1740120620; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=u/bwpmhibqCSWXsfxMuekBQiCAQCaSoqpsC6Q1WLM/g=;
        b=JuQmpvrwIUyuRfEnUbT3EndEog0DZYEi46ZKMAVZllN70RilruOX2yUGMb5IW5S9Hh
         CUX+DYX3sXJgb9mu7v8iZOWLEoApgnNt0I/eQ7zGY/pTAqskvzO10HghjO9Ev4hLbtpO
         jfGG7o8eFnI0uWMSWenicZPXaK9JNcgh9MCM3DvwMewepcGpUVDmfvHzw/5fFThu7Ye6
         79Tlma0jf9DNsdcAmOW3LXASxv2/FxDaptg/hSWZDinnD6bAvFiS1EnLmlJ+IALFmKyi
         1x9hEk5CM9IJo9X0Zz079bMJW3VDkIdu673t1W1mKdbYj0KxR9YI2Rg8hIFSFXPHS+NV
         zQXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739515820; x=1740120620;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u/bwpmhibqCSWXsfxMuekBQiCAQCaSoqpsC6Q1WLM/g=;
        b=L3x75327yDpRWG8leHgsWa/yOpjbQbRgW4VKipN+9kVse+zuPNbeUnsWtFlTFfR8y4
         0KC+EKzHrd7e8LPiBNiiX4NFdsoGFod+Nf69U6Oj/xFKlau1/TJ8Ingr7RTzLNBzE2rk
         qJofDiT1EEpKLr96v/NaImy/GyDbktQjyvnI1yfrg6s66R13/hQM4sZaLIH+AWHoPIdY
         Ndsos9FQIfNZFtLf2QhBc6xxc/KKCDm18YZNhPfDrJ7xYHY2kngfvGbg4/OeY1K+yime
         FGlq34bkAHYom5yPofXqVZ6q9yy3r0yvUS2mMIM3VExrAy3+FmJOMtYj7ew1n2jnylV4
         0Kmw==
X-Forwarded-Encrypted: i=1; AJvYcCWmbmVLJj/L24MhrowecwirNMjYgLf56q2YMu280kccxP4FIRFPZ2xpz5t13+I808iChUc7GAH8Lcc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwFEdFwG5+I0P9hovuzcGok68qRvC3J5GRjOh3NrRbNGCJJXRlM
	Mu5i9cUkuVwXHGO9o6Cpc1H2WPCtibpw1kOGDz9n4N5ZOl9pJk4MsFNxrKfSFQ==
X-Gm-Gg: ASbGncub+R8/v0YZWVlTMiONQU3k0ULLxPaeN2B4y/VSvgtBqkU48WAMQU6WCUWN1Xq
	lzwJWHroPa7/PmGxpXkn89wq0o2JYsoFDeSh0fkvcXUGD6R76uIBouNSMYu79EWmV1eAp3poh1X
	OtE7aawbwopV+eIF4tN9GGBeYv0DpkKJZFcvRr0PonT7MjzoJT57sWTEvDH9o/MnDFEKx8Cyqsw
	XRxg1yd1AnlS36Y+hHbg9sSF6DIhBCrW0m9jkpOn5qn04GpOMnEE5KRVoFoIOXSATri0ue9y9x9
	u7Z3nAarTu4jw+TxLs6wnl4rlzIIMYk=
X-Google-Smtp-Source: AGHT+IFX6zS1A/v/lAX87GhqlIvEXShQyFVA3goXMvKLoqOPdD6mgLwijiX503q7RrCZ5DU1xqruYQ==
X-Received: by 2002:a17:90b:4d08:b0:2fa:ba3:5455 with SMTP id 98e67ed59e1d1-2fc0ddd3602mr8941895a91.7.1739515820426;
        Thu, 13 Feb 2025 22:50:20 -0800 (PST)
Received: from thinkpad ([2409:40f4:304f:ad8a:8cb7:72db:3a5e:1287])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fc13ac2984sm2376439a91.20.2025.02.13.22.50.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 22:50:19 -0800 (PST)
Date: Fri, 14 Feb 2025 12:20:09 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Nitin Rawat <quic_nitirawa@quicinc.com>,
	Melody Olvera <quic_molvera@quicinc.com>,
	Vinod Koul <vkoul@kernel.org>,
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
	Manish Pandey <quic_mapa@quicinc.com>
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm8750: Add UFS nodes for SM8750
 SoC
Message-ID: <20250214065009.w4rmrbbejnywh6nt@thinkpad>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-4-b3774120eb8c@quicinc.com>
 <vifyx2lcaq3lhani5ovmxxqsknhkx24ggbu7sxnulrxv4gxzsk@bvmk3znm2ivl>
 <be8a4f65-3b36-4740-a4f7-312126cfd547@quicinc.com>
 <ferdaevlfrpf2ewzcct7mqyxltvmt6aaar4fujxfehrmizm3qw@aaroprnpwlxq>
 <354f8710-a5ec-47b5-bcfa-bff75ac3ca71@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <354f8710-a5ec-47b5-bcfa-bff75ac3ca71@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_225021_733296_DF1EBF03 
X-CRM114-Status: GOOD (  29.69  )
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

T24gTW9uLCBGZWIgMTAsIDIwMjUgYXQgMDg6MjA6MjdQTSArMDEwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiA4LjAyLjIwMjUgMTE6MDYgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4g
PiBPbiBTdW4sIEZlYiAwOSwgMjAyNSBhdCAxMjo0Nzo1NkFNICswNTMwLCBOaXRpbiBSYXdhdCB3
cm90ZToKPiA+Pgo+ID4+Cj4gPj4gT24gMS8xNC8yMDI1IDQ6MjIgUE0sIERtaXRyeSBCYXJ5c2hr
b3Ygd3JvdGU6Cj4gPj4+IE9uIE1vbiwgSmFuIDEzLCAyMDI1IGF0IDAxOjQ2OjI3UE0gLTA4MDAs
IE1lbG9keSBPbHZlcmEgd3JvdGU6Cj4gPj4+PiBGcm9tOiBOaXRpbiBSYXdhdCA8cXVpY19uaXRp
cmF3YUBxdWljaW5jLmNvbT4KPiA+Pj4+Cj4gPj4+PiBBZGQgVUZTIGhvc3QgY29udHJvbGxlciBh
bmQgUEhZIG5vZGVzIGZvciBTTTg3NTAgU29DLgo+ID4+Pj4KPiA+Pj4+IENvLWRldmVsb3BlZC1i
eTogTWFuaXNoIFBhbmRleSA8cXVpY19tYXBhQHF1aWNpbmMuY29tPgo+ID4+Pj4gU2lnbmVkLW9m
Zi1ieTogTWFuaXNoIFBhbmRleSA8cXVpY19tYXBhQHF1aWNpbmMuY29tPgo+ID4+Pj4gU2lnbmVk
LW9mZi1ieTogTml0aW4gUmF3YXQgPHF1aWNfbml0aXJhd2FAcXVpY2luYy5jb20+Cj4gPj4+PiBT
aWduZWQtb2ZmLWJ5OiBNZWxvZHkgT2x2ZXJhIDxxdWljX21vbHZlcmFAcXVpY2luYy5jb20+Cj4g
Pj4+PiAtLS0KPiAKPiBbLi4uXQo+IAo+ID4+PiBVc2UgT1BQIHRhYmxlIGluc3RlYWQKPiA+Pgo+
ID4+IEN1cnJlbnRseSwgT1BQIGlzIG5vdCBlbmFibGVkIGluIHRoZSBkZXZpY2UgdHJlZSBmb3Ig
YW55IHByZXZpb3VzIHRhcmdldHMuIEkKPiA+IAo+ID4gRXhjdXNlIG1lPyB1ZnNfb3BwX3RhYmxl
IGlzIHByZXNlbnQgb24gU004MjUwLCBTTTg1NTAgYW5kIFNETTg0NSAoYW5kCj4gPiBRQ1M2MTUp
LiBTbyB0aGlzIGlzIG5vdCBjb3JyZWN0Cj4gPiAKPiA+PiBwbGFuIHRvIGVuYWJsZSBPUFAgaW4g
YSBzZXBhcmF0ZSBwYXRjaCBhdCBhIGxhdGVyIHN0YWdlLiBUaGlzIGlzIGJlY2F1c2UKPiA+PiB0
aGVyZSBpcyBhbiBvbmdvaW5nIHBhdGNoIGluIHRoZSB1cHN0cmVhbSB0aGF0IGFpbXMgdG8gZW5h
YmxlIG11bHRpcGxlLWxldmVsCj4gPj4gY2xvY2sgc2NhbGluZyB1c2luZyBPUFAsIHdoaWNoIG1h
eSBpbnRyb2R1Y2UgY2hhbmdlcyB0byB0aGUgZGV2aWNlIHRyZWUKPiA+PiBlbnRyaWVzLiBUbyBh
dm9pZCBleHRyYSBlZmZvcnRzLCBJIGludGVuZCB0byBlbmFibGUgT1BQIG9uY2UgdGhhdCBwYXRj
aCBpcwo+ID4+IG1lcmdlZC4KPiA+IAo+ID4gV2hhdGV2ZXIgY2hhbmdlcyBhcmUgaW50cm9kdWNl
ZCwgb2xkIERUIG11c3Qgc3RpbGwgY29udGludWUgdG8gd29yay4KPiA+IFRoZXJlIGlzIG5vIHJl
YXNvbiB0byB1c2UgbGVnYWN5IGZyZXEtdGFibGUtaHogaWYgeW91IGNhbiB1c2UgT1BQIHRhYmxl
Lgo+ID4gCj4gPj4gUGxlYXNlIGxldCBtZSBrbm93IGlmIHlvdSBoYXZlIGFueSBjb25jZXJucy4K
PiAKPiBHbyBhaGVhZCB3aXRoIHRoZSBPUFAgdGFibGUuIGZyZXEtdGFibGUtaHogaXMgYW5jaWVu
dCBhbmQgZG9lc24ndCBkZXNjcmliZQo+IGUuZy4gdGhlIHJlcXVpcmVkIFJQTWggbGV2ZWxzIGZv
ciBjb3JlIGNsb2NrIGZyZXF1ZW5jaWVzLgo+IAo+IFlvdSBzaG91bGQgdGhlbiBkcm9wIHJlcXVp
cmVkLW9wcHMgZnJvbSB0aGUgVUZTIG5vZGUuCj4gCj4gPj4+PiArCj4gPj4+PiArCQkJcmVzZXRz
ID0gPCZnY2MgR0NDX1VGU19QSFlfQkNSPjsKPiA+Pj4+ICsJCQlyZXNldC1uYW1lcyA9ICJyc3Qi
Owo+ID4+Pj4gKwo+ID4+Pj4gKwo+ID4+Pj4gKwkJCWludGVyY29ubmVjdHMgPSA8JmFnZ3JlMV9u
b2MgTUFTVEVSX1VGU19NRU0gUUNPTV9JQ0NfVEFHX0FMV0FZUwo+ID4+Pj4gKwkJCQkJICZtY192
aXJ0IFNMQVZFX0VCSTEgUUNPTV9JQ0NfVEFHX0FMV0FZUz4sCj4gPj4+PiArCQkJCQk8JmdlbV9u
b2MgTUFTVEVSX0FQUFNTX1BST0MgUUNPTV9JQ0NfVEFHX0FMV0FZUwo+ID4+Pj4gKwkJCQkJICZj
b25maWdfbm9jIFNMQVZFX1VGU19NRU1fQ0ZHIFFDT01fSUNDX1RBR19BTFdBWVM+Owo+ID4+Pgo+
ID4+PiBTaG91bGRuJ3QgY3B1LXVmcyBiZSBBQ1RJVkVfT05MWT8KPiA+Pgo+ID4+IEFzIHBlciB1
ZnMgZHJpdmVyIGltcGxlbWVudGF0aW9uLCBJY2Mgdm90aW5nIGZyb20gdWZzIGRyaXZlciBpcyBy
ZW1vdmVkIGFzCj4gPj4gcGFydCBvZiBsb3cgcG93ZXIgbW9kZSAoc3VzcGVuZCBvciBjbG9jayBn
YXRpbmcpIGFuZCB2b3RlZCBhZ2FpbiBpbgo+ID4+IHJlc3VtZS91bmdhdGluZyBwYXRoLiBIZW5j
ZSBUQUdfQUxXQVlTIHdpbGwgaGF2ZSBubyBwb3dlciBjb25jZXJuLgo+ID4+IEFsbCBwcmV2aW91
cyB0YXJnZXRzIGhhdmUgdGhlIHNhbWUgY29uZmlndXJhdGlvbi4KPiA+IAo+ID4gYXJjaC9hcm02
NC9ib290L2R0cy9xY29tL3FjczYxNS5kdHNpOiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICZjb25maWdfbm9jIFNMQVZFX1VGU19NRU1fQ0ZHIFFDT01fSUNDX1RBR19BQ1RJVkVf
T05MWT47Cj4gPiAKPiA+IEl0IG1pZ2h0IGJlIGEgbWlzdGFrZSBmb3IgdGhhdCB0YXJnZXQgdGhv
dWdoLiBZb3VyIGV4cGxhbmF0aW9uIHNvdW5kcwo+ID4gZmluZSB0byBtZS4KPiAKPiBMZXQncyB1
c2UgUUNPTV9JQ0NfVEFHX0FDVElWRV9PTkxZIGZvciB0aGUgQ1BVIHBhdGggdG8gY2xlYXIgdXAg
Y29uZnVzaW9uLgo+IAo+IFRvZ2dsaW5nIGl0IGZyb20gdGhlIGRyaXZlciBtYWtlcyBzZW5zZSBm
b3IgVUZTLWlkbGluZy13aGlsZS1DUFVzLWFyZS1vbmxpbmUKPiBjYXNlcyBhbmQgYWNjaWRlbnRh
bGx5IGFsc28gZG9lcyB3aGF0IFJQTWggZG9lcyBpbnRlcm5hbGx5IGluIHRoZSBvdGhlciBjYXNl
Lgo+IAoKU2hvdWxkbid0IGl0IGJlIGFwcGxpZWQgdG8gY29uZmlnIHBhdGggb2YgYWxsIHBlcmlw
aGVyYWxzIHRoZW4/IElmClFDT01fSUNDX1RBR19BQ1RJVkVfT05MWSB0cmFuc2xhdGVzIHRvICdy
ZXNvdXJjZSBnZXR0aW5nIHZvdGVkIG9ubHkgaWYgdGhlIENQVVNTCmlzIGFjdGl2ZScsIHRoZW4g
dGhlIHNhbWUgY29uc3RyYWludCBzaG91bGQgYXBwbHkgdG8gYWxsIHBlcmlwaGVyYWxzLCBpc24n
dCBpdD8KCkknbSBub3Qgc3VyZSB3aG8gaXMgYWNjZXNzaW5nIHRoZSBjb25maWcgcGF0aCBvdGhl
ciB0aGFuIHRoZSBDUFVzLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+N
IOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

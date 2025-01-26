Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88029C02181
	for <linux-phy@archiver.kernel.org>; Sun, 26 Jan 2025 16:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7eJhQUAecVbqxhqJonf2LAqVms9LTe+rKTbgjyQDJ+0=; b=R6YlB9E9PGQkej
	OLjFHw+xdoy3zcWkkPFqjL4VJgShSb9ptbqAfNg+RwHd3q1blRHsmguTGAyJXUVlekeG3KZhdozxn
	anBS3vF+Gvpk5fZL1oyZFAMckkgyj0+ZzxBNYgCPkq7wrFbNme0ODduR6gbyzM7YUc5GGnGtxBn2n
	wEHjfgt3SMz/m3gTygtq2usGEAz+LYRQyxsN8ypErsctD710E3Yw81RN/+rl6fURIz5QbpdTIyb23
	uUDH0H1ygeXmI7+rS1SulchiKbwZ1TWgguzm4zPVJ+gQ4vrwlTMcIKZC64ONjHxjsCXGVvl0Wy3xh
	V4Wz4VQsc/poFacJUCCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tc5Yp-00000000Fos-1IGe;
	Sun, 26 Jan 2025 16:32:35 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tc5Ym-00000000Fnm-1vaZ
	for linux-phy@lists.infradead.org;
	Sun, 26 Jan 2025 16:32:33 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-216281bc30fso85172165ad.0
        for <linux-phy@lists.infradead.org>; Sun, 26 Jan 2025 08:32:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737909151; x=1738513951; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=a2/x7HsME78QH5GItm6A7JG5Awy99g+RmpskMFT3HS4=;
        b=kvq10yoKcDOTw78tdiANfSMpwbDIJpkLVDmbafL8n1vBbcABriBuyFbG0d2P87JbxF
         Rl8llmECTFgn9wSkwxjv/I4OKEzwc8izcV61m855KMUMCxjQOPh5+aAKLbUo1Ic9XfbW
         DEWH7k0PzLOnPEUTi92v5ysa9yve/N6W9SFwxo7QMHlMWyelcLsLnKYsMtrc3OFsAR6m
         F8f65IuMVo9rk3X0OOA4NRxQrL8wgDBk9ojNRRJmP+S9xdetdJ8XD9Z6ByuE0/rH9dgf
         eN71G35owhA2Oy4fsz4sPPXWKXeCui0t3a78OkcikcjypR+xq+IZjfR1TJbGlazKYcJr
         7w+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737909151; x=1738513951;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a2/x7HsME78QH5GItm6A7JG5Awy99g+RmpskMFT3HS4=;
        b=MKmlNUv1s336/+wpMJrMkFKGbbOuAJsYDvIPNvdQUlNbn6w6AJJIN51RajdB+JNTUs
         zx4hPbovwtuqKUhVjpqDqoAC3IDbZ8rdl56Z3djUJQFIpiG1xtPLs24UlVFAMt8efOPM
         rpu8CF+2yu6IORviKBX3lbcruGib1oANPfDKev0Sgco/5IGf/3NidK2eAaufaPcZxtyX
         PCbqvAFwpdCFTedecLoP4qwEJjOczLtPAugOIb3UxfNLxhIthKY4y4HUqPIrZ8khHaX/
         1lr4Sj/8g0m0Cv2BgUNokpE+S4Td3499WAjK9f4QcBM6R7ztJnQw32RpqXRDVwmghdPv
         gjJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXPpuwYQxKYVDhq/6Dq3ZTupiCbFN9X51J4HR+CWkVdZRl8XSHeNYXZCMWSoj1Ff3fNjaOUHV1c98=@lists.infradead.org
X-Gm-Message-State: AOJu0YxuRNGi5OEVtNwgCpim1ZKBKhvsE0G9ad3+VBGtUgCHcOdtb9vx
	Bzo5AQ6Z/oJUDx69z320cHGU9Q7mO20IsZL2Pux5UlKSXVZlSnxdCmCSl14Ybg==
X-Gm-Gg: ASbGnctFIVGRnUmVDUMHCLwBVFaa1yeZyNlQ/4tNdFxCdu+LCwL/kped5DnKlNHhhT9
	fqCuhyUMqghqhhnzDHMGOaS2AhVY0lV+vNGfQVtm0RPgVPV7fimGwXj66Oqw5SWtKvmvZeLZjxI
	istCcOZVrio2Fzd8MhQtM0x7sq4/Y86P10lxV/gwGmnlXnHa6yfjkDJqNOgt5K01POgZDThxrNr
	yiHEZH5Dsj+RMHT1DlZoT/v2AvcwKvi8uqTYvdw4JFNg3l7ckSUn8sZ2IFv6TJTt5cuVSY95pui
	QLcrh2q04+AewA==
X-Google-Smtp-Source: AGHT+IHWZ+glvl+mJSsUGZ6jx+icgq8knmen0W99ZVY+enJ/56I1feVryXG/4cV/Fv3EXPoE5i5z5w==
X-Received: by 2002:a17:902:e747:b0:216:4b1f:499 with SMTP id d9443c01a7336-21c35623dc0mr481233015ad.31.1737909151476;
        Sun, 26 Jan 2025 08:32:31 -0800 (PST)
Received: from thinkpad ([120.60.50.31])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21da414cc20sm47994605ad.165.2025.01.26.08.32.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jan 2025 08:32:31 -0800 (PST)
Date: Sun, 26 Jan 2025 22:02:22 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/6] phy: qcom: qmp-pcie: Add X1P42100 Gen4x4 PHY
Message-ID: <20250126163222.nhcxvr4m2vncwi23@thinkpad>
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
 <20250125-topic-x1p4_dts-v1-3-02659a08b044@oss.qualcomm.com>
 <h6zfhxkc4dj2ueaxipha6prbvmv7pnqglghtjs7vkhlc2s7ndi@vhbj4uojlzwd>
 <A64B8332-78F2-4B76-908E-4119E4A54BAE@linaro.org>
 <cy3x35h4id3gegwb23j6rwblx2pecpw7ffjpri5ddqdd35kzrt@bxdmaumb6bbp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cy3x35h4id3gegwb23j6rwblx2pecpw7ffjpri5ddqdd35kzrt@bxdmaumb6bbp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250126_083232_511527_7B3C251A 
X-CRM114-Status: GOOD (  23.89  )
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

T24gU3VuLCBKYW4gMjYsIDIwMjUgYXQgMDE6Mzk6MDVQTSArMDIwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiBTdW4sIEphbiAyNiwgMjAyNSBhdCAxMjo1OTo1MlBNICswNTMwLCBNYW5p
dmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiAKPiA+IAo+ID4gT24gSmFudWFyeSAyNSwgMjAy
NSAxMTowMDoyMyBQTSBHTVQrMDU6MzAsIERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hr
b3ZAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPiA+T24gU2F0LCBKYW4gMjUsIDIwMjUgYXQgMDQ6MzE6
MTlBTSArMDEwMCwgS29ucmFkIER5YmNpbyB3cm90ZToKPiA+ID4+IEZyb206IEtvbnJhZCBEeWJj
aW8gPGtvbnJhZC5keWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4KPiA+ID4+IAo+ID4gPj4gQWRkIGEg
bmV3LCBjb21tb24gY29uZmlndXJhdGlvbiBmb3IgR2VuNHg0IFY2IFBIWXMgd2l0aG91dCBhbiBp
bml0Cj4gPiA+PiBzZXF1ZW5jZS4KPiA+ID4+IAo+ID4gPj4gVGhlIGJvb3Rsb2FkZXIgY29uZmln
dXJlcyB0aGUgaGFyZHdhcmUgb25jZSBhbmQgdGhlIE9TIHJldGFpbnMgdGhhdAo+ID4gPj4gY29u
ZmlndXJhdGlvbiBieSB1c2luZyB0aGUgTk9DU1IgcmVzZXQgbGluZSAod2hpY2ggZG9lc24ndCBk
cm9wCj4gPiA+PiByZWdpc3RlciBzdGF0ZSBvbiBhc3NlcnQpIGluIHBsYWNlIG9mIHRoZSAiZnVs
bCByZXNldCIgb25lLgo+ID4gPgo+ID4gPkkga25vdyB5b3VyIG9waW5pb24sIGJ1dCBteSAyYyB3
b3VsZCBzdGlsbCBiZSBmb3Igbm90IGRlcGVuZGluZyBvbiB0aGUKPiA+ID5ib290bG9hZGVyLiBJ
IHRoaW5rIHRoYXQgd2FzIHRoZSBydWxlIGZvciBhZ2VzIGZvciBtYW55IHBvc3NpYmxlCj4gPiA+
cmVhc29ucy4KPiA+ID4KPiA+IAo+ID4gQnV0IGlmIExpbnV4IG9yIG90aGVyIE9TIGNhbiB0cnVz
dCB0aGUgYm9vdGxvYWRlciwgdGhlbiBpdCBtYWtlcyBwZXJmZWN0IHNlbnNlIHRvIHJlbHkgb24g
dGhlbS4gT2J2aW91c2x5LCB0aGUgcXVlc3Rpb24gaGVyZSBpcyB0aGF0IG9uIHdoaWNoIHBsYXRm
b3JtcyB0aGlzIGxldmVsIG9mIHRydXN0IHNob3VsZCBiZSBlc3RhYmxpc2hlZC4gQW5kIHRoZSBh
bnN3ZXIgSSBnb3Qgd2FzIHN0YXJ0aW5nIGZyb20gdGhlIGNvbXB1dGUgcGxhdGZvcm1zIChhdGxl
YXN0IFgxRSkuCj4gCj4gSXMgdGhlcmUgYW55IHdheSBob3cgdGhvc2UgdmFsdWVzIGNhbiBiZSBs
b3N0IHRoYXQgd2Ugc3RpbGwgbWlnaHQgd2FudAo+IHRvIHN1cHBvcnQgPyBUaGUgR0RTQyBnb2lu
ZyB0byB0aGUgT0ZGIHN0YXRlPyBTb21lIGRlZXAgc2xlZXAgc3RhdGUgb3IgYQo+IHBvd2VyIGNv
bGxhcHNlPyBBY3R1YWwgc3VzcGVuZCB0byBSQU0gKGluc3RlYWQgb2YgY3VycmVudCBTMklkbGUp
Pwo+IAoKQXMgcGVyIEtvbnJhZCdzIHJlcGx5IHRvIG15IGlkZW50aWNhbCBxdWVzdGlvbiwgUEhZ
IHJlZ2lzdGVyIHN0YXRlIGlzIHN1cHBvc2VkCnRvIGJlIG1haW50YWluZWQgYnkgTVggZG9tYWlu
IGV2ZW4gZHVyaW5nIENYIFBDLiBUaGlzIHNlZW0gdG8gYmUgY2FzZSBvbiBYMUUKYmFzZWQgcGxh
dGZvcm1zIChjb21wdXRlKS4KCj4gPiAKPiA+IFNvIGxldCdzIHRha2UgaXQgb24gYW4gZXhwZXJp
bWVudGFsIGJhc2lzIGFuZCBzZWUgaG93IGl0IGdvZXM/IElmIGF0IGFsbCBhbnkgcHJvYmxlbSBh
cmlzZXMsIHdlIGNhbiBhbHdheXMgcmVzb3J0IHRvIGluIGtlcm5lbCBzZXF1ZW5jZXMuCj4gCj4g
U291bmRzIGxpa2UgYSBnb29kIHByb3Bvc2FsLiBDYW4gcG9zc2libHkgaGF2ZSBhIGNvcnJlc3Bv
bmRpbmcgJ2RvIG5vdAo+IG1lcmdlJyBwYXRjaCB3aXRoIGFjdHVhbCBpbml0IHRhYmxlcz8KPiAK
CkkgZG9uJ3QgZmluZCBpdCByZWFsbHkgcmVxdWlyZWQuIElmIHRoZSBpbml0IHNlcXVlbmNlcyBh
cmUgcmVhbGx5IG5lZWRlZCwgd2UKa25vdyB3aGVyZSB0byBmaW5kIHRoZW0uCgotIE1hbmkKCi0t
IArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

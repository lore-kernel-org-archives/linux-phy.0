Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EA36C0218C
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jan 2025 05:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPGxWETUmReZwsx7K7TWVmTBx5nEDGGh30LNrsXCDR0=; b=VZNce/pKxDvAMe
	I1faB7YqtCvW/Q9Gk7e2Z3oVK1jzH06LhjQUBWNAzgvI/qN9GNOowpplKrqtEvuNNDX/YaThahoE/
	/4ZYzRuYENQd06i52vzZHgR78G2om3AhGsieIJr2YERcXLF5aG24+QZTd+FNtVH563jo7jj3gn+En
	ekS0qvN+Yy9Nvrdy8Deq+nlbXyptv/HWoI727GwfZlkFco0RKi8GjagOz+LJjvSA8t/aK2Fe0esMt
	vOI2CIdDHYnWwH6RaWqr9r4AVvScbxo06ukHCBPlsfbmt0SvYbRI19euzjYBe78VyrloiO+eWZMbX
	7Yo/PBABPsSkyR7UdpFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcHlS-00000001gfo-2D5v;
	Mon, 27 Jan 2025 05:34:26 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcHlQ-00000001gfT-2B40
	for linux-phy@lists.infradead.org;
	Mon, 27 Jan 2025 05:34:25 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-21619108a6bso66283255ad.3
        for <linux-phy@lists.infradead.org>; Sun, 26 Jan 2025 21:34:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737956063; x=1738560863; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LYrDkx9vO5H0pWQvLKCfpCZMVAnzkpiFqaoqphbY3jQ=;
        b=mG58Ew1soAEN4sDA6WUonlVYnV531BXZ+XIK/0iXwbP1L3BvcI1Gnf6wBkiJG6wyXj
         qt9eqEqk0Tqgvp9lY4EYAGno+EWgxn6qx7JYw0iYuotF+b0Rd02XyKHF/b30iMGQ6Y4x
         Q+pu+MXsDzNOfCu3VzM0hokg4LP/MrjLPra+o79jPzgGGAIfYWKnT5tYg6EDn6WdQoCI
         BnkjRmLLT588J31ACnfOZwSRbiDIussOEVoMM+BLKRu7LIsZZBPoVoSHnfauzTSszqeg
         PrrJrEI1dGUAzV8gsXa87uwNgwGX11NDui824GG1hIRxjGIinuLAru+Eykxo+OMSkEUg
         4XNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737956063; x=1738560863;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LYrDkx9vO5H0pWQvLKCfpCZMVAnzkpiFqaoqphbY3jQ=;
        b=CA7Tl+8SXWDvNKr6SyNcxl+ZqedgDI8QD+T9Fd/z9p9fcGokmeKNNFI04gTCOL8JeY
         I7U7GmyU1BRmw+/+JdaYObRO+U1gHJpVQ9xxZR3tsJYeudhMzVK+TjXo2e4YJ8WKAv/Z
         S7n4hiecXUysTTGvbwu+s9B7jbpGB8SULd5k/hDlb6mx3q/8MNY4XgDNzjnhdhu1Ozml
         h4OVYACMUafUh8yLdEQxUVA4Ha39dhU4NeKONf/uMkbRDzMXmxDNGz2tfJUuE+qSVnaX
         +nfoawFgci5MLX3yHk2/oEcDhDHbE28XGqUnnVyE+9H7escmW26vEPiA4XTrfmbzgPX4
         NHPg==
X-Forwarded-Encrypted: i=1; AJvYcCVpFQB5Ut24UmomRAH0NGRgIS5G6FCBm9rewoi7K4GIuWlBjChqXVZszCNquJ3Z1w/rmDFQ/WLHLmQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yykiip/NQJzjEGnTMx/XM39fZ3oCju6UXpq8rrMGLhQbi2NzAi3
	mEXJUm7oVH9XBv4HIKV/xoUksMuOIRRrZMI9qTxzKZTPFgUFjNdNlNj4qI9ryw==
X-Gm-Gg: ASbGncscIY0rMaRvqWsvMDFwFfsdtOkVVLdNnSj2G+225llEw9QOFctK+EObHbyKx70
	ML+R/RiJVCUWa1vnLkmavbROWKROOK/rMFDy4xmv/zjtn2gXsoP53emmOl6A7i+pqY+sEckUej5
	4InQUMqRR2x2ZlywtOKL7l5OSoIogpd5wkeGX+bUO6Hevvj6qTQX849z4r9O71gL4AfDJVVagMe
	/qFFmaXgzG2VsUgLhwWOmr4vKocCd/WZD9h5GcctQLJnvByspLqWPeEZ4G4dTK6MdB5WjEol7Rq
	8sTYpQcarfzOu6A=
X-Google-Smtp-Source: AGHT+IF23Vozd3CbI/d3xt3xyb44QrIyJVEbk6LiztTlg7LAAGEdExVb14y+5qQXhhQn+eUfWxjVDQ==
X-Received: by 2002:a17:902:f28b:b0:215:9bc2:42ec with SMTP id d9443c01a7336-21c356092ecmr385990925ad.47.1737956063641;
        Sun, 26 Jan 2025 21:34:23 -0800 (PST)
Received: from thinkpad ([120.60.139.80])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21da4141baesm54005795ad.144.2025.01.26.21.34.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jan 2025 21:34:23 -0800 (PST)
Date: Mon, 27 Jan 2025 11:04:12 +0530
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
Message-ID: <20250127053412.anbdj6hgwcmkildf@thinkpad>
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
 <20250125-topic-x1p4_dts-v1-3-02659a08b044@oss.qualcomm.com>
 <h6zfhxkc4dj2ueaxipha6prbvmv7pnqglghtjs7vkhlc2s7ndi@vhbj4uojlzwd>
 <A64B8332-78F2-4B76-908E-4119E4A54BAE@linaro.org>
 <cy3x35h4id3gegwb23j6rwblx2pecpw7ffjpri5ddqdd35kzrt@bxdmaumb6bbp>
 <20250126163222.nhcxvr4m2vncwi23@thinkpad>
 <CAA8EJpq-aNVhSc0fTf4zD63VgrzDokR5uvdGiPvecaBHXYtd+Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpq-aNVhSc0fTf4zD63VgrzDokR5uvdGiPvecaBHXYtd+Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250126_213424_565344_696A9824 
X-CRM114-Status: GOOD (  23.11  )
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

T24gU3VuLCBKYW4gMjYsIDIwMjUgYXQgMTE6NDM6MzhQTSArMDIwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiBTdW4sIDI2IEphbiAyMDI1IGF0IDE4OjMyLCBNYW5pdmFubmFuIFNhZGhh
c2l2YW0KPiA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+IHdyb3RlOgo+ID4KPiA+
IE9uIFN1biwgSmFuIDI2LCAyMDI1IGF0IDAxOjM5OjA1UE0gKzAyMDAsIERtaXRyeSBCYXJ5c2hr
b3Ygd3JvdGU6Cj4gPiA+IE9uIFN1biwgSmFuIDI2LCAyMDI1IGF0IDEyOjU5OjUyUE0gKzA1MzAs
IE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gT24g
SmFudWFyeSAyNSwgMjAyNSAxMTowMDoyMyBQTSBHTVQrMDU6MzAsIERtaXRyeSBCYXJ5c2hrb3Yg
PGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPiA+ID4gPk9uIFNhdCwgSmFu
IDI1LCAyMDI1IGF0IDA0OjMxOjE5QU0gKzAxMDAsIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4gPiA+
ID4gPj4gRnJvbTogS29ucmFkIER5YmNpbyA8a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29t
Pgo+ID4gPiA+ID4+Cj4gPiA+ID4gPj4gQWRkIGEgbmV3LCBjb21tb24gY29uZmlndXJhdGlvbiBm
b3IgR2VuNHg0IFY2IFBIWXMgd2l0aG91dCBhbiBpbml0Cj4gPiA+ID4gPj4gc2VxdWVuY2UuCj4g
PiA+ID4gPj4KPiA+ID4gPiA+PiBUaGUgYm9vdGxvYWRlciBjb25maWd1cmVzIHRoZSBoYXJkd2Fy
ZSBvbmNlIGFuZCB0aGUgT1MgcmV0YWlucyB0aGF0Cj4gPiA+ID4gPj4gY29uZmlndXJhdGlvbiBi
eSB1c2luZyB0aGUgTk9DU1IgcmVzZXQgbGluZSAod2hpY2ggZG9lc24ndCBkcm9wCj4gPiA+ID4g
Pj4gcmVnaXN0ZXIgc3RhdGUgb24gYXNzZXJ0KSBpbiBwbGFjZSBvZiB0aGUgImZ1bGwgcmVzZXQi
IG9uZS4KPiA+ID4gPiA+Cj4gPiA+ID4gPkkga25vdyB5b3VyIG9waW5pb24sIGJ1dCBteSAyYyB3
b3VsZCBzdGlsbCBiZSBmb3Igbm90IGRlcGVuZGluZyBvbiB0aGUKPiA+ID4gPiA+Ym9vdGxvYWRl
ci4gSSB0aGluayB0aGF0IHdhcyB0aGUgcnVsZSBmb3IgYWdlcyBmb3IgbWFueSBwb3NzaWJsZQo+
ID4gPiA+ID5yZWFzb25zLgo+ID4gPiA+ID4KPiA+ID4gPgo+ID4gPiA+IEJ1dCBpZiBMaW51eCBv
ciBvdGhlciBPUyBjYW4gdHJ1c3QgdGhlIGJvb3Rsb2FkZXIsIHRoZW4gaXQgbWFrZXMgcGVyZmVj
dCBzZW5zZSB0byByZWx5IG9uIHRoZW0uIE9idmlvdXNseSwgdGhlIHF1ZXN0aW9uIGhlcmUgaXMg
dGhhdCBvbiB3aGljaCBwbGF0Zm9ybXMgdGhpcyBsZXZlbCBvZiB0cnVzdCBzaG91bGQgYmUgZXN0
YWJsaXNoZWQuIEFuZCB0aGUgYW5zd2VyIEkgZ290IHdhcyBzdGFydGluZyBmcm9tIHRoZSBjb21w
dXRlIHBsYXRmb3JtcyAoYXRsZWFzdCBYMUUpLgo+ID4gPgo+ID4gPiBJcyB0aGVyZSBhbnkgd2F5
IGhvdyB0aG9zZSB2YWx1ZXMgY2FuIGJlIGxvc3QgdGhhdCB3ZSBzdGlsbCBtaWdodCB3YW50Cj4g
PiA+IHRvIHN1cHBvcnQgPyBUaGUgR0RTQyBnb2luZyB0byB0aGUgT0ZGIHN0YXRlPyBTb21lIGRl
ZXAgc2xlZXAgc3RhdGUgb3IgYQo+ID4gPiBwb3dlciBjb2xsYXBzZT8gQWN0dWFsIHN1c3BlbmQg
dG8gUkFNIChpbnN0ZWFkIG9mIGN1cnJlbnQgUzJJZGxlKT8KPiA+ID4KPiA+Cj4gPiBBcyBwZXIg
S29ucmFkJ3MgcmVwbHkgdG8gbXkgaWRlbnRpY2FsIHF1ZXN0aW9uLCBQSFkgcmVnaXN0ZXIgc3Rh
dGUgaXMgc3VwcG9zZWQKPiA+IHRvIGJlIG1haW50YWluZWQgYnkgTVggZG9tYWluIGV2ZW4gZHVy
aW5nIENYIFBDLiBUaGlzIHNlZW0gdG8gYmUgY2FzZSBvbiBYMUUKPiA+IGJhc2VkIHBsYXRmb3Jt
cyAoY29tcHV0ZSkuCj4gCj4gSXMgTVggb24gZHVyaW5nIFMyUkFNPwo+IAoKUWNvbSBzYXlzIHRo
YXQgdGhlaXIgY3VycmVudCBzMmlkbGUgaW1wbGVtZW50YXRpb24gaXMgZXF1YWwgdG8gUzJSQU0g
KHdoZW4gQ1ggUEMKaXMgYWNoaWV2ZWQpLiBJbiB0aGF0IHNlbnNlLCB5ZXMsIE1YIGlzIE9OIGR1
cmluZyBTMlJBTS4gRG8gbm90ZSB0aGF0LCBvbgptYWpvcml0eSBvZiB0aGUgcGxhdGZvcm1zLCBN
WCBpcyB0aGUgQU9OIChBbHdheXMgT04pIGRvbWFpbi4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+Cu
teCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

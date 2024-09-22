Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7B92CF9C69
	for <linux-phy@archiver.kernel.org>; Sun, 22 Sep 2024 17:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r68Qcxl8gZrxHcJlc0kN8jM3q8iASM4aIE1T1bL+jac=; b=lX5YhGOnn8YliW
	aqjwI7H0jqeTRMMoToroTItPLwK/t0AlScaduS0/CD0QIokzVaUZlHvUnUyXYQLFit8ts/319+Bgg
	IuED7FU0G8TolsVnQMafjEm7aMV885iLFy6H9z1XPOa1TKx4WYnqI86oLdFrs8m+YbhtFpZUYkhFe
	1Em2OoIHMcxAvoxT40igXpYyWGx7hn7ezCWyoWPZAM09h0BcHOX5stissFl8mxmnk1yUXK8uIENrZ
	rYz/JaniQxfTdVKlJICcths5Rzv/7lOlspNKRGsc6Z3kpnJWSsNlSbpofK3sSMHYOIkas9qXaO031
	ygWDlDHvza7nU3tnXrCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ssQ5V-0000000FTlG-1gbK;
	Sun, 22 Sep 2024 17:09:33 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ssQ5S-0000000FTkV-1XI1
	for linux-phy@lists.infradead.org;
	Sun, 22 Sep 2024 17:09:32 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-42ca6ba750eso22447655e9.0
        for <linux-phy@lists.infradead.org>; Sun, 22 Sep 2024 10:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727024968; x=1727629768; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=L0rIrXzxLzm1RYymakq/5yWW79oFHaAAUNk6PTkjpnU=;
        b=akct5rEjGPjCwFHi2yAxKjn5hQh8R26RrJSXU528duTifyvsibzPMwOusI8zKHQa/z
         LRgkuE/VXlKgcSgYujRbJ2TS9wZdup1DlgZs3ytL2QLiTShhGBzh+diG58LaDQ8ek90F
         wZ4ENJd4s2R9s3u2lAOvzB22wm4jmwbPriuauONpgHxjYjRkGv/hO1md1QbAanjIDWfD
         GX3O8ZaH+97qUK5nEjfj4Xiq3RODa5nHsqLiJp7Ril/1jvY7RT0/vjEKAKjriIsq8A2a
         uDGr8c707VqUkLz3tYIZG66pLusN/aIx2NOLNl4KypvfH4DhfHaR2ybgLdyK3Qs2yoa8
         iupw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727024968; x=1727629768;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L0rIrXzxLzm1RYymakq/5yWW79oFHaAAUNk6PTkjpnU=;
        b=v+11fSP+yKF7ell0KDwhzmnrFZXXGYn4GUdYVDuCBU0WxtS5Cygapq0S2jDU9UsfeR
         G3TRsdcQyxqeitT6Va0jlQvzDYu6eEI8GLFvXtdCc4LrZEIVVkz6Ld3WRE+dSAuVcPmP
         IHfSbZZyYcWcD6p0jstNbXL1yzHUUB2cEbicgRQ0SGYDN4fatS+76paEAcYTYNzg8UI7
         cAYmlERnsNxlUKi3RVzGWvvddI4ox/f8EAB8Bc6PSvwZ6t7pnuRScTHcujFqX1Hu1mve
         gthgWBTWA1PXeX34uET5kLt1jUS4kltpOA0kkjYaQiWPAQkColrCWX1NGTLTgmF2nb2q
         OPvA==
X-Forwarded-Encrypted: i=1; AJvYcCUNBNd0hE2ebfbngSwgbnAWed7HyY1P0d0pq1Gm3/GcT5ebOvAYL3Zo5n9KT/nXXKwxXMk8Pq12mU4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyPFd2p2ZwyAKX1q/EyWaGaH+e9OrP/C2ozrb5mGE7sz2Is9zws
	ZhVlVZjph54IjSZB3ugdDRTsJIgdMqaUtez5OInnmybqFmbuPo1nzNYuZRs+0Q==
X-Google-Smtp-Source: AGHT+IHnnuaHgxDj+rS3r9lgGu134/fQ270qm0dfx4TIlDOErD+D6Q+2jXX//mse26TLw59cSmOqYw==
X-Received: by 2002:a05:600c:1ca2:b0:42c:b8e5:34d5 with SMTP id 5b1f17b1804b1-42e7a9fe8dbmr52478745e9.15.1727024967852;
        Sun, 22 Sep 2024 10:09:27 -0700 (PDT)
Received: from thinkpad (i53873832.versanet.de. [83.135.56.50])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e801d66f6sm55926815e9.29.2024.09.22.10.09.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Sep 2024 10:09:27 -0700 (PDT)
Date: Sun, 22 Sep 2024 19:09:25 +0200
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org,
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com,
	dmitry.baryshkov@linaro.org, kw@linux.com, lpieralisi@kernel.org,
	neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 0/5] Add support for PCIe3 on x1e80100
Message-ID: <20240922170925.qcuwja6oaqlbng5j@thinkpad>
References: <20240913083724.1217691-1-quic_qianyu@quicinc.com>
 <36bd9f69-e263-08a1-af07-45185ea03671@quicinc.com>
 <6f1118eb-89cf-4fd4-a35d-e8b98b0b7a8d@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6f1118eb-89cf-4fd4-a35d-e8b98b0b7a8d@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240922_100930_460604_4FCF252A 
X-CRM114-Status: GOOD (  35.26  )
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

T24gVGh1LCBTZXAgMTksIDIwMjQgYXQgMTA6MTQ6MDZQTSArMDgwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gCj4gT24gOS8xNC8yMDI0IDExOjU5IEFNLCBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IHdy
b3RlOgo+ID4gSGkgcWlhbmcsCj4gPiAKPiA+IEluIG5leHQgc2VyaWVzIGNhbiB5b3UgYWRkIGxv
Z2ljIGluIGNvbnRyb2xsZXIgZHJpdmVyCj4gPiB0byBoYXZlIG5ldyBvcHMgZm9yIHRoaXMgeDFl
ODAxMDAgc2luY2UgdGhpcyBoYXJkd2FyZQo+ID4gaGFzIHNtbXV2MyBzdXBwb3J0IGJ1dCBjdXJy
ZW50bHkgdGhlIG9wc18xXzlfMCBvcHMgd2hpY2gKPiA+IGlzIGJlaW5nIHVzZWQgaGFzIGNvbmZp
Z3VyaW5nIGJkZiB0byBzaWQgdGFibGUgd2hpY2ggd2lsbAo+ID4gYmUgbm90IHByZXNlbnQgZm9y
IHRoaXMgZGV2aWNlcy4KPiA+IAo+IFN1cmUsIGJkZjJzaWQgbWFwIGlzIG5vdCBzdXBwb3J0ZWQg
YW5kIHJlcXVpcmVkIHNpbmNlIHdlIHVzZSBzbW11djMgZm9yCj4gcGNpZSBvbiB4MWU4MDEwMC4g
Q2FuIEkgYWRkIGEgbmV3IG9wcyB3aGljaCBpcyBzYW1lIGFzIG9wc18xXzlfMCBiYXNpY2FsbHkK
PiBhbmQgb25seSBjb25maWdfc2lkIGNhbGxiYWNrIGlzIHJlbW92ZWQuIE9yIGFkZCBhIG5ldyBm
bGFnIHRvIGRldGVybWluZSBpZgo+IHdlIG5lZWQgdG8gY29uZmlnIGJkZjJzaWQgbWFwIGxpa2Ug
bm9fbDBzLgo+IAo+IEhpIE1hbmksIHdoYXQgZG8geW91IHRoaW5rIGFib3V0IHRoaXM/Cj4gCgpH
b29kIHF1ZXN0aW9uLiBJTU8gaXQgaXMgYmV0dGVyIHRvIGFkZCBhIG5ldyBvcHMgZXZlbiB0aG91
Z2ggaXQgZHVwbGljdGVzIHRoZQpjYWxsYmFja3MuIEJlY2F1c2UgdGhlIG5ld2VyIHBsYXRmb3Jt
cyBhcmUgbm90IGdvaW5nIHRvIG5lZWQgdGhpcyBiZGYyc2lkIG1hcAphbnl3YXkuIEJ1dCBpZiB3
ZSBhZGQgYSBmbGFnIHRvIGRldGVybWluZSB0aGF0LCB0aGVuIHRoZSBjaGVjayB3aWxsIGJlY29t
ZSwKCglpZiAocGNpZS0+Y2ZnLT5vcHMtPmNvbmZpZ19zaWQgJiYgIXBjaWUtPmNmZy0+c21tdXYz
KQoJCS4uLgoKQW5kIHRoaXMgZG9lc24ndCBsb29rIGdvb2QgYXMgYm90aCBjb25kaXRpb25zIGFy
ZSBmYWxzZSBmb3IgWDFFODAxMDAgaS5lLiwgaXQKZG9lc24ndCBuZWVkIGJkZjJzaWQgbWFwcGlu
ZyBhbmQgaXQgaXMgYWxzbyBhIFNNTVV2MyBwbGF0Zm9ybS4gTW9yZW92ZXIgaGF2aW5nCnR3byBj
aGVja3MgaGVyZSBtYWtlcyBpdCBjb25mdXNpbmcgYWxzby4KClNvIGxldCdzIHVzZSBhIG5ldyBj
YWxsYmFjay4gQnV0IHBsZWFzZSBtZW50aW9uIHRoZSBJUCByZXZpc2lvbiBpbiBjb21tZW50cyBh
cwpsaWtlIG90aGVyIG9wcy4KCi0gTWFuaQoKPiBUaGFua3MsCj4gUWlhbmcKPiA+IAo+ID4gLSBL
cmlzaG5hIENoYWl0YW55YS4KPiA+IAo+ID4gT24gOS8xMy8yMDI0IDI6MDcgUE0sIFFpYW5nIFl1
IHdyb3RlOgo+ID4gPiBUaGlzIHNlcmllcyBhZGQgc3VwcG9ydCBmb3IgUENJZTMgb24geDFlODAx
MDAuCj4gPiA+IAo+ID4gPiBQQ0llMyBuZWVkcyBhZGRpdGlvbmFsIHNldCBvZiBjbG9ja3MsIHJl
Z3VsYXRvcnMgYW5kIG5ldyBzZXQgb2YgUENJZSBRTVAKPiA+ID4gUEhZIGNvbmZpZ3VyYXRpb24g
Y29tcGFyZSBvdGhlciBQQ0llIGluc3RhbmNlcyBvbiB4MWU4MDEwMC4gSGVuY2UgYWRkCj4gPiA+
IHJlcXVpcmVkIHJlc291cmNlIGNvbmZpZ3VyYXRpb24gYW5kIHVzYWdlIGZvciBQQ0llMy4KPiA+
ID4gCj4gPiA+IHYyLT52MToKPiA+ID4gMS4gU3F1YXNoIFtQQVRDSCAxLzhdLCBbUEFUQ0ggMi84
XSxbUEFUQ0ggMy84XSBpbnRvIG9uZSBwYXRjaCBhbmQKPiA+ID4gbWFrZSB0aGUKPiA+ID4gwqDC
oMKgIGluZGVudGF0aW9uIGNvbnNpc3RlbnQuCj4gPiA+IDIuIFB1dCBkdHMgcGF0Y2ggYXQgdGhl
IGVuZCBvZiB0aGUgcGF0Y2hzZXQuCj4gPiA+IDMuIFB1dCBkdC1iaW5kaW5nIHBhdGNoIGF0IHRo
ZSBmaXJzdCBvZiB0aGUgcGF0Y2hzZXQuCj4gPiA+IDQuIEFkZCBhIG5ldyBwYXRjaCB3aGVyZSBv
cHAtdGFibGUgaXMgYWRkZWQgaW4gZHQtYmluZGluZyB0byBhdm9pZCBkdGJzCj4gPiA+IMKgwqDC
oCBjaGVja2luZyBlcnJvci4KPiA+ID4gNS4gUmVtb3ZlIEdDQ19QQ0lFXzNfQVVYX0NMSywgUlBN
SF9DWE9fQ0xLLCBwdXQgaW4KPiA+ID4gVENTUl9QQ0lFXzhMX0NMS1JFRl9FTgo+ID4gPiDCoMKg
wqAgYXMgcmVmLgo+ID4gPiA2LiBSZW1vdmUgbGFuZV9icm9hZGNhc3RpbmcuCj4gPiA+IDcuIEFk
ZCA2NCBiaXQgYmFyLCBSZW1vdmUgR0NDX1BDSUVfM19QSVBFX0NMS19TUkMsCj4gPiA+IMKgwqDC
oCBHQ0NfQ0ZHX05PQ19QQ0lFX0FOT0NfU09VVEhfQUhCX0NMSyBpcyBjaGFuZ2VkIHRvCj4gPiA+
IMKgwqDCoCBHQ0NfQ0ZHX05PQ19QQ0lFX0FOT0NfTk9SVEhfQUhCX0NMSy4KPiA+ID4gOC4gQWRk
IFJldmlld2VkLWJ5IHRhZy4KPiA+ID4gOS4gUmVtb3ZlIFtQQVRDSCA3LzhdLCBbUEFUQ0ggOC84
XS4KPiA+ID4gCj4gPiA+IFFpYW5nIFl1ICg1KToKPiA+ID4gwqDCoCBkdC1iaW5kaW5nczogcGh5
OiBxY29tLHNjODI4MHhwLXFtcC1wY2llLXBoeTogRG9jdW1lbnQgdGhlIFgxRTgwMTAwCj4gPiA+
IMKgwqDCoMKgIFFNUCBQQ0llIFBIWSBHZW40IHg4Cj4gPiA+IMKgwqAgZHQtYmluZGluZ3M6IFBD
STogcWNvbTogQWRkIE9QUCB0YWJsZSBmb3IgWDFFODAxMDAKPiA+ID4gwqDCoCBwaHk6IHFjb206
IHFtcDogQWRkIHBoeSByZWdpc3RlciBhbmQgY2xrIHNldHRpbmcgZm9yIHgxZTgwMTAwIFBDSWUz
Cj4gPiA+IMKgwqAgY2xrOiBxY29tOiBnY2MteDFlODAxMDA6IEZpeCBoYWx0X2NoZWNrIGZvciBw
aXBlZGl2MiBjbG9ja3MKPiA+ID4gwqDCoCBhcm02NDogZHRzOiBxY29tOiB4MWU4MDEwMDogQWRk
IHN1cHBvcnQgZm9yIFBDSWUzIG9uIHgxZTgwMTAwCj4gPiA+IAo+ID4gPiDCoCAuLi4vYmluZGlu
Z3MvcGNpL3Fjb20scGNpZS14MWU4MDEwMC55YW1swqDCoMKgwqDCoCB8wqDCoCA0ICsKPiA+ID4g
wqAgLi4uL3BoeS9xY29tLHNjODI4MHhwLXFtcC1wY2llLXBoeS55YW1swqDCoMKgwqDCoMKgIHzC
oMKgIDMgKwo+ID4gPiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20veDFlODAxMDAuZHRzacKg
wqDCoMKgwqDCoMKgIHwgMjAyICsrKysrKysrKysrKysrKystCj4gPiA+IMKgIGRyaXZlcnMvY2xr
L3Fjb20vZ2NjLXgxZTgwMTAwLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxMCAr
LQo+ID4gPiDCoCBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jwqDCoMKg
wqDCoCB8IDIxMSArKysrKysrKysrKysrKysrKysKPiA+ID4gwqAgLi4uL3F1YWxjb21tL3BoeS1x
Y29tLXFtcC1wY3MtcGNpZS12Nl8zMC5owqDCoMKgIHzCoCAyNSArKysKPiA+ID4gwqAgZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjcy12Nl8zMC5oIHzCoCAxOSArKwo+ID4gPiDC
oCA3IGZpbGVzIGNoYW5nZWQsIDQ2OCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+ID4g
PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1w
LXBjcy1wY2llLXY2XzMwLmgKPiA+ID4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY3MtdjZfMzAuaAo+ID4gPiAKCi0tIArgrq7grqPgrr/g
rrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

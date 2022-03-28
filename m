Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1662AC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 11:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=POrfMn/YT+ako+oppGUKcbtW2iMEtoQqkcx6tCa0f1s=; b=rgSjWnrLjZ22Ml
	OQsFufe/N/9mvk5LjeySwh05aobl+PvrEHKOi00wJ00oKsabqm2pdoufh1BTq2yE5zmuBla81k54K
	rlKVNyN4JN4Tz6E1/5JxpSG4ADTDyhjvSqBKIGZwQc+4ept559WjYLTl+pCLORJ7eabyjAMBPEHbB
	C3TriSvM5MiDNvxPxLDRlGztraaISZQ99TeoFR7KosE42v96p92BXCK3XtZBwV/9xEp86hyfyvckr
	CQ+XzAFWBDM/HkF6eVVtXfUmJr64EoX5KNZGV9oL7OVwwtbr97n6m4d4gk4m7H+t9mkD4yEgR3opV
	RLDweMdIru8BtdtElEOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYnjO-008Q3O-Dx; Mon, 28 Mar 2022 11:40:18 +0000
Received: from mail-ed1-f42.google.com ([209.85.208.42])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYnjM-008Q2p-EK
 for linux-phy@lists.infradead.org; Mon, 28 Mar 2022 11:40:17 +0000
Received: by mail-ed1-f42.google.com with SMTP id g20so16553281edw.6
 for <linux-phy@lists.infradead.org>; Mon, 28 Mar 2022 04:40:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=eDubNeR8lpKK3svP84YhB5WCBn4ignuIyXSpyYoO2K4=;
 b=vUtn7K6ksCuER0Ah24moQlcoP/sWqUvmvnfiIqcJnaLv1HWJ2ZLKcL+dOMmW9Qlios
 6Fi5zL+F5X6NEjeh8Ofj63543F4EWimJMHd7j1gLfzktistyUGrGN3fC/ULzvc7EGN40
 5QmER1oDUVV2xzf+yevetQ6x91HJonL+kD90SHX/xitgCHMKMHi2OY00SrPKq4pf/Yzk
 tVhR9H5IX8OnZtlpBpOcVI6rYWrl/u2kzefVyzKH/NSy8o4gH94pUzt2NDVm8PSpOYVO
 wwXEkDnmWmgXGJzskP4LP3I7+pP08WMSMWDMqvfWEAW9tQYydZ1tjFWura1AbGWTI9or
 z4Cw==
X-Gm-Message-State: AOAM532A03ayfLNugm2e4P4gx/RvkKhFFFONgN+1XuXGPSMiCKK3cKKK
 fLO3SqpmsuUtRNqf2cm6yFk=
X-Google-Smtp-Source: ABdhPJz4zSei/ored2fJWGSc6ht4oW/5m5HsFDCl4Z5ds/QUVoxsSJ2wzA/cQ6qtCavbiz4YtEhqwg==
X-Received: by 2002:aa7:cb93:0:b0:415:d57a:4603 with SMTP id
 r19-20020aa7cb93000000b00415d57a4603mr15378617edt.62.1648467614194; 
 Mon, 28 Mar 2022 04:40:14 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.googlemail.com with ESMTPSA id
 hs12-20020a1709073e8c00b006dfdfdac005sm5836373ejc.174.2022.03.28.04.40.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Mar 2022 04:40:13 -0700 (PDT)
Message-ID: <fd3478ba-ebb9-c1bf-1823-dc03de80b76e@kernel.org>
Date: Mon, 28 Mar 2022 13:40:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 0/5] Add support for Axis, ARTPEC-8 PCIe driver
Content-Language: en-US
To: wangseok.lee@samsung.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>
Cc: "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "kw@linux.com" <kw@linux.com>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>, =?UTF-8?B?7KCE66y46riw?=
 <moonki.jun@samsung.com>
References: <564c7092-d6a3-7766-d83f-9762075d055f@kernel.org>
 <0716d9e4-24e1-d16c-162c-00a8664296e1@kernel.org>
 <20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1@epcms2p7>
 <20220328090200epcms2p8637d2a2e09a3a627be776586b80c8adf@epcms2p8>
 <CGME20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1@epcms2p4>
 <20220328112918epcms2p44bfdd6ef74c14f04bae6a475054860b6@epcms2p4>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220328112918epcms2p44bfdd6ef74c14f04bae6a475054860b6@epcms2p4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_044016_504995_ECDFD5D7 
X-CRM114-Status: GOOD (  26.86  )
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

T24gMjgvMDMvMjAyMiAxMzoyOSwg7J207JmV7ISdIHdyb3RlOgo+PiAtLS0tLS0tLS0gT3JpZ2lu
YWwgTWVzc2FnZSAtLS0tLS0tLS0KPj4gU2VuZGVyIDogS3J6eXN6dG9mIEtvemxvd3NracKgPGty
emtAa2VybmVsLm9yZz4KPj4gRGF0ZSA6IDIwMjItMDMtMjggMTg6MzggKEdNVCs5KQo+PiBUaXRs
ZSA6IFJlOiBbUEFUQ0ggMC81XSBBZGQgc3VwcG9ydCBmb3IgQXhpcywgQVJUUEVDLTggUENJZSBk
cml2ZXIKPj4KPj4gT27CoDI4LzAzLzIwMjLCoDExOjAyLMKg7J207JmV7ISdwqB3cm90ZToKPj4+
PiDCoC0tLS0tLS0tLcKgT3JpZ2luYWzCoE1lc3NhZ2XCoC0tLS0tLS0tLQo+Pj4+IMKgU2VuZGVy
wqA6wqBLcnp5c3p0b2bCoEtvemxvd3NracKgPGtyemtAa2VybmVsLm9yZz4KPj4+PiDCoERhdGXC
oDrCoDIwMjItMDMtMjjCoDE2OjEywqAoR01UKzkpCj4+Pj4gwqBUaXRsZcKgOsKgUmU6wqBbUEFU
Q0jCoDAvNV3CoEFkZMKgc3VwcG9ydMKgZm9ywqBBeGlzLMKgQVJUUEVDLTjCoFBDSWXCoGRyaXZl
cgo+Pj4+Cj4+Pj4gwqBPbsKgMjgvMDMvMjAyMsKgMDM6NDQswqDsnbTsmZXshJ3CoHdyb3RlOgo+
Pj4+PiDCoMKgVGhpc8Kgc2VyaWVzwqBwYXRjaGVzwqBpbmNsdWRlwqBuZXdsecKgUENJZcKgc3Vw
cG9ydMKgZm9ywqBBeGlzwqBBUlRQRUMtOMKgU29DLgo+Pj4+PiDCoMKgQVJUUEVDLTjCoGlzwqB0
aGXCoFNvQ8KgcGxhdGZvcm3CoG9mwqBBeGlzwqBDb21tdW5pY2F0aW9ucy4KPj4+Pj4gwqDCoFBD
SWXCoGNvbnRyb2xsZXLCoGRyaXZlcsKgYW5kwqBwaHnCoGRyaXZlcsKgaGF2ZcKgYmVlbsKgbmV3
bHnCoGFkZGVkLgo+Pj4+PiDCoMKgVGhlcmXCoGlzwqBhbHNvwqBhwqBuZXfCoE1BSU5UQUlORVLC
oGluwqB0aGXCoGFkZGl0aW9uwqBvZsKgcGh5wqBkcml2ZXIuCj4+Pj4+IMKgwqBQQ0llwqBjb250
cm9sbGVywqBpc8KgZGVzaWduZWTCoGJhc2VkwqBvbsKgRGVzaWduLVdhcmXCoFBDSWXCoGNvbnRy
b2xsZXLCoElQCj4+Pj4+IMKgwqBhbmTCoFBDSWXCoHBoecKgaXPCoGRlc2luZ2VkwqBiYXNlZMKg
b27CoFNBTVNVTkfCoFBIWcKgSVAuCj4+Pj4+IMKgwqBJdMKgYWxzb8KgaW5jbHVkZXPCoG1vZGlm
aWNhdGlvbnPCoHRvwqB0aGXCoERlc2lnbi1XYXJlwqBjb250cm9sbGVywqBkcml2ZXLCoHRvwqAK
Pj4+Pj4gwqDCoHJ1bsKgdGhlwqA2NGJpdC1iYXNlZMKgQVJUUEVDLTjCoFBDSWXCoGNvbnRyb2xs
ZXLCoGRyaXZlci4KPj4+Pj4gwqDCoEl0wqBjb25zaXN0c8Kgb2bCoDbCoHBhdGNoZXPCoGluwqB0
b3RhbC4KPj4+Pj4gwqDCoAo+Pj4+PiDCoMKgVGhpc8Kgc2VyaWVzwqBoYXPCoGJlZW7CoHRlc3Rl
ZMKgb27CoEFYSVPCoFNXwqBicmluZy11cMKgYm9hcmTCoAo+Pj4+PiDCoMKgd2l0aMKgQVJUUEVD
LTjCoGNoaXBzZXQuCj4+Pj4KPj4+PiDCoFlvdcKgbG9zdMKgbWFpbMKgdGhyZWFkaW5nLsKgVGhp
c8KgbWFrZXPCoHJlYWRpbmfCoHRoaXPCoGRpZmZpY3VsdMKgZm9ywqB1cy7CoFBsdXMKPj4+PiDC
oHlvdcKgc2VudMKgc29tZXRoaW5nwqBub24tYXBwbGljYWJsZcKgKHBhdGNowqAjMikswqBzb8Kg
cGxlYXNlwqByZXNlbmQuCj4+Pj4KPj4+PiDCoEtub3dpbmfCoHJlY2VudMKgU2Ftc3VuZ8KgcmVs
dWN0YW5jZcKgdG/CoGV4dGVuZMKgZXhpc3RpbmfCoGRyaXZlcnPCoGFuZMKgYWx3YXlzCj4+Pj4g
wqBkdXBsaWNhdGUswqBwbGVhc2XCoHByb3ZpZGXCoGRlc2NyaXB0aW9uL2FuYWx5c2lzwqB3aHnC
oHRoaXPCoGRyaXZlcsKgY2Fubm90wqBiZQo+Pj4+IMKgY29tYmluZWTCoHdpdGjCoGV4aXN0aW5n
wqBkcml2ZXIuwqBUaGXCoGFuc3dlcsKgbGlrZTrCoHdlwqBuZWVkwqBzZXZlcmFswqBzeXNjb24K
Pj4+PiDCoGJlY2F1c2XCoHdlwqBkb8Kgbm90wqBpbXBsZW1lbnTCoG90aGVywqBmcmFtZXdvcmtz
wqAobGlrZcKgaW50ZXJjb25uZWN0KcKgYXJlwqBub3QKPj4+PiDCoHZhbGlkLgo+Pj4+Cj4+Pj4g
wqBCZXN0wqByZWdhcmRzLAo+Pj4+IMKgS3J6eXN6dG9mCj4+PiDCoAo+Pj4gwqBIZWxsbyzCoEty
enlzenRvZgo+Pj4gwqBUaGFua3PCoGZvcsKgeW91csKgcmV2aWV3Lgo+Pj4gwqAKPj4+IMKgcGF0
Y2gjMsKgd2FzwqBzZW50wqB0b8KgdGhlwqB3cm9uZ8KgZm9ybWF0wqBzb8Kgc2VudMKgYWdhaW4u
Cj4+PiDCoFNvcnJ5wqBmb3LCoGNhdXNpbmfCoGNvbmZ1c2lvbi4KPj4gwqAKPj4gVGhlwqBmaXJz
dMKgc2VuZGluZ8Kgd2FzwqBIVE1MLsKgU2Vjb25kwqB3YXPCoGJyb2tlbsKgdGV4dCzCoHNvwqBz
dGlsbMKgbm90wqB3b3JraW5nLgo+Pgo+PiBQbGVhc2XCoHJlc2VuZMKgZXZlcnl0aGluZ8Kgd2l0
aMKgcHJvcGVywqB0aHJlYWRpbmcuCj4gCj4gSGVsbG8sIEtyenlzenRvZgo+IAo+IEkgc2VudCBw
YXRjaCMyIHRocmVlIHRpbWVzLgo+IGR1ZSB0byB0aGUgaW5mbHVlbmNlIG9mIHRoZSBlbWFpbCBz
eXN0ZW0sCj4gdGhlcmUgd2FzIHNvbWV0aGluZyB3cm9uZyB3aXRoIHRoZSBmaXJzdCBhbmQgc2Vj
b25kIG1haWxzLgo+IFNvcnJ5IGZvciBjYXVzaW5nIGNvbmZ1c2lvbi4KPiBEaWQgeW91IHJlY2Vp
dmUgdGhlIHRoaXJkIHBhdGNoIGkgc2VudCB5b3U/CgpNYXliZSwgSSBkb24ndCBrbm93LiBJdCdz
IG5vdCB0aHJlYWRlZCBzbyBpdCdzIGRpZmZpY3VsdCB0byBmaW5kIGl0CmFtb25nIG90aGVyIDEw
MCBlbWFpbHMuLi4KCj4gIAo+Pj4gwqBUaGlzwqBwYXRjaMKgaXPCoHNwZWNpYWxpemVkwqBpbsKg
QXJ0cGVjLTgswqAKPj4+IMKgdGhlwqBTb0PCoFBsYXRmb3JtwqBvZsKgQXhpc8KgQ29tbXVuaWNh
dGlvbizCoGFuZMKgaXPCoG5ld2x5wqBhcHBsaWVkLgo+Pj4gwqBTaW5jZcKgdGhlwqB0YXJnZXTC
oFNvQ8KgcGxhdGZvcm3CoGlzwqBkaWZmZXJlbnTCoGZyb23CoHRoZcKgZHJpdmVywqBwcmV2aW91
c2x5wqAKPj4+IMKgdXNlZMKgYnnCoFNhbXN1bmcswqBpdMKgaXPCoGRpZmZpY3VsdMKgdG/CoG1l
cmdlwqB3aXRowqB0aGXCoGV4aXN0aW5nwqBkcml2ZXIuCj4+Cj4+IFJlY2VudGx5wqBJwqBhbHdh
eXPCoHNhd8Kgc3VjaMKgYW5zd2Vyc8KgYW5kwqBzb21ldGltZXPCoGl0wqB3YXPCoHRydWUswqBz
b21ldGltZXMKPj4gbm90LsKgV2hhdMKgaXPCoGV4YWN0bHnCoGRpZmZlcmVudD8KPj4KPj4gQmVz
dMKgcmVnYXJkcywKPj4gS3J6eXN6dG9mCj4gCj4gVGhlIG1haW4gcmVhc29uIHRoaXMgcGF0Y2gg
c2hvdWxkIGJlIGFkZGVkIGlzIHRoYXQKPiB0aGlzIHBhdGNoIGlzIG5vdCB0aGUgZHJpdmVyIGFw
cGxpZWQgdG8gZXh5bm9zIHBsYXRmb3JtLgoKU3RpbGwgdGhpcyBkb2VzIG5vdCBleHBsYWluIHdo
eSB5b3UgbmVlZCBzZXBhcmF0ZSBkcml2ZXIuCgo+IEJlY2F1c2UgdGhlIFNvQyBwbGF0Zm9ybSBp
cyBkaWZmZXJlbnQsIAo+IHRoZSBJUCBjb25maWd1cmF0aW9uIG9mIFBDSWUgaXMgYWxzbyBkaWZm
ZXJlbnQuCgpXaGF0IGlzIGV4YWN0bHkgZGlmZmVyZW50PyBVc3VhbGx5IGRyaXZlcnMgY2FuIHN1
cHBvcnQgSVAgYmxvY2tzIHdpdGgKc29tZSBkaWZmZXJlbmNlcy4uLgoKPiBXZSB3aWxsIG9yZ2Fu
aXplIGEgZHJpdmVyIGZvciBBcnRwZWMtOCBwbGF0Zm9ybSBhbmQgCj4gaWYgdGhlcmUgaXMgbm8g
c3BlY2lhbCByZWFzb24sIG1haW50YWluIHRoaXMgCj4gd2l0aG91dCBhZGRpbmcgaXQgZnJvbSB0
aGUgbmV4dCBzZXJpZXMuCgpJIGRvbid0IHVuZGVyc3RhbmQgdGhpcy4KCgpCZXN0IHJlZ2FyZHMs
CktyenlzenRvZgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==

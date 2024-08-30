Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D48ACA0EFD
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 17:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+1eJQlzJKy8gp2Kw1ELJDBQQMF0FiEvNjdsngV1sgS4=; b=XpGGRc2zcX2Qrh
	6JW2T5pT0qNDPjlKptyvb0Io++r+0FaKmJff8vY9+HVss5R6P4LcUPXSnlu1J+KB2sdPvE8AQ/o6C
	AlaLe4ds03UrLZDMFFHiuJFBM6EEUaeRWMuccD1VphAgWM5vx0gYuDNSgWf7I8v8LwwXGErNRLo4M
	s2/UYHxD5RHbUm36NPwta/LVRIpsVxp7S9Rwk+JvuJIQvwzyHUnVSNbafT1i2BUKHtNWmuF+Jgi3W
	DxmIXrDG9wjVvTPaPz9p6Uq21FC0ZNJiYnqEqtNxBWm3sUEXxIoJmEpoq7l0poDJDmbU+UVSyxg2g
	xLp19B8eaEmeW05mbSbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk5CN-000000079X1-3zBe;
	Fri, 30 Aug 2024 17:14:11 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93] helo=mx07-00178001.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk5CK-000000079WP-05Iq;
	Fri, 30 Aug 2024 17:14:09 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47UCJ7gX000352;
	Fri, 30 Aug 2024 19:14:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	dn5dQsELpWmxinQFESjPspMgz2jixe1Aiq8SsjC0ziM=; b=zi9qqszBsWYtNPTZ
	U/IE9FEOg0WOPHlBwrvHMs5DlYcwoeqdoIGi200KGxMTNjL2W3CBBq2hFAEyyk8R
	eR3kdONLI3+rrigKLxLTAkbXm1bV3MDZ3FRd/4ZEB+5FAXuLB2GMNaOL+b1y3aUk
	ntHa5IbvuBBm0Xs0scUU/tuNcK5HhnLJkYfazvf+e9x6vd1vgFs1Y1jeeknNUWxg
	iuTgIxheM4T2UuSA1l/yrumk3MJfqcXJKCjyWsjGaYcEDlOctIQ1kR2usIOlhu2h
	DebYpxtHvyrNohLYPSi3AYZVM01PobmicEY1q2jmDUU26YWJ88e6tJUR71eGVPP6
	B9+KDw==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 41b14uku9g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Aug 2024 19:13:59 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 386B840048;
	Fri, 30 Aug 2024 19:13:52 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node3.st.com [10.75.129.71])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0583925E20B;
	Fri, 30 Aug 2024 19:11:52 +0200 (CEST)
Received: from [10.129.178.212] (10.129.178.212) by SHFDAG1NODE3.st.com
 (10.75.129.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Fri, 30 Aug
 2024 19:11:51 +0200
Message-ID: <4ae91d0f-e37b-4325-a5aa-8448b95db431@foss.st.com>
Date: Fri, 30 Aug 2024 19:11:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/5] dt-bindings: phy: Add STM32MP25 COMBOPHY bindings
To: Conor Dooley <conor@kernel.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mcoquelin.stm32@gmail.com>, <alexandre.torgue@foss.st.com>,
        <p.zabel@pengutronix.de>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <fabrice.gasnier@foss.st.com>
References: <20240828143452.1407532-1-christian.bruel@foss.st.com>
 <20240828143452.1407532-2-christian.bruel@foss.st.com>
 <20240828-handsfree-overarch-cd1af26cb0c5@spud>
 <005a2f7d-ab46-46c8-a0cc-b343685caf7c@foss.st.com>
 <20240829-manifesto-tray-65443d6e7e6e@spud>
 <777a92d9-ed52-4fa1-b235-e3a4a6321634@foss.st.com>
 <20240830-jumbo-wriggly-39c84108371b@spud>
Content-Language: en-US
From: Christian Bruel <christian.bruel@foss.st.com>
In-Reply-To: <20240830-jumbo-wriggly-39c84108371b@spud>
X-Originating-IP: [10.129.178.212]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE3.st.com
 (10.75.129.71)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-30_10,2024-08-30_01,2024-05-17_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_101408_634226_6B6E3D1C 
X-CRM114-Status: GOOD (  28.95  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Ck9uIDgvMzAvMjQgMTY6NTUsIENvbm9yIERvb2xleSB3cm90ZToKPiBPbiBGcmksIEF1ZyAzMCwg
MjAyNCBhdCAwMjo1MzoxNVBNICswMjAwLCBDaHJpc3RpYW4gQnJ1ZWwgd3JvdGU6Cj4+IE9uIDgv
MjkvMjQgMTg6NDQsIENvbm9yIERvb2xleSB3cm90ZToKPj4+IE9uIFRodSwgQXVnIDI5LCAyMDI0
IGF0IDAxOjA2OjUzUE0gKzAyMDAsIENocmlzdGlhbiBCcnVlbCB3cm90ZToKPj4+PiBPbiA4LzI4
LzI0IDE4OjExLCBDb25vciBEb29sZXkgd3JvdGU6Cj4+Pj4+IE9uIFdlZCwgQXVnIDI4LCAyMDI0
IGF0IDA0OjM0OjQ4UE0gKzAyMDAsIENocmlzdGlhbiBCcnVlbCB3cm90ZToKPj4+Pj4+ICsgIHN0
LHN5c2NmZzoKPj4+Pj4+ICsgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlv
bnMvcGhhbmRsZQo+Pj4+Pj4gKyAgICBkZXNjcmlwdGlvbjogUGhhbmRsZSB0byB0aGUgU1lTQ09O
IGVudHJ5IHJlcXVpcmVkIGZvciBjb25maWd1cmluZyBQQ0llCj4+Pj4+PiArICAgICAgb3IgVVNC
My4KPj4+Pj4gV2h5IGlzIGEgcGhhbmRsZSByZXF1aXJlZCBmb3IgdGhpcyBsb29rdXAsIHJhdGhl
ciB0aGFuIGRvaW5nIGl0IGJ5Cj4+Pj4+IGNvbXBhdGlibGU/Cj4+Pj4gdGhlIHBoYW5kbGUgaXMg
dXNlZCB0byBzZWxlY3QgdGhlIHN5c2NvbmYgU29DIGNvbmZpZ3VyYXRpb24gcmVnaXN0ZXIKPj4+
PiBkZXBlbmRpbmcgb24gdGhlIFBDSWUvVVNCMyBtb2RlIChzZWxlY3RlZCBiecKgeGxhdGUgZnVu
Y3Rpb24pLCBzbyBpdCdzIG5vdAo+Pj4+IGxpa2UgYSBsb29rdXAgaGVyZS4KPj4+IElmICJzeXNj
b25fcmVnbWFwX2xvb2t1cF9ieV9waGFuZGxlKCkiIGlzIG5vdCBhIGxvb2t1cCwgdGhlbiBJIGRv
IG5vdAo+Pj4ga25vdyB3aGF0IGlzLiBBbiBleGFtcGxlIGp1c3RpZmljYXRpb24gZm9yIGl0IHdv
dWxkIGJlIHRoYXQgdGhlcmUgYXJlCj4+PiBtdWx0aXBsZSBjb21ib3BoeXMgb24gdGhlIHNhbWUg
c29jLCBlYWNoIHVzaW5nIGEgZGlmZmVyZW50IHN5c2NvbmYKPj4+IHJlZ2lvbi4gWW91ciBkdHMg
c3VnZ2VzdHMgdGhhdCBpcyBub3QgdGhlIGNhc2UgdGhvdWdoLCBzaW5jZSB5b3UgaGF2ZQo+Pj4g
c3Qsc3lzY2ZnID0gPCZzeXNjZmc+OyBpbiBpdCwgcmF0aGVyIHRoYW4gc3Qsc3lzY2ZnID0gPCZz
eXNjZmcwPjsuCj4+IEkgZGlkbid0IGdldCB5b3VyIHN1Z2dlc3Rpb24gZWFybGllciB0byB1c2Ug
InN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X2NvbXBhdGlibGUoKSIuCj4+Cj4+IFdlIGhhdmUgc2V2
ZXJhbCBvdGhlciBzeXNjb24gaW4gdGhlIG90aGVyLiBUaGF0J3Mgd2h5IHdlIGNob29zZSBhIGRp
cmVjdCBzeXNjZmcgcGhhbmRsZQo+IEluIHRoZSBvdGhlciB3aGF0PyBTb0NzPwo+Cj4gV2F5IEkg
c2VlIGl0LCBpZiB5b3UncmUgZ29pbmcgdG8gc3VwcG9ydCBkaWZmZXJlbnQgc29jcyBpbiB0aGUg
c2FtZQo+IGRyaXZlciwgaXQncyBhbG1vc3QgYSBjZXJ0YWludHkgdGhhdCB0aGUgb2Zmc2V0cyB3
aXRoaW4gYSBzeXNjb24gdGhhdAo+IHBhcnRpY3VsYXIgZmVhdHVyZXMgbGllIGF0IGFyZSBnb2lu
ZyB0byBjaGFuZ2UgYmV0d2VlbiBzb2NzLCBzbyBldmVuIGlmCj4geW91IGhhdmUgYSBwaGFuZGxl
IHlvdSdyZSBnb2luZyB0byBuZWVkIHRvIGhhdmUgdGhlIG9mZnNldHMgaW4geW91cgo+IG1hdGNo
IGRhdGEuIEFuZCBpZiB5b3UncmUgZ29pbmcgdG8gaGF2ZSBvZmZzZXRzIGluIG1hdGNoIGRhdGEs
IHlvdSBtYXkKPiBhcyB3ZWxsIGhhdmUgdGhlIGNvbXBhdGlibGVzIGZvciB0aGUgc3lzY29uIGlu
IG1hdGNoIGRhdGEgdG9vLgo+IElmIHRoZSBsYXlvdXQgb2YgdGhlIHN5c2NvbiBoYXNuJ3QgY2hh
bmdlZCBiZXR3ZWVuIGRldmljZXMsIHRoZW4geW91Cj4gc2hvdWxkIGhhdmUgYSBmYWxsYmFjayBj
b21wYXRpYmxlIGZvciB0aGUgc3lzY29uIHRvbywgbWFraW5nCj4gc3lzY29uX3JlZ21hcF9sb29r
dXBfYnlfY29tcGF0aWJsZSgpIGZ1bmN0aW9uIHdpdGhvdXQgY2hhbmdlcyB0byB0aGUKPiBkcml2
ZXIuCj4KPiBJZiB5b3UgZG8gaGF2ZSBtdWx0aXBsZSBzeXNjb25zLCBidXQgdGhleSBkbyBkaWZm
ZXJlbnQgdGhpbmdzLCB0aGV5Cj4gc2hvdWxkIGhhdmUgZGlmZmVyZW50IGNvbXBhdGlibGVzLCBz
byBoYXZpbmcgbXVsdGlwbGUgc3lzY29ucyBkb2Vzbid0Cj4ganVzdGlmeSB1c2luZyBhIHByb3Bl
cnR5IGZvciB0aGlzIGVpdGhlciBpbiBhbmQgb2YgaXRzZWxmLiBJZiB5b3UgaGF2ZQo+IG11bHRp
cGxlIHN5c2NvbnMgd2l0aCB0aGUgc2FtZSBsYXlvdXQgKGFuZCB0aGVyZWZvcmUgdGhlIHNhbWUK
PiBjb21wYXRpYmxlKSB0aGVuIGEgcGhhbmRsZSBtYWtlcyBzZW5zZSwgYnV0IGlmIHRoYXQncyB0
aGUgY2FzZSB0aGVuIHlvdQo+IGFsbW9zdCBjZXJ0YWlubHkgaGF2ZSBtdWx0aXBsZSBjb21ib3Bo
eXMgdG9vISBPdGhlcndpc2UsIGlmIHlvdSBoYXZlIG9uZQo+IHN5c2NvbiwgYnV0IHRoZSBjb250
cm9scyBmb3IgbW9yZSB0aGFuIG9uZSBjb21ib3BoeSBhcmUgaW4gaXQsIHRoZW4KPiBoYXZpbmcg
YSBwaGFuZGxlIF93aXRoIGFuIG9mZnNldF8gbWFrZXMgc2Vuc2UuCj4KPiBJZiB5b3Uga25vdyB0
aGVyZSBhcmUgb3RoZXIgU29DcyB3aXRoIG1vcmUgdGhhbiBvbmUgY29tYm8gcGh5LCBkbyB0aGV5
Cj4gdXNlIGRpZmZlcmVudCBzeXNjb25zLCBvciBpcyB0aGUgc2FtZSBzeXNjb24gdXNlZCBmb3Ig
bW9yZSB0aGFuIG9uZQo+IGNvbWJvcGh5PwoKd2UgaGF2ZSBvdGhlciBzeXNjb24gZm9yIG90aGVy
IHN1YnN5c3RlbSBpbiB0aGUgc2FtZSBTb0MswqBidXQgSSBub3QgdGhlIHNhbWUgbGF5b3V0CgpX
ZSBpbmRlZWQgaGF2ZSBhIGRpZmZlcmVudCBjb21wYXRpYmxlIGZvciB0aGUgc3lzY2ZnIHRvcCAo
bm90IHRoZSBDT01CT1BIWSByZWdpc3RlcnMpLCBJIGNhbiB1c2UKInN5c2Nvbl9yZWdtYXBfbG9v
a3VwX2J5X2NvbXBhdGlibGUoc3Qsc3RtMzJtcDI1LXN5c2NmZykiIGVmZmVjdGl2ZWx5CgpvbmUg
anVzdGlmaWNhdGlvbiBJIGhhZCBpbiBtaW5kIGZvciB1c2luZyBhIHBoYW5kbGUgaXMgdGhhdCB3
ZSBjYW4gdXNlIGFuIGFyZ3VtZW50IHRvIHRoZQpDT01CT1BIWSByZWdpc3RlcnMgb2Zmc2V0IGlu
IHRoZSBzeXNjZmcuIEhhdmluZyB0aGlzIERUIGZsZXhpYmlsaXR5IHRvIGFkanVzdCB0aGUgb2Zm
c2V0CmZvciBuZXcgU29DIHJldmlzaW9ucyB1c2luZyB0aGUgc2FtZSBkcml2ZXIgbG9va2VkIGxp
a2UgYSBuaWNlIHRvIGhhdmUuCkZvciB0aGUgdGltZSBiZWluZyB0aGUgbG9va3VwX2J5X2NvbXBh
dGlibGUgcG9pbnRpbmcgdGhlIHN5c2NmZyBzeXNjb24gaXMgT0sKCnRoYW5rcyBmb3IgdGhlIGNs
YXJpZmljYXRpb24uCgpDaHJpc3RpYW4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK

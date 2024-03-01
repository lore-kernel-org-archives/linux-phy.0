Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81752C5478C
	for <linux-phy@archiver.kernel.org>; Fri,  1 Mar 2024 18:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dl2qypOJ1jVj4/PN0+JFYhhSSs76dN/bErzsQK+4bhQ=; b=nzFwZMDU0+pngI
	YncG3bwiR85gkZuX6tNZUgLzqvWtrCRtzexhofjh7z8mhj8/pIO/ltRGOCrtAzwKIP0ZkzgWhefrX
	SDTivsaAcybS8laVTOMbhMHC4Klz+Ky2l1kHfQSVS9N0AtjhIAVQZ86WwXJ9fLXxeZSjJAGr1UHnf
	1iskbYqQkowZX48eFPI/BLfoVkxgDG6hOE1Cv1cCeGYitOAomodiumpTKNvRJcM/7t69onX8zprPW
	lOyGMA2KYitExqMkUFShtCplDJzzxR/sBaA+uH3V1DRStRDID5xeebbB7PECtkBphnDrTOvkwN2Iv
	rPihkkpaBqk5ALeaOphg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg7Aw-00000001RZh-0FOC;
	Fri, 01 Mar 2024 18:00:02 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg7As-00000001RYm-0eWn;
	Fri, 01 Mar 2024 18:00:00 +0000
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 421AwWhm023685;
	Fri, 1 Mar 2024 18:59:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=PAPioxXa2h6OuhH4vckkwY/Atx8pRc11B94nRO1l+Bg=; b=j+
	JB7jHojteHT8ULQrshJNFqm8aXbyppTzSXQk0kraU24i8BA5pCOzQgOAu4ISIYOi
	zX5rfLAIXYcEPjRISVigI7Utgni9HWJgvtyfqafMPd0bo/Jn9ubhNkFKf6A5YVud
	Dul71EoZ36StUyD++cZIOHXrK2V4LRjD7LqslaghzYHKQZISMBKcXfLSELV4vT7g
	m0CSPY3YSVaqDEOW+odQS9wZjOo5p6VpyR9kYCjg0l3jrkh4Lwi2e07pzumDmiGA
	YQREUyQicdTJ+TNt/QhFRq/1Mh8wDJKC86EMNwF1bZKo/XIq2Lk/f9aQE+IxN4fy
	4H8z/skW1izbClAxi5gA==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3whf4bs1tu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 01 Mar 2024 18:59:34 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id E351D4002D;
	Fri,  1 Mar 2024 18:59:29 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E9E882B19E8;
	Fri,  1 Mar 2024 18:58:23 +0100 (CET)
Received: from [10.201.22.191] (10.201.22.191) by SHFDAG1NODE2.st.com
 (10.75.129.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 1 Mar
 2024 18:58:22 +0100
Message-ID: <bda00a5c-d976-4525-9740-c83d97da8923@foss.st.com>
Date: Fri, 1 Mar 2024 18:58:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Linux-stm32] stm32mp1xx: use of reg11, reg18 and vdd_usb rails
Content-Language: en-US
To: Sean Nyekjaer <sean@geanix.com>, <vkoul@kernel.org>, <kishon@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        <lgirdwood@gmail.com>, <broonie@kernel.org>,
        <u.kleine-koenig@pengutronix.de>,
        Marc Kleine-Budde <mkl@pengutronix.de>, <m.grzeschik@pengutronix.de>,
        <linux-phy@lists.infradead.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <marex@denx.de>,
        <p.paillet@st.com>, Olivier Moysan <olivier.moysan@foss.st.com>,
        <l.goehrs@pengutronix.de>, "Ahmad Fatoum" <a.fatoum@pengutronix.de>
CC: =?UTF-8?Q?Martin_Hundeb=C3=B8ll?= <martin@geanix.com>
References: <4807FD7F-FEB5-4460-B1EB-3E2330864C8B@geanix.com>
From: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
In-Reply-To: <4807FD7F-FEB5-4460-B1EB-3E2330864C8B@geanix.com>
X-Originating-IP: [10.201.22.191]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-01_20,2024-03-01_02,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_095958_517938_A1858C1E 
X-CRM114-Status: GOOD (  31.90  )
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

T24gMy8xLzI0IDE1OjQxLCBTZWFuIE55ZWtqYWVyIHdyb3RlOgo+IEhpIGFsbCwKPiAKPiBXZSBh
cmUgdXNpbmcgdGhlIG9zZDMybXAxIFNJUCBtb2R1bGUgWzBdLgo+IFdlIGFyZSBzZWVpbmcgc29t
ZSBoYXJkd2FyZSBnZXTigJlzIGZyaWVkIGluc2lkZSB0aGUgU0lQIG1vZHVsZS4KPiBJdOKAmXMg
c29tZXdoYXQgdHJhY2VkIGRvd24gdG8gdGhlIHVzYiBjb250cm9sbGVyL3BoeS9yZWd1bGF0b3Iu
Cj4gCj4gV2l0aCB0aGlzIGRldmljZSB0cmVlWzFdLiBXZSBoYXZlIG5vdGljZWQgZHVyaW5nIGJv
b3QgdGhlIHJlZzE4IGlzIHRvZ2dsZWQgb24gYW5kIG9mZgoKRGVhciBTZWFuLAoKSSd2ZSB0cmll
ZCB0byBjaGVjayB3aGF0IHlvdSd2ZSBwb2ludGVkIG91dC4KClRoZSB0b2dnbGluZyBoYXBwZW5z
IHdoZW4gcmVnaXN0ZXJpbmcgdGhlIFBIWSBhcyBhIGNsb2NrIHByb3ZpZGVyLiBUaGUKVVNCIFBI
WSBoYXMgYSBQTEwgdG8gcHJvdmlkZSBjbG9jayBmb3IgT1RHIGFuZCBVU0JILiBUaGlzIGNsb2Nr
IGdldHMKcmVnaXN0ZXJlZCB0byB0aGUgY2xvY2sgZnJhbWV3b3JrLCBhcyB0aGV5IGdvIHRocm91
Z2ggUkNDLgoKc3RtMzJfdXNicGh5Y19jbGs0OF9yZWdpc3RlcigpIC0+IGNsa19od19yZWdpc3Rl
cigpCgpJbiBvcmRlciB0byBwcm9wZXJseSBiZSBpbnNlcnRlZCBpbnRvIHRoZSBjbG9jayB0cmVl
LCAoZS5nLiBSQ0MgZG9lcwpzb21lIGdhdGluZyB0aGVuKSByZXBhcmVudCBvcGVyYXRpb24gcmVx
dWlyZXMgdGhlIFBMTCAod2l0aCBpdHMKc3VwcGxpZXMpIHRvIGJlIGVuYWJsZWQuIE9uY2UgdGhl
IHJlcGFyZW50IGlzIGNvbXBsZXRlZCwgaXQgcmVxdWVzdHMgdG8KdHVybiBpdCBPRkYuCgpUaGF0
J3MgdGhlIHJlYXNvbiBmb3IgdGhlIHRvZ2dsaW5nLgoKPiB3aXRob3V0IHZkZF91c2IgYmVpbmcg
dHVybmVkIG9mZiBiZWZvcmUgcmVnMTggYXMgcmVxdWlyZWQgaW4gdGhlIGRhdGEgc2hlZXRbMl0s
IHNlY3Rpb24gMy44LjE6Cgp2ZGRfdXNiIGlzIHByb2JsYWJseSAoSSBoYXZlbid0IGNoZWNrZWQp
IGEgYm9vdC1vbiByZWd1bGF0b3IsIHRvdGFsbHkKdW50b3VjaGVkIHdoZW4gdGhlIHRvZ2dsaW5n
IGhhcHBlbnMuIEl0IGdldHMgZW5hYmxlZCBpbiBkcml2ZXJzIGxhdGVyLApkdXJpbmcgcGh5X3Bv
d2VyX29uKCkgb3IgaW4gZHdjMiBkcml2ZXIgKHN0bSBpZCBnbHVlIC8gdXNiMzNkIGNhc2NhZGVk
CnRoZW4gdG8gcHdyKS4gU28gaXQgaXNuJ3QgY29udHJvbGxlZCBiZWZvcmUgdGhhdC4KCj4gVkRE
M1YzX1VTQkhTIG11c3Qgbm90IGJlIHByZXNlbnQgdW5sZXNzIFZEREExVjhfUkVHIGlzIHByZXNl
bnQsIG90aGVyd2lzZSBwZXJtYW5lbnQgCj4gU1RNMzJNUDE1N0MvRiBkYW1hZ2UgY291bGQgb2Nj
dXIuIE11c3QgYmUgZW5zdXJlZCBieSBQTUlDIHJhbmtpbmcgb3JkZXIgb3Igd2l0aAo+IGV4dGVy
bmFsIGNvbXBvbmVudCBpbiBjYXNlIG9mIGRpc2NyZXRlIGNvbXBvbmVudCBwb3dlciBzdXBwbHkg
aW1wbGVtZW50YXRpb24uCj4gCj4gSXTigJlzIGhhcHBlbnMgYmVjYXVzZSB0aGUgc29tZXRoaW5n
IGlzIGFscmVhZHkgdXNlcyB0aGUgdmRkX3VzYiwgaXTigJlzIGJvdGggdGhlIGRyaXZlcnMvcGh5
L3N0L3BoeS1zdG0zMi11c2JwaHljLmMKPiBhbmQgZHJpdmVycy9yZWd1bGF0b3Ivc3RtMzItcHdy
LmMgdGhhdCBjb25zdW1lcyBpdC4KCk5vIChzZWUgYWJvdmUpLgoKPiAKPiBJIGNhbiBmaXggaXQg
YnkgcmVtb3ZpbmcgdGhlIHZkZF91c2IgZnJvbSB0aGUgdXNiMzMgc3VwcGx5WzNdOgoKVGhpcyB3
aWxsIGJyZWFrIGFsbCBpbXBsZW1lbnRhdGlvbnMgdGhhdCByZWx5IG9uIElEL1ZidXMgcGlucyBv
biBNUDE1LgoKPiBUaGUgc3RtMzItcHdyLmMgaXMgKHRvIG1lKSByYXRoZXIgd2VpcmQsIGFzIGl0
IGV4cG9zZXMgdGhlIHVzYjMzIGFzIGEgcmVndWxhdG9yIHdoZW4gaW4gZmFjdCBpdOKAmXMgYSBk
ZXRlY3Rpb24gcGluLgo+IElzIHRoYXQgZG9uZSBvbiBwdXJwb3NlPwo+IAo+IEkgd291bGQgbGlr
ZSBpbnRyb2R1Y2UgYSBlcnJvciBpbiB0aGUgc3RtMzItcHdyLmMgaWYgc29tZXRoaW5nIGlzIHRy
eWluZyB0byBwb3dlciBvZmYgcmVnMTggd2l0aCB1c2IzMyBwcmVzZW50PwoKV2VsbCwgYWRkaW5n
IHNvbWUgZXJyb3IgYXMgeW91IGhhdmUgZHJhZnRlZCBzaG91bGQgcHJvdGVjdCB0aGUgaGFyZHdh
cmUuCkRvZXNuJ3QgdGhpcyBicmluZ3MgZXJyb3IsIHdoZW4gcmVnaXN0ZXJpbmcgaW50byB0aGUg
Y2xvY2sgZnJhbWV3b3JrID8KRG9lcyB0aGlzIHByZXZlbnQgcmVnaXN0ZXJpbmcgVVNCIHRoZW4g
PwoKVGhlcmUncyBwcm9iYWJseSBiZXR0ZXIgb3B0aW9ucy4gSXQgbmVlZHMgYWRkaXRpb25hbCBm
aXguIEkgY2FuJ3QgdGhpbmsKYWJvdXQgcmlnaHQgbm93Li4uCkl0IGlzIGp1c3QgYSB0aG91Z2h0
LCBidXQgd2hlbiB0aGUgUEhZIGRyaXZlciByZWdpc3RlcnMgdGhlIGNsb2NrLCBhCmJldHRlciBj
b250cm9sIG9mIGFsbCB0aGUgcmVndWxhdG9yIDF2MSwgMXY4IGFuZCB2ZGRfdXNiIGNvdWxkIGJl
IHRvCmVuZm9yY2UgdmRkX3VzYiBmaXJzdCBnZXRzIGRpc2FibGVkIGluIHRoaXMgcHJvY2Vzcy4K
Ck9yIHRlbXBvcmFyaWx5IGZsYWcgdGhpcyBpbml0aWFsaXphdGlvbiBzdGVwLCBmcm9tCnN0bTMy
X3VzYnBoeWNfY2xrNDhfcmVnaXN0ZXIoKSwgdW50aWwgcGh5X2luaXQoKSBvY2N1cnMsIHNvIHRo
ZSAxdjEgYW5kCjF2OCBkb24ndCBnZXQgZGlzYWJsZWQgPyBUaGlzIHdpbGwgc3BhcmUgdGltZSAo
ZS5nLiB0b2dnbGluZykgYXMKcGh5X2luaXQgd2lsbCByZWVuYWJsZSBhbGwgdGhlc2UganVzdCBm
ZXcgdGltZSBhZnRlciBpdCdzIGJlZW4gZGlzYWJsZWQuCgo+IFdvdWxkIGl0IGJlIG9rYXkgdG8g
cmV0dXJuIC1FQlVTWT8gT3IgZXZlbiAtRVNNT0tFPyA6KQo+IAo+IE9yIGlzIGl0IGJldHRlciB0
byBkbyBpdCBpbiBwaHktc3RtMzItdXNicGh5Yy5jWzRdPwo+IAo+IC9TZWFuCj4gCj4gWzBdOiBo
dHRwczovL29jdGF2b3N5c3RlbXMuY29tL29jdGF2b19wcm9kdWN0cy9vc2QzMm1wMTV4Lwo+IFsx
XTogaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFs
ZHMvbGludXguZ2l0L3RyZWUvYXJjaC9hcm0vYm9vdC9kdHMvc3Qvc3RtMzJtcDE1N2Mtb3NkMzJt
cDEtcmVkLmR0cwo+IFsyXTogaHR0cHM6Ly93d3cuc3QuY29tL3Jlc291cmNlL2VuL2RhdGFzaGVl
dC9zdG0zMm1wMTU3Yy5wZGYKPiBbM106Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRz
L3N0L3N0bTMybXAxNTdjLW9zZDMybXAxLXJlZC5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9zdC9z
dG0zMm1wMTU3Yy1vc2QzMm1wMS1yZWQuZHRzCj4gaW5kZXggNTI3YzMzYmU2NmNjLi4wZDY3MDA2
ODA2YzQgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvc3Qvc3RtMzJtcDE1N2Mtb3Nk
MzJtcDEtcmVkLmR0cwo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N0L3N0bTMybXAxNTdjLW9z
ZDMybXAxLXJlZC5kdHMKPiBAQCAtMTQ5LDcgKzE0OSw2IEBAICZtX2NhbjEgewo+IAo+ICAmcHdy
X3JlZ3VsYXRvcnMgewo+ICAgICAgICAgdmRkLXN1cHBseSA9IDwmdmRkPjsKPiAtICAgICAgIHZk
ZF8zdjNfdXNiZnMtc3VwcGx5ID0gPCZ2ZGRfdXNiPjsKCkFzIHNhaWQgYWJvdmUsIHRoaXMgd2ls
bCBtYWtlIHRoZSBJRCBhbmQgVmJ1cyBkZXRlY3Rpb24gbG9naWMgb24gT1RHCnBvcnQgbm90IHdv
cmtpbmcuCgo+ICB9Owo+IAo+ICAmcnRjIHsKPiBbNF06Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L3N0L3BoeS1zdG0zMi11c2JwaHljLmMgYi9kcml2ZXJzL3BoeS9zdC9waHktc3RtMzItdXNi
cGh5Yy5jCj4gaW5kZXggZDVlN2U0NDAwMGI1Li41OGZjYzMwOTk4MDMgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9waHkvc3QvcGh5LXN0bTMyLXVzYnBoeWMuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3N0
L3BoeS1zdG0zMi11c2JwaHljLmMKPiBAQCAtMTg4LDggKzE4OCwxOCBAQCBzdGF0aWMgaW50IHN0
bTMyX3VzYnBoeWNfcmVndWxhdG9yc19lbmFibGUoc3RydWN0IHN0bTMyX3VzYnBoeWMgKnVzYnBo
eWMpCj4gCj4gIHN0YXRpYyBpbnQgc3RtMzJfdXNicGh5Y19yZWd1bGF0b3JzX2Rpc2FibGUoc3Ry
dWN0IHN0bTMyX3VzYnBoeWMgKnVzYnBoeWMpCj4gIHsKPiArICAgICAgIHN0cnVjdCBzdG0zMl91
c2JwaHljX3BoeSAqdXNicGh5Y19waHk7Cj4gICAgICAgICBpbnQgcmV0Owo+IAo+ICsgICAgICAg
Zm9yIChwb3J0ID0gMDsgcG9ydCA8IHVzYnBoeWMtPm5waHlzOyBwb3J0KyspIHsKPiArICAgICAg
ICAgICAgICAgdXNicGh5Y19waHkgPSB1c2JwaHljLT5waHlzW3BvcnRdOwo+ICsKPiArICAgICAg
ICAgICAgICAgaWYocmVndWxhdG9yX2lzX2VuYWJsZWQodXNicGh5Y19waHktPnBoeS0+cHdyKSkg
ewo+ICsgICAgICAgICAgICAgICAgICAgICAgIHByX2VycigiJXM6IHBoeSBpcyBwb3dlcmVkIG5v
dCBhbGxvd2VkIHRvIHN3aXRjaCBvZmYgcmVndWxhdG9yXG4iLCBfX2Z1bmNfXyk7Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FQlVTWTsKPiArICAgICAgICAgICAgICAgfQo+ICsg
ICAgICAgfQo+ICsKCkFzIGFib3ZlLCB0aGlzIGNvdWxkIG1ha2Ugc2Vuc2UgdG8gZmxhZyB0aGUg
ZXJyb3IuCkJ1dCBpdCBuZWVkcyBzb21lIGhhbmRsaW5nIHRvIHByb3Blcmx5IGF2b2lkIHRoZSB0
b2dnbGluZywgb3IgbWFrZSBpdCBzYWZlLgoKSG9wZSB0aGlzIGhlbHBzIHRvIGNsYXJpZnksCkJS
LApGYWJyaWNlCgo+ICAgICAgICAgcmV0ID0gcmVndWxhdG9yX2Rpc2FibGUodXNicGh5Yy0+dmRk
YTF2OCk7Cj4gICAgICAgICBpZiAocmV0KQo+ICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+
IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
TGludXgtc3RtMzIgbWFpbGluZyBsaXN0Cj4gTGludXgtc3RtMzJAc3QtbWQtbWFpbG1hbi5zdG9y
bXJlcGx5LmNvbQo+IGh0dHBzOi8vc3QtbWQtbWFpbG1hbi5zdG9ybXJlcGx5LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXN0bTMyCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK

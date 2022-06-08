Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 295ABC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 14:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXv4e0aIZDCoP9uu+n84QolSf05LUP3tvgwzatbmOTk=; b=lAsek2VG3Hsdnb
	EHgiJBqhPuK3LMo1p35aRi92dtugRpvfRxkGQKRPYFoOhdbN+OwtlKhmLZTWVSKjFHY4+/iHUj417
	I7ii4uqiwxYQ8T3PL1A8/7oMK9rXmkxJShbthBk0OtCWlTgfoPzMimf5ADlmJ+53KbRijXXnrgVDp
	2VKxJdzWRdkvUV7nSKG4V6uKoKRd/94osvG2eT/+rQBlDewB0fecSSN6BAxnvt5705zJtOqHcrDum
	GJ7wPbQPD+8ArfWdSYwCPfe/KPKSIJ++RkiHN3NKGCo0ZU25hPf+z/WnV17cArxbPAOqQZAKmFJB1
	wiBkbb0zxmSKGDK+C/iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyx47-00Dohw-6K; Wed, 08 Jun 2022 14:53:47 +0000
Received: from sender4-op-o18.zoho.com ([136.143.188.18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyx3c-00DoSV-9l; Wed, 08 Jun 2022 14:53:20 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1654699986; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=g3XBbcUgcr7RPvjyGEXjx+/RTzPFGWR/DvVUHYZc7LFndYP06sHFzbu3ykLfe2hpTAP5OtOyg72XFa4IHnttmb+oU8sxXUoKaJUh+raTW8OrVLG6P42/l5YRPPR/GwepprEG/F4zrYK/Tp8n6Y81OMca+SZXp+JJJNjMrFDEDHg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1654699986; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=F9JBMBia5rEoXy4yptoHZJknCMfwVffC8pmBgrhBArY=; 
	b=d3liPRSDOtPjiQPUfbeA2/YJEaxOUWWi/QomjSx9Qp+pZ3K3wZDxyBVOwGjrsL5bpEhbVuzQWV8Jn2eJaistqlk8zYk1ANMaYL2IDpsNo6D8OjgHSegyXrKvPEoQbYSozFAGg1lUr1k9I1BQo21C22EyF18VNCxaQbLwywtEtPI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1654699986;
	s=zmail; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=F9JBMBia5rEoXy4yptoHZJknCMfwVffC8pmBgrhBArY=;
	b=W/Gxnvle0kTMRWewMbHueLB3F8j90Ih/+8aa4eajDkYeFvCilKZdp1rQW8Zz9Z+k
	jFaHiSCCfIWR2obhpGMJbdcLSVByQTH8/O7o0M2PKeWJpe038DUvkegeM5NzXx5zxiS
	oDEiJuzRYUELr4IOUpRZMX1WhPXyK5F0e1de2EGQ=
Received: from edelgard.icenowy.me (59.41.163.66 [59.41.163.66]) by mx.zohomail.com
	with SMTPS id 1654699984521556.1461877734166; Wed, 8 Jun 2022 07:53:04 -0700 (PDT)
Message-ID: <3628fbc2eb9a8c21dc0742b929ee14da76f9adf5.camel@icenowy.me>
Subject: Re: [PATCH 2/7] dt-bindings: phy: add binding document for
 Allwinner F1C100s USB PHY
From: Icenowy Zheng <uwu@icenowy.me>
To: Rob Herring <robh@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Bin Liu <b-liu@ti.com>,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-usb@vger.kernel.org
Date: Wed, 08 Jun 2022 22:52:52 +0800
In-Reply-To: <20220608144939.GA1366879-robh@kernel.org>
References: <20220608070452.338006-1-uwu@icenowy.me>
	 <20220608070452.338006-3-uwu@icenowy.me>
	 <20220608144939.GA1366879-robh@kernel.org>
Organization: Anthon Open-Source Community
User-Agent: Evolution 3.40.4 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_075317_403981_AB48991B 
X-CRM114-Status: GOOD (  23.05  )
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

5ZyoIDIwMjItMDYtMDjmmJ/mnJ/kuInnmoQgMDg6NDkgLTA2MDDvvIxSb2IgSGVycmluZ+WGmemB
k++8mgo+IE9uIFdlZCwgSnVuIDA4LCAyMDIyIGF0IDAzOjA0OjQ3UE0gKzA4MDAsIEljZW5vd3kg
Wmhlbmcgd3JvdGU6Cj4gPiBBbGx3aW5uZXIgRjFDMTAwcyBoYXMgdGhlIG1vc3Qgc2ltcGxlIFVT
QiBQSFkgYW1vbmcgYWxsIEFsbHdpbm5lcgo+ID4gU29DcywKPiA+IGJlY2F1c2UgaXQgaGFzIG9u
bHkgb25lIE9URyBVU0IgY29udHJvbGxlciwgbm8gaG9zdC1vbmx5IE9IQ0kvRUhDSQo+ID4gY29u
dHJvbGxlcnMuCj4gPiAKPiA+IEFkZCBhIGJpbmRpbmcgZG9jdW1lbnQgZm9yIGl0Lgo+ID4gCj4g
PiBTaWduZWQtb2ZmLWJ5OiBJY2Vub3d5IFpoZW5nIDx1d3VAaWNlbm93eS5tZT4KPiA+IC0tLQo+
ID4gwqAuLi4vcGh5L2FsbHdpbm5lcixzdW5pdi1mMWMxMDBzLXVzYi1waHkueWFtbMKgIHwgODMK
PiA+ICsrKysrKysrKysrKysrKysrKysKPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDgzIGluc2VydGlv
bnMoKykKPiA+IMKgY3JlYXRlIG1vZGUgMTAwNjQ0Cj4gPiBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L2FsbHdpbm5lcixzdW5pdi1mMWMxMDBzLXVzYi0KPiA+IHBoeS55YW1s
Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L2FsbHdpbm5lcixzdW5pdi0KPiA+IGYxYzEwMHMtdXNiLXBoeS55YW1sCj4gPiBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYWxsd2lubmVyLHN1bml2LWYxYzEwMHMt
Cj4gPiB1c2ItcGh5LnlhbWwKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAw
MDAwMDAwMDAuLjE4MGZhODg0MGJmNwo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9hbGx3aW5uZXIsc3VuaXYtCj4gPiBmMWMx
MDBzLXVzYi1waHkueWFtbAo+ID4gQEAgLTAsMCArMSw4MyBAQAo+ID4gKyMgU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IEdQTC0yLjAKPiAKPiBEdWFsIGxpY2Vuc2UgcGxlYXNlLgoKSSBhbSBiYXNl
ZCBvbiBhbm90aGVyIEFsbHdpbm5lciBVU0IgUEhZIGJpbmRpbmcgZmlsZSBpbiB0aGUgc2FtZQpk
aXJlY3RvcnksIGFuZCB0aGF0IGZpbGUgaXMgc2luZ2xlIGxpY2Vuc2VkLiBJIGNyZWF0ZWQgYSBu
ZXcgZmlsZQpiZWNhdXNlIGVhY2ggdmFyaWFudCBvZiB0aGUgUEhZIGhhcyBhIHNpbmdsZSBmaWxl
IG5vdy4KCj4gCj4gPiArJVlBTUwgMS4yCj4gPiArLS0tCj4gPiArJGlkOgo+ID4gaHR0cDovL2Rl
dmljZXRyZWUub3JnL3NjaGVtYXMvcGh5L2FsbHdpbm5lcixzdW5pdi1mMWMxMDBzLXVzYi1waHku
eWFtbCMKPiA+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2Nv
cmUueWFtbCMKPiA+ICsKPiA+ICt0aXRsZTogQWxsd2lubmVyIEYxQzEwMHMgVVNCIFBIWSBEZXZp
Y2UgVHJlZSBCaW5kaW5ncwo+ID4gKwo+ID4gK21haW50YWluZXJzOgo+ID4gK8KgIC0gQ2hlbi1Z
dSBUc2FpIDx3ZW5zQGNzaWUub3JnPgo+ID4gK8KgIC0gTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBr
ZXJuZWwub3JnPgo+ID4gKwo+ID4gK3Byb3BlcnRpZXM6Cj4gPiArwqAgIiNwaHktY2VsbHMiOgo+
ID4gK8KgwqDCoCBjb25zdDogMQo+ID4gKwo+ID4gK8KgIGNvbXBhdGlibGU6Cj4gPiArwqDCoMKg
IGNvbnN0OiBhbGx3aW5uZXIsc3VuaXYtZjFjMTAwcy11c2ItcGh5Cj4gPiArCj4gPiArwqAgcmVn
Ogo+ID4gK8KgwqDCoCBtYXhJdGVtczogMQo+ID4gK8KgwqDCoCBkZXNjcmlwdGlvbjogUEhZIENv
bnRyb2wgcmVnaXN0ZXJzCj4gPiArCj4gPiArwqAgcmVnLW5hbWVzOgo+ID4gK8KgwqDCoCBjb25z
dDogcGh5X2N0cmwKPiA+ICsKPiA+ICvCoCBjbG9ja3M6Cj4gPiArwqDCoMKgIG1heEl0ZW1zOiAx
Cj4gPiArwqDCoMKgIGRlc2NyaXB0aW9uOiBVU0IgT1RHIFBIWSBidXMgY2xvY2sKPiA+ICsKPiA+
ICvCoCBjbG9jay1uYW1lczoKPiA+ICvCoMKgwqAgY29uc3Q6IHVzYjBfcGh5Cj4gCj4gKi1uYW1l
cyBpcyBub3QgbmVlZGVkIHdpdGggb25seSBvbmUgZW50cnkuIFBsdXMsIGp1c3QgdXNpbmcgdGhl
Cj4gbW9kdWxlIAo+IG5hbWUgaXMgbm90IGEgZ3JlYXQgY2hvaWNlLgoKSG93ZXZlciB0aGUgZHJp
dmVyIGV4cGVjdHMgaXQuLi4KClNob3VsZCBJIHBhdGNoIHRoZSBkcml2ZXIgdG8gdXNlIG5vIG5h
bWUgb24gRjFDMTAwcz8KCj4gCj4gPiArCj4gPiArwqAgcmVzZXRzOgo+ID4gK8KgwqDCoCBtYXhJ
dGVtczogMQo+ID4gK8KgwqDCoCBkZXNjcmlwdGlvbjogVVNCIE9URyByZXNldAo+ID4gKwo+ID4g
K8KgIHJlc2V0LW5hbWVzOgo+ID4gK8KgwqDCoCBjb25zdDogdXNiMF9yZXNldAo+IAo+IFNhbWUg
aGVyZS4KPiAKPiA+ICvCoCB1c2IwX2lkX2RldC1ncGlvczoKPiA+ICvCoMKgwqAgbWF4SXRlbXM6
IDEKPiA+ICvCoMKgwqAgZGVzY3JpcHRpb246IEdQSU8gdG8gdGhlIFVTQiBPVEcgSUQgcGluCj4g
PiArCj4gPiArwqAgdXNiMF92YnVzX2RldC1ncGlvczoKPiA+ICvCoMKgwqAgbWF4SXRlbXM6IDEK
PiA+ICvCoMKgwqAgZGVzY3JpcHRpb246IEdQSU8gdG8gdGhlIFVTQiBPVEcgVkJVUyBkZXRlY3Qg
cGluCj4gPiArCj4gPiArwqAgdXNiMF92YnVzX3Bvd2VyLXN1cHBseToKPiA+ICvCoMKgwqAgZGVz
Y3JpcHRpb246IFBvd2VyIHN1cHBseSB0byBkZXRlY3QgdGhlIFVTQiBPVEcgVkJVUwo+ID4gKwo+
ID4gK8KgIHVzYjBfdmJ1cy1zdXBwbHk6Cj4gPiArwqDCoMKgIGRlc2NyaXB0aW9uOiBSZWd1bGF0
b3IgY29udHJvbGxpbmcgVVNCIE9URyBWQlVTCj4gCj4gV2h5IHRoZSAndXNiMF8nIHByZWZpeD8K
PiAKPiBBcmUgdGhlc2UgR1BJT3MgYW5kIFZidXMgc3VwcGx5IGNvbm5lY3RlZCB0byB0aGUgcGh5
PyBJZiBub3QsIHRoZXNlCj4gYWxsIAo+IGJlbG9uZyBpbiBhIGNvbm5lY3RvciBub2RlIChhcyB0
aGF0IGlzIHdoZXJlIHRoZXkgYXJlIGNvbm5lY3RlZCB0byBpbgo+IGgvdykuCgpXZWxsIHRoZXNl
IGFyZSBoaXN0b3JpY2FsIHRoaW5ncyBvZiBwaHktc3VuNGktdXNiIGRyaXZlciB0b28uCgo+IAo+
ID4gKwo+ID4gK3JlcXVpcmVkOgo+ID4gK8KgIC0gIiNwaHktY2VsbHMiCj4gPiArwqAgLSBjb21w
YXRpYmxlCj4gPiArwqAgLSBjbG9ja3MKPiA+ICvCoCAtIGNsb2NrLW5hbWVzCj4gPiArwqAgLSBy
ZWcKPiA+ICvCoCAtIHJlZy1uYW1lcwo+ID4gK8KgIC0gcmVzZXRzCj4gPiArwqAgLSByZXNldC1u
YW1lcwo+ID4gKwo+ID4gK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+ID4gKwo+ID4gK2V4
YW1wbGVzOgo+ID4gK8KgIC0gfAo+ID4gK8KgwqDCoCAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bp
by9ncGlvLmg+Cj4gPiArwqDCoMKgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9zdW5pdi1m
MWMxMDBzLWNjdS5oPgo+ID4gK8KgwqDCoCAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcmVzZXQvc3Vu
aXYtZjFjMTAwcy1jY3UuaD4KPiA+ICsKPiA+ICvCoMKgwqAgcGh5QDFjMTM0MDAgewo+ID4gK8Kg
wqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bml2LWYxYzEwMHMtdXNiLXBo
eSI7Cj4gPiArwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MDFjMTM0MDAgMHgxMD47Cj4gPiArwqDC
oMKgwqDCoMKgwqAgcmVnLW5hbWVzID0gInBoeV9jdHJsIjsKPiA+ICvCoMKgwqDCoMKgwqDCoCBj
bG9ja3MgPSA8JmNjdSBDTEtfVVNCX1BIWTA+Owo+ID4gK8KgwqDCoMKgwqDCoMKgIGNsb2NrLW5h
bWVzID0gInVzYjBfcGh5IjsKPiA+ICvCoMKgwqDCoMKgwqDCoCByZXNldHMgPSA8JmNjdSBSU1Rf
VVNCX1BIWTA+Owo+ID4gK8KgwqDCoMKgwqDCoMKgIHJlc2V0LW5hbWVzID0gInVzYjBfcmVzZXQi
Owo+ID4gK8KgwqDCoMKgwqDCoMKgICNwaHktY2VsbHMgPSA8MT47Cj4gPiArwqDCoMKgwqDCoMKg
wqAgdXNiMF9pZF9kZXQtZ3Bpb3MgPSA8JnBpbyA0IDIgR1BJT19BQ1RJVkVfSElHSD47Cj4gPiAr
wqDCoMKgIH07Cj4gPiAtLSAKPiA+IDIuMzYuMAo+ID4gCj4gPiAKCgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

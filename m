Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23240C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 29 Mar 2022 06:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ezxL8ck6ABtCpAupdoM1rJZqFB03DuWk9IJVXMbqmX8=; b=GaijJzarINNJP4
	MlKPfzD1ja/HdQ1RpUQPBgBS2oeGyNJe/tGMsVg/6qfW8gZv0naye1FRKpxQ6iXkiB+7iBZjG+q5Q
	9G7jqH6VFlQ5ck3S7xZaCI10uso8+ZGLUY6lAy+OvwsuDRfGtp6qeWdpV8TWj+YVGeBYoEdxhjHYJ
	qfBetg9p1xN2RCBA7QV0aBi2eiCR/5mHRXpEMW7tIOnk+t+Gm/9rswOaCSgZmX86U/9HHh8Uschxy
	XnYA6TEBKy42M/uZehhE2VR2P8EQHM9yOsLtB59XLW+/2mNoF79/MfKEIYAZYETqTIBBfVyWHWbw4
	SzDx6gtFwmgAIKh6fNGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZ5YQ-00BE6D-K6; Tue, 29 Mar 2022 06:42:10 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZ5YN-00BE5Y-O4
 for linux-phy@lists.infradead.org; Tue, 29 Mar 2022 06:42:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 369226150C;
 Tue, 29 Mar 2022 06:42:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FC09C2BBE4;
 Tue, 29 Mar 2022 06:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648536126;
 bh=KcEfxDe9kAuDSImnqtYl4PiodQh5LDPDefrNdl/cgeY=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=hsjansLgElHV/CJ6UrvWUBFL9ehiJ8W+cyFqgsqeICUkD3gqmTsAqKN5yX+sW0hyF
 f9HJWY0TpFwLGUg+qR+O7vd1JTJ84MnWNOI4gvtiQpDzgUGNiqMO8vfajPdD8M3GTW
 +QQNzk8AB0NkU37mPoNkmB2/Wt8mOKzFbEWs4wcbaUOOlKVlMTaCIHVx2d7+139sBm
 kiZuWC4T2LrEE0BNsDb1mM0q72qxfRk6k4NLC2kMI4WtOQA0qkszfEd0c4pKajMyxH
 EJ6tKbNMpP5KGr+5jfT6iVPQcfKAjBG0Pd4V42i87Io+fFb5Qil6sz0OzHPosEZ4dy
 VvIIcistU0Z0w==
Message-ID: <6dec8b28-5e6e-b53b-6351-aaa797d9078d@kernel.org>
Date: Tue, 29 Mar 2022 08:41:59 +0200
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
References: <fd3478ba-ebb9-c1bf-1823-dc03de80b76e@kernel.org>
 <564c7092-d6a3-7766-d83f-9762075d055f@kernel.org>
 <0716d9e4-24e1-d16c-162c-00a8664296e1@kernel.org>
 <20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1@epcms2p7>
 <20220328090200epcms2p8637d2a2e09a3a627be776586b80c8adf@epcms2p8>
 <20220328112918epcms2p44bfdd6ef74c14f04bae6a475054860b6@epcms2p4>
 <CGME20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1@epcms2p1>
 <20220329034949epcms2p1717d820646c878f314b03e07c2d092ba@epcms2p1>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220329034949epcms2p1717d820646c878f314b03e07c2d092ba@epcms2p1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_234207_891249_9FE34AB0 
X-CRM114-Status: GOOD (  33.31  )
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

T24gMjkvMDMvMjAyMiAwNTo0OSwg7J207JmV7ISdIHdyb3RlOgo+PiAtLS0tLS0tLS0gT3JpZ2lu
YWwgTWVzc2FnZSAtLS0tLS0tLS0KPj4gU2VuZGVyIDogS3J6eXN6dG9mIEtvemxvd3NracKgPGty
emtAa2VybmVsLm9yZz4KPj4gRGF0ZSA6IDIwMjItMDMtMjggMjA6NDQgKEdNVCs5KQo+PiBUaXRs
ZSA6IFJlOiBbUEFUQ0ggMC81XSBBZGQgc3VwcG9ydCBmb3IgQXhpcywgQVJUUEVDLTggUENJZSBk
cml2ZXIKPj4KPj4gT27CoDI4LzAzLzIwMjLCoDEzOjI5LMKg7J207JmV7ISdwqB3cm90ZToKPj4+
PiDCoC0tLS0tLS0tLcKgT3JpZ2luYWzCoE1lc3NhZ2XCoC0tLS0tLS0tLQo+Pj4+IMKgU2VuZGVy
wqA6wqBLcnp5c3p0b2bCoEtvemxvd3NracKgPGtyemtAa2VybmVsLm9yZz4KPj4+PiDCoERhdGXC
oDrCoDIwMjItMDMtMjjCoDE4OjM4wqAoR01UKzkpCj4+Pj4gwqBUaXRsZcKgOsKgUmU6wqBbUEFU
Q0jCoDAvNV3CoEFkZMKgc3VwcG9ydMKgZm9ywqBBeGlzLMKgQVJUUEVDLTjCoFBDSWXCoGRyaXZl
cgo+Pj4+Cj4+Pj4gwqBPbsKgMjgvMDMvMjAyMsKgMTE6MDIswqDsnbTsmZXshJ3CoHdyb3RlOgo+
Pj4+Pj4gwqDCoC0tLS0tLS0tLcKgT3JpZ2luYWzCoE1lc3NhZ2XCoC0tLS0tLS0tLQo+Pj4+Pj4g
wqDCoFNlbmRlcsKgOsKgS3J6eXN6dG9mwqBLb3psb3dza2nCoDxrcnprQGtlcm5lbC5vcmc+Cj4+
Pj4+PiDCoMKgRGF0ZcKgOsKgMjAyMi0wMy0yOMKgMTY6MTLCoChHTVQrOSkKPj4+Pj4+IMKgwqBU
aXRsZcKgOsKgUmU6wqBbUEFUQ0jCoDAvNV3CoEFkZMKgc3VwcG9ydMKgZm9ywqBBeGlzLMKgQVJU
UEVDLTjCoFBDSWXCoGRyaXZlcgo+Pj4+Pj4KPj4+Pj4+IMKgwqBPbsKgMjgvMDMvMjAyMsKgMDM6
NDQswqDsnbTsmZXshJ3CoHdyb3RlOgo+Pj4+Pj4+IMKgwqDCoFRoaXPCoHNlcmllc8KgcGF0Y2hl
c8KgaW5jbHVkZcKgbmV3bHnCoFBDSWXCoHN1cHBvcnTCoGZvcsKgQXhpc8KgQVJUUEVDLTjCoFNv
Qy4KPj4+Pj4+PiDCoMKgwqBBUlRQRUMtOMKgaXPCoHRoZcKgU29DwqBwbGF0Zm9ybcKgb2bCoEF4
aXPCoENvbW11bmljYXRpb25zLgo+Pj4+Pj4+IMKgwqDCoFBDSWXCoGNvbnRyb2xsZXLCoGRyaXZl
csKgYW5kwqBwaHnCoGRyaXZlcsKgaGF2ZcKgYmVlbsKgbmV3bHnCoGFkZGVkLgo+Pj4+Pj4+IMKg
wqDCoFRoZXJlwqBpc8KgYWxzb8KgYcKgbmV3wqBNQUlOVEFJTkVSwqBpbsKgdGhlwqBhZGRpdGlv
bsKgb2bCoHBoecKgZHJpdmVyLgo+Pj4+Pj4+IMKgwqDCoFBDSWXCoGNvbnRyb2xsZXLCoGlzwqBk
ZXNpZ25lZMKgYmFzZWTCoG9uwqBEZXNpZ24tV2FyZcKgUENJZcKgY29udHJvbGxlcsKgSVAKPj4+
Pj4+PiDCoMKgwqBhbmTCoFBDSWXCoHBoecKgaXPCoGRlc2luZ2VkwqBiYXNlZMKgb27CoFNBTVNV
TkfCoFBIWcKgSVAuCj4+Pj4+Pj4gwqDCoMKgSXTCoGFsc2/CoGluY2x1ZGVzwqBtb2RpZmljYXRp
b25zwqB0b8KgdGhlwqBEZXNpZ24tV2FyZcKgY29udHJvbGxlcsKgZHJpdmVywqB0b8KgCj4+Pj4+
Pj4gwqDCoMKgcnVuwqB0aGXCoDY0Yml0LWJhc2VkwqBBUlRQRUMtOMKgUENJZcKgY29udHJvbGxl
csKgZHJpdmVyLgo+Pj4+Pj4+IMKgwqDCoEl0wqBjb25zaXN0c8Kgb2bCoDbCoHBhdGNoZXPCoGlu
wqB0b3RhbC4KPj4+Pj4+PiDCoMKgwqAKPj4+Pj4+PiDCoMKgwqBUaGlzwqBzZXJpZXPCoGhhc8Kg
YmVlbsKgdGVzdGVkwqBvbsKgQVhJU8KgU1fCoGJyaW5nLXVwwqBib2FyZMKgCj4+Pj4+Pj4gwqDC
oMKgd2l0aMKgQVJUUEVDLTjCoGNoaXBzZXQuCj4+Pj4+Pgo+Pj4+Pj4gwqDCoFlvdcKgbG9zdMKg
bWFpbMKgdGhyZWFkaW5nLsKgVGhpc8KgbWFrZXPCoHJlYWRpbmfCoHRoaXPCoGRpZmZpY3VsdMKg
Zm9ywqB1cy7CoFBsdXMKPj4+Pj4+IMKgwqB5b3XCoHNlbnTCoHNvbWV0aGluZ8Kgbm9uLWFwcGxp
Y2FibGXCoChwYXRjaMKgIzIpLMKgc2/CoHBsZWFzZcKgcmVzZW5kLgo+Pj4+Pj4KPj4+Pj4+IMKg
wqBLbm93aW5nwqByZWNlbnTCoFNhbXN1bmfCoHJlbHVjdGFuY2XCoHRvwqBleHRlbmTCoGV4aXN0
aW5nwqBkcml2ZXJzwqBhbmTCoGFsd2F5cwo+Pj4+Pj4gwqDCoGR1cGxpY2F0ZSzCoHBsZWFzZcKg
cHJvdmlkZcKgZGVzY3JpcHRpb24vYW5hbHlzaXPCoHdoecKgdGhpc8KgZHJpdmVywqBjYW5ub3TC
oGJlCj4+Pj4+PiDCoMKgY29tYmluZWTCoHdpdGjCoGV4aXN0aW5nwqBkcml2ZXIuwqBUaGXCoGFu
c3dlcsKgbGlrZTrCoHdlwqBuZWVkwqBzZXZlcmFswqBzeXNjb24KPj4+Pj4+IMKgwqBiZWNhdXNl
wqB3ZcKgZG/CoG5vdMKgaW1wbGVtZW50wqBvdGhlcsKgZnJhbWV3b3Jrc8KgKGxpa2XCoGludGVy
Y29ubmVjdCnCoGFyZcKgbm90Cj4+Pj4+PiDCoMKgdmFsaWQuCj4+Pj4+Pgo+Pj4+Pj4gwqDCoEJl
c3TCoHJlZ2FyZHMsCj4+Pj4+PiDCoMKgS3J6eXN6dG9mCj4+Pj4+IMKgwqAKPj4+Pj4gwqDCoEhl
bGxvLMKgS3J6eXN6dG9mCj4+Pj4+IMKgwqBUaGFua3PCoGZvcsKgeW91csKgcmV2aWV3Lgo+Pj4+
PiDCoMKgCj4+Pj4+IMKgwqBwYXRjaCMywqB3YXPCoHNlbnTCoHRvwqB0aGXCoHdyb25nwqBmb3Jt
YXTCoHNvwqBzZW50wqBhZ2Fpbi4KPj4+Pj4gwqDCoFNvcnJ5wqBmb3LCoGNhdXNpbmfCoGNvbmZ1
c2lvbi4KPj4+PiDCoMKgCj4+Pj4gwqBUaGXCoGZpcnN0wqBzZW5kaW5nwqB3YXPCoEhUTUwuwqBT
ZWNvbmTCoHdhc8KgYnJva2VuwqB0ZXh0LMKgc2/CoHN0aWxswqBub3TCoHdvcmtpbmcuCj4+Pj4K
Pj4+PiDCoFBsZWFzZcKgcmVzZW5kwqBldmVyeXRoaW5nwqB3aXRowqBwcm9wZXLCoHRocmVhZGlu
Zy4KPj4+IMKgCj4+PiDCoEhlbGxvLMKgS3J6eXN6dG9mCj4+PiDCoAo+Pj4gwqBJwqBzZW50wqBw
YXRjaCMywqB0aHJlZcKgdGltZXMuCj4+PiDCoGR1ZcKgdG/CoHRoZcKgaW5mbHVlbmNlwqBvZsKg
dGhlwqBlbWFpbMKgc3lzdGVtLAo+Pj4gwqB0aGVyZcKgd2FzwqBzb21ldGhpbmfCoHdyb25nwqB3
aXRowqB0aGXCoGZpcnN0wqBhbmTCoHNlY29uZMKgbWFpbHMuCj4+PiDCoFNvcnJ5wqBmb3LCoGNh
dXNpbmfCoGNvbmZ1c2lvbi4KPj4+IMKgRGlkwqB5b3XCoHJlY2VpdmXCoHRoZcKgdGhpcmTCoHBh
dGNowqBpwqBzZW50wqB5b3U/Cj4+Cj4+IE1heWJlLMKgScKgZG9uJ3TCoGtub3cuwqBJdCdzwqBu
b3TCoHRocmVhZGVkwqBzb8KgaXQnc8KgZGlmZmljdWx0wqB0b8KgZmluZMKgaXQKPj4gYW1vbmfC
oG90aGVywqAxMDDCoGVtYWlscy4uLgo+IAo+IEkgdGhpbmsgeW91IGFsc28gcmVjZWl2ZWQgYSBu
b3JtYWwgcGF0Y2gjIDIuCj4gCj4+PiDCoMKgCj4+Pj4+IMKgwqBUaGlzwqBwYXRjaMKgaXPCoHNw
ZWNpYWxpemVkwqBpbsKgQXJ0cGVjLTgswqAKPj4+Pj4gwqDCoHRoZcKgU29DwqBQbGF0Zm9ybcKg
b2bCoEF4aXPCoENvbW11bmljYXRpb24swqBhbmTCoGlzwqBuZXdsecKgYXBwbGllZC4KPj4+Pj4g
wqDCoFNpbmNlwqB0aGXCoHRhcmdldMKgU29DwqBwbGF0Zm9ybcKgaXPCoGRpZmZlcmVudMKgZnJv
bcKgdGhlwqBkcml2ZXLCoHByZXZpb3VzbHnCoAo+Pj4+PiDCoMKgdXNlZMKgYnnCoFNhbXN1bmcs
wqBpdMKgaXPCoGRpZmZpY3VsdMKgdG/CoG1lcmdlwqB3aXRowqB0aGXCoGV4aXN0aW5nwqBkcml2
ZXIuCj4+Pj4KPj4+PiDCoFJlY2VudGx5wqBJwqBhbHdheXPCoHNhd8Kgc3VjaMKgYW5zd2Vyc8Kg
YW5kwqBzb21ldGltZXPCoGl0wqB3YXPCoHRydWUswqBzb21ldGltZXMKPj4+PiDCoG5vdC7CoFdo
YXTCoGlzwqBleGFjdGx5wqBkaWZmZXJlbnQ/Cj4+Pj4KPj4+PiDCoEJlc3TCoHJlZ2FyZHMsCj4+
Pj4gwqBLcnp5c3p0b2YKPj4+IMKgCj4+PiDCoFRoZcKgbWFpbsKgcmVhc29uwqB0aGlzwqBwYXRj
aMKgc2hvdWxkwqBiZcKgYWRkZWTCoGlzwqB0aGF0Cj4+PiDCoHRoaXPCoHBhdGNowqBpc8Kgbm90
wqB0aGXCoGRyaXZlcsKgYXBwbGllZMKgdG/CoGV4eW5vc8KgcGxhdGZvcm0uCj4+Cj4+IFN0aWxs
wqB0aGlzwqBkb2VzwqBub3TCoGV4cGxhaW7CoHdoecKgeW91wqBuZWVkwqBzZXBhcmF0ZcKgZHJp
dmVyLgo+IAo+IFBDSWUgZHJpdmVyIG9mIGFydHBlYy04IGlzIG5vdCBhdmFpbGFibGUgaW4gZXh5
bm9zIHBsYXRmb3JtLgo+IGJlY2F1c2UgdGhlIFBDSWUgb2YgYXJ0cGVjIGFuZCBleHlub3MgaGF2
ZSB2ZXJ5IGRpZmZlcmVudCAKPiBoYXJkd2FyZSBpbiBTb0MgZGVzaWduLgo+IE5vdCBvbmx5IGl0
IGlzIHRoZSBTb0MgZGlmZmVyZW50LCAKPiBidXQgdGhlIGhhcmR3YXJlIGRlc2lnbiBvZiBQQ0ll
IGlzIGFsc28gZGlmZmVyZW50Lgo+IFRoZXJlZm9yZSwgd2UgYXJlIHVzaW5nIGRyaXZlcidzIGNv
bXBhdGlibGUgCj4gYXMgYXhpcywgYXJ0cGVjOC1wY2llIHJhdGhlciB0aGFuIHNhbXN1bmcsIGFy
dHBlYzgtcGNpZS4KCllvdSBrZWVwIHJlcGVhdGluZyB0aGUgc2FtZSBvdmVyIGFuZCBvdmVyLiBX
aGF0IGlzIGRpZmZlcmVudD8gRHJpdmVycwpjYW4gc3VwcG9ydCBkaWZmZXJlbnQgZGV2aWNlcywg
SSBhbHJlYWR5IHdyb3RlIGl0LiBKdXN0IGJlY2F1c2UgZGV2aWNlCmlzIGRpZmZlcmVudCBkb2Vz
IG5vdCBtZWFuIGl0IHNob3VsZCBoYXZlIHNlcGFyYXRlIGRyaXZlci4KCj4gCj4+PiDCoEJlY2F1
c2XCoHRoZcKgU29DwqBwbGF0Zm9ybcKgaXPCoGRpZmZlcmVudCzCoAo+Pj4gwqB0aGXCoElQwqBj
b25maWd1cmF0aW9uwqBvZsKgUENJZcKgaXPCoGFsc2/CoGRpZmZlcmVudC4KPj4KPj4gV2hhdMKg
aXPCoGV4YWN0bHnCoGRpZmZlcmVudD/CoFVzdWFsbHnCoGRyaXZlcnPCoGNhbsKgc3VwcG9ydMKg
SVDCoGJsb2Nrc8Kgd2l0aAo+PiBzb21lwqBkaWZmZXJlbmNlcy4uLgo+Pgo+Pj4gwqBXZcKgd2ls
bMKgb3JnYW5pemXCoGHCoGRyaXZlcsKgZm9ywqBBcnRwZWMtOMKgcGxhdGZvcm3CoGFuZMKgCj4+
PiDCoGlmwqB0aGVyZcKgaXPCoG5vwqBzcGVjaWFswqByZWFzb24swqBtYWludGFpbsKgdGhpc8Kg
Cj4+PiDCoHdpdGhvdXTCoGFkZGluZ8KgaXTCoGZyb23CoHRoZcKgbmV4dMKgc2VyaWVzLgo+Pgo+
PiBJwqBkb24ndMKgdW5kZXJzdGFuZMKgdGhpcy4KPj4KPj4KPj4gQmVzdMKgcmVnYXJkcywKPj4g
S3J6eXN6dG9mCj4gCj4gQWxzbywgYXMgeW91IGtub3csCj4gZXh5bm9zIGRyaXZlciBpcyBkZXNp
Z25lZCBhY2NvcmRpbmcgdG8gZXh5bm9zIFNvQyBwbGF0Zm9ybSwKPiBzbyBib3RoIGZ1bmN0aW9u
IGFuZCB2YXJpYWJsZSBuYW1lcyBzdGFydCB3aXRoIGV4eW5vcy4KClRoYXQncyBoYXJkbHkgYSBw
cm9ibGVtLi4uCgo+IENvbXBhcmVkIHRvIHRoZSBleGlzdGluZyBleHlub3MgZHJpdmVyLCAKPiB5
b3UgY2FuIHNlZSB0aGF0IHRoZSBzdHJ1Y3R1cmUgYW5kIHR5cGUgb2YgZnVuY3Rpb24gYXJlIGRp
ZmZlcmVudC4KCk5vLCBJIGNhbm5vdCBzZWUgaXQuIFlvdSBjb2RlZCB0aGUgZHJpdmVyIHRoYXQg
d2F5LCB5b3UgY2FuIGNvZGUgaXQgaW4Kb3RoZXIgd2F5LgoKPiBGb3IgdGhpcyByZWFzb24sIGl0
IGlzIGRpZmZpY3VsdCB0byB1c2UgdGhlIGV4aXN0aW5nIGV4eW5vcyBkcml2ZXIgCj4gZm9yIGFy
dHBlYy4KCk5hbWluZyBvZiBmdW5jdGlvbnMgYW5kIHN0cnVjdHVyZXMgaXMgbm90IG1ha2luZyBp
dCBkaWZmaWN1bHQuIFRoYXQncwpub3QgdGhlIHJlYXNvbi4KCj4gT3VyIGlkZWEgaXMgdG8gcmVn
aXN0ZXIgYSBuZXcgUENJZSBkcml2ZXIgZm9yIGFydHBlYy04IFNvQyBwbGF0Zm9ybSAKPiBhbmQg
bWFpbnRhaW4gaXQgaW4gdGhlIGZ1dHVyZS4KCldlIGFsc28gd2FudCB0byBtYWludGFpbiBFeHlu
b3MgUENJZSBkcml2ZXIgaW4gdGhlIGZ1dHVyZS4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

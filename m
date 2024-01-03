Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EBB8C46CD2
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jan 2024 02:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HwzSitUTs29kFlW/EGVvRfpBOlJ8QRLQYZUZCRTTYFE=; b=31lshie/eCnFDk
	QZnKJM+EiJsWfvpAaov8ITxcxQs8AQmnd2RCqEklOL2FaQUmItFwzOXRnQaQFZ541tXdWiQTQMWVJ
	WCHUlLvpA5HInzvmk2owTm1/MgicSWsh7Yny//kiMQRoZvcEcCqFN2ZV2tazd1KkXeB2gRTh6tkPp
	w+eFd3falspm6MgsVfMmfP0hVHdeUNjej3lFcyLWVt/aQEF2CPiLt9cMJqFXCaSJMIql7JQu4GZbj
	cNDMObNl7NzmhV6/WvX05623MEYrr+otrqAViUiva0plzRtLgYquvIG7nGHl0SXe4k1HGDqzFj5lB
	oiYzM4iBlCboScUPphSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKqbU-009XFV-2o;
	Wed, 03 Jan 2024 02:03:32 +0000
Received: from out-185.mta0.migadu.com ([2001:41d0:1004:224b::b9])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKqbR-009XEN-2q
	for linux-phy@lists.infradead.org;
	Wed, 03 Jan 2024 02:03:31 +0000
Message-ID: <a5aca886-ca0a-8170-417f-a189ec28c87f@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1704247402;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eOagWnUDEoE7GjMOwjXwuSws8DvWaGldfOWW9LSOez0=;
	b=AvNSM4tnQjbmv09Q1fefRqvvAEFSK5ZhpSZAjwRz+IznlQ9HIvGN6vebT2KRCNVc2kXoDb
	8V2X5cSMaxQ74W/QoFqrQry++k5XYKI2eaYqE6gbJc0X8is3X/WQs5o+1OJiFbOZLwiKc9
	+y3C32PXtTMm0avn2LH0rjW3cwsFm58=
Date: Wed, 3 Jan 2024 10:03:14 +0800
MIME-Version: 1.0
Subject: Re: [PATCH net-next] net: phy: Cleanup struct mdio_driver_common
Content-Language: en-US
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, andrew@lunn.ch, olteanv@gmail.com, hkallweit1@gmail.com,
 kabel@kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20231228072350.1294425-1-yajun.deng@linux.dev>
 <ZZRJLg6U0G5CNRQ0@shell.armlinux.org.uk>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Yajun Deng <yajun.deng@linux.dev>
In-Reply-To: <ZZRJLg6U0G5CNRQ0@shell.armlinux.org.uk>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_180330_060849_2519FFC6 
X-CRM114-Status: GOOD (  15.92  )
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

Ck9uIDIwMjQvMS8zIDAxOjM0LCBSdXNzZWxsIEtpbmcgKE9yYWNsZSkgd3JvdGU6Cj4gT24gVGh1
LCBEZWMgMjgsIDIwMjMgYXQgMDM6MjM6NTBQTSArMDgwMCwgWWFqdW4gRGVuZyB3cm90ZToKPj4g
VGhlIHN0cnVjdCBtZGlvX2RyaXZlcl9jb21tb24gaXMgYSB3cmFwcGVyIGZvciBkcml2ZXItbW9k
ZWwgc3RydWN0dXJlLAo+PiBpdCBjb250YWlucyBkZXZpY2VfZHJpdmVyIGFuZCBmbGFncy4gVGhl
cmUgYXJlIG9ubHkgc3RydWN0IHBoeV9kcml2ZXIKPj4gYW5kIG1kaW9fZHJpdmVyIHRoYXQgdXNl
IGl0LiBUaGUgZmxhZ3MgaXMgdXNlZCB0byBkaXN0aW5ndWlzaCBiZXR3ZWVuCj4+IHN0cnVjdCBw
aHlfZHJpdmVyIGFuZCBtZGlvX2RyaXZlci4KPj4KPj4gV2UgY2FuIHRlc3QgdGhhdCBpZiBwcm9i
ZSBvZiBkZXZpY2VfZHJpdmVyIGlzIGVxdWFsIHRvIHBoeV9wcm9iZS4gVGhpcwo+PiB3YXksIHRo
ZSBzdHJ1Y3QgbWRpb19kcml2ZXJfY29tbW9uIGlzIG5vIGxvbmdlciBuZWVkZWQsIGFuZCBzdHJ1
Y3QKPj4gcGh5X2RyaXZlciBhbmQgdXNiX21kaW9fZHJpdmVyIHdpbGwgYmUgY29uc2lzdGVudCB3
aXRoIG90aGVyIGRyaXZlcgo+PiBzdHJ1Y3RzLgo+IHVzYl9tZGlvX2RyaXZlcj8KClRoaXMgaXMg
YSBtaXN0YWtlLiBJdCBzaG91bGQgYmUgJ21kaW9fZHJpdmVyJy4KCj4KPiBJJ20gbm90IHN1cmUg
d2h5IHRoaXMgY29uc2lzdGVuY3kgaXMgZXZlbiBkZXNpcmVkLCB0aGUgY29tbWl0IG1lc3NhZ2UK
PiBkb2Vzbid0IHByb3Blcmx5IHNheSBfd2h5XyB0aGlzIGNoYW5nZSBpcyBiZWluZyBwcm9wb3Nl
ZC4KCk1vc3QgZHJpdmVycyB1c2UgZGV2aWNlX2RyaXZlciBkaXJlY3RseS4gVGhpcyBzaG91bGQg
YmUgYWRkZWQgdG8gdGhlIGNvbW1pdC4KCkxpa2UgdGhpczoKCnN0cnVjdCBzZGlvX2RyaXZlciB7
CgouLi4gLi4uCgogwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRldmljZV9kcml2ZXIgZHJ2Owp9OwoK
CnN0cnVjdCBwY2llX3BvcnRfc2VydmljZV9kcml2ZXIgewoKLi4uIC4uLgoKIMKgwqDCoMKgwqDC
oMKgIHN0cnVjdCBkZXZpY2VfZHJpdmVyIGRyaXZlcjsKfTsKCmFuZCBzbyBvbiAuLi4KCgo+Cj4+
ICtib29sIGlzX3BoeV9kcml2ZXIoc3RydWN0IGRldmljZV9kcml2ZXIgKmRyaXZlcikKPj4gK3sK
Pj4gKwlyZXR1cm4gZHJpdmVyLT5wcm9iZSA9PSBwaHlfcHJvYmU7Cj4+ICt9Cj4+ICtFWFBPUlRf
U1lNQk9MX0dQTChpc19waHlfZHJpdmVyKTsKPiBEbyB3ZSByZWFsbHkgbmVlZCB0aGlzIGV4cG9y
dGVkPyBJdCBkb2Vzbid0IHNlZW0gbGlrZSBzb21ldGhpbmcgYW55dGhpbmcKPiBvdGhlciB0aGFu
IGNvcmUgTURJTy9waHlsaWIgY29kZSBzaG91bGQga25vdyBhYm91dCwgYW5kIGFsbCB0aGF0IGJl
Y29tZXMKPiBhIHNpbmdsZSBtb2R1bGUgd2hlbiBidWlsZGluZyBpdCBpbiBhIG1vZHVsYXIgd2F5
IC0gcGh5bGliIGNhbid0IGJlIGEKPiBzZXBhcmF0ZSBtb2R1bGUgZnJvbSBtZGlvIHN0dWZmLgpJ
IHRoaW5rIHRoaXMgZXhwb3J0ZWQgY2FuIGJlIHJlbW92ZWQuCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6415BC3DA6E
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jan 2024 11:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zs6uV+j2o2lWJffV0yQMUAqmOg+Lh4lbK5DRszUFOCg=; b=hx85dYPU6cbZxX
	bTPc5+O5uZ5a4sLSDIVEIen3boipsa53hS9Umy3klb9k3isrzL63Al5O+KTT+p9zw19+qKLlNRYFo
	t0yZT928Pxo+sUYwCxR6FLEf4GT7xaSvJVtT/p+uLOBabpO0RXIYmY++gJmylvruvx5dWO3jXLewH
	uZPCwiRijmx8lo64tWuv7+Y+wymYO1utDFBN+lSpQiznGjfEk4nONz5bixu4tpDwjYnU0Ej4qjGHY
	+MtGAitNcQE/7tRuJuzqfAB8t3aUM1D2wdUHxMbe0nY7RqJYTBpnEZ6CH6iWWbvj76z5+c5WZ8Iax
	HIwi485mBQ8YPcw1FP1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKzZp-00AZr2-0Q;
	Wed, 03 Jan 2024 11:38:25 +0000
Received: from out-178.mta1.migadu.com ([95.215.58.178])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKzZl-00AZjI-2e
	for linux-phy@lists.infradead.org;
	Wed, 03 Jan 2024 11:38:23 +0000
Message-ID: <52ea5dbf-2d60-7a23-e525-9dcae2809554@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1704281893;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fWtlIAOzUvDm9M4JJeNbJAd3af9ZIm0GtuZrj7wr4/0=;
	b=G2gwt3l3L4osQhnnysqyLT3YLCLl6GHz5vJT7X83GvaVHeq2VWmghkeOJ7a24SRwe3Aw6s
	mIp10JeJYu9LiuVYg/FnNlRSakB0DuEqJEhmEvLFOWg71oNJyaHvYu8IjNa37RcVF6XYZh
	eQoxUsN8eQhmmMVZn8weTS/il/O1UrQ=
Date: Wed, 3 Jan 2024 19:38:04 +0800
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
 <a5aca886-ca0a-8170-417f-a189ec28c87f@linux.dev>
 <ZZU8I5wwH+y1VsIy@shell.armlinux.org.uk>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Yajun Deng <yajun.deng@linux.dev>
In-Reply-To: <ZZU8I5wwH+y1VsIy@shell.armlinux.org.uk>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_033822_282363_58C23591 
X-CRM114-Status: GOOD (  17.65  )
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

Ck9uIDIwMjQvMS8zIDE4OjUxLCBSdXNzZWxsIEtpbmcgKE9yYWNsZSkgd3JvdGU6Cj4gT24gV2Vk
LCBKYW4gMDMsIDIwMjQgYXQgMTA6MDM6MTRBTSArMDgwMCwgWWFqdW4gRGVuZyB3cm90ZToKPj4g
T24gMjAyNC8xLzMgMDE6MzQsIFJ1c3NlbGwgS2luZyAoT3JhY2xlKSB3cm90ZToKPj4+IEknbSBu
b3Qgc3VyZSB3aHkgdGhpcyBjb25zaXN0ZW5jeSBpcyBldmVuIGRlc2lyZWQsIHRoZSBjb21taXQg
bWVzc2FnZQo+Pj4gZG9lc24ndCBwcm9wZXJseSBzYXkgX3doeV8gdGhpcyBjaGFuZ2UgaXMgYmVp
bmcgcHJvcG9zZWQuCj4+IE1vc3QgZHJpdmVycyB1c2UgZGV2aWNlX2RyaXZlciBkaXJlY3RseS4g
VGhpcyBzaG91bGQgYmUgYWRkZWQgdG8gdGhlIGNvbW1pdC4KPj4KPj4gTGlrZSB0aGlzOgo+Pgo+
PiBzdHJ1Y3Qgc2Rpb19kcml2ZXIgewo+Pgo+PiAuLi4gLi4uCj4+Cj4+ICDCoMKgwqDCoMKgwqDC
oCBzdHJ1Y3QgZGV2aWNlX2RyaXZlciBkcnY7Cj4+IH07Cj4+Cj4+Cj4+IHN0cnVjdCBwY2llX3Bv
cnRfc2VydmljZV9kcml2ZXIgewo+Pgo+PiAuLi4gLi4uCj4+Cj4+ICDCoMKgwqDCoMKgwqDCoCBz
dHJ1Y3QgZGV2aWNlX2RyaXZlciBkcml2ZXI7Cj4+IH07Cj4+Cj4+IGFuZCBzbyBvbiAuLi4KPiAu
Li4gd2hpY2ggaXMgZmluZSBmb3IgdGhvc2Ugb3RoZXIgZHJpdmVycyBiZWNhdXNlIHRoZXkgZG9u
J3Qgc2hhcmUgdGhlCj4gc2FtZSBidXMuIFRoYXQgaXMgbm90IHRoZSBjYXNlIGhlcmUgLSB3ZSBo
YXZlIHR3byBkaWZmZXJlbnQgY2xhc3Nlcwo+IG9mIGRyaXZlcnMgb24gdGhlIHNhbWUgYnVzLgoK
ClllcywgdGhhdCdzIHRydWUuIEJ1dCB3ZSBjYW4gaW1wbGVtZW50IGl0IHdpdGggaXNfcGh5X2Ry
aXZlcigpLiBJIGRvbid0IAp0aGluayB3ZSBuZWVkIGEgZmxhZyBmb3IgdGhhdC4KCj4KPiBJIGRv
bid0IGxpa2UgYSBqdXN0aWZpY2F0aW9uIHRoYXQganVzdCBiZWNhdXNlIG90aGVyIHN1YnN5c3Rl
bXMgZG8KPiBzb21ldGhpbmcgaW4gb25lIHBhcnRpY3VsYXIgd2F5LCB0aGF0IGlzIHRoZSBvbmx5
IHdheSB0aGluZ3Mgc2hvdWxkIGJlCj4gZG9uZS4gSSB0aGluayB0aGVyZSBpcyBnb29kIHJlYXNv
biB0byBoYXZlIHRoZSBzdHJ1Y3R1cmUgd2UgaGF2ZSwgYW5kCj4gdGh1cyB0aGVyZSBuZWVkcyB0
byBiZSBhIGdvb2QgcmVhc29uIHRvIGNoYW5nZSBpdC4KCkl0cyBwdXJwb3NlIGlzIHRvIGNsZWFu
IHVwIHN0cnVjdCBtZGlvX2RyaXZlcl9jb21tb24sIGFuZCBtYWtlIHRoZSBjb2RlIApjbGVhbmVy
LgoKCj4gTWF5YmUgQW5kcmV3IGhhcyBhIGRpZmZlcmVudCBvcGluaW9uLCBidXQgSSB0aGluayB3
ZSBuZWVkIGEgYmV0dGVyCj4ganVzdGlmaWNhdGlvbiBmb3IgdGhpcyBjaGFuZ2UuCj4KCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

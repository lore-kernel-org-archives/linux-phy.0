Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AB28C61DD6
	for <linux-phy@archiver.kernel.org>; Wed,  2 Sep 2026 15:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kvvnl/CMFgDKqNjtV45qgNHAbcXlWyc1Zj0iwvWRTl8=; b=v/7zt/PdhptJxN
	I8vxT3miR4xYwG7QEKSRm7mGhveu5rxXk9mdSDBmr9SUtrfONWP7TjJ5eqsQFgUkbhMpKluxXLrpG
	dttb004KHU1oDNu1+yP63WYY7noPahisMzIMqUPE/lXXflOzr3B/UdVUfZn1IG7cNLwsUfJFeWYUb
	jG2MRl83HToHUKzBaKdRE42+OPNkvW1C17vjRr8H0RdYOYINjNXeHPHTkHNH46Wfa7WI0XdBjvfn7
	Er2OswxGm29z5Md+99nLUhcvMwMi1f0hMuI9ENrHF0fDyRM6nW+XsyCD0N3jvck+DFz9JJo7tAGFk
	U/Y2hcGZtT2q+OwjMpOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1mW1-0000000F2iw-0DLm;
	Wed, 02 Sep 2026 15:04:41 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1mVz-0000000F2iQ-2p7e
	for linux-phy@lists.infradead.org;
	Wed, 02 Sep 2026 15:04:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1441940B58;
	Wed,  2 Sep 2026 15:04:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F9C91F000E9;
	Wed,  2 Sep 2026 15:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788361479;
	bh=aa1jx8xU+AUP+tXE7YiXLIev4mWWNND1A1Q+YE2NzJM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nfZ+3A1k4VZzmXQM0L+fNni3OPqy1Wk6vjYl1SQktfjBJ1rGXiuyNJn2CcE7+9Xzw
	 PD8TorrciyyaPQ1sXAsoReEza9a9eOkRcn5sue+42fFHkoIZ/VAz3KW80ujT+B53tW
	 NjztufZUvYFpkRpQN5sUy8Dss7izUIv/65mUO/w15dYq5q29OeYOe79bLmIOvkRIGN
	 4NAyhHwpGE6DyhGvw/GKAqodZTeYh4K8qS8YSxPEvHmP5Be6R7CAE2bbcgg/ztXpMI
	 eiXXHeHZ5m4SxXvDMro/fNo7XMT0rfG2ikrL1UP0X/sJN8MhzFhNdZsx6f63zrDOC8
	 peh5MSCvkHq6w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v3 06/10] net: pcs: xpcs: add ANRESTART support
 for SGMII link recovery
To: "Coia Prant" <coiaprant@gmail.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260901150111.141037-7-coiaprant@gmail.com>
References: <20260901150111.141037-1-coiaprant@gmail.com>
 <20260901150111.141037-7-coiaprant@gmail.com>
Date: Wed, 02 Sep 2026 15:04:38 +0000
Message-Id: <20260902150438.6F9C91F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFN0YXRlIGdldHRlciBg
eHBjc19nZXRfc3RhdGVfYzM3X3NnbWlpYCBtdXRhdGVzIGhhcmR3YXJlIHN0YXRlIChyZXN0YXJ0
aW5nIGF1dG9uZWdvdGlhdGlvbikgYW5kIGFwcGxpZXMgYSBoYXJkd2FyZS1zcGVjaWZpYyB3b3Jr
YXJvdW5kIHVuaXZlcnNhbGx5IHRvIGFsbCBwbGF0Zm9ybXMuCi0tCgpjb21taXQgNzFkMGI0NGM2
ZWY1MjIxMGY3MDMxMDc2MWFiZWNmNjk2MmNkODg3YQpBdXRob3I6IENvaWEgUHJhbnQgPGNvaWFw
cmFudEBnbWFpbC5jb20+CgpuZXQ6IHBjczogeHBjczogYWRkIEFOUkVTVEFSVCBzdXBwb3J0IGZv
ciBTR01JSSBsaW5rIHJlY292ZXJ5CgpUaGlzIGNvbW1pdCBpbnRyb2R1Y2VzIHN1cHBvcnQgZm9y
IHJlc3RhcnRpbmcgYXV0b25lZ290aWF0aW9uIG9uIHRoZSBEZXNpZ25XYXJlClhQQ1MgSVAgdG8g
aGFuZGxlIGxpbmsgcmVjb3Zlcnkgb24gcGxhdGZvcm1zIGxpa2UgdGhlIFJLMzU2OCBNQUMgc2lk
ZSBTR01JSS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3Bjcy9wY3MteHBjcy5jIGIvZHJp
dmVycy9uZXQvcGNzL3Bjcy14cGNzLmMKPiBpbmRleCAwMzM3ZTJiY2MwMTI1Li41MGI5Y2RmOTRm
ZGFhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L3Bjcy9wY3MteHBjcy5jCj4gKysrIGIvZHJp
dmVycy9uZXQvcGNzL3Bjcy14cGNzLmMKWyAuLi4gXQo+IEBAIC0xMDkzLDEwICsxMDk4LDE1IEBA
IHN0YXRpYyBpbnQgeHBjc19nZXRfc3RhdGVfYzM3X3NnbWlpKHN0cnVjdCBkd194cGNzICp4cGNz
LAo+ICAJCXJldHVybiAwOwo+ICAJfQo+ICAKPiAtCS8qIENsZWFyIEFOIGNvbXBsZXRlIHN0YXR1
cyBvciBpbnRlcnJ1cHQgKi8KPiAtCWlmIChzdGF0ZS0+YW5fY29tcGxldGUpCj4gKwlpZiAoc3Rh
dGUtPmFuX2NvbXBsZXRlKSB7Cj4gKwkJLyogQ2xlYXIgQU4gY29tcGxldGUgc3RhdHVzIG9yIGlu
dGVycnVwdCAqLwo+ICAJCXhwY3Nfd3JpdGUoeHBjcywgTURJT19NTURfVkVORDIsIERXX1ZSX01J
SV9BTl9JTlRSX1NUUywgMCk7Cj4gIAo+ICsJCS8qIEluaXRpYXRlIHRoZSBuZXh0IHJvdW5kIG9m
IEFOICovCj4gKwkJeHBjc19tb2RpZnkoeHBjcywgTURJT19NTURfVkVORDIsIE1JSV9CTUNSLCBC
TUNSX0FOUkVTVEFSVCwKPiArCQkJICAgIEJNQ1JfQU5SRVNUQVJUKTsKPiArCX0KPiArCgpbU2V2
ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBtdXRhdGlvbiBpbnNpZGUgeHBjc19nZXRfc3RhdGVfYzM3
X3NnbWlpIHZpb2xhdGUgdGhlIHBoeWxpbmsgQVBJCnNlbWFudGljcywgd2hpY2ggdHlwaWNhbGx5
IHJlcXVpcmUgc3RhdGUgZ2V0dGVycyB0byBiZSBzaWRlLWVmZmVjdCBmcmVlPwoKQmVjYXVzZSB0
aGUgcGh5bGlua19yZXNvbHZlIHdvcmtxdWV1ZSBwb2xscyB0aGUgc3RhdGUgcGVyaW9kaWNhbGx5
IHdoZW4gdGhlCmxpbmsgaXMgZG93biwgd29uJ3QgdGhpcyBjYXVzZSB0aGUgZ2V0dGVyIHRvIGNv
bnN0YW50bHkgcmVzdGFydCB0aGUKYXV0b25lZ290aWF0aW9uIHN0YXRlIG1hY2hpbmUgYW5kIGdl
bmVyYXRlIGNvbnRpbnVvdXMgTURJTyB0cmFmZmljPwoKRm9yIGluc3RhbmNlLCB3aGVuIHRoZSBT
R01JSSBQSFkgZHJvcHMgdGhlIGNvcHBlciBsaW5rLCBpdCBzZW5kcyBhbiBTR01JSQpjb25maWcg
d29yZCB3aXRoIGxpbms9MC4gVGhlIE1BQyBjb21wbGV0ZXMgYXV0b25lZ290aWF0aW9uIGJhc2Vk
IG9uIHRoaXMgd29yZCwKbWVhbmluZyBzdGF0ZS0+YW5fY29tcGxldGUgaXMgdHJ1ZSBidXQgc3Rh
dGUtPmxpbmsgaXMgZmFsc2UsIHdoaWNoIHRyaWdnZXJzCnRoaXMgZXhhY3QgcGF0aC4KCkFkZGl0
aW9uYWxseSwgZG9lcyB0aGlzIGFwcGx5IGFuIFJLMzU2OC1zcGVjaWZpYyB3b3JrYXJvdW5kIHVu
Y29uZGl0aW9uYWxseSB0bwphbGwgR2VuZXJpYyBEVyBYUENTIGNvbnRyb2xsZXJzPyBTdGFuZGFy
ZCBNQUMtc2lkZSBTR01JSSBhdXRvbWF0aWNhbGx5IGhhbmRsZXMKbGluayBzdGF0ZSB1cGRhdGVz
IHZpYSB0aGUgU0dNSUkgY29uZmlnIHdvcmQgd2l0aG91dCBuZWVkaW5nIG1hbnVhbCBBTgpyZXN0
YXJ0cy4gQ291bGQgdGhpcyBvdmVycmlkZSB0aGF0IGNvbmZvcm1hbnQgYmVoYXZpb3Igb24gb3Ro
ZXIgcGxhdGZvcm1zPwoKPiAgCXJldHVybiAwOwo+ICB9Cj4KCi0tIApTYXNoaWtvIEFJIHJldmll
dyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MDExNTAxMTEuMTQxMDM3
LTEtY29pYXByYW50QGdtYWlsLmNvbT9wYXJ0PTYKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

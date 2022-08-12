Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C695C00140
	for <linux-phy@archiver.kernel.org>; Fri, 12 Aug 2022 08:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RKgE5gWS9AmdN8s16IMBFo/g8XKy1yOcjeeqon7gOJE=; b=Z+r/IQudXhy3fB
	/6oN/JeCIiekX6fiD2PR2z7sAXe3RzRkUs6xbkgjrvlxUa3vyOUUGswqyBKK8G0uypJfgYGTvzeZH
	ohTJnPh5izA8l3Gv/7JOnuuBxyWC1U28SApuBBB6pz2g2/sxdDoqYKXVCJ9nzKnO1ti4V82JXy9Hz
	MLqcqv8JygwG0Jq7PY05WFWHG7/382pBR10K2vNwbnxAvwkaakd2ns41iPCv+BpK2v/sOr3ftHeBw
	8DedjswTlXVVPEKoBU9iRZtHdh3iffKn3i+fE3WfA9x3nPMKLt0imlBew3DLFbqSqB+sUKKsCC40v
	cV24aGZgOuJdGTVUMepA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMPuk-0030Pq-Sn; Fri, 12 Aug 2022 08:21:06 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMPuf-0030Nk-NF
	for linux-phy@lists.infradead.org; Fri, 12 Aug 2022 08:21:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3BB3661199;
	Fri, 12 Aug 2022 08:21:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D968C433C1;
	Fri, 12 Aug 2022 08:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660292459;
	bh=d9zP4H0UFD4Sl1+Gv++ashYrv/DoMSrzuwjV1oU6id0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H/VDuK0oPVft7Tl0EFQRN351+RUZqh/nPihJv4R0QVsNdcbUDQcadtIYvrcBfoxm0
	 MfxJO6qpBHXP00kWXGHUcsyHf8R6QSp25CLvUBmIY4CjCSKCi6O88hOT7KtXhCdEao
	 VLFGndmzkSscb9xLbW49nvhLnt48pfY8zcs15XQopkB9DCj6uhTYAk6lWd7mlQ2piu
	 4GBYJpwRBeAhNf68FbnpAXim9BvV1u7CS/LBZolSf9ZttBJA/Y9/pzSFLVVYbv1Ubs
	 zXwS25h0mudgwOKRedun/NoRUfLeX7hR3COIfhSd3md8eAKYtaNg1WMVNLNvZ6UsFP
	 lAnfJ42W66+Bg==
Received: by pali.im (Postfix)
	id 1E74B9CF; Fri, 12 Aug 2022 10:20:56 +0200 (CEST)
Date: Fri, 12 Aug 2022 10:20:55 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"kabel@kernel.org" <kabel@kernel.org>,
	Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Message-ID: <20220812082055.dvwmjcvsyb3iglav@pali>
References: <20220531124159.3e4lgn2v462irbtz@shindev>
 <20220809094234.cpv6tdpmqfb3cfqq@pali>
 <20220810103654.w3yurhdeulgyepbb@shindev>
 <20220812045650.nzisin52zfbbwhsq@shindev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220812045650.nzisin52zfbbwhsq@shindev>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_012101_878672_C7358F1B 
X-CRM114-Status: GOOD (  26.88  )
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

T24gRnJpZGF5IDEyIEF1Z3VzdCAyMDIyIDA0OjU2OjUwIFNoaW5pY2hpcm8gS2F3YXNha2kgd3Jv
dGU6Cj4gT24gQXVnIDEwLCAyMDIyIC8gMTk6MzYsIFNoaW4naWNoaXJvIEthd2FzYWtpIHdyb3Rl
Ogo+ID4gT24gQXVnIDA5LCAyMDIyIC8gMTE6NDIsIFBhbGkgUm9ow6FyIHdyb3RlOgo+ID4gPiBI
ZWxsbyBTaGluaWNoaXJvIQo+ID4gCj4gPiBbLi4uXQo+ID4gCj4gPiA+IFNvcnJ5IGZvciBsYXRl
IHJlcGx5LiBBdCB0aGUgdGltZSB3aGVuIHlvdSBzZW50IHRoaXMgbWVzc2FnZSBJIGhhZAo+ID4g
PiBpc3N1ZXMgd2l0aCBvZmZpY2Ugc3RhdGlvbiBhbmQgd2FzIHdhaXRpbmcgZm9yIHJlcGFpcmlu
ZyBzdXBwb3J0LiBBbmQKPiA+ID4gYWZ0ZXIgdGhhdCBJIGZvcmdvdCBhYm91dCB0aGlzIGVtYWls
Lgo+ID4gPiAKPiA+ID4gTm93IEkgaGF2ZSBsb29rZWQgYXQgaXQuIEZvciB0ZXN0aW5nIHB1cnBv
c2VzIEkgdG9vayBFc3ByZXNzb2JpbiBWNQo+ID4gPiBib2FyZCBhbmQgc29tZSByYW5kb20gU0FU
QSBkaXNrIChzb21lIFNhbXN1bmcgU1NEKS4gSSBpbnN0YWxsZWQgbGF0ZXN0Cj4gPiA+IGZpcm13
YXJlcyAoc2VjdXJlLWZpcm13YXJlLCBBUk0gdHJ1c3RlZC1maXJtd2FyZSBhbmQgVS1Cb290KSBv
bgo+ID4gPiBFc3ByZXNzb2JpbidzIFNQSS1OT1IgYW5kIExpbnV4IGtlcm5lbCB2ZXJzaW9uIDUu
MTguMTYgb24gU0QgY2FyZC4KPiA+ID4gCj4gPiA+IERpc2sgaXMgc3VjY2Vzc2Z1bGx5IGRldGVj
dGVkIGluIFUtQm9vdCBhczoKPiA+IAo+ID4gSGVsbG8gUGFsaSEgVGhhbmsgeW91IGZvciBsb29r
aW5nIGludG8gdGhpcy4gU28sIHRoZXJlIHNob3VsZCBiZSBzb21ldGhpbmcKPiA+IGRpZmZlcmVu
dCBiZXR3ZWVuIHlvdXIgc3lzdGVtIGFuZCBteSBzeXN0ZW0uCj4gPiAKPiA+ID4gQ291bGQgeW91
IHBsZWFzZSBjaGVjayBpZiB5b3Ugc3RpbGwgaGF2ZSB0aGVzZSBpc3N1ZXMgd2l0aCB0aGUgNS4x
OC4xNgo+ID4gPiBrZXJuZWwgdmVyc2lvbiAoSUlSQyBpdCBzaG91bGQgYmUgdGhlIGxhdGVzdCA1
LjE4IHJlbGVhc2UpPwo+ID4gPiAKPiA+ID4gQW5kIGNvdWxkIHlvdSBwbGVhc2UgY2hlY2sgaWYg
eW91ciBkaXNrIGlzIHdvcmtpbmcgZmluZSBpbiBVLUJvb3Q/Cj4gPiAKPiA+IFllcywgSSB3aWxs
IGNoZWNrIHRoZXNlIHBvaW50cy4gTGV0IG1lIGhhdmUgc2V2ZXJhbCBkYXlzIHRvIHdvcmsgb24g
dGhlbS4KPiAKPiBIZWxsbyBQYWxpLCBJJ3ZlIHRyaWVkIHRoZSBsYXRlc3QgNS4xOC54IGtlcm5l
bCBhbmQgZGlzayBkZXRlY3Rpb24gYnkgVS1ib290Lgo+IFVuZm9ydHVuYXRlbHksIHRoZSBpc3N1
ZSBpcyBzdGlsbCBvYnNlcnZlZCB3aXRoIHRoZSBrZXJuZWwgdjUuMTguMTYuIFdoZW4gSQo+IGNv
bm5lY3QgbXkgU1NEIHRvIHRoZSBib2FyZCwgaXQgcHJpbnRzIG91dCB0aGUgbWVzc2FnZSAiYXRh
MTogU0FUQSBsaW5rIGRvd24KPiAoU1N0YXR1cyAxMDEgU0NvbnRyb2wgMzAwKSIsIGFuZCB0aGUg
U1NEIGlzIG5vdCBkZXRlY3RlZCBhcyBhIHNkIGRldmljZS4KPiAKPiBGcm9tIFUtQm9vdCwgbXkg
U1NEIGlzIGRldGVjdGVkLiAic2NzaSBzY2FuIiBjb21tYW5kIHNob3dzIHRoZSBTU0QgdmVuZG9y
IG5hbWUKPiAiU2FuRGlzayIuIEkgd2FzIGFibGUgdG8gbG9vayBpbiBleHQ0IGZpbGVzeXN0ZW0g
b24gdGhlIFNTRCBmcm9tIFUtQm9vdC4gU28gaXQKPiBsb29rcyBvayBmcm9tIFUtQm9vdCB0byBh
Y2Nlc3MgdGhlIFNTRC4KPiAKPiAgIE1hcnZlbGw+PiBzY3NpIHNjYW4KPiAgIHNjYW5uaW5nIGJ1
cyBmb3IgZGV2aWNlcy4uLgo+ICAgVGFyZ2V0IHNwaW51cCB0b29rIDAgbXMuCj4gICBBSENJIDAw
MDEuMDMwMCAzMiBzbG90cyAxIHBvcnRzIDYgR2JwcyAweDEgaW1wbCBTQVRBIG1vZGUKPiAgIGZs
YWdzOiBuY3EgbGVkIG9ubHkgcG1wIGZic3MgcGlvIHNsdW0gcGFydCBzeHMgCj4gICAgIERldmlj
ZSAwOiAoMDowKSBWZW5kb3I6IEFUQSBQcm9kLjogU2FuRGlzayBTRFNTREEyNCBSZXY6IFUyMTAK
PiAgICAgICAgICAgICAgIFR5cGU6IEhhcmQgRGlzawo+ICAgICAgICAgICAgICAgQ2FwYWNpdHk6
IDIyODkzNi41IE1CID0gMjIzLjUgR0IgKDQ2ODg2MjEyOCB4IDUxMikKPiAgIE1hcnZlbGw+PiBz
Y3NpIGluZm8KPiAgIERldmljZSAwOiAoMDowKSBWZW5kb3I6IEFUQSBQcm9kLjogU2FuRGlzayBT
RFNTREEyNCBSZXY6IFUyMTAKPiAgICAgICAgICAgICAgIFR5cGU6IEhhcmQgRGlzawo+ICAgICAg
ICAgICAgICAgQ2FwYWNpdHk6IDIyODkzNi41IE1CID0gMjIzLjUgR0IgKDQ2ODg2MjEyOCB4IDUx
MikKPiAgIE1hcnZlbGw+PiBleHQ0bHMgc2NzaSAwIC8KPiAgIDxESVI+ICAgICAgIDQwOTYgLgo+
ICAgPERJUj4gICAgICAgNDA5NiAuLgo+ICAgPERJUj4gICAgICAxNjM4NCBsb3N0K2ZvdW5kCj4g
ICAgICAgICAgICAgICAgICA0IGJhcgo+ICAgTWFydmVsbD4+Cj4gCj4gCj4gSSBub3RpY2VkIG9u
ZSBkaWZmZXJlbmNlIGJldHdlZW4geW91ciBzeXN0ZW0gYW5kIG1pbmU6IFUtQm9vdCB2ZXJzaW9u
Lgo+IE9uIG15IHN5c3RlbSwgaXQgaGFzIHJhdGhlciBvbGQgdmVyc2lvbiBub3c6Cj4gCj4gICBN
YXJ2ZWxsPj4gdmVyc2lvbgo+ICAgVS1Cb290IDIwMTcuMDMtYXJtYWRhLTE3LjEwLjItZzE0YWVl
ZGMgKEp1biAwMSAyMDE4IC0gMTU6Mzk6MTAgKzA4MDApCj4gICBhYXJjaDY0LWxpbnV4LWdudS1n
Y2MgKExpbmFybyBHQ0MgNS4yLTIwMTUuMTEtMikgNS4yLjEgMjAxNTEwMDUKPiAgIEdOVSBsZCAo
R05VIEJpbnV0aWxzKSAyLjI1LjAgTGluYXJvIDIwMTVfMTAKPiAKPiBEbyB5b3UgdGhpbmsgaXQn
cyB3b3J0aCB0cnlpbmcgdGhlIGxhdGVzdCBVLWJvb3Q/Cj4gCj4gLS0gCj4gU2hpbidpY2hpcm8g
S2F3YXNha2kKClllcywgcGxlYXNlIHVwZGF0ZSBmaXJtd2FyZXMgdG8gdGhlIGxhdGVzdHMgdmVy
c2lvbnMuIE9yIGF0IGxlYXN0IHRyeSB0bwpib290IG5ldyBVLUJvb3QgdmlhIFVBUlQgKHdpdGhv
dXQgcmVwbGFjaW5nIGV4aXN0aW5nIHZlcnNpb24pIGFuZCBjaGVjawpmb3IgZGlmZmVyZW5jZXMu
CgpCdWlsZGluZyBkb2N1bWVudGF0aW9uczoKaHR0cHM6Ly90cnVzdGVkZmlybXdhcmUtYS5yZWFk
dGhlZG9jcy5pby9lbi9sYXRlc3QvcGxhdC9tYXJ2ZWxsL2FybWFkYS9idWlsZC5odG1sCmh0dHBz
Oi8vc291cmNlLmRlbnguZGUvdS1ib290L3UtYm9vdC8tL2Jsb2IvdjIwMjIuMDcvZG9jL1JFQURN
RS5tYXJ2ZWxsCgpVQVJUIGJvb3RpbmcgZG9jdW1lbnRhdGlvbiBpcyBjdXJyZW50bHkgd2FpdGlu
ZyBmb3IgcmV2aWV3OgpodHRwczovL3Jldmlldy50cnVzdGVkZmlybXdhcmUub3JnL2MvVEYtQS90
cnVzdGVkLWZpcm13YXJlLWEvKy8xNjE5OAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

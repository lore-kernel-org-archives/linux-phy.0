Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02B8FC5AC7C
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 10:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hhk76Z0ufghWhjtxS4L+oHK5oUdexpwjIygdxWJ70H0=; b=ltSIP5vrapfEjS
	veJNBjYAZKzsFRlmRQj/+2245mYorj2Wy3xI4X9t6oDhyKWNUTL/ldXLs5dW3hMOgao1r5WMHBfR0
	OD5Q00RxIn+yYxFhOC7rnsgFp0HlrX4d+oUtJ6Z0EDvnXRVwVf07+ufgvXVqDaxl5bks+Ctczg1Qm
	RDlvEA2tvfSKok9ctYGFVJ8ew73VIg7wASk6iBpYZ2zIc6/D2NacfFQHsrQPuRv9/ihKz46Va9/zA
	g1K06psXa2CnrcGpl4WwAWOFjTfXZUZBWY6VX37tVUJ8GD3HliMq2qkU/PcIwqgVQpEHoD/tGDLfu
	nVZ5DB2qy6Vf/K1XieBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsHN2-00000007Zir-2tby;
	Fri, 07 Aug 2026 10:00:08 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsHN1-00000007Zil-3WuI
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 10:00:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 75F61406B9;
	Fri,  7 Aug 2026 10:00:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DABD31F000E9;
	Fri,  7 Aug 2026 10:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786096807;
	bh=uoFo+0qWOo7EjHVbum7BKJa8TYReTkAStSvX4qsSdmg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cGViLZSYvl5F1/PZ7EYZWzfJc9XOQbXL6XuUi2pShwnMwuV+NSF60XubSM7Hmh2sR
	 OMwaECsATMgOmly//VKIgv7N0xZHTrNOF8YU/LfjNIOcrOYRWxv8k7mZ0B1C7ouwUn
	 VpxpYQpw6T2zvRZa6c2tzfNfVTCDjdmNCcjyV3HAXxsD+0CHP+Y6H6rKP3CdB+EgDv
	 DU3y07wiCCqF6Jnzi+hV9lJXgJtX11EYPwEtHNhFxarGcfA2d89q9JJrLExUJG8kiv
	 TofJEQn6chKXgdRFDpxd1C4qFiW/r/K3YK7fHdMahgbH1WTd+W8MuKq1q8OSbCZlCV
	 E5jCNVNU0t0VA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 2/6] phy: qcom: qmp-pcie: Add QMP PCIe Multi-PHY
 driver
To: "Qiang Yu" <qiang.yu@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260807-glymur_linkmode_0807-v9-2-dd1c7e236e29@oss.qualcomm.com>
References: <20260807-glymur_linkmode_0807-v9-0-dd1c7e236e29@oss.qualcomm.com>
 <20260807-glymur_linkmode_0807-v9-2-dd1c7e236e29@oss.qualcomm.com>
Date: Fri, 07 Aug 2026 10:00:05 +0000
Message-Id: <20260807100006.DABD31F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWlzc2luZyBlcnJv
ciBjaGVjayBmb3Igb2ZfcHJvcGVydHlfY291bnRfc3RyaW5ncygpIGxlYWRzIHRvIHBhc3Npbmcg
YSBuZWdhdGl2ZSB2YWx1ZSBhcyBhcnJheSBzaXplIHRvIGRldm1fa2NhbGxvYygpLgotLQoKLS0t
IFBhdGNoIFsyXTogW1BBVENIIHY5IDIvNl0gcGh5OiBxY29tOiBxbXAtcGNpZTogQWRkIFFNUCBQ
Q0llIE11bHRpLVBIWSBkcml2ZXIgLS0tCmNvbW1pdCA1MTQzYjBkNTRkYzAxMzQzMDM4ODVmOTA4
MTYzNjRjNjAyMWZhOTkzCkF1dGhvcjogUWlhbmcgWXUgPHFpYW5nLnl1QG9zcy5xdWFsY29tbS5j
b20+CgpwaHk6IHFjb206IHFtcC1wY2llOiBBZGQgUU1QIFBDSWUgTXVsdGktUEhZIGRyaXZlcgoK
VGhpcyBjb21taXQgYWRkcyBhIGRlZGljYXRlZCBkcml2ZXIgZm9yIFFNUCBQQ0llIFBIWSBoYXJk
d2FyZSBibG9ja3MgdGhhdApzdXBwb3J0IG11bHRpcGxlIGxpbmsgdG9wb2xvZ2llcyAoYmlmdXJj
YXRpb24pLiBJdCByZWFkcyB0aGUgY3VycmVudCBsaW5rIG1vZGUKZnJvbSBhIFRDU1IgcmVnaXN0
ZXIsIGFuZCBkeW5hbWljYWxseSBpbnN0YW50aWF0ZXMgdGhlIHJlcXVpcmVkIHN1Yi1QSFlzLApj
bG9jayBwcm92aWRlcnMsIGFuZCAjcGh5LWNlbGxzIHRvIGV4cG9zZSBpbmRpdmlkdWFsIHN1Yi1Q
SFlzIGJ5IGluZGV4LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tcW1wLXBjaWUtbXVsdGlwaHkuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC1wY2llLW11bHRpcGh5LmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAw
MDAwMDAuLmU5M2NiYTQzNjlmYjEKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUtbXVsdGlwaHkuYwoKWyAuLi4gXQoKPiArc3RhdGlj
IGludCBxbXBfcGNpZV9tdWx0aXBoeV9yZWdpc3Rlcl9jbG9ja3Moc3RydWN0IGRldmljZSAqZGV2
LAo+ICsJCQkJCSAgICAgc3RydWN0IGRldmljZV9ub2RlICpucCwKPiArCQkJCQkgICAgIHN0cnVj
dCBxbXBfcGNpZV9tdWx0aXBoeSAqcW1wX2RhdGEpCj4gK3sKPiArCWludCBudW1fcGlwZV9vdXRw
dXRzOwo+ICsJaW50IGksIHJldDsKPiArCj4gKwludW1fcGlwZV9vdXRwdXRzID0gb2ZfcHJvcGVy
dHlfY291bnRfc3RyaW5ncyhucCwgImNsb2NrLW91dHB1dC1uYW1lcyIpOwo+ICsKPiArCXFtcF9k
YXRhLT5udW1fcGlwZV9vdXRwdXRzID0gbnVtX3BpcGVfb3V0cHV0czsKPiArCXFtcF9kYXRhLT5w
aXBlX291dF9jbGtzID0gZGV2bV9rY2FsbG9jKGRldiwgbnVtX3BpcGVfb3V0cHV0cywKPiArCQkJ
CQkgICAgICAgc2l6ZW9mKCpxbXBfZGF0YS0+cGlwZV9vdXRfY2xrcyksCj4gKwkJCQkJICAgICAg
IEdGUF9LRVJORUwpOwoKW1NldmVyaXR5OiBNZWRpdW1dCklmIHRoZSBjbG9jay1vdXRwdXQtbmFt
ZXMgcHJvcGVydHkgaXMgbWlzc2luZyBmcm9tIHRoZSBkZXZpY2UgdHJlZSwKb2ZfcHJvcGVydHlf
Y291bnRfc3RyaW5ncygpIHdpbGwgcmV0dXJuIGEgbmVnYXRpdmUgZXJyb3IgY29kZSAoc3VjaCBh
cwotRUlOVkFMKS4gCgpXaWxsIHBhc3NpbmcgdGhpcyBuZWdhdGl2ZSB2YWx1ZSBhcyB0aGUgYXJy
YXkgc2l6ZSB0byBkZXZtX2tjYWxsb2MoKSBjYXVzZSBpdAp0byBpbXBsaWNpdGx5IGNhc3QgdG8g
YSBtYXNzaXZlIHNpemVfdCB2YWx1ZT8gV2hpbGUgdGhlIGFsbG9jYXRvciB3aWxsIGxpa2VseQpm
YWlsIHNhZmVseSBhbmQgcmV0dXJuIE5VTEwsIGl0IHNlZW1zIHRoaXMgd291bGQgY2F1c2UgdGhl
IGRyaXZlciB0byByZXR1cm4KLUVOT01FTSBpbnN0ZWFkIG9mIHByb3BhZ2F0aW5nIHRoZSBhY3R1
YWwgZXJyb3IgY29kZS4KClNob3VsZCB3ZSBhZGQgYSBjaGVjayB0byB2ZXJpZnkgbnVtX3BpcGVf
b3V0cHV0cyA+IDAgYmVmb3JlIGF0dGVtcHRpbmcgdGhlCmFsbG9jYXRpb24/Cgo+ICsJaWYgKCFx
bXBfZGF0YS0+cGlwZV9vdXRfY2xrcykKPiArCQlyZXR1cm4gLUVOT01FTTsKPiArCj4gKwlmb3Ig
KGkgPSAwOyBpIDwgbnVtX3BpcGVfb3V0cHV0czsgaSsrKSB7Cj4gKwkJcmV0ID0gX19waHlfcGlw
ZV9jbGtfcmVnaXN0ZXIoZGV2LCBucCwgaSwKPiArCQkJCQkgICAgICAmcW1wX2RhdGEtPnBpcGVf
b3V0X2Nsa3NbaV0pOwo+ICsJCWlmIChyZXQpCj4gKwkJCXJldHVybiByZXQ7Cj4gKwl9CgotLSAK
U2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYw
ODA3LWdseW11cl9saW5rbW9kZV8wODA3LXY5LTAtZGQxYzdlMjM2ZTI5QG9zcy5xdWFsY29tbS5j
b20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64400CCA464
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 12:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xu8sY/ETQacBNZwzEKZWeBid4aw5KHRx4W/sMn+mvJ0=; b=TMB31aCkbHg6/8
	aQof+YwaitAVN1Kr6H/DcAHeB8eU1fRPw8foaUn3beduEZT3m7B6gyf97u+fj4Nd2mubkPMcVd+Y/
	3VsJEH9PP3aZ8zKQBOv3urND+WkkCVcmPsTViEEEn9/7oyFxlxspZoACGzxlJ/2W6pYuCTO9V6IWo
	zAdvYWvduMMZcA0+IavzTBSs49V5qt4Pi/06KaBitJEGGGZdGgsPojYksVsZCDqS9iTZ2FJXcx8SI
	7e0Jch4IIaPfoDzl6mExZUyqp8jvOhDxo8u63Viu1O100cvof+8MKVrjo/IWpIpjjxlQm2IL1vAiQ
	OBqAjdIB+szSZDi0T5ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHhI3-00000002wpK-01lZ;
	Fri, 16 Oct 2026 12:44:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHhI1-00000002woy-465Y
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 12:44:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 25C1360008;
	Fri, 16 Oct 2026 12:44:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5866C1F000C4;
	Fri, 16 Oct 2026 12:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792154640;
	bh=awipEOFjF3CP5bTbtcd3FdjcFGoV8veaDF5o6dntZoc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hV192nui9zlOXIhGZRrQQ0Teq2V2pXxGS/hADzSQbVn6jWxRB+5W2o9z4+D4hPrSB
	 CrZeo69r/YXgOMv67DWrw+4FcWqiULJg+px9Y2OsZ/qZPuy3S+1/HYLskTYhOP1Dqv
	 KzkEMZpGTLQxz1RvJzCyXII6sW1mJzvcR+r+mpzS7RaiOFRMtkK5MO2O4Kt308RMvl
	 Spaq29cuJKocR8zwkTPtrzqbKiklTFqi8nRusmFwD6kI7bm8bYu96hT1uqnjYwrGB/
	 JKZkOJQ0GaAA3pT2kQnjIC81CHmv0SBvYpiOwnhSv9OQszqUGB86UXHlgVt/2QeSSI
	 Z4OXbu58jYtmA==
Message-ID: <sashiko-outbox-174330@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 10/23] scsi: ufs: mediatek: Rework the crypt-boost
 stuff
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261016-mt8196-ufs-v14-10-e8d565e0cd45@collabora.com>
References: <20261016-mt8196-ufs-v14-0-e8d565e0cd45@collabora.com>
 <20261016-mt8196-ufs-v14-10-e8d565e0cd45@collabora.com>
Date: Fri, 16 Oct 2026 12:43:59 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gdWZzOiBtZWRpYXRl
azogc2lsZW50bHkgc3dhbGxvd2luZyBwcm9iZSBkZWZlcnJhbCBmb3IgY3J5cHQgYm9vc3QgY2xv
Y2tzCi0tCgpjb21taXQgYzdlODJkZDE3N2U5MDI1ODVkNWI5NDZjNGIyNGI2MmZkOWE4NTk5NQpB
dXRob3I6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5j
b20+CgpzY3NpOiB1ZnM6IG1lZGlhdGVrOiBSZXdvcmsgdGhlIGNyeXB0LWJvb3N0IHN0dWZmCgpU
aGlzIGNvbW1pdCByZXdvcmtzIHRoZSBpbml0aWFsaXphdGlvbiBvZiBjcnlwdC1ib29zdCBmdW5j
dGlvbmFsaXR5IGJ5CnJlbW92aW5nIGNsb2NrIHdyYXBwZXIgZnVuY3Rpb25zIGFuZCBkaXJlY3Rs
eSBjYWxsaW5nIGRldm1fY2xrX2dldCgpIGluCnVmc19tdGtfaW5pdF9ib29zdF9jcnlwdCgpLiBJ
dCBhbHNvIHVwZGF0ZXMgcHJvcGVydHkgbmFtZXMgdG8gaW5jbHVkZQp0aGUgbWVkaWF0ZWsgdmVu
ZG9yIHByZWZpeC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVr
LmMgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCj4gaW5kZXggMWJlNTMzMDIwZWQ0
Yy4uMmJjZjM1YmZhYmI3NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRp
YXRlay5jCj4gKysrIGIvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwoKWyAuLi4gXQoK
PiBAQCAtNjgwLDY1ICs2NjUsNTMgQEAgc3RhdGljIHZvaWQgdWZzX210a19ib29zdF9jcnlwdChz
dHJ1Y3QgdWZzX2hiYSAqaGJhLCBib29sIGJvb3N0KQoKWyAuLi4gXQoKPiArCWNmZy0+Y2xrX2Ny
eXB0X211eCA9IGRldm1fY2xrX2dldChkZXYsICJjcnlwdF9tdXgiKTsKPiArCWlmIChJU19FUlIo
Y2ZnLT5jbGtfY3J5cHRfbXV4KSkgewo+ICsJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGdldCBj
bG9jayBjcnlwdF9tdXg6ICVwZVxuIiwgY2ZnLT5jbGtfY3J5cHRfbXV4KTsKPiArCQlyZXR1cm47
Cj4gKwl9CiAgICAgICAgXl5eXl5eXgoKW1NldmVyaXR5OiBNZWRpdW1dCkRvZXMgdGhpcyBjb2Rl
IHNpbGVudGx5IHN3YWxsb3cgcHJvYmUgZGVmZXJyYWxzPwoKSWYgdGhlIFVGUyBob3N0IGRyaXZl
ciBwcm9iZXMgYmVmb3JlIHRoZSBjbG9jayBwcm92aWRlcnMgZm9yIGNyeXB0X211eCwKY3J5cHRf
bHAsIG9yIGNyeXB0X3BlcmYsIGRldm1fY2xrX2dldCgpIHdpbGwgcmV0dXJuIC1FUFJPQkVfREVG
RVIuCgpCZWNhdXNlIHVmc19tdGtfaW5pdF9ib29zdF9jcnlwdCgpIHJldHVybnMgdm9pZCwgdGhp
cyBlcnJvciBpcyBjYXVnaHQsCmxvZ2dlZCwgYW5kIHN3YWxsb3dlZCBpbnN0ZWFkIG9mIGJlaW5n
IHByb3BhZ2F0ZWQgdXAgdG8gdGhlIHByb2JlIHNlcXVlbmNlLgoKVGhpcyBtZWFucyB0aGUgVUZT
X01US19DQVBfQk9PU1RfQ1JZUFRfRU5HSU5FIGZ1bmN0aW9uYWxpdHkgaXMgcGVybWFuZW50bHkK
ZGlzYWJsZWQgaW5zdGVhZCBvZiBjb3JyZWN0bHkgd2FpdGluZyBmb3IgdGhlIGNsb2NrIHByb3Zp
ZGVycyB0byBwcm9iZS4KCk5vdGUgdGhhdCB3aGlsZSBhIGZvbGxvdy11cCBwYXRjaCBmaXhlcyB0
aGlzIGV4YWN0IGlzc3VlIGZvciB0aGUKZHZmc3JjLXZjb3JlIHJlZ3VsYXRvciBieSBtb3Zpbmcg
aXQgdG8gdWZzX210a19nZXRfc3VwcGxpZXMoKSwgdGhlIGNsb2Nrcwp3ZXJlIGxlZnQgYmVoaW5k
IGluIHVmc19tdGtfaW5pdF9ib29zdF9jcnlwdCgpIGFuZCByZW1haW4gYnJva2VuIGF0IHRoZQpl
bmQgb2YgdGhlIHNlcmllcy4KCj4gIAo+IC0JaWYgKHVmc19tdGtfaW5pdF9ob3N0X2NsayhoYmEs
ICJjcnlwdF9scCIsCj4gLQkJCQkgICZjZmctPmNsa19jcnlwdF9scCkpCj4gLQkJZ290byBkaXNh
YmxlX2NhcHM7Cj4gKwljZmctPmNsa19jcnlwdF9scCA9IGRldm1fY2xrX2dldChkZXYsICJjcnlw
dF9scCIpOwo+ICsJaWYgKElTX0VSUihjZmctPmNsa19jcnlwdF9scCkpIHsKPiArCQlkZXZfZXJy
KGRldiwgIkZhaWxlZCB0byBnZXQgY2xvY2sgY3J5cHRfbHA6ICVwZVxuIiwgY2ZnLT5jbGtfY3J5
cHRfbHApOwo+ICsJCXJldHVybjsKPiArCX0KPiAgCj4gLQlpZiAodWZzX210a19pbml0X2hvc3Rf
Y2xrKGhiYSwgImNyeXB0X3BlcmYiLAo+IC0JCQkJICAmY2ZnLT5jbGtfY3J5cHRfcGVyZikpCj4g
LQkJZ290byBkaXNhYmxlX2NhcHM7Cj4gKwljZmctPmNsa19jcnlwdF9wZXJmID0gZGV2bV9jbGtf
Z2V0KGRldiwgImNyeXB0X3BlcmYiKTsKPiArCWlmIChJU19FUlIoY2ZnLT5jbGtfY3J5cHRfcGVy
ZikpIHsKPiArCQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBnZXQgY2xvY2sgY3J5cHRfcGVyZjog
JXBlXG4iLCBjZmctPmNsa19jcnlwdF9wZXJmKTsKPiArCQlyZXR1cm47Cj4gKwl9Cj4gIAo+IC0J
Y2ZnLT5yZWdfdmNvcmUgPSByZWc7Cj4gLQljZmctPnZjb3JlX3ZvbHQgPSB2b2x0Owo+ICsJaG9z
dC0+Y3J5cHQgPSBjZmc7Cj4gIAlob3N0LT5jYXBzIHw9IFVGU19NVEtfQ0FQX0JPT1NUX0NSWVBU
X0VOR0lORTsKPiAtCj4gLWRpc2FibGVfY2FwczoKPiAtCXJldHVybjsKPiAgfQoKLS0gClNhc2hp
a28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTAxNi1t
dDgxOTYtdWZzLXYxNC0wLWU4ZDU2NWUwY2Q0NUBjb2xsYWJvcmEuY29tP3BhcnQ9MTAKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

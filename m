Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9352AC44507
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 19:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29JXbwr/EzEJu9zYR39MHs1x6tAu6XLOLcX6juJ+mcU=; b=r7Dh/P0bf9xM4E
	hveATHwK/jeZHC+i389tkkkQrTMNvzNZNJve+FhEPHLVPQk18ReuIU/gwuDdQ5QKhjuKo9KC0OL89
	72fYtSw/6BeSSH/bE069O18+m4AR+ArO6rYFOvY07qmX/wbDn/DhDTdNzyg1FTLe+Uc6/0bIxYRRl
	DUHSpaEc2Z8ffQlax0ZhJn3HFDezY5JoSflDjmCC29/R5LeyppxsZQYIOzc5DIpa1vKDxFqdgyKM8
	FbYbMR4SzQSOpmzhigGTmiJtiFDtmqrEzi/W4+2eU886Fht2iuFO6pMzCxYa+/kkCNmjWaDSB6BAK
	EOglVS2QWoUuGaeL8O4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjH5-0000000DAsh-0atk;
	Tue, 14 Jul 2026 19:58:39 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjH3-0000000DAsT-0szO
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 19:58:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CD24442DE9;
	Tue, 14 Jul 2026 19:58:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45C8C1F00A3A;
	Tue, 14 Jul 2026 19:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784059116;
	bh=aGitlCzPrMPaNylSmWm9QFlHiQweLEH7GcpNFL69zfI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Dx3LujzAjncLeWnt1VhD+TsRmjxZQg08LMLzBiqtuentdw40gO1rMGI56vpIDOAbX
	 WwjKeoXoWtVygytta8a73N8UofrznByWSpV1us5v78+MzHHvPMhdB/OKgLj/Ml5EJJ
	 WVInZK+qInASoKe64Cx5R9v5lxKMOKMkuq0y0m+jDXShAimNRbPhnyC27OepbidKxK
	 diX10rY/cvwCR/UQTkMsKaZPPJvjZ2w6OoVIqAGikyul8fRLanlbLyyMgzwY4PbLz7
	 zRV20ym6OGZqRHjBPFRUk7NpldLjvsDymn2o6Z63qCyum7useVGmfWxq3QregGx6d/
	 FSd0pIMMTBbDw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 18/35] phy: rockchip: usbdp: Rename mode_change to
 phy_needs_reinit
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-18-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-18-6cb3e769d4c5@collabora.com>
Date: Tue, 14 Jul 2026 19:58:35 +0000
Message-Id: <20260714195836.45C8C1F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBVbmNsb2NrZWQgcmVnaXN0ZXIgYWNjZXNzIGxlYWRpbmcgdG8gc3lzdGVtIGhhbmcg
d2hlbiBhbiB1bnN1cHBvcnRlZCBQSFkgbW9kZSBpcyByZXF1ZXN0ZWQuCi0tCgotLS0gUGF0Y2gg
WzE4XTogW1BBVENIIHYxMyAxOC8zNV0gcGh5OiByb2NrY2hpcDogdXNiZHA6IFJlbmFtZSBtb2Rl
X2NoYW5nZSB0byBwaHlfbmVlZHNfcmVpbml0IC0tLQpjb21taXQgZmU0MGU3MGEzNjE0ZjJlYzdj
ODFlMGU4YmQ3MDM5ZWZlMjUyMDJjMwpBdXRob3I6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3Rp
YW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKcGh5OiByb2NrY2hpcDogdXNiZHA6IFJlbmFtZSBt
b2RlX2NoYW5nZSB0byBwaHlfbmVlZHNfcmVpbml0CgpUaGlzIGNvbW1pdCByZW5hbWVzIHRoZSBt
b2RlX2NoYW5nZSBwcm9wZXJ0eSB0byBwaHlfbmVlZHNfcmVpbml0IHRvIGJldHRlcgpyZWZsZWN0
IHRoYXQgYSByZS1pbml0aWFsaXphdGlvbiBpcyByZXF1aXJlZCBub3QganVzdCBvbiBtb2RlIGNo
YW5nZXMsIGJ1dAphbHNvIG9uIGNhYmxlIG9yaWVudGF0aW9uIGNoYW5nZXMuCgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMv
cGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXggMjQxMDg4MTZlM2I5NS4u
ZTQ0ZDE5YzlkMTE5MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11
c2JkcC5jCgpbIC4uLiBdCgo+IEBAIC05NTEsMTUgKzk1MSwxNSBAQCBzdGF0aWMgaW50IHJrX3Vk
cGh5X3Bvd2VyX29uKHN0cnVjdCBya191ZHBoeSAqdWRwaHksIHU4IG1vZGUpCj4gIAo+ICAJCWlm
ICh1ZHBoeS0+bW9kZSAmIFVEUEhZX01PREVfVVNCKQo+ICAJCQlya191ZHBoeV91M19wb3J0X2Rp
c2FibGUodWRwaHksIGZhbHNlKTsKPiAtCQl1ZHBoeS0+bW9kZV9jaGFuZ2UgPSBmYWxzZTsKPiAt
CX0gZWxzZSBpZiAodWRwaHktPm1vZGVfY2hhbmdlKSB7Cj4gKwkJdWRwaHktPnBoeV9uZWVkc19y
ZWluaXQgPSBmYWxzZTsKPiArCX0gZWxzZSBpZiAodWRwaHktPnBoeV9uZWVkc19yZWluaXQpIHsK
CltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IGNhbiBy
ZXR1cm5pbmcgMCBmb3IgdW5zdXBwb3J0ZWQgbW9kZXMKbGVhZCB0byB1bmNsb2NrZWQgcmVnaXN0
ZXIgYWNjZXNzZXMgYW5kIHN5c3RlbSBoYW5ncz8KCkluIHJrX3VkcGh5X3Bvd2VyX29uKCksIGlm
IHRoZSByZXF1ZXN0ZWQgbW9kZSBpcyBub3Qgc3VwcG9ydGVkIGJ5IHRoZQpoYXJkd2FyZSwgdGhl
IGZ1bmN0aW9uIHByaW50cyBhbiBpbmZvIG1lc3NhZ2UgYW5kIHJldHVybnMgMCAoc3VjY2VzcykK
aW5zdGVhZCBvZiBhbiBlcnJvcjoKCiAgICAgICAgaWYgKCEodWRwaHktPm1vZGUgJiBtb2RlKSkg
ewogICAgICAgICAgICAgICAgZGV2X2luZm8odWRwaHktPmRldiwgIm1vZGUgMHglMDJ4IGlzIG5v
dCBzdXBwb3J0XG4iLCBtb2RlKTsKICAgICAgICAgICAgICAgIHJldHVybiAwOwogICAgICAgIH0K
ClRoaXMgc3VjY2VzcyByZXR1cm4gdHJpY2tzIHRoZSBjYWxsZXIgaW50byBwcm9jZWVkaW5nIHRv
IGFjY2VzcyB1bmNsb2NrZWQKaGFyZHdhcmU6Cgpya191ZHBoeV9kcF9waHlfcG93ZXJfb24oKSB7
CiAgICAgICAgLi4uCiAgICAgICAgcmV0ID0gcmtfdWRwaHlfcG93ZXJfb24odWRwaHksIFVEUEhZ
X01PREVfRFApOwogICAgICAgIGlmIChyZXQpCiAgICAgICAgICAgICAgICBnb3RvIHVubG9jazsK
CiAgICAgICAgcmtfdWRwaHlfZHBfbGFuZV9lbmFibGUodWRwaHksIHVkcGh5LT5kcF9sYW5lcyk7
CiAgICAgICAgLi4uCn0KCkJlY2F1c2UgdGhlIG1vZGUgd2FzIHVuc3VwcG9ydGVkLCB0aGUgY2xv
Y2tzIGFyZSBub3QgZW5hYmxlZC4gQWNjZXNzaW5nCnRoZSByZWdpc3RlcnMgaW4gcmtfdWRwaHlf
ZHBfbGFuZV9lbmFibGUoKSB3aWxsIHRoZW4gY3Jhc2ggdGhlIHN5c3RlbS4KClNpbWlsYXJseSwg
cmtfdWRwaHlfZHBfcGh5X3Bvd2VyX29mZigpIHVuY29uZGl0aW9uYWxseSBhY2Nlc3NlcyBoYXJk
d2FyZQpyZWdpc3RlcnMgYmVmb3JlIGNoZWNraW5nIGlmIHRoZSBtb2RlIHdhcyBzdXBwb3J0ZWQg
YW5kIHBvd2VyZWQgb246Cgpya191ZHBoeV9kcF9waHlfcG93ZXJfb2ZmKCkgewogICAgICAgIC4u
LgogICAgICAgIG11dGV4X2xvY2soJnVkcGh5LT5tdXRleCk7CiAgICAgICAgcmtfdWRwaHlfZHBf
bGFuZV9lbmFibGUodWRwaHksIDApOwogICAgICAgIHJrX3VkcGh5X3Bvd2VyX29mZih1ZHBoeSwg
VURQSFlfTU9ERV9EUCk7CiAgICAgICAgLi4uCn0KCkRvZXMgaXQgbWFrZSBzZW5zZSB0byByZXR1
cm4gYW4gZXJyb3IgY29kZSBsaWtlIC1FT1BOT1RTVVBQIGZvcgp1bnN1cHBvcnRlZCBtb2Rlcywg
YW5kIGd1YXJkIHRoZSByZWdpc3RlciBhY2Nlc3NlcyBpbiB0aGUgcG93ZXItb2ZmIHBhdGg/Cgo+
ICAJCWlmICh1ZHBoeS0+bW9kZSA9PSBVRFBIWV9NT0RFX0RQKQo+ICAJCQlya191ZHBoeV91M19w
b3J0X2Rpc2FibGUodWRwaHksIHRydWUpOwo+ICAKPiAgCQlyZXQgPSBya191ZHBoeV9pbml0KHVk
cGh5KTsKPiAgCQlpZiAocmV0KQo+ICAJCQlyZXR1cm4gcmV0Owo+IC0JCXVkcGh5LT5tb2RlX2No
YW5nZSA9IGZhbHNlOwo+ICsJCXVkcGh5LT5waHlfbmVlZHNfcmVpbml0ID0gZmFsc2U7Cj4gIAl9
Cj4gIAo+ICAJdWRwaHktPnN0YXR1cyB8PSBtb2RlOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcxNC1yb2NrY2hpcC11c2JkcC1j
bGVhbnVwLXYxMy0wLTZjYjNlNzY5ZDRjNUBjb2xsYWJvcmEuY29tP3BhcnQ9MTgKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93412CD98CF
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 17:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dBTHWTt+zeg033rfcA/e2JrV3XrRHPcZE8xtHR3LGp4=; b=YevuNnWuFSdcUY
	noPp3ewmVpklSc4z8fcd7w2OpdzGH/6+cHUFcsXsx5RsfPrjEiglecq36H+1BAcmkLwSPDsT68UR1
	3uYePd2oe0ksrPFYur+j2U835PgNBhAHNIo/tj4jg81cuofcIPwTUe/BcebjbZo+aOYAnKadAvyum
	vaPfuQf/6Vc7ZgJVHO04lounDg5b/Yw8vKdG3cF7c21TerTU3f2fIEB2Y0XKdKT6e533/8Wu5qtYN
	DriU/GV3aXBbsFiJll+kP8Z/RILunpqepeVyOFig3rkwL2uBib5/kmxs/5sMAtA30sU4Uu+Y0f125
	Vy30RoKnlDt8t7r1PM/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY5Hu-0000000BKGd-0jU6;
	Fri, 12 Jun 2026 17:03:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY5Ht-0000000BKGT-0blb
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 17:03:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 92CCD434E8;
	Fri, 12 Jun 2026 17:03:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14ADB1F000E9;
	Fri, 12 Jun 2026 17:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781283800;
	bh=2e/ewDluqZcF9QQMAbrWuWfztuefytlywL3nY1KgalQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eh/fQESnEdW4nJCvrRUPsqJgp5tAhP//0T4X+0zhlsoY4lOH/M0SD/AC7DgZltBDq
	 uStyR+qkFRnXiWRfkYPjgUwlNE4bhaZfl5sFcp9ufJjTJuWhRJz7JNV1X7/f+mVRh5
	 e72KupdalOoQO9eMAlg2qQO19Y/2YEIzD5T1OG0M12aU1mtKyiZ/DKbJud3vbnEYrI
	 mH+pa5uyrZigVWAa5CuCYLjjTUMNNZRDuIspVMGTge9YsZ0qEvYuW/7hpY5I3LBDYx
	 Eo3wmsPspOGrvsVUqu6SaLn1bQY7g/ph7kPXC6LMULmeRbVZlqn4bq4dy5TE3v1EW4
	 M5uwLtrxo6UrA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 14/18] phy: rockchip: usbdp: Re-init the PHY on
 orientation change
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: neil.armstrong@linaro.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260612-rockchip-usbdp-cleanup-v5-14-efc83069869f@collabora.com>
References: <20260612-rockchip-usbdp-cleanup-v5-14-efc83069869f@collabora.com>
Date: Fri, 12 Jun 2026 17:03:19 +0000
Message-Id: <20260612170320.14ADB1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBya191ZHBoeV9kcF9waHlfY29uZmlndXJlIGFjY2Vzc2VzIHNoYXJlZCBzdGF0ZSBh
bmQgbW9kaWZpZXMgUEhZIHJlZ2lzdGVycyB3aXRob3V0IGhvbGRpbmcgdWRwaHktPm11dGV4LCBy
YWNpbmcgd2l0aCBvcmllbnRhdGlvbiBzd2l0Y2hlcyBhbmQgUEhZIHJlc2V0cy4KLSBbSGlnaF0g
dWRwaHktPnBoeV9uZWVkc19yZWluaXQgaXMgY2xlYXJlZCBiZWZvcmUgaW5pdGlhbGl6YXRpb24g
YnV0IGlzIG5vdCByZXN0b3JlZCBpZiBya191ZHBoeV9pbml0IGZhaWxzLCBwZXJtYW5lbnRseSBi
cmVha2luZyB0aGUgUEhZLgotLQoKY29tbWl0IGM3ZDlkMzhlOWE2OTBjNmEzNTkyZmI5YzBlNDcz
Njk2NmE4Nzk2NzQKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxA
Y29sbGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBSZS1pbml0IHRoZSBQSFkgb24g
b3JpZW50YXRpb24gY2hhbmdlCgpDaGFuZ2luZyB0aGUgY2FibGUgb3JpZW50YXRpb24gcmVjb25m
aWd1cmVzIHRoZSBsYW5lIG11eGluZywgd2hpY2ggcmVxdWlyZXMKcmUtaW5pdGlhbGl6aW5nIHRo
ZSBQSFkuIFRoaXMgcGF0Y2ggc2V0cyB0aGUgcGh5X25lZWRzX3JlaW5pdCBmbGFnIHdoZW4gdGhl
CmNhYmxlIG9yaWVudGF0aW9uIGlzIHN3YXBwZWQgdG8gZW5zdXJlIHRoZSBQSFkgaXMgcmVzZXQg
YW5kIHJlY29uZmlndXJlZAphcHByb3ByaWF0ZWx5LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtdXNiZHAuYwo+IGluZGV4IGEzYjRlMmUwZjU3ODYuLjg5YTA4MjY3NjExYzUg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMK
PiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwpbIC4uLiBd
Cj4gQEAgLTYzMyw3ICs2MzQsMTAgQEAgc3RhdGljIGludCBya191ZHBoeV9vcmllbl9zd19zZXQo
c3RydWN0IHR5cGVjX3N3aXRjaF9kZXYgKnN3LAo+ICAJCWdvdG8gdW5sb2NrX3JldDsKPiAgCX0K
PiAgCj4gLQl1ZHBoeS0+ZmxpcCA9IG9yaWVuID09IFRZUEVDX09SSUVOVEFUSU9OX1JFVkVSU0U7
Cj4gKwlpZiAodWRwaHktPmZsaXAgIT0gZmxpcHBlZCkKPiArCQl1ZHBoeS0+cGh5X25lZWRzX3Jl
aW5pdCA9IHRydWU7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSBidWcgaW50cm9kdWNl
ZCBieSB0aGlzIHBhdGNoLCBidXQgc2V0dGluZwp1ZHBoeS0+cGh5X25lZWRzX3JlaW5pdCBoZXJl
IGludGVyYWN0cyB3aXRoIGFuIGVycm9yIGhhbmRsaW5nIGlzc3VlLgoKSW4gZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmM6cmtfdWRwaHlfcG93ZXJfb24oKSwgdGhlIGZs
YWcKaXMgZWFnZXJseSBjbGVhcmVkIGJlZm9yZSBpbml0aWFsaXphdGlvbjoKCnJrX3VkcGh5X3Bv
d2VyX29uKCkgewogICAgLi4uCiAgICB9IGVsc2UgaWYgKHVkcGh5LT5waHlfbmVlZHNfcmVpbml0
KSB7CiAgICAgICAgdWRwaHktPnBoeV9uZWVkc19yZWluaXQgPSBmYWxzZTsKICAgICAgICAuLi4K
ICAgICAgICByZXQgPSBya191ZHBoeV9pbml0KHVkcGh5KTsKICAgICAgICBpZiAocmV0KQogICAg
ICAgICAgICByZXR1cm4gcmV0OwogICAgLi4uCn0KCklmIHJrX3VkcGh5X2luaXQoKSBmYWlscyAo
Zm9yIGV4YW1wbGUsIGR1ZSB0byBhIHJldHJ5YWJsZSBQTEwgbG9jayB0aW1lb3V0CnJldHVybmlu
ZyAtRVBST0JFX0RFRkVSKSwgdGhlIGZsYWcgaXMgbm90IHJlc3RvcmVkIHRvIHRydWUuIFNpbmNl
IHRoZQpoYXJkd2FyZSBpcyBoZWxkIGluIHJlc2V0IG9uIGZhaWx1cmUsIHdpbGwgc3Vic2VxdWVu
dCBjYWxscyB0bwpya191ZHBoeV9wb3dlcl9vbigpIHNraXAgcmVpbml0aWFsaXphdGlvbiBlbnRp
cmVseSBhbmQgZmFsc2VseSByZXBvcnQKc3VjY2VzcyB3aGlsZSBsZWF2aW5nIGJvdGggVVNCIGFu
ZCBEUCBmdW5jdGlvbmFsbHkgZGVhZD8KCj4gKwo+ICsJdWRwaHktPmZsaXAgPSBmbGlwcGVkOwo+
ICAJcmtfdWRwaHlfc2V0X3R5cGVjX2RlZmF1bHRfbWFwcGluZyh1ZHBoeSk7CgpbU2V2ZXJpdHk6
IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBjYW4gdGhpcyBzdGF0ZSB1
cGRhdGUgcmFjZSB3aXRoIERQIFBIWQpjb25maWd1cmF0aW9uPwoKVGhpcyBmdW5jdGlvbiBob2xk
cyB1ZHBoeS0+bXV0ZXggd2hpbGUgdXBkYXRpbmcgc3RhdGUgbGlrZSB1ZHBoeS0+ZmxpcCBhbmQK
bGFuZSBzZWxlY3Rpb25zIGluIHJrX3VkcGh5X3NldF90eXBlY19kZWZhdWx0X21hcHBpbmcoKS4g
SG93ZXZlciwKcmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgpIGlzIGNhbGxlZCBieSB0aGUgZ2Vu
ZXJpYyBQSFkgZnJhbWV3b3JrIGhvbGRpbmcKb25seSB0aGUgRFAtc3BlY2lmaWMgcGh5LT5tdXRl
eDoKCnJrX3VkcGh5X2RwX3BoeV9jb25maWd1cmUoKSB7CiAgICBzdHJ1Y3QgcmtfdWRwaHkgKnVk
cGh5ID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7CiAgICAvLyAuLi4gYWNjZXNzZXMgdWRwaHktPmRw
X2xhbmVfc2VsIHdpdGhvdXQgdGFraW5nIHVkcGh5LT5tdXRleAogICAgLi4uCn0KCklmIGEgY29u
Y3VycmVudCBUeXBlLUMgbW9kZSBzd2l0Y2ggb3IgVVNCIFBIWSBpbml0aWFsaXphdGlvbiBob2xk
cwp1ZHBoeS0+bXV0ZXggYW5kIHRyaWdnZXJzIHJrX3VkcGh5X2luaXQoKSwgaXQgd2lsbCBhc3Nl
cnQgYWxsIGhhcmR3YXJlCnJlc2V0czoKCnJrX3VkcGh5X2luaXQoKSB7CiAgICAuLi4KICAgIHJr
X3VkcGh5X3Jlc2V0X2Fzc2VydF9hbGwodWRwaHkpOwogICAgLi4uCn0KCkJlY2F1c2UgcmtfdWRw
aHlfZHBfcGh5X2NvbmZpZ3VyZSgpIGRvZXMgbm90IGFjcXVpcmUgdWRwaHktPm11dGV4LCBjYW4g
aXRzCnJlZ2lzdGVyIHdyaXRlcyBpbnRlcmxlYXZlIHdpdGggYSBmdWxsIGhhcmR3YXJlIHJlc2V0
LCBsZWF2aW5nIHRoZSBEUCBQSFkKdW5jb25maWd1cmVkIGFuZCBjYXVzaW5nIGxpbmsgdHJhaW5p
bmcgZmFpbHVyZXM/Cgo+ICAJcmtfdWRwaHlfdXNiX2J2YWxpZF9lbmFibGUodWRwaHksIHRydWUp
Owo+CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNo
c2V0LzIwMjYwNjEyLXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjUtMC1lZmM4MzA2OTg2OWZAY29s
bGFib3JhLmNvbT9wYXJ0PTE0CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK

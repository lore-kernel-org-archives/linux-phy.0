Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 426BCCD8C9F
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 11:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SeaKrZS/bRfGUMFhfMW7cfT62AQN7DV6xPq55KXXbiM=; b=SWic0dhtNciGcn
	gorI1+WY7Lx3Pu2Sx15XmP8g8DCyccz/elsAnFz9iUrcRSoNJMXgMk4eNXjQI+EntzDoMQ4DVTetw
	Tzrplyu35Om2M4SnBB/raJmkG/305wo1l/NPHCS6Ub5BGDsgx0XIho5WJf7DsIXH1HT6ShR2JfhgJ
	dZIaZQNlKWZWhYKuMT30Il3Gm52L+ClC9QIWKAZO6VBLA3/C165CtV6CRvKu1GfrNrUA3U+3vVN29
	gWIJyWzhC208LbAvXHbPQQav7Lj3XEJtX023LJNyIGxD7oi7JtQ/KQZ//B/hy0aGG1vB8EjIL2zTb
	8giKddkIulUJCwpvYyyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWXrX-00000003Ob3-3SCb;
	Mon, 08 Jun 2026 11:09:47 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWXrW-00000003Oaa-2fwe
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 11:09:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E4220601E1;
	Mon,  8 Jun 2026 11:09:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 608BD1F00893;
	Mon,  8 Jun 2026 11:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780916985;
	bh=q0ZSiqx1AJr5m2RCH8vxyxdmAogGfwJ88eXcFweCyas=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jI+6J+koG5HZDsk087D2ug3bV6TJrCVRkDuh9QzqiBupZs73NwCyaaFtK1Tl8iZnL
	 LzMWkSSzYaX+6Px/4MeYpiVJWYjR2QTnPSaCh9mDPqf7f0B9m9gzEz+KBd2H/40xvH
	 nj3AYbalsAPWGZy5Z4kZ1kgzN9tsyGj3cwTTVI5MzhGJHnCaI+on6QpJZwmNCPAMvw
	 /kE5D4Q5D4b296IX3gYINc37X2Cw9Itvf/83hYbPiT3ea9Yc2OpzUUB4+uYmNKOk8Z
	 jKAOYevGhr/TuFms6/4O7HX/BAl7nJPKLsBckiDMDVeumok6K/Zln0ctUqcL8ImKOW
	 4ql0fPhTvRqUg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 08/10] misc: qcom-coincell: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260608100949.36309-9-angelogioacchino.delregno@collabora.com>
References: <20260608100949.36309-9-angelogioacchino.delregno@collabora.com>
Date: Mon, 08 Jun 2026 11:09:45 +0000
Message-Id: <20260608110945.608BD1F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFVuc2FmZSBkb3duY2Fz
dCBvZiBgZGV2LT5wYXJlbnRgIHRvIGBzdHJ1Y3Qgc3BtaV9kZXZpY2VgIGNhdXNpbmcgb3V0LW9m
LWJvdW5kcyByZWFkIGFuZCBrZXJuZWwgcGFuaWMKLS0KCmNvbW1pdCBlYjBmZTEwNWNkMzhiZmY2
MjY5ODA0OTI1YjkwMjMyZTFjNDIyNTIyCkF1dGhvcjogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVn
bm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KCm1pc2M6IHFjb20t
Y29pbmNlbGw6IE1pZ3JhdGUgdG8gZGV2bV9zcG1pX3N1YmRldmljZV9hbGxvY19hbmRfYWRkKCkK
ClRoaXMgY29tbWl0IHVwZGF0ZXMgdGhlIHFjb20tY29pbmNlbGwgZHJpdmVyIHRvIHVzZSBhIGRl
ZGljYXRlZCBTUE1JCnN1Yi1kZXZpY2UgaW5zdGVhZCBvZiBmZXRjaGluZyB0aGUgcmVnbWFwIGZy
b20gaXRzIHBhcmVudC4gSXQgY3JlYXRlcyB0aGUKc3ViLWRldmljZSB1c2luZyB0aGUgcGFyZW50
IGRldmljZSBhbmQgaW5pdGlhbGl6ZXMgYSBzcGVjaWZpYyByZWdtYXAgdG8KaGFuZGxlIHRoZSBi
YXNlIGFkZHJlc3Mgb2Zmc2V0cyBhdXRvbWF0aWNhbGx5LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9taXNjL3Fjb20tY29pbmNlbGwuYyBiL2RyaXZlcnMvbWlzYy9xY29tLWNvaW5jZWxsLmMKPiBp
bmRleCAzYzU3Zjc0MjkxNDc2Li5iMDkwNGY0NDEzMDBjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bWlzYy9xY29tLWNvaW5jZWxsLmMKPiArKysgYi9kcml2ZXJzL21pc2MvcWNvbS1jb2luY2VsbC5j
Cj4gQEAgLTcxLDM3ICs3MSw1NSBAQCBzdGF0aWMgaW50IHFjb21fY29pbmNlbGxfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKWyAuLi4gXQo+IC0JcmMgPSBvZl9wcm9wZXJ0eV9y
ZWFkX3UzMihub2RlLCAicmVnIiwgJmNoZ3IuYmFzZV9hZGRyKTsKPiArCXJjID0gZGV2aWNlX3By
b3BlcnR5X3JlYWRfdTMyKGRldiwgInJlZyIsICZxY29tX2NvaW5jZWxsX3JlZ21hcF9jb25maWcu
cmVnX2Jhc2UpOwo+ICAJaWYgKHJjKQo+ICAJCXJldHVybiByYzsKPiAgCj4gKwlzcGFyZW50ID0g
dG9fc3BtaV9kZXZpY2UoZGV2LT5wYXJlbnQpOwo+ICsJc3ViX3NkZXYgPSBkZXZtX3NwbWlfc3Vi
ZGV2aWNlX2FsbG9jX2FuZF9hZGQoZGV2LCBzcGFyZW50KTsKCltTZXZlcml0eTogSGlnaF0KQ291
bGQgdGhpcyBsZWFkIHRvIGEgcGFuaWMgaWYgdGhlIHBhcmVudCBkZXZpY2UgaXMgbm90IGFjdHVh
bGx5IGFuIFNQTUkKZGV2aWNlPwoKSWYgdGhpcyBkcml2ZXIgaXMgYm91bmQgdG8gYSBkZXZpY2Ug
d2hvc2UgcGFyZW50IGlzIGEgcmVndWxhciBwbGF0Zm9ybQpkZXZpY2UgKGZvciBleGFtcGxlLCB2
aWEgYSBtYWxmb3JtZWQgZGV2aWNlIHRyZWUgb3IgYSBtYW51YWwgc3lzZnMgYmluZCksCmRldi0+
cGFyZW50IHdpbGwgbm90IHBvaW50IHRvIGEgdmFsaWQgc3BtaV9kZXZpY2UuCgpCZWNhdXNlIHRv
X3NwbWlfZGV2aWNlKCkgaXMgYSBjb250YWluZXJfb2YgY2FzdCwgaXQgd2lsbCBibGluZGx5IGNh
c3QgdGhlCnBhcmVudCBkZXZpY2UuIFdoZW4gcGFzc2VkIHRvIGRldm1fc3BtaV9zdWJkZXZpY2Vf
YWxsb2NfYW5kX2FkZCgpLCB0aGUKdW5kZXJseWluZyBzcG1pX3N1YmRldmljZV9hbGxvY19hbmRf
YWRkKCkgZnVuY3Rpb24gcmVhZHMgc3BhcmVudC0+Y3RybDoKCmRyaXZlcnMvc3BtaS9zcG1pLmM6
c3BtaV9zdWJkZXZpY2VfYWxsb2NfYW5kX2FkZCgpIHsKICAgIC4uLgogICAgc2Rldi0+Y3RybCA9
IHNwYXJlbnQtPmN0cmw7CiAgICAuLi4KfQoKU2luY2UgdGhlIHBhcmVudCBpcyBhY3R1YWxseSBh
IHBsYXRmb3JtX2RldmljZSwgdGhpcyBlbmRzIHVwIHJlYWRpbmcgdGhlCm1lbW9yeSBvZmZzZXQg
Y29ycmVzcG9uZGluZyB0byBwbGF0Zm9ybV9kbWFfbWFzayBpbnN0ZWFkIG9mIGEgdmFsaWQgY3Ry
bApwb2ludGVyLiBMYXRlciByZWdtYXAgaW5pdGlhbGl6YXRpb24gd2lsbCBkZXJlZmVyZW5jZSB0
aGlzIGludmFsaWQgcG9pbnRlciwKY2F1c2luZyBhbiBvdXQtb2YtYm91bmRzIHJlYWQuCgpUaGUg
cHJldmlvdXMgZGV2X2dldF9yZWdtYXAoKSBhcHByb2FjaCBhdm9pZGVkIHRoaXMgYnkgc2FmZWx5
IHNlYXJjaGluZyB0aGUKcGFyZW50J3MgZGV2cmVzIGxpc3Qgd2l0aG91dCByZWx5aW5nIG9uIGEg
c3RydWN0dXJhbCBjYXN0LiBJcyB0aGVyZSBhIHdheSB0bwp2ZXJpZnkgdGhlIHBhcmVudCBkZXZp
Y2UgdHlwZSBiZWZvcmUgY2FzdGluZz8KCj4gKwlpZiAoSVNfRVJSKHN1Yl9zZGV2KSkKPiArCQly
ZXR1cm4gUFRSX0VSUihzdWJfc2Rldik7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjA4MTAwOTQ5LjM2MzA5LTEtYW5nZWxvZ2lv
YWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tP3BhcnQ9OAoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

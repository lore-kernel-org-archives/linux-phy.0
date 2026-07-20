Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A0FFC4452B
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 14:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6P2rpzUBcC1ywD1GaYqnSzdCpk2c+VlL68kyF1/5OxI=; b=s+u3kqoOvOZhKr
	+KDJ2l5u+0dvCEKuAzuAICAT7M/aRlCi7D/y8GlVvXXqtRVZHsufREZY7HsAmzyoOvOX3Pu/R34dj
	yza0A/y/TPMDL9+aklLoZWuy10RtxPSWo611MBlk0RjMFm+15NemTQW8yJZ47ic7cg+t9RG4NLjUN
	eaxA+yYvN3JZmaFuIHppscLFt76enYnBy1vtnRmO+wa+Mkq+1B3GiP6c+bq2UJfBb3HiMaIJuS0J/
	vl2DB/X5+Hh/4M5QpYpYtybjPoYpSu3UHk6s3MDywMtRcaptv39hhrCNBrxWK8UcyOgmRGT4PMYmL
	A3SKslN7UwZB5M8bGlXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlokJ-00000006vts-12e6;
	Mon, 20 Jul 2026 14:13:27 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlokH-00000006vtT-2rjm
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 14:13:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 71D9E43CD2;
	Mon, 20 Jul 2026 14:13:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 124A31F000E9;
	Mon, 20 Jul 2026 14:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784556805;
	bh=GJucfKN46+sx2daqg/m0Y5Hzkr3stADaj+ArtzVeFko=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aqOsEVG08J2syFm/MDVx4r8jf4HsN6/PO4Sk5CSGuKvGhXo4d/p9FtRuCpjfI/IqT
	 /iSviJaoP2DXEY4+SK7Iqxqe+nGt1H0QYXvbY8kULHKy5F37ILj1TPxsPE83xObZ7l
	 TDnKuEldxH3rtPycQ9W0IuH+HjUkoHtWJ+twYlF5BxhkSWK0nG5udzs5Kuxp5gGnLB
	 cRB/JhUwzIJIdkIHK1KX3efLT7yA5tcd9WS8xjwdrw5bC4kDFZxe7QEWOym2+XoZUU
	 zetkSjvE3pmUCoafLK7LmvcCKwx4ONgnPGS/0g3+yMaxmirlfqrG3KIDxYwPnyXaMM
	 MNsQOxfoFIrcQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 phy-next 8/8] phy: lynx-10g: use RCW override
 procedure for dynamic protocol change
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: robh@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260720133642.136324-9-vladimir.oltean@nxp.com>
References: <20260720133642.136324-1-vladimir.oltean@nxp.com>
 <20260720133642.136324-9-vladimir.oltean@nxp.com>
Date: Mon, 20 Jul 2026 14:13:24 +0000
Message-Id: <20260720141325.124A31F000E9@smtp.kernel.org>
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
IFtIaWdoXSBBbiBvZmYtYnktb25lIGVycm9yIGluIHRoZSBib3VuZHMgY2hlY2sgZm9yIGBzZXJk
ZXNfaWR4YCB3aXRoaW4gYGZzbF9ndXRzX3NlcmRlc19nZXRfcmN3X292ZXJyaWRlYCBpbmNvcnJl
Y3RseSByZWplY3RzIHRoZSBmaW5hbCBTZXJEZXMgYmxvY2sgb24gdGhlIFNvQy4KLSBbSGlnaF0g
VW5pbml0aWFsaXplZCBsYW5lcyBvbiBgbHMyMDg4YWAgU2VyRGVzMSBoYXZlIHRoZWlyIFhHTUlJ
IGNsb2NrIHNlbGVjdGlvbiBiaXRzIGJsaW5kbHkgb3ZlcndyaXR0ZW4gdG8gR01JSSBkdXJpbmcg
UkNXIGluaXRpYWxpemF0aW9uLgotLQoKLS0tIFBhdGNoIFs4XTogW1BBVENIIHYzIHBoeS1uZXh0
IDgvOF0gcGh5OiBseW54LTEwZzogdXNlIFJDVyBvdmVycmlkZSBwcm9jZWR1cmUgZm9yIGR5bmFt
aWMgcHJvdG9jb2wgY2hhbmdlIC0tLQpjb21taXQgN2UwNjUxZGQwYWU4ZjBmY2QwMjhkNDg3N2E1
NGNjZGIxZGNmZWYyZApBdXRob3I6IFZsYWRpbWlyIE9sdGVhbiA8dmxhZGltaXIub2x0ZWFuQG54
cC5jb20+CgpwaHk6IGx5bngtMTBnOiB1c2UgUkNXIG92ZXJyaWRlIHByb2NlZHVyZSBmb3IgZHlu
YW1pYyBwcm90b2NvbCBjaGFuZ2UKClVwIHVudGlsIHRoaXMgcGF0Y2gsIHRoZSBvbmx5IHByb3Rv
Y29sIGNoYW5nZSBzdXBwb3J0ZWQgd2FzIGJldHdlZW4KMTAwMEJhc2UtWC9TR01JSSBhbmQgMjUw
MEJhc2UtWC4gVGhlIG90aGVycyByZXF1aXJlIGFuIFJDVyBvdmVycmlkZQpwcm9jZWR1cmUgd2hp
Y2ggd2FzIGxhY2tpbmcuCgpTaW5jZSBub3cgdGhlIGd1dHMgZHJpdmVyIHByb3ZpZGVzIHRoZSBt
ZWFucyBvZiBhcHBseWluZyB0aGlzIHByb2NlZHVyZSwKbWFrZSB1c2Ugb2YgaXQgYW5kIHJlbW92
ZSBhbnkgY29tbWVudCB3aGljaCBtZW50aW9uZWQgdGhlIGxpbWl0YXRpb24uCgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1seW54LTEwZy5jIGIvZHJpdmVycy9w
aHkvZnJlZXNjYWxlL3BoeS1mc2wtbHlueC0xMGcuYwo+IGluZGV4IDM4ZGVmMTYwZWYxYWEuLjVl
Y2U3ODg5YWVkN2IgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wt
bHlueC0xMGcuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWx5bngtMTBn
LmMKWyAuLi4gXQo+IEBAIC0xMjI1LDYgKzEyMjMsMTMgQEAgc3RhdGljIGludCBseW54XzEwZ19z
ZXRfbW9kZShzdHJ1Y3QgcGh5ICpwaHksIGVudW0gcGh5X21vZGUgbW9kZSwgaW50IHN1Ym1vZGUp
Cj4gIAlpZiAocG93ZXJlZF91cCkKPiAgCQlseW54XzEwZ19sYW5lX2hhbHQocGh5KTsKPiAgCj4g
KwlpZiAobHlueF8xMGdfbGFuZV9tb2RlX25lZWRzX3Jjd19vdmVycmlkZShsYW5lLCBsYW5lX21v
ZGUpKSB7Cj4gKwkJZXJyID0gZnNsX2d1dHNfbGFuZV9zZXRfbW9kZShwcml2LT5pbmZvLT5pbmRl
eCwgbGFuZS0+aWQsCj4gKwkJCQkJICAgICBsYW5lX21vZGUpOwoKW1NldmVyaXR5OiBIaWdoXQpU
aGlzIGlzbid0IGEgYnVnIGludHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0IGRvZXMgdGhlIHVu
ZGVybHlpbmcgUkNXIG92ZXJyaWRlCnByb2NlZHVyZSBjb250YWluIGFuIG9mZi1ieS1vbmUgZXJy
b3IgdGhhdCByZWplY3RzIHRoZSBmaW5hbCBTZXJEZXMgYmxvY2s/CgpXaGVuIHRoaXMgY2FsbHMg
aW50byBmc2xfZ3V0c19sYW5lX3NldF9tb2RlKCksIGl0IGV2ZW50dWFsbHkgaGl0cyBhIGJvdW5k
cwpjaGVjayBpbiBmc2xfZ3V0c19zZXJkZXNfZ2V0X3Jjd19vdmVycmlkZSgpOgoKZHJpdmVycy9z
b2MvZnNsL2d1dHMuYzpmc2xfZ3V0c19zZXJkZXNfZ2V0X3Jjd19vdmVycmlkZSgpIHsKICAgIC4u
LgogICAgaWYgKHNlcmRlc19pZHggPj0gc29jX2RhdGEtPm51bV9zZXJkZXMgfHwgc2VyZGVzX2lk
eCA8PSAwKQogICAgICAgIHJldHVybiAtRVJBTkdFOwogICAgLi4uCn0KClNpbmNlIHNlcmRlc19p
ZHggaXMgMS1iYXNlZCwgYW5kIHRoaXMgdXNlcyA+PSBpbnN0ZWFkIG9mID4sIHdvbid0IHRoaXMK
Y29tcGxldGVseSBmYWlsIHRvIGFwcGx5IHRoZSBkeW5hbWljIHByb3RvY29sIGNoYW5nZSBmb3Ig
YW55IGludGVyZmFjZSBvbgp0aGUgbGFzdCBTZXJEZXMgYmxvY2sgKGUuZy4gaW5kZXggMiBvbiBT
b0NzIHdpdGggMiBTZXJEZXMgYmxvY2tzKT8KCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHBy
ZS1leGlzdGluZyBpc3N1ZSwgYnV0IGRvZXMgaW5pdGlhbGl6aW5nIHRoZSBTZXJEZXMgUkNXCmlu
YWR2ZXJ0ZW50bHkgY29ycnVwdCB1bm1hbmFnZWQgbGFuZXMgb24gTFMyMDg4QT8KCldoZW4gZnNs
X2d1dHNfbGFuZV9zZXRfbW9kZSgpIGlzIGNhbGxlZCBmb3IgdGhlIGZpcnN0IHRpbWUgb24gYW4g
TFMyMDg4QSBTb0MsCml0IHRyaWdnZXJzIGxzMjA4OGFfc2VyZGVzX2luaXRfcmN3Y3IoKSB0byBi
dWlsZCBhIG5ldyBzdGF0ZSBmb3IgdGhlIFJDVwp1dGlsaXppbmcgc29jLmxhbmVzX2luaXRpYWxp
emVkOgoKZHJpdmVycy9zb2MvZnNsL2d1dHMuYzpsczIwODhhX3NlcmRlc19pbml0X3Jjd2NyKCkg
ewogICAgLi4uCiAgICBmb3JfZWFjaF9zZXRfYml0KGksICZzb2MubGFuZXNfaW5pdGlhbGl6ZWRb
c2VyZGVzX2lkeCAtIDFdLCBNQVhfTlVNX0xBTkVTKQogICAgICAgIGlmIChseW54X2xhbmVfbW9k
ZV91c2VzX3hnbWlpX21hYyhzb2MubGFuZV9tb2RlW3NlcmRlc19pZHggLSAxXVtpXSkpCiAgICAg
ICAgICAgIHJlZyB8PSBMUzIwODhBX1JDV1NSMzBfU1JEU19DTEtfU0VMX1hHTUlJX0xuX1MxKGkp
OwoKICAgIGVyciA9IGZzbF9ndXRzX3Jjd19ybXcoMjksIHJlZywKICAgICAgICAgICAgICAgICAg
IExTMjA4OEFfUkNXU1IzMF9TUkRTX0NMS19FTl9TRUxfWEdNSUlfUzEgfAogICAgICAgICAgICAg
ICAgICAgTFMyMDg4QV9SQ1dTUjMwX1NSRFNfQ0xLX1NFTF9NU0spOwogICAgLi4uCn0KCkJlY2F1
c2UgdGhlIGJsYW5rZXQgbWFzayBMUzIwODhBX1JDV1NSMzBfU1JEU19DTEtfU0VMX01TSyBjbGVh
cnMgdGhlIGJpdHMKZm9yIGFsbCA4IGxhbmVzIGJ1dCBvbmx5IHJlc3RvcmVzIHRoZW0gZm9yIGV4
cGxpY2l0bHkgbWFuYWdlZCBsYW5lcywgd29uJ3QKdW5tYW5hZ2VkIGxhbmVzIChzdWNoIGFzIHRo
b3NlIHVzZWQgYnkgRFBESyBvciBhbHRlcm5hdGl2ZSBmaXJtd2FyZSkgaGF2ZQp0aGVpciBoYXJk
d2FyZSBwcm90b2NvbCBzZWxlY3Rpb24gZm9yY2VkIHRvIDAgKEdNSUkpLCBwb3RlbnRpYWxseSBi
cmVha2luZwpuZXR3b3JrIGNvbm5lY3Rpdml0eT8KCj4gKwkJaWYgKGVycikKPiArCQkJZ290byBv
dXQ7Cj4gKwl9Cj4gKwo+ICAJZXJyID0gbHlueF8xMGdfbGFuZV9kaXNhYmxlX3BjdnQobGFuZSwg
bGFuZS0+bW9kZSk7Cj4gIAlpZiAoZXJyKQo+ICAJCWdvdG8gb3V0OwoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcyMDEzMzY0Mi4x
MzYzMjQtMS12bGFkaW1pci5vbHRlYW5AbnhwLmNvbT9wYXJ0PTgKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

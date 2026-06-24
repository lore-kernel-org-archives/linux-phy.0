Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91391CDB481
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jun 2026 14:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NXDb7phXuJos1uFYplqXYGZSNkFV5GMgV3xWz7RDA4w=; b=uGhSp+5WZQQGGg
	Tr/QhaS7pqEjcS08FGJu2YDFzMtjUAZqByj3mKzoxabpG3l4xknG11erM4xEFgt/GwTVwiwBO0ay5
	s1ZqwqzMa/Zv1YHzJtX0bENH8CzduSh/kETY7ZXxYQXJjCJdVd2XQRZGH3/3u5+tWXBpCfMrZkj3I
	f3USOFGxpUFaFOFMWmB/7T3FIIHmW7Qz1f7siD7Cx5hGEgyiF212k8tEsibE6oiu9yiJ40V6sm5s1
	jqH1xQKFCstU3BXSD+ckRi1QBzZUkDoEs0HKFipBnkucSAtfeo5IN77ATawyhYN72rsMxOeG8BjpZ
	vd0fEtDW+5dJb9d4N6Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcOu6-00000007wOG-1Q64;
	Wed, 24 Jun 2026 14:48:38 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcOu5-00000007wO4-0EMN
	for linux-phy@lists.infradead.org;
	Wed, 24 Jun 2026 14:48:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2145E60018;
	Wed, 24 Jun 2026 14:48:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23B2F1F000E9;
	Wed, 24 Jun 2026 14:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782312515;
	bh=pm9nm+FhyV96b7Alcf/YB+YUsfYZm4GQAMncWQjyL+M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CChCVGjlZmYsaSSXxlPJd8yNIx+jIxgICcJgyRmeNStd0fyzXgXP7gaD9zh7KMwU8
	 KR4IqZJWcOsOpRAiRadmMa9tDf41NNeoYEkTjiarQljrpl+usgxzzPVvhfKgYthcDd
	 YQUULiyVpd/LDkPSA1YaEiGgTagNlhoNm5YwfeeesuIzoRukUBJXLKY8WgFS0BMMUJ
	 F7lJFZ83U1xw6f1+TXp4tQwXbxVvOnL3SUZ9TB3luogn8twEsjgBJx4DLueo4RyugA
	 8NOtj7my/w/dxqxepxm2X72GYC73yQjuzfbae4M2yCVBGnXscTbxWYbV73La0AuZFp
	 ZiDmzLk25/ILA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: starfive: jh7110-dphy: fail init when the PLL does
 not lock
To: "Pengpeng Hou" <pengpeng@iscas.ac.cn>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260624143911.58472-1-pengpeng@iscas.ac.cn>
References: <20260624143911.58472-1-pengpeng@iscas.ac.cn>
Date: Wed, 24 Jun 2026 14:48:34 +0000
Message-Id: <20260624144835.23B2F1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gRmFpbGVkIFBMTCBs
b2NrIGxlYXZlcyB0aGUgaGFyZHdhcmUgb3V0IG9mIHJlc2V0LCBwcmV2ZW50aW5nIGNsZWFuIGlu
aXRpYWxpemF0aW9uIHJldHJpZXMuCi0tCgpjb21taXQgMmZmMDMxMDFlYzI5ZDRjMmUxYjAzMTdm
YTczODc3YWY4ODk0YzA5ZQpBdXRob3I6IFBlbmdwZW5nIEhvdSA8cGVuZ3BlbmdAaXNjYXMuYWMu
Y24+CgpwaHk6IHN0YXJmaXZlOiBqaDcxMTAtZHBoeTogZmFpbCBpbml0IHdoZW4gdGhlIFBMTCBk
b2VzIG5vdCBsb2NrCiAgICAKVGhpcyBjb21taXQgdXBkYXRlcyBzdGZfZHBoeV9od19yZXNldCgp
IHRvIHJldHVybiBhIHRpbWVvdXQgZXJyb3IgaW5zdGVhZApvZiBqdXN0IGxvZ2dpbmcgaXQgd2hl
biB0aGUgUEhZIFBMTCBmYWlscyB0byBsb2NrLiBJdCBhbHNvIHByb3BhZ2F0ZXMgdGhpcwplcnJv
ciB1cCB0aHJvdWdoIHRoZSBpbml0aWFsaXphdGlvbiBhbmQgZXhpdCBwYXRocyBzbyB0aGUgZHJp
dmVyIGNhbiBwcm9wZXJseQpmYWlsIHdoZW4gdGhlIGxvY2sgY29uZGl0aW9uIGlzIG5vdCBtZXQu
Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9zdGFyZml2ZS9waHktamg3MTEwLWRwaHktdHgu
YyBiL2RyaXZlcnMvcGh5L3N0YXJmaXZlL3BoeS1qaDcxMTAtZHBoeS10eC5jCj4gLS0tIGEvZHJp
dmVycy9waHkvc3RhcmZpdmUvcGh5LWpoNzExMC1kcGh5LXR4LmMKPiArKysgYi9kcml2ZXJzL3Bo
eS9zdGFyZml2ZS9waHktamg3MTEwLWRwaHktdHguYwoKWyAuLi4gXQoKPiBAQCAtMjI0LDggKzIy
NCwxMiBAQCBzdGF0aWMgdm9pZCBzdGZfZHBoeV9od19yZXNldChzdHJ1Y3Qgc3RmX2RwaHkgKmRw
aHksIGludCBhc3NlcnQpCj4gIAkJCQkJICAgICAgICEoRklFTERfR0VUKFNURl9EUEhZX1JHU19D
RFRYX1BMTF9VTkxPQ0ssIHN0YXR1cykpLAo+ICAJCQkJCSAgICAgICBTVEZfRFBIWV9IV19ERUxB
WV9VUywgU1RGX0RQSFlfSFdfVElNRU9VVF9VUyk7Cj4gIAkJaWYgKHJjKQo+IC0JCQlkZXZfZXJy
KGRwaHktPmRldiwgIk1JUEkgZHBoeS10eCAjIFBMTCBMb2NrZWRcbiIpOwo+ICsJCQlkZXZfZXJy
KGRwaHktPmRldiwgIk1JUEkgZHBoeS10eCBQTEwgZmFpbGVkIHRvIGxvY2tcbiIpOwo+ICsKPiAr
CQlyZXR1cm4gcmM7Cj4gIAl9CgpbU2V2ZXJpdHk6IE1lZGl1bV0KV2hlbiBzdGZfZHBoeV9od19y
ZXNldCgpIGlzIGNhbGxlZCB3aXRoIGFzc2VydCBzZXQgdG8gMSwgaXQgd3JpdGVzIDEgdG8gdGhl
ClNURl9EUEhZX1JFU0VUQiBiaXQgdG8gYnJpbmcgdGhlIFBIWSBvdXQgb2YgcmVzZXQuIElmIHRo
ZSBQTEwgbG9jayB0aW1lcyBvdXQsCnRoZSBmdW5jdGlvbiBub3cgcmV0dXJucyBhbiBlcnJvciBl
YXJseSB3aXRob3V0IHJldmVydGluZyB0aGUgcmVnaXN0ZXIgdG8gMC4KClNpbmNlIHBoeV9pbml0
KCkgZmFpbHMsIHBoeV9leGl0KCkgd29uJ3QgYmUgY2FsbGVkIHRvIGNsZWFuIHVwLiBEb2VzIHRo
aXMKbGVhdmUgdGhlIGhhcmR3YXJlIHBlcm1hbmVudGx5IG91dCBvZiByZXNldCBpbiBhIGRpcnR5
IHN0YXRlPyBJZiB0aGUgaGFyZHdhcmUKcmVxdWlyZXMgYSAwLXRvLTEgcmVzZXQgdHJhbnNpdGlv
biB0byBhdHRlbXB0IGxvY2tpbmcgYWdhaW4sIHdpbGwgc3Vic2VxdWVudAppbml0aWFsaXphdGlv
biByZXRyaWVzIGF1dG9tYXRpY2FsbHkgZmFpbCBiZWNhdXNlIHRoZSBoYXJkd2FyZSB3YXMgbmV2
ZXIgcHV0CmJhY2sgaW50byByZXNldD8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA2MjQxNDM5MTEuNTg0NzItMS1wZW5ncGVuZ0Bp
c2Nhcy5hYy5jbj9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=

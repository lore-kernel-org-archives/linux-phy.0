Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CA29C44501
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 11:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pb5htltHUVZukcFL5KE3+Ho4pgrQtM0M3uV9VcR3CR0=; b=DUT8ZpNLOT9ovH
	yo59RGb9P2y0CuNLHjtOrZLljL/pmgzsFz8IZKp4/+fwbAgJvIynh2erntZvXXwNYM9Zqbxu5caFA
	uaH1jzxkYKzonyqhXg5NI7N2UUadDgmvBX5yR+g/ut8h/OjRTHOW7srchHpFmuFjaE5TrAOcISiow
	aPdacCp3d5UPBuGmrJ6gxwo99UPqWbHwcIGYklNiett3/FCLqgikbHCKYecDCt/2KFUs5jyGKUoA4
	xxIJgraz32HWvNUZXK8i6AsQyfCv9d+7eR0400pA35WDQdd+L4FiMHbcmkuDCV1e5MhWnP7enUGq+
	khmNvJyNCHauNhVt3jHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjy4K-0000000EcHq-2jkD;
	Wed, 15 Jul 2026 11:46:28 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjy4J-0000000EcHd-1A8P
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 11:46:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E92504143F;
	Wed, 15 Jul 2026 11:46:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 651A81F000E9;
	Wed, 15 Jul 2026 11:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784115986;
	bh=ekrBjfIl7BjbkDN6Q+ueSSQFmNTt7ZNCEjtHU0p4KW8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=E18VYdKRWLZqCtm3cdmzo/OaKBBkxmDaXVxfRyvPyYaB72rH6T7ij3ggr7odssQIC
	 gAsI74Ewm0RH6ZGJgqaHppupuFU6A3I0NulnY9hYpGFl2BMBwDFaxzSXo5ho4+UBdf
	 +MzuKkjJqvCgilsDery0DhzSVWxq7bYatbzGc4YAec7WA/gWD0fvSm5OWN/zfV8+QV
	 Nhr6/6lQaOqKZGHBUtl00QrW+yy7lImlhzBCzSU2BpSwCm69ONVnjDaYTuT9IZ7f0F
	 DFrNd4PVvp0GSIsXOzHig+EU2L3JdJVKVuRtEzfLG3cf06MX00cNRfFWXY5CHclrDX
	 Bqg3/21lU55Yw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 1/6] phy: fsl-imx8mq-usb: fix typec switch leak on
 probe error path
To: "Xu Yang" <xu.yang_2@oss.nxp.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, imx@lists.linux.dev, vkoul@kernel.org, Frank.Li@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260715-imx8mp-usb-phy-improvement-v6-1-00d95e270e4c@nxp.com>
References: <20260715-imx8mp-usb-phy-improvement-v6-0-00d95e270e4c@nxp.com>
 <20260715-imx8mp-usb-phy-improvement-v6-1-00d95e270e4c@nxp.com>
Date: Wed, 15 Jul 2026 11:46:25 +0000
Message-Id: <20260715114626.651A81F000E9@smtp.kernel.org>
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
IFtIaWdoXSBUaGUgVHlwZS1DIHN3aXRjaCBjYWxsYmFjayBgdGNhX2Jsa190eXBlY19zd2l0Y2hf
c2V0YCBjYW4gYmUgaW52b2tlZCBhZnRlciB0aGUgUEhZIGRyaXZlciBpcyB1bmJvdW5kLCBsZWFk
aW5nIHRvIGEgVXNlLUFmdGVyLUZyZWUgb2YgdGhlIGRyaXZlciBjb250ZXh0LgotLQoKLS0tIFBh
dGNoIFsxXTogW1BBVENIIHY2IDEvNl0gcGh5OiBmc2wtaW14OG1xLXVzYjogZml4IHR5cGVjIHN3
aXRjaCBsZWFrIG9uIHByb2JlIGVycm9yIHBhdGggLS0tCmNvbW1pdCA1ZTAwOTNjZmRkNmU5ZGQ2
NDhlZDM1NDllYjkzYmFjYjU0MTY0YmUyCkF1dGhvcjogRmVsaXggR3UgPHVzdGMuZ3VAZ21haWwu
Y29tPgoKcGh5OiBmc2wtaW14OG1xLXVzYjogZml4IHR5cGVjIHN3aXRjaCBsZWFrIG9uIHByb2Jl
IGVycm9yIHBhdGgKClRoaXMgY29tbWl0IGZpeGVzIGEgdHlwZWMgc3dpdGNoIHJlc291cmNlIGxl
YWsgd2hlbiBwcm9iZSBmYWlscyBhZnRlcgppbXg5NV91c2JfcGh5X2dldF90Y2EoKSBzdWNjZWVk
cy4gSXQgdHJhbnNpdGlvbnMgdGhlIGNsZWFudXAgb2YgdGhlIHN3aXRjaAp0byB1c2UgZGV2bV9h
ZGRfYWN0aW9uX29yX3Jlc2V0KCkgc28gdGhhdCBpdCBpcyBwcm9wZXJseSBmcmVlZCBvbiBib3Ro
CnByb2JlIGZhaWx1cmUgYW5kIGRyaXZlciByZW1vdmFsLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVzYi5jIGIvZHJpdmVycy9waHkvZnJlZXNj
YWxlL3BoeS1mc2wtaW14OG1xLXVzYi5jCj4gaW5kZXggYjA1ZDgwZTg0OWExNC4uOWEzM2MwNmQ2
ZmMzOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEt
dXNiLmMKPiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMK
PiBAQCAtMTczLDkgKzE3Myw5IEBAIHN0YXRpYyBzdHJ1Y3QgdHlwZWNfc3dpdGNoX2RldiAqdGNh
X2Jsa19nZXRfdHlwZWNfc3dpdGNoKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UKPiAgCXJldHVybiBz
dzsKPiAgfQo+ICAKPiAtc3RhdGljIHZvaWQgdGNhX2Jsa19wdXRfdHlwZWNfc3dpdGNoKHN0cnVj
dCB0eXBlY19zd2l0Y2hfZGV2ICpzdykKPiArc3RhdGljIHZvaWQgdGNhX2Jsa19wdXRfdHlwZWNf
c3dpdGNoKHZvaWQgKmRhdGEpCj4gIHsKPiAtCXR5cGVjX3N3aXRjaF91bnJlZ2lzdGVyKHN3KTsK
PiArCXR5cGVjX3N3aXRjaF91bnJlZ2lzdGVyKGRhdGEpOwoKW1NldmVyaXR5OiBIaWdoXQpUaGlz
IGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgZG9lcyB0eXBlY19zd2l0Y2hfdW5yZWdpc3Rl
cigpIGd1YXJhbnRlZQp0aGF0IG5vIGNvbnN1bWVycyB3aWxsIGludm9rZSB0aGUgLnNldCBjYWxs
YmFjayBhZnRlcndhcmRzPwoKSWYgYSBjb25zdW1lciBhY3F1aXJlcyB0aGUgc3dpdGNoIHVzaW5n
IGZ3bm9kZV90eXBlY19zd2l0Y2hfZ2V0KCkgYW5kIGhvbGRzCmEgcmVmZXJlbmNlLCBpdCBhcHBl
YXJzIHR5cGVjX3N3aXRjaF91bnJlZ2lzdGVyKCkgcmVtb3ZlcyB0aGUgZGV2aWNlIGZyb20Kc3lz
ZnMgYnV0IGRvZXNuJ3QgcmV2b2tlIHRoZSBjb25zdW1lcidzIGFiaWxpdHkgdG8gY2FsbCBzd19k
ZXYtPnNldCgpLgoKQmVjYXVzZSBpbXhfcGh5IGFuZCB0Y2EgYXJlIGFsbG9jYXRlZCB3aXRoIGRl
dm1fa3phbGxvYygpIGR1cmluZyBwcm9iZSwgdGhleQphcmUgYXV0b21hdGljYWxseSBmcmVlZCB3
aGVuIHRoZSBwcm92aWRlciB1bmJpbmRzLiBDb3VsZCB0aGlzIGxlYWQgdG8gYQp1c2UtYWZ0ZXIt
ZnJlZSBpZiB0aGUgY29uc3VtZXIgYXN5bmNocm9ub3VzbHkgY2FsbHMgdHlwZWNfc3dpdGNoX3Nl
dCgpOgoKdGNhX2Jsa190eXBlY19zd2l0Y2hfc2V0KCkKICAgIHN0cnVjdCBpbXg4bXFfdXNiX3Bo
eSAqaW14X3BoeSA9IHR5cGVjX3N3aXRjaF9nZXRfZHJ2ZGF0YShzdyk7CiAgICBzdHJ1Y3QgdGNh
X2JsayAqdGNhID0gaW14X3BoeS0+dGNhOwoKd2hlcmUgaW14X3BoeSBoYXMgYWxyZWFkeSBiZWVu
IGZyZWVkIGJ5IHRoZSBkZXZtIHRlYXJkb3duPwoKPiAgfQo+ICAKPiAgc3RhdGljIHZvaWQgdGNh
X2Jsa19vcmllbnRhdGlvbl9zZXQoc3RydWN0IHRjYV9ibGsgKnRjYSwKClsgLi4uIF0KCi0tIApT
YXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3
MTUtaW14OG1wLXVzYi1waHktaW1wcm92ZW1lbnQtdjYtMC0wMGQ5NWUyNzBlNGNAbnhwLmNvbT9w
YXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=

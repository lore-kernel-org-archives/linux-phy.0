Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7112C9832A
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 06:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=raoGHGWjzAKBuX/QSsYFBUp7M0Ekr20XuqPHzJKowhY=; b=Yub6zEgeySWrLW
	f/m7sof2+cZDZDdBTjG31hvE9ktulkTWkTOCN2cz7k3LW9e+l2W71o7xfVykemlKtXrfkEwoBUqE7
	q81qyNPavFc0flTNryB0faEAd+SS1UdOpEIpH67vmwTMQgD90OgpIHdF6xueRSTkKpUKdXXNFz8A7
	IY+Wf9PtQkZn07DKdRQ85ye8VzaTaEAotE87DR2YkvHHbeypvPcM5HhpTXlt7qJEEfdoTs7aCHtGM
	oPZGWgrxAc8+8ZQg7YS4bgqfR9VuVJr7jwV8MzxyOYtqk/kn0GnH09iTr+ky655b521nEOhQWuMEe
	GlIHvelaGBDlYr6+svyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBR9O-00000002R0Z-2f35;
	Tue, 29 Sep 2026 06:17:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBR9N-00000002R0P-1V1z
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 06:17:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CB6F6602CA;
	Tue, 29 Sep 2026 06:17:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 083BD1F000FF;
	Tue, 29 Sep 2026 06:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790662632;
	bh=JQXiG0ytaT9dDc9UIGKGQiT5GixQs81SrAE3iTDCXq8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Vr8D3PVlT3LFR/h+gMFDMepfh5zNv+TRYZ2OxBAxRQlG6bij7rXl7b0CEbM8PMwW+
	 2kBU6fC4V+zns2aaQCS0xWBt3Ko4Wzp/3VJ6/DPySuLsTBF4VD3q2yX92dZAAOmGwx
	 31i7M4uON8XR4UNTQQgLh/ubWxcjJvP6gzVJG470QqRBpwtfHO+qNv8YlrajkpKkOL
	 4j7h/KDrZ2T0WeWFnHGa2PCX3TkWRK1M/xHUI96TOnbFHIlcWQ3Rjzypan9SsNbfoT
	 KFZ5N7TNFgC80jhaemBh3oEGF4dmQ/qRVLaaX2S+MD53cUojs7VKIUbnnwrf/CR2TR
	 tbnuGDQRc0dyw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v17 05/11] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org, olteanv@gmail.com, media-ci@linuxtv.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260928-kaanapali-camss-v17-5-dcf3fd37f76c@oss.qualcomm.com>
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
 <20260928-kaanapali-camss-v17-5-dcf3fd37f76c@oss.qualcomm.com>
Date: Tue, 29 Sep 2026 06:17:11 +0000
Message-Id: <20260929061712.083BD1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0NyaXRpY2FsXSBtZWRpYTogY2Ft
c3M6IGd1YXJhbnRlZWQgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGluIG1zbV9jc2lwaHlfc3Vi
ZGV2X2luaXQoKQotLQoKY29tbWl0IDNjODcxMDFhMjdlOGQxYzFkM2E2NGExMGVkNDY1ZTFlZDQz
M2M1NDkKQXV0aG9yOiBIYW5neGlhbmcgTWEgPGhhbmd4aWFuZy5tYUBvc3MucXVhbGNvbW0uY29t
PgoKbWVkaWE6IHFjb206IGNhbXNzOiBjc2lwaHk6IEFkZCBzdXBwb3J0IGZvciB2Mi40LjAgdHdv
LXBoYXNlIENTSVBIWQoKQWRkIHN1cHBvcnQgZm9yIHRoZSB2Mi40LjAgdHdvLXBoYXNlIENTSVBI
WSBmb3VuZCBvbiBLYWFuYXBhbGksIHdoZXJlCnRoZSBQSFkgaXMgZHJpdmVuIGJ5IHRoZSBzdGFu
ZGFsb25lIHBoeS1xY29tLW1pcGktY3NpMiBEUEhZIGRyaXZlcgpyYXRoZXIgdGhhbiBieSBDQU1T
Uy4gQWRkIHRoZSBtaXBpX2NzaTJfZHBoeV8zbm1fa2FhbmFwYWxpIGNvbmZpZ3VyYXRpb24sCndo
aWNoIHJldXNlcyB0aGUgeDFlODAxMDAgbGFuZSBzZXF1ZW5jZSwgY2xvY2tzIGFuZCBzdXBwbGll
cyBidXQgc2VsZWN0cwp0aGUgdjIuNC4wIGNvbW1vbiBzdGF0dXMgb2Zmc2V0LCBhZGRpbmcgS2Fh
bmFwYWxpIHBvd2VyIGRvbWFpbiBhbmQKcmVnaXN0ZXIgdGhlICJxY29tLGthYW5hcGFsaS1jc2ky
LXBoeSIgY29tcGF0aWJsZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
cWNvbS9jYW1zcy9jYW1zcy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2Nh
bXNzLmMKPiBpbmRleCBhNTI4NzYwNDg3YmQ5Li5hMGNkODM5Yzk5NDhhIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jCj4gKysrIGIvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMKPiBAQCAtMzQsNiArMzQsNTcgQEAK
PiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGFyZW50X2Rldl9vcHMgdmZlX3BhcmVudF9kZXZf
b3BzOwo+ICAKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBjYW1zc19zdWJkZXZfcmVzb3VyY2VzIGNz
aXBoeV9yZXNfa2FhbmFwYWxpW10gPSB7Cj4gKwkvKiBDU0lQSFkwICovCj4gKwl7Cj4gKwkJLmNz
aXBoeSA9IHsKPiArCQkJLmlkID0gMCwKPiArCQkJLmh3X29wcyA9ICZjc2lwaHlfb3BzXzNwaF8x
XzAsCj4gKwkJCS5mb3JtYXRzID0gJmNzaXBoeV9mb3JtYXRzX3NkbTg0NQo+ICsJCX0sCj4gKwl9
LAoKW1NldmVyaXR5OiBDcml0aWNhbF0KQ2FuIHRoaXMgcmVzdWx0IGluIGEgTlVMTCBwb2ludGVy
IGRlcmVmZXJlbmNlIGR1cmluZyBkZXZpY2UgcHJvYmU/CgpCZWNhdXNlIHRoaXMgS2FhbmFwYWxp
IHJlc291cmNlIGRlZmluaXRpb24gY29tcGxldGVseSBvbWl0cyB0aGUgLnJlZyBhcnJheSwgaXQK
aW1wbGljaXRseSBpbml0aWFsaXplcyB0byBOVUxMLiBIb3dldmVyLCBpdCBzdGlsbCBiaW5kcyBs
ZWdhY3kgaGFyZHdhcmUKb3BlcmF0aW9ucyAoJmNzaXBoeV9vcHNfM3BoXzFfMCkgdGhhdCBleHBl
Y3QgTU1JTyBtYXBwaW5ncy4KCldoZW4gdGhlIENBTVNTIHByb2JlIHVuY29uZGl0aW9uYWxseSBp
dGVyYXRlcyBvdmVyIGFsbCBjc2lwaHlfbnVtIGVudHJpZXMKYW5kIGludm9rZXMgbXNtX2NzaXBo
eV9zdWJkZXZfaW5pdCgpIGZvciBlYWNoLCBpdCBhdHRlbXB0cyB0byBtYXAgdGhlIGxlZ2FjeQpy
ZWdpc3RlciBzcGFjZToKCmRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1j
c2lwaHkuYzptc21fY3NpcGh5X3N1YmRldl9pbml0KCkgewogICAgLi4uCiAgICBjc2lwaHktPmJh
c2UgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2VfYnluYW1lKHBkZXYsIHJlcy0+cmVn
WzBdKTsKICAgIC4uLgp9CgpCZWNhdXNlIC5yZWcgd2FzIG9taXR0ZWQsIHJlcy0+cmVnWzBdIGlz
IE5VTEwsIHdoaWNoIHByb3BhZ2F0ZXMgZG93biB0bwpwbGF0Zm9ybV9nZXRfcmVzb3VyY2VfYnlu
YW1lKCkuIFNpbmNlIEthYW5hcGFsaSBkZWZpbmVzIG90aGVyIG5hbWVkIHJlc291cmNlcywKZXZh
bHVhdGluZyBzdHJjbXAoci0+bmFtZSwgTlVMTCkgd2l0aCBhIE5VTEwgbmFtZSBhcmd1bWVudCBj
YW4gY2F1c2UgYSBjcmFzaC4KCkRvZXMgdGhlIHN0YW5kYWxvbmUgUEhZIG5lZWQgdG8gYmUgY29u
c3VtZWQgdmlhIHRoZSBrZXJuZWwncyBnZW5lcmljIFBIWQpmcmFtZXdvcmsgKGUuZy4sIGRldm1f
cGh5X2dldCkgaW5zdGVhZCBvZiByZXRhaW5pbmcgbGVnYWN5IENBTVNTIG9wcyB0aGF0CmFzc3Vt
ZSBkaXJlY3QgTU1JTyBjb250cm9sPwoKWyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkyOC1rYWFuYXBhbGktY2Ftc3Mt
djE3LTAtZGNmM2ZkMzdmNzZjQG9zcy5xdWFsY29tbS5jb20/cGFydD01CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

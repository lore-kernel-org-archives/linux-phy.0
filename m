Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1472C88E4D
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2bX+ZryC/7ghIUU+O0c8HhpD1q47XSeG+43f4p2xSY=; b=hR9DKvEC68SQXp
	4m/AOiY4uMW0Zk6qanT5De9UyaUYAJHs0tm3mnmbkT+IQQRbrHoWFOBh1ez83MP7tYV8GhK+p1gYz
	Iu+XAgIa6bsCLCeFuUJrqReeFcojU0skT9QdDCPV8glYc/7+uFHOhetnDWspVmQwa85456A1kiUqz
	OXdDFxG5xQ/qlFvx6pazgBCoBGsZWNf1N6SLFt/T7xjjolK6zhoeR4DFpVf6Zn+xQx2/6h77Og9Tq
	kwcc1MJAiZtWAibjog2zhVCZJeBde37GGua99eCRoxqstHfsqoaBTvgqrvAw517ccpGAOKf6Tlkhk
	JphTWjd+nMkxySpemEow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53cJ-0000000H9n0-2KXr;
	Fri, 11 Sep 2026 15:56:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53cI-0000000H9mo-1lqa
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:56:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D486843D73;
	Fri, 11 Sep 2026 15:56:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4846E1F000FF;
	Fri, 11 Sep 2026 15:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789142201;
	bh=73uTfeFMu9/xVvopMPeT6jjeQlBMO5pBA6IxMwBr8kk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oiMCpa6UQcMSJLoOWiWHxrKf7TGKIK/43kvns1ERnqKq3kZDtHnl6Wvk83TVfI7eq
	 8n+3LESB6Eo+/nvAanDjiSCfaiPpJnNugEy8iexuIZHjT64FUVEU3Z4YbKg1RQrRL6
	 5UEpmNbfAVfy+L6eHuRpvSDR0kTbbdmmBoSPgTy86bxkPe9RwBgLkvIZi6atSqP8Q1
	 vf6WFcov9XOpeSHs66/K8wuZ5eXZzvuZuYRd8cE24/99WUMnKVGPYXWu0kKgO7Q4Mw
	 EJ/IBBD5PBVicXAjyPHJvAPNOE8igHCPZ5R/wK9/4j8LVscPb+2DzfcjcCehFz9G7p
	 Gl9tuvlu12oTg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 16/17] phy: qcom: edp: Introduce Nord phy_ver_ops and
 phy_cfg descriptor
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260911-nord-drv-dt-v1-16-e25c073cf1b6@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-16-e25c073cf1b6@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 15:56:40 +0000
Message-Id: <20260911155641.4846E1F000FF@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBjb21tb24gcG93
ZXItb24gZmxvdyB1bmNvbmRpdGlvbmFsbHkgd3JpdGVzIHRvIHRoZSBsZWdhY3kgVFhfQkFORCBv
ZmZzZXQsIHdoaWNoIGNvcnJ1cHRzIHJlZ2lzdGVycyBvbiB0aGUgTm9yZCBwbGF0Zm9ybS4KLSBb
SGlnaF0gVGhlIE5vcmQgTERPIGNvbmZpZ3VyYXRpb24gaWdub3JlcyBEUCBtb2RlIGFuZCBhcHBs
aWVzIGluY29ycmVjdCBlRFAgc2V0dGluZ3MsIGNvbnRyYWRpY3RpbmcgdGhlIEhhcmR3YXJlIFBy
b2dyYW1taW5nIEd1aWRlLgotLQoKY29tbWl0IGZmNDIwMjYyY2Q1NDdjNjdmOGJhZmJiMjRiM2Ey
ZGI3NzYyOGZkNjAKQXV0aG9yOiBSaXRlc2ggS3VtYXIgPHJpdGVzaC5rdW1hckBvc3MucXVhbGNv
bW0uY29tPgoKcGh5OiBxY29tOiBlZHA6IEludHJvZHVjZSBOb3JkIHBoeV92ZXJfb3BzIGFuZCBw
aHlfY2ZnIGRlc2NyaXB0b3IKCkFkZCBxY29tX2VkcF9waHlfb3BzX25vcmQgd2lyaW5nIGFsbCBl
aWdodCBOb3JkLXNwZWNpZmljIGNhbGxiYWNrcyBhbmQKbm9yZF9lZHBfcGh5X2NmZyBjb2xsZWN0
aW5nIHRoZSBOb3JkIEFVWCwgVkNPIGRpdmlkZXIsIHN3aW5nL3ByZS1lbXBoYXNpcwp0YWJsZXMg
YW5kIHZlcl9vcHMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1lZHAuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jCj4gaW5kZXggMzYx
ZjRlNDY3MzUxOC4uMzM4ZjI4Y2I0MDRmYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFs
Y29tbS9waHktcWNvbS1lZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LWVkcC5jCj4gQEAgLTE4NDcsNiArMTg0NywyOSBAQCBzdGF0aWMgaW50IHFjb21fZWRwX3BoeV90
eF9yZXNfY2ZnX25vcmQoY29uc3Qgc3RydWN0IHFjb21fZWRwICplZHApCj4gIH0KPiAgCj4gIAo+
ICtzdGF0aWMgY29uc3Qgc3RydWN0IHBoeV92ZXJfb3BzIHFjb21fZWRwX3BoeV9vcHNfbm9yZCA9
IHsKPiArCS5jb21fcG93ZXJfb24JCT0gcWNvbV9lZHBfcGh5X3Bvd2VyX29uX25vcmQsCj4gKwku
Y29tX3Jlc2V0c21fY250cmwJPSBxY29tX2VkcF9waHlfY29tX3Jlc2V0c21fY250cmxfbm9yZCwK
PiArCS5jb21fYmlhc19lbl9jbGtidWZscgk9IHFjb21fZWRwX2NvbV9iaWFzX2VuX2Nsa2J1Zmxy
X25vcmQsCj4gKwkuY29tX2NvbmZpZ3VyZV9wbGwJPSBxY29tX2VkcF9jb21fY29uZmlndXJlX3Bs
bF9ub3JkLAo+ICsJLmNvbV9jb25maWd1cmVfc3NjCT0gcWNvbV9lZHBfY29tX2NvbmZpZ3VyZV9z
c2Nfbm9yZCwKPiArCS5jb21fbGRvX2NvbmZpZwkJPSBxY29tX2VkcF9sZG9fY29uZmlnX25vcmQs
CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBoYXJkY29kZSB0aGUgaW5jb3JyZWN0IExETyBj
b25maWd1cmF0aW9uIGZvciBEUCBtb2RlPwoKVGhlIGNvbW1lbnRzIGZvciBxY29tX2VkcF9sZG9f
Y29uZmlnX25vcmQoKSBkb2N1bWVudCB0aGF0IERQIG1vZGUgbXVzdCB1c2UKMHgwMCBhbmQgZURQ
IG1vZGUgbXVzdCB1c2UgMHhEMS4KCkhvd2V2ZXIsIHRoZSBpbXBsZW1lbnRhdGlvbiBzZWVtcyB0
byB1bmNvbmRpdGlvbmFsbHkgaGFyZGNvZGUgMHhkMCBhbmQgMHgwMywKaWdub3JpbmcgZWRwLT5p
c19lZHAgY29tcGxldGVseToKCnFjb21fZWRwX2xkb19jb25maWdfbm9yZCgpCglsZG9fY29uZmln
ID0gMHhkMDsKCXBoeV9sZG9fY2ZnID0gMHgwMzsKCgl3cml0ZWwobGRvX2NvbmZpZywgZWRwLT50
eDAgKyBUWG5fTERPX0NPTkZJRyk7CgpDb3VsZCB0aGlzIGNhdXNlIGluc3RhYmlsaXR5IG9yIGxp
bmsgZmFpbHVyZXMgd2hlbiBydW5uaW5nIGluIERQIG1vZGUgZHVlIHRvCmNvbnRyYWRpY3Rpbmcg
dGhlIGhhcmR3YXJlIHJlcXVpcmVtZW50cz8KCj4gKwkucGh5X3R4X2xhbmVfY2ZnCT0gcWNvbV9l
ZHBfcGh5X3R4X2xhbmVfY2ZnX25vcmQsCgpbU2V2ZXJpdHk6IEhpZ2hdCkNhbiB0aGUgY29tbW9u
IHBvd2VyLW9uIGZsb3cgY29ycnVwdCByZWdpc3RlcnMgb24gdGhlIE5vcmQgcGxhdGZvcm0gaGVy
ZT8KCldoZW4gcWNvbV9lZHBfcGh5X3Bvd2VyX29uKCkgcnVucywgaXQgY2FsbHMgdGhpcyBwaHlf
dHhfbGFuZV9jZmcoKSBjYWxsYmFjawp3aGljaCBjb3JyZWN0bHkgcHJvZ3JhbXMgdGhlIE5vcmQt
c3BlY2lmaWMgVFhfQkFORCBvZmZzZXQgYXQgMHgwMDI0OgoKcWNvbV9lZHBfcGh5X3Bvd2VyX29u
KCkKCWlmIChlZHAtPmNmZy0+dmVyX29wcy0+cGh5X3R4X2xhbmVfY2ZnKSB7CgkJcmV0ID0gZWRw
LT5jZmctPnZlcl9vcHMtPnBoeV90eF9sYW5lX2NmZyhlZHApOwogICAgICAgIC4uLgoKQnV0IGlt
bWVkaWF0ZWx5IGFmdGVyd2FyZCwgdGhlIGNvbW1vbiBmbG93IHVuY29uZGl0aW9uYWxseSB3cml0
ZXMgdG8gdGhlCmxlZ2FjeSBUWF9CQU5EIG9mZnNldDoKCnFjb21fZWRwX3BoeV9wb3dlcl9vbigp
CgkvKiBUWC0wIHJlZ2lzdGVyIGNvbmZpZ3VyYXRpb24gKi8KICAgIC4uLgoJd3JpdGVsKDB4MDQs
IGVkcC0+dHgwICsgVFhuX1RYX0JBTkQpOwoKU2luY2UgVFhuX1RYX0JBTkQgbW92ZWQgdG8gMHgw
MDI0IG9uIE5vcmQsIHdyaXRpbmcgdG8gdGhlIGxlZ2FjeSBvZmZzZXQKKDB4MDAyOCkgbWlnaHQg
Y2xvYmJlciB3aGF0ZXZlciB1bmtub3duIHJlZ2lzdGVyIHJlc2lkZXMgdGhlcmUgbm93LgoKV291
bGQgaXQgYmUgYmV0dGVyIHRvIGNvbmRpdGlvbmFsbHkgYnlwYXNzIHRoZSBsZWdhY3kgVFhfQkFO
RCB3cml0ZSB3aGVuIHRoZQpOb3JkIHNwZWNpZmljIGNhbGxiYWNrIGlzIHVzZWQ/Cgo+ICsJLnBo
eV90eF9yZXNfY2ZnCQk9IHFjb21fZWRwX3BoeV90eF9yZXNfY2ZnX25vcmQsCj4gK307Cj4gKwo+
ICtzdGF0aWMgY29uc3Qgc3RydWN0IHFjb21fZWRwX3BoeV9jZmcgbm9yZF9lZHBfcGh5X2NmZyA9
IHsKPiArCS5pc19lZHAJCQk9IGZhbHNlLAo+ICsJLmF1eF9jZmcJCT0gZWRwX3BoeV9hdXhfY2Zn
X25vcmQsCj4gKwkudmNvX2Rpdl9jZmcJCT0gZWRwX3BoeV92Y29fZGl2X2NmZ19ub3JkLAo+ICsJ
LmRwX3N3aW5nX3ByZV9lbXBoX2NmZwk9ICZub3JkX2RwX3N3aW5nX3ByZV9lbXBoX2NmZywKPiAr
CS5lZHBfc3dpbmdfcHJlX2VtcGhfY2ZnCT0gJm5vcmRfZWRwX3N3aW5nX3ByZV9lbXBoX2NmZywK
PiArCS52ZXJfb3BzCQk9ICZxY29tX2VkcF9waHlfb3BzX25vcmQsCj4gKwkucGh5X3N0YXR1c19y
ZWcJCT0gRFBfUEhZX1NUQVRVU19OT1JELAo+ICsJLmJpYXMxX2VuXzJsYW5lCQk9IDB4MDMsCj4g
K307CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNo
c2V0LzIwMjYwOTExLW5vcmQtZHJ2LWR0LXYxLTAtZTI1YzA3M2NmMWI2QG9zcy5xdWFsY29tbS5j
b20/cGFydD0xNgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==

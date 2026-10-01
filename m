Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFB1ECA5FD2
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 13:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hr+euSVtMpPdStFj2EpiZEN0FsNJJc+Mgp2afPIty2U=; b=QtJB4BxZTB/Z1r
	Dyn/g0oVAQtAhG9G4Z57qM5100FuSo33lpu412/Nt6/hOwxpt9Be9lEIGDC9IElBu6joGMcC08b8s
	tSjy6G27TfJcmd2lL+U8iIcqIETdSJ/F3DTLqY1wawlo7hnPPRVUODi+IWXHued1GJ3mSlqzLHUBA
	DCxq29G81Bxf8oG42sBIHjmj233VV1Rlzx49rz1xOkn3xkRF3hghMRMvQloo4CkaLg0Q71OG2Fyr8
	nccpuJF2vwr/gdKDqmHFUOmsozbouw+HX9geGUxOhV+yS44Hygvri+aciJ53H6cvxcaJU3w01lj/8
	OGmwt688YxNJpda9ZPug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCGzc-00000009FuX-4ABl;
	Thu, 01 Oct 2026 13:38:39 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCGzb-00000009FuL-1HbB
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 13:38:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6369D6021D;
	Thu,  1 Oct 2026 13:38:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E0DE1F000FF;
	Thu,  1 Oct 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790861914;
	bh=mX3Kgq0uypRN33yih1E4IhTEp6dwxpwgfCl2vPnHp1k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GOiKmToyn/cmVoVr0pt5AnGbvLQKVLahZ/mS9QnQlfcgyXW5NuYoRNxfdr5I/Msnm
	 edzfoC5TWQ0TdniHUPY/+o29UtfsXTJHFr6AwEP4YPHO9WtDr216u2AqBwL4PQn4sA
	 K7rl3t0g1Gb8gWsBuXT+8s/brLvFDxo6n57NEomzx5mxATB10vwHqYqYva5Vkhg3rM
	 mcAVB2xIkNWVkB/QPQIEJJzOPWuNE6FOx/xOzgJJaOuyABt03+M9kEVN+XSB+3yFLA
	 AaJ77LTIFDJrOiG6cBQWFj4Wu61dqbX67CHwrgePBSdGaYKPoEuaosGgVc0d/E2dTr
	 AmRa23JCM9aqQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] phy: tegra: Add support for Tegra238 XUSB pad
 controller
To: "Jon Hunter" <jonathanh@nvidia.com>
Cc: olteanv@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, robh@kernel.org
In-Reply-To: <20261001-tegra-phy-v2-3-3e453b1fb271@nvidia.com>
References: <20261001-tegra-phy-v2-0-3e453b1fb271@nvidia.com>
 <20261001-tegra-phy-v2-3-3e453b1fb271@nvidia.com>
Date: Thu, 01 Oct 2026 13:38:33 +0000
Message-Id: <20261001133833.9E0DE1F000FF@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gcGh5OiB0ZWdyYTogbWlz
c2luZyBNYWtlZmlsZSBlbnRyeSBjYXVzZXMgbGluayBmYWlsdXJlIGZvciBURUdSQV8yMzgKLSBb
TG93XSBwaHk6IHRlZ3JhOiBtaXNzaW5nIGRlY2xhcmF0aW9ucyBjYXVzZSBjb21waWxlciB3YXJu
aW5ncwotLQoKY29tbWl0IDdjODZiZGIxYzhhMzc1OTM3NWE3MTNhYWU4NTllYWMxOGMzNWJkYTkK
QXV0aG9yOiBKb24gSHVudGVyIDxqb25hdGhhbmhAbnZpZGlhLmNvbT4KCnBoeTogdGVncmE6IEFk
ZCBzdXBwb3J0IGZvciBUZWdyYTIzOCBYVVNCIHBhZCBjb250cm9sbGVyCgpUaGlzIGNvbW1pdCBh
ZGRzIHN1cHBvcnQgZm9yIHRoZSBUZWdyYTIzOCBYVVNCIHBhZCBjb250cm9sbGVyIGJ5IHBvcHVs
YXRpbmcKdGhlIHNwZWNpZmljIFNvQyBkYXRhLiBJdCBkcm9wcyBjb21waWxlLXRpbWUgZ3VhcmRz
IGFyb3VuZCBUZWdyYTE4NiBwb3J0IG9wcwphbmQgVGVncmExOTQgc3VwcGxpZXMgdG8gcmV1c2Ug
dGhlbSBmb3IgVGVncmEyMzguCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNi
LmMgYi9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmMKPiBpbmRleCAwNjM1ZjBkODJjOTYzLi44OWNl
OWFjODczMDA2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYwo+ICsrKyBi
L2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYwpbIC4uLiBdCj4gQEAgLTc4LDYgKzc4LDEyIEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHRlZ3JhX3h1c2JfcGFkY3RsX29mX21hdGNo
W10gPSB7Cj4gIAkJLmRhdGEgPSAmdGVncmEyMzRfeHVzYl9wYWRjdGxfc29jLAo+ICAJfSwKPiAg
I2VuZGlmCj4gKyNpZiBkZWZpbmVkKENPTkZJR19BUkNIX1RFR1JBXzIzOF9TT0MpCj4gKwl7Cj4g
KwkJLmNvbXBhdGlibGUgPSAibnZpZGlhLHRlZ3JhMjM4LXh1c2ItcGFkY3RsIiwKPiArCQkuZGF0
YSA9ICZ0ZWdyYTIzOF94dXNiX3BhZGN0bF9zb2MsCj4gKwl9LAo+ICsjZW5kaWYKCltTZXZlcml0
eTogTG93XQpXaWxsIHRoaXMgcmVzdWx0IGluIGEgbGluayBmYWlsdXJlIGlmIGEga2VybmVsIGlz
IGNvbmZpZ3VyZWQgd2l0aCBvbmx5CkNPTkZJR19BUkNIX1RFR1JBXzIzOF9TT0MgZW5hYmxlZD8K
ClRoZSB0ZWdyYTIzOF94dXNiX3BhZGN0bF9zb2Mgc3RydWN0dXJlIGlzIGRlZmluZWQgaW4geHVz
Yi10ZWdyYTE4Ni5jLCBidXQgaXQKZG9lcyBub3QgYXBwZWFyIHRoYXQgZHJpdmVycy9waHkvdGVn
cmEvTWFrZWZpbGUgd2FzIHVwZGF0ZWQgdG8gY29tcGlsZQp4dXNiLXRlZ3JhMTg2Lm8gd2hlbiBD
T05GSUdfQVJDSF9URUdSQV8yMzhfU09DIGlzIHNldC4gSWYgdGhlIG90aGVyIFRlZ3JhIFNvQ3MK
YXJlIGRpc2FibGVkLCB0aGUgb2JqZWN0IGZpbGUgbWlnaHQgYmUgb21pdHRlZCwgbGVhdmluZyB0
aGlzIHN5bWJvbCB1bmRlZmluZWQKZHVyaW5nIGxpbmtpbmcuCgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS90ZWdyYS94dXNiLmggYi9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmgKPiBpbmRleCBk
OGQ3OTlkOWU3NTIyLi5iOWRlNGYzYjU3ODE1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3Rl
Z3JhL3h1c2IuaAo+ICsrKyBiL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuaApbIC4uLiBdCj4gQEAg
LTUxNCw2ICs1MTQsOSBAQCBleHRlcm4gY29uc3Qgc3RydWN0IHRlZ3JhX3h1c2JfcGFkY3RsX3Nv
YyB0ZWdyYTE5NF94dXNiX3BhZGN0bF9zb2M7Cj4gICNpZiBkZWZpbmVkKENPTkZJR19BUkNIX1RF
R1JBXzIzNF9TT0MpCj4gIGV4dGVybiBjb25zdCBzdHJ1Y3QgdGVncmFfeHVzYl9wYWRjdGxfc29j
IHRlZ3JhMjM0X3h1c2JfcGFkY3RsX3NvYzsKPiAgI2VuZGlmCj4gKyNpZiBkZWZpbmVkKENPTkZJ
R19BUkNIX1RFR1JBXzIzOF9TT0MpCj4gK2V4dGVybiBjb25zdCBzdHJ1Y3QgdGVncmFfeHVzYl9w
YWRjdGxfc29jIHRlZ3JhMjM4X3h1c2JfcGFkY3RsX3NvYzsKPiArI2VuZGlmCgpbU2V2ZXJpdHk6
IExvd10KQ291bGQgdGhpcyBjYXVzZSBhIC1XbWlzc2luZy1kZWNsYXJhdGlvbnMgd2FybmluZyB3
aGVuIGJ1aWxkaW5nCnh1c2ItdGVncmExODYuYyB3aXRoIENPTkZJR19BUkNIX1RFR1JBXzIzOF9T
T0MgZGlzYWJsZWQ/CgpTaW5jZSB0ZWdyYTIzOF94dXNiX3BhZGN0bF9zb2MgaXMgbm93IGRlZmlu
ZWQgYW5kIGV4cG9ydGVkIHVuY29uZGl0aW9uYWxseSBpbgp4dXNiLXRlZ3JhMTg2LmMsIGhpZGlu
ZyBpdHMgZXh0ZXJuIGRlY2xhcmF0aW9uIGJlaGluZCB0aGlzIGNvbmZpZyBndWFyZCB3aWxsCmxl
YXZlIHRoZSBleHBvcnRlZCBzeW1ib2wgd2l0aG91dCBhIHZpc2libGUgcHJvdG90eXBlIHdoZW5l
dmVyIHRoZSBDIGZpbGUgaXMKY29tcGlsZWQgZm9yIG90aGVyIFNvQ3MuCgotLSAKU2FzaGlrbyBB
SSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMDAxLXRlZ3Jh
LXBoeS12Mi0wLTNlNDUzYjFmYjI3MUBudmlkaWEuY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BD9FC531C9
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jul 2026 10:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTufX5GyXwv8tikHece9t39XB98iYvN7YPQeNy++b30=; b=HyCq8MxtbwFS/G
	xMUbj+crNSUz640Y/PoaT5hcZqb8pkUhvZ9Atkz4Q3PCEpgFIeTk935lncmF2CZ9lIUO1CKeqPzfN
	op0/XsMhc3YoVtC5KAI07pQ+PLFsyfnhRGHks/jZ49vebyrbVSnWIcd06pnp/+QB83zZ5nH03wptx
	XMYGjX9/jM6u++WNJQSf6fp/EHuow2ZTyFNqs5Ql3Y33AcXwcdB5cHlwffyMFiKybrxT8JNDLKuf0
	pLmgomgPVbCC5alfc0l27GJ8Js4BkxuFXAyGXyQ9WqIoc0Jt9ZVntql4MTzP9b9q4BKZypECXB+GZ
	Dcr1ey7nb+Qo0e6OcpZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnCwg-0000000G3CN-3yAu;
	Fri, 24 Jul 2026 10:15:58 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnCwg-0000000G3C1-1ffp
	for linux-phy@lists.infradead.org;
	Fri, 24 Jul 2026 10:15:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 74BA7600AD;
	Fri, 24 Jul 2026 10:15:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A1961F000E9;
	Fri, 24 Jul 2026 10:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784888157;
	bh=OtyWDnOBApNCxckAKFNIIFHtMR9TFsKT3xO3Xo4RHDw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=J2zIZA/oa/Z3n4EdapK+T6JvKvmhoI1tLQ9PJFF7zh+fCsHWvZQpqhCeBDjaoafRF
	 skO117IzMbvNNBt7h+UKY3Rfmp/sK7+HX1buQyFB9v3uakC25IXKO4CEsRd/SgS1Oe
	 m2OWSJTfBOCLAy8DoNb8TzRfc1qpN4rwOZkKNMxTt46Mfu9yVcWXNLfnGl7360i3cA
	 9zlHiqp1t2JwuXM6Ni72mXntVPqpXlVvP/RFaYNb6Rcjh3UpofEWQTE8yB/oTeTj/s
	 vMtqPykdkphPEllxeKwF3P29NnksRIiu5X5CTAFYfHO2R/1qVpjntotVKJIKnEKscC
	 BJbYyccFrpVyg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 3/6] arm64: dts: qcom: glymur: Add PCIe3 PHY and
 PCIe3a controller nodes
To: "Qiang Yu" <qiang.yu@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260724-glymur_linkmode_0724-v7-3-65c8469c6b65@oss.qualcomm.com>
References: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
 <20260724-glymur_linkmode_0724-v7-3-65c8469c6b65@oss.qualcomm.com>
Date: Fri, 24 Jul 2026 10:15:56 +0000
Message-Id: <20260724101556.9A1961F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gSGFyZGNvZGVkIGxpdGVy
YWwgJzAnIGlzIHVzZWQgaW5zdGVhZCBvZiB0aGUgJ0dJQ19TUEknIG1hY3JvIGluIHRoZSBpbnRl
cnJ1cHQtbWFwIHByb3BlcnR5LgotLQoKLS0tIFBhdGNoIFszXTogW1BBVENIIHY3IDMvNl0gYXJt
NjQ6IGR0czogcWNvbTogZ2x5bXVyOiBBZGQgUENJZTMgUEhZIGFuZCBQQ0llM2EgY29udHJvbGxl
ciBub2RlcyAtLS0KY29tbWl0IGRkMWMxNWEzYjQ0ZDA1NzhmZmVhMTBmZDJjNTQyYTZlMzc0YTcw
ZDcKQXV0aG9yOiBRaWFuZyBZdSA8cWlhbmcueXVAb3NzLnF1YWxjb21tLmNvbT4KCmFybTY0OiBk
dHM6IHFjb206IGdseW11cjogQWRkIFBDSWUzIFBIWSBhbmQgUENJZTNhIGNvbnRyb2xsZXIgbm9k
ZXMKClRoaXMgY29tbWl0IGFkZHMgdGhlIFBDSWUzIFBIWSBhbmQgUENJZTNhIGNvbnRyb2xsZXIg
bm9kZXMgdG8gdGhlIGdseW11cgpkZXZpY2UgdHJlZS4gSXQgbW9kZWxzIHRoZSBzaGFyZWQgUEhZ
IGFzIGEgc2luZ2xlIHByb3ZpZGVyLCB1cGRhdGVzIHRoZSBHQ0MKcGlwZSBjbG9jayBwYXJlbnQg
YXJyYXksIGFuZCBkZWZpbmVzIHRoZSBQQ0llM2EgUENJIG5vZGUuCgo+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vZ2x5bXVyLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3Fjb20vZ2x5bXVyLmR0c2kKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vZ2x5bXVy
LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vZ2x5bXVyLmR0c2kKClsgLi4u
IF0KCj4gQEAgLTM3MjIsNiArMzc4MCwyODAgQEAgcGNpZTNiX3BvcnQwX2VwOiBlbmRwb2ludCB7
Cj4gIAkJCX07Cj4gIAkJfTsKPiAgCj4gKwkJcGNpZTNhOiBwY2llQDFjMTAwMDAgewoKWyAuLi4g
XQoKPiArCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDk0OCBJUlFfVFlQRV9MRVZFTF9ISUdIPiwK
PiArCQkJCSAgICAgPEdJQ19TUEkgOTQ5IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJICAg
ICA8R0lDX1NQSSA4NDQgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gKwkJCQkgICAgIDxHSUNfU1BJ
IDg0NSBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiArCQkJCSAgICAgPEdJQ19TUEkgMTk0IElSUV9U
WVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJICAgICA8R0lDX1NQSSAyMDIgSVJRX1RZUEVfTEVWRUxf
SElHSD4sCj4gKwkJCQkgICAgIDxHSUNfU1BJIDg0NiBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiAr
CQkJCSAgICAgPEdJQ19TUEkgODQ3IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ICsJCQkJICAgICA8
R0lDX1NQSSA5NDIgSVJRX1RZUEVfTEVWRUxfSElHSD47CgpbIC4uLiBdCgo+ICsJCQkjaW50ZXJy
dXB0LWNlbGxzID0gPDE+Owo+ICsJCQlpbnRlcnJ1cHQtbWFwLW1hc2sgPSA8MCAwIDAgMHg3PjsK
PiArCQkJaW50ZXJydXB0LW1hcCA9IDwwIDAgMCAxICZpbnRjIDAgMCAwIDg0OCBJUlFfVFlQRV9M
RVZFTF9ISUdIPiwKCltTZXZlcml0eTogTG93XQpUaGlzIGlzbid0IGEgYnVnLCBidXQgaXMgaXQg
aW50ZW5kZWQgdG8gdXNlIHRoZSBsaXRlcmFsICcwJyBoZXJlIGZvciB0aGUKcGFyZW50IGludGVy
cnVwdCBzcGVjaWZpZXIgdHlwZSBpbnN0ZWFkIG9mIHRoZSAnR0lDX1NQSScgbWFjcm8/IFRoZQon
aW50ZXJydXB0cycgcHJvcGVydHkganVzdCBhYm92ZSB1c2VzICdHSUNfU1BJJywgc28gdXNpbmcg
dGhlIG1hY3JvIGhlcmUgbWlnaHQKaW1wcm92ZSBjb25zaXN0ZW5jeSBhbmQgcmVhZGFiaWxpdHku
Cgo+ICsJCQkJCTwwIDAgMCAyICZpbnRjIDAgMCAwIDg0OSBJUlFfVFlQRV9MRVZFTF9ISUdIPiwK
PiArCQkJCQk8MCAwIDAgMyAmaW50YyAwIDAgMCA4NTAgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4g
KwkJCQkJPDAgMCAwIDQgJmludGMgMCAwIDAgODUxIElSUV9UWVBFX0xFVkVMX0hJR0g+OwoKLS0g
ClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2
MDcyNC1nbHltdXJfbGlua21vZGVfMDcyNC12Ny0wLTY1Yzg0NjljNmI2NUBvc3MucXVhbGNvbW0u
Y29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==

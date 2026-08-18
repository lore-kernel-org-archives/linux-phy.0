Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8D73C5DF70
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 09:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/IP6k+Pp/zHdnJS3+Ch2yytjQ6iEgOIH5L5rzSAdlk=; b=MDY3EWwpAWxyHS
	Jc7SHlJCYcAxuLzmsswDnfCOFxKqoQrb9iLDS419cjG2JcGYTenmbPMxNV2u6PvZ6aoIrFAy2Z+Ih
	q2DOdSFpMv0KABD/ieOZCYChiAwpKmNxu/uSVcYXWFnWp9PzeIDGsev4dMMWjZZM2SSNPijQ+LFsY
	5e4DqewPOAzbAQjhW6/AItm1o3c8jQWD9ahCnVR6IY1u2OWyfwq/SEzJTDFeejLRt8De48Kh3KAW4
	w4n4in06u6V+Tnci0YmIr/Sl1WylzrPI/4929+LvCva9vUknanhoIt8KJFuEu/8SXh7qe/9es2fNx
	C3uy0S5Dh6s+ZOPVkFmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwG3C-00000007bsH-1iR6;
	Tue, 18 Aug 2026 09:24:06 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwG3B-00000007bs4-1k55
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 09:24:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7BEA5601DE;
	Tue, 18 Aug 2026 09:24:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66D591F000E9;
	Tue, 18 Aug 2026 09:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787045044;
	bh=DB4gc021DxXbso9INjf52whfyuI1KE4radMT569Kt3g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ryw7xRwsMSyymz8yAHbZP1MZIQLpezjiTiR+wkVf+C53rN8t+vm75N22jXE8cDPYu
	 m42BaTlinIEEOgbdaNGd2xLBDJDMKoSeXQWjCGTXouztVmBW56GIrr08Tso/aEzBHI
	 182bYalEBRBVvL267vmTL+/salqdWwfyeZVPjYZ0gegavSSPf7uKEmLA71maiLqWGv
	 WipSHkFMVxiWc7n8DozQWzQzCoUG9yq4fjT6jE+IX4EIor5Tk6sY5P/grlmZGSzoQn
	 ko1rTwAPZSxTDvSfxU90N1QLfSmLQ0zB1QGCSF4giG1OyZolhciIwzyl1zd9DszQrj
	 fFo4UCr5d+6ew==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC 2/4] dt-bindings: phy: ti,tcan104x-can: Document
 Microchip MCP2542
To: "Stefan Wahren" <wahrenst@gmx.net>
Cc: "Oliver Hartkopp" <socketcan@hartkopp.net>, "Vincent Mailhol" <mailhol@kernel.org>, Frank.Li@kernel.org, robh@kernel.org, vkoul@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, "Oleksij
 Rempel" <o.rempel@pengutronix.de>, linux-can@vger.kernel.org, neil.armstrong@linaro.org, imx@lists.linux.dev, linux-phy@lists.infradead.org, "Marc
 Kleine-Budde" <mkl@pengutronix.de>, conor+dt@kernel.org
In-Reply-To: <20260818091701.6441-3-wahrenst@gmx.net>
References: <20260818091701.6441-1-wahrenst@gmx.net>
 <20260818091701.6441-3-wahrenst@gmx.net>
Date: Tue, 18 Aug 2026 09:24:02 +0000
Message-Id: <20260818092403.66D591F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBuZXcgY29tcGF0
aWJsZSBzdHJpbmcgJ21pY3JvY2hpcCxtY3AyNTQyJyBpcyBhZGRlZCBhcyBhIHN0YW5kYWxvbmUg
ZW51bSBpdGVtIGluIHRoZSBiaW5kaW5nIGJ1dCBsYWNrcyBjb3JyZXNwb25kaW5nIHN1cHBvcnQg
aW4gdGhlIENBTiB0cmFuc2NlaXZlciBQSFkgZHJpdmVyLgotLQoKLS0tIFBhdGNoIFsyXTogW1BB
VENIIFJGQyAyLzRdIGR0LWJpbmRpbmdzOiBwaHk6IHRpLHRjYW4xMDR4LWNhbjogRG9jdW1lbnQg
TWljcm9jaGlwIE1DUDI1NDIgLS0tCmNvbW1pdCA0M2FkYjg3Nzc1NTg0YTk3N2MxZDQ0MDg2NGI5
ZTgwNWZiYTMxZDBlCkF1dGhvcjogU3RlZmFuIFdhaHJlbiA8d2FocmVuc3RAZ214Lm5ldD4KCmR0
LWJpbmRpbmdzOiBwaHk6IHRpLHRjYW4xMDR4LWNhbjogRG9jdW1lbnQgTWljcm9jaGlwIE1DUDI1
NDIKClRoZSBNaWNyb2NoaXAgTUNQMjU0MiBIaWdoLXNwZWVkIENBTiB0cmFuc2NlaXZlciB3aXRo
IFNsZWVwIG1vZGUgaXMgYQpwaW4tY29tcGF0aWJsZSBhbHRlcm5hdGl2ZSBmb3IgdGhlIFRJIFRD
QU4xMDQyLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BoeS90aSx0Y2FuMTA0eC1jYW4ueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9waHkvdGksdGNhbjEwNHgtY2FuLnlhbWwKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L3RpLHRjYW4xMDR4LWNhbi55YW1sCj4gKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aSx0Y2FuMTA0eC1jYW4ueWFtbAo+IEBAIC0y
NCw2ICsyNCw3IEBAIHByb3BlcnRpZXM6Cj4gICAgICAgICAgICAtIGNvbnN0OiB0aSx0Y2FuMTA0
Ngo+ICAgICAgICAgICAgLSBjb25zdDogbnhwLHRqYTEwNDgKPiAgICAgICAgLSBlbnVtOgo+ICsg
ICAgICAgICAgLSBtaWNyb2NoaXAsbWNwMjU0MgoKW1NldmVyaXR5OiBIaWdoXQpTaW5jZSB0aGUg
Y29tcGF0aWJsZSBzdHJpbmcgaXMgYWRkZWQgYXMgYSBzdGFuZGFsb25lIGVudW0gaXRlbSwgYSBk
ZXZpY2UgdHJlZQpub2RlIHdpbGwgbm90IGhhdmUgYSBmYWxsYmFjayBzdHJpbmcuIExvb2tpbmcg
YXQgdGhlIENBTiB0cmFuc2NlaXZlciBQSFkgZHJpdmVyCmluIGRyaXZlcnMvcGh5L3BoeS1jYW4t
dHJhbnNjZWl2ZXIuYywgdGhlIG1hdGNoIHRhYmxlIGxhY2tzIHRoaXMgbmV3IHN0cmluZzoKCnN0
YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGNhbl90cmFuc2NlaXZlcl9waHlfaWRzW10g
PSB7Cgl7CgkJLmNvbXBhdGlibGUgPSAidGksdGNhbjEwNDIiLAoJCS5kYXRhID0gJnRjYW4xMDQy
X2RydmRhdGEKCX0sCgpEb2VzIHRoaXMgY2F1c2UgdGhlIFBIWSBkcml2ZXIgdG8gZmFpbCB0byBw
cm9iZSBmb3IgdGhlIG5ldyBkZXZpY2U/IElmIHRoaXMgaXMKYSBwaW4tY29tcGF0aWJsZSBhbHRl
cm5hdGl2ZSBmb3IgdGksdGNhbjEwNDIsIHNob3VsZCB0aGUgYmluZGluZyByZXF1aXJlIGEKZmFs
bGJhY2sgY29tcGF0aWJsZSBzdHJpbmcgc28gdGhlIGV4aXN0aW5nIGRyaXZlciBjYW4gbWF0Y2gg
aXQsIG9yIGRvZXMgdGhlCmRyaXZlciBuZWVkIHRvIGJlIHVwZGF0ZWQgdG8gc3VwcG9ydCB0aGUg
c3RhbmRhbG9uZSBzdHJpbmc/Cgo+ICAgICAgICAgICAgLSB0aSx0Y2FuMTA0Mgo+ICAgICAgICAg
ICAgLSB0aSx0Y2FuMTA0MwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MDgxODA5MTcwMS42NDQxLTEtd2FocmVuc3RAZ214Lm5ldD9w
YXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=

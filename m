Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DAA0606A322
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 07:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zWr7Gvh0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=k1QxWlUn
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=tQGOKUOAQX2d92DD9yIzZP62ggERHf91l9V+ySyWchg=; b=zWr7Gvh0Io0HGWHGlhEGoWESHX
	c5DuGRqOI5jnD48fOQtSWzUKk1xVDRyulJ604L8qu0kifeY3hClz4eTTCsWyYG2tQT2Wr6SVsYe8t
	eqFs4qOwR85eeI0P7Uwl0Wivnu8hlq1MQxQsfTK1zvEiemjp5BkCod3KKWEIz60zov4laHTdOPTyH
	Tq6nWfWkH/x9bzVrvAIm6tOStyEveOi+mY8os0XR1ho3aK+8ysc+H/cmOD8yf362Si/YO1yPmXxUH
	iIVXSvUyVW1SwtkfpM7BTPdsbeC29EXQ29lRIxDL0xmYhGv5k8/83aTIZeLsrOJE1nm5d//KPffPk
	qh4gfmaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQJcL-0000000HYUX-0zdL;
	Mon, 09 Nov 2026 07:16:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQJcJ-0000000HYUE-3Dl6
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 07:16:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 877C044860;
	Mon,  9 Nov 2026 07:16:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BDA11F0089F;
	Mon,  9 Nov 2026 07:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794208595;
	bh=kQ4f7qL6OLama07naGJvhWBgUFWpikiCrCIrDrKAzqM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=k1QxWlUnmeXuRTlssnoqXgSKjvaO9zsiiRfdKbWTuS6qVRei28AFtLk0LIFz1gMys
	 jQtLSDEwGGmMYBfa2QIPhdo9ZjXUEN1dVDBJ0DsOKpbpg4E38g0W3VuJXz/FyombYR
	 cnEAhzcjsi6UosI3rlf+i/r3jDO/iYVLUhaEVHUIk1VDH9fAK4NelOp2ABAX3lClWj
	 0NZv8bU73R1NYyU2G8kR8KDL/jYqeLg4XyrDngXrv4pC0zdGQiQ5fddPZQq6dQBWST
	 0guNzBR4we4V1Bup7+0xHdMHsgA3tS//MtnJo0fdgcLVDpk27Jaf2iVy22wcq8hMfk
	 ROoZOaVi2F6oQ==
Message-ID: <sashiko-outbox-204536@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 2/4] arm64: dts: nuvoton: ma35d1: add USB controllers
 and dual-port PHY node
To: "Joey Lu" <a0987203069@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261109065606.62641-3-a0987203069@gmail.com>
References: <20261109065606.62641-1-a0987203069@gmail.com>
 <20261109065606.62641-3-a0987203069@gmail.com>
Date: Mon, 09 Nov 2026 07:16:34 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gYXJtNjQ6IGR0czogbnV2
b3RvbjogbWEzNWQxOiB1c2JANDAyMDAwMDAgcmVnIHNpemUgMHgxMDAwCiAgdHJ1bmNhdGVzIERX
QzIgRklGT3MKLS0KCmNvbW1pdCBhYTlmZjIxYjY4NDkxZjFlMDAyNDY4ZjRkNDAwYzBkN2ZkMmIx
OTJmCkF1dGhvcjogSm9leSBMdSA8YTA5ODcyMDMwNjlAZ21haWwuY29tPgoKYXJtNjQ6IGR0czog
bnV2b3RvbjogbWEzNWQxOiBhZGQgVVNCIGNvbnRyb2xsZXJzIGFuZCBkdWFsLXBvcnQgUEhZIG5v
ZGUKClRoaXMgY29tbWl0IGFkZHMgdGhlIGR1YWwtcG9ydCBVU0IgMi4wIHBoeSwgZHdjMiBnYWRn
ZXQsIGFuZCBlaGNpL29oY2kgaG9zdApjb250cm9sbGVyIG5vZGVzIHRvIHRoZSBtYTM1ZDEgZGV2
aWNlIHRyZWUgYW5kIGVuYWJsZXMgdGhlbSBvbiB0aGUgc29tLTI1Nm0KYW5kIGlvdC01MTJtIGJv
YXJkcy4KCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbnV2b3Rvbi9tYTM1ZDEu
ZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbnV2b3Rvbi9tYTM1ZDEuZHRzaQo+IGluZGV4IDcy
MjhhZDQ3MzViNWMuLjcyYTE2NTkyMDdmYTcgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9udXZvdG9uL21hMzVkMS5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9udXZv
dG9uL21hMzVkMS5kdHNpCgpbIC4uLiBdCgo+IEBAIC00MzEsNSArNDM5LDYyIEBAIG1kaW8xOiBt
ZGlvIHsKPiAgCQkJCSNzaXplLWNlbGxzID0gPDA+Owo+ICAJCQl9Owo+ICAJCX07Cj4gKwo+ICsJ
CXVzYjogdXNiQDQwMjAwMDAwIHsKPiArCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3YzIiOwo+ICsJ
CQlyZWcgPSA8MHgwIDB4NDAyMDAwMDAgMHgwIDB4MTAwMD47CgpbU2V2ZXJpdHk6IE1lZGl1bV0K
RG9lcyB0aGUgMHgxMDAwIHJlZ2lzdGVyIHNpemUgZm9yIHVzYkA0MDIwMDAwMCB0cnVuY2F0ZSB0
aGUgZHdjMiBwZXItZW5kcG9pbnQKZGF0YSBmaWZvIHJlZ2lvbj8KCkEgMHgxMDAwIHdpbmRvdyBv
bmx5IGNvdmVycyB0aGUgY29yZSBnbG9iYWwsIGhvc3QsIGRldmljZSwgYW5kIHBvd2VyIGNvbnRy
b2wKcmVnaXN0ZXJzIChvZmZzZXRzIDB4MDAwIHRocm91Z2ggMHhlMDQpLCB3aGlsZSB0aGUgZHdj
MiBkcml2ZXIgZGVmaW5lcwpwZXItZW5kcG9pbnQgZmlmb3Mgc3RhcnRpbmcgYXQgb2Zmc2V0IDB4
MTAwMDoKCmRyaXZlcnMvdXNiL2R3YzIvaHcuaDoKI2RlZmluZSBFUEZJRk8oX2EpCQkJSFNPVEdf
UkVHKDB4MTAwMCArICgoX2EpICogMHgxMDAwKSkKCmR3YzJfZHJpdmVyX3Byb2JlKCkgbWFwcyB0
aGUgZXhhY3QgbGVuZ3RoIGZyb20gcmVnIHZpYQpkZXZtX3BsYXRmb3JtX2dldF9hbmRfaW9yZW1h
cF9yZXNvdXJjZSgpLiAgSWYgdGhlIGNvbnRyb2xsZXIgcnVucyBpbiBzbGF2ZS9waW8KbW9kZSwg
ZHdjMl9oc290Z193cml0ZV9maWZvKCkgYW5kIGR3YzJfaHNvdGdfcnhfZGF0YSgpIGFjY2VzcyB0
aGVzZSBmaWZvCnJlZ2lzdGVycyBhdCBvZmZzZXQgMHgxMDAwIGFuZCBhYm92ZSwgZmF1bHRpbmcg
b3V0c2lkZSB0aGUgNCBrYiBtYXBwaW5nLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBz
Oi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTEwOTA2NTYwNi42MjY0MS0xLWEwOTg3MjAz
MDY5QGdtYWlsLmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=

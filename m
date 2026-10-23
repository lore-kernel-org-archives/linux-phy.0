Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E8060A3818
	for <linux-phy@archiver.kernel.org>; Fri, 23 Oct 2026 16:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CKyXGqCJ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=LyraaoKt
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=DLcDLjcP6RLdg5+K1k+4whrCqrnExeg/VE387ObZ4hs=; b=CKyXGqCJ0JOgOX1iNsYQEaueGq
	BncD4NMYzpW/6cPxQV4uva0RMHj5gGWo/j1ugA5/SAzZmUTWP++VRMVtSriJcywwnhD7ucUC1B0O7
	ACAjmempmaCKOyASx6pe0+com5Ox0gZfkJ55ZaXzmggFaRIYqcXv15JXeH6r5pnCBgC/aEW5qosYS
	4wFwukgI74oP5yejdx+mONEfSZnG9vv00th1mNB4/8/GKK+dP+j5+ilyh9h7cv6He+ZEPthasHXCU
	CO63lHgDoam8Uv4X34Kkk8Y2XrozUTkEVLQIDcccwbdjtZZ/gh3DGMGZbBjT7mKkWGZhaU+jStzsy
	6IipaKsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKINC-0000000GgCM-2aAG;
	Fri, 23 Oct 2026 16:44:06 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKINA-0000000GgAH-1EAC
	for linux-phy@lists.infradead.org;
	Fri, 23 Oct 2026 16:44:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A4CD8439EC;
	Fri, 23 Oct 2026 16:44:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D2411F031E1;
	Fri, 23 Oct 2026 16:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792773843;
	bh=jZo+7rNyUddNOYgHPFN5ZX4fN8cJXMiqHtaxhcSCpfA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LyraaoKtd2mseO/RKKL+n/bbRMcpgcsw53zEMWM74hdz6/dJacVipJwnRjhIyjA8+
	 dFhVQe6Pu94umYp6GgQt5GRprSmPKhXzO7NnkIfR6w1Tb6l8FnX8xlHD+vfZfXPzRI
	 wOY6sQhBITutgNJodjtxDkWD0vH2+7F6zlVplibP/wuAFZpTYYp7R2INF8tgcDx9qB
	 Rj2pZdytUFGLjghQcaKjFcC5limRPcIz7yMWWn1C8i1f3N2vUyARBkm/+JYGMerJa+
	 CCweH3b2Gug0Cy3Pkf8izLaQ95SMGCUEXVJmRDCqPvEd3BZj5qZnSx/eOMC8HA9lRa
	 NuKSDeVzWWmbA==
Message-ID: <sashiko-outbox-182965@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/7] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Waipio compatible
To: "Vladimir Zapolskiy" <vz@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261023163057.775917-2-vz@kernel.org>
References: <20261023163057.775917-1-vz@kernel.org>
 <20261023163057.775917-2-vz@kernel.org>
Date: Fri, 23 Oct 2026 16:44:02 +0000
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
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IHBo
eTogcWNvbSx4MWU4MDEwMC1jc2kyLXBoeTogdXNlIHNtODQ1MCBpbnN0ZWFkIG9mIHdhaXBpbwot
LQoKY29tbWl0IDkwNzNhZTQ3N2MwZjkxNWI1NjhlNDI0ZDJjMjRjMzMyMGU5YjExOGYKQXV0aG9y
OiBWbGFkaW1pciBaYXBvbHNraXkgPHZ6QGtlcm5lbC5vcmc+CgpkdC1iaW5kaW5nczogcGh5OiBx
Y29tLHgxZTgwMTAwLWNzaTItcGh5OiBBZGQgV2FpcGlvIGNvbXBhdGlibGUKClRoaXMgcGF0Y2gg
YWRkcyB0aGUgcWNvbSx3YWlwaW8tY3NpMi1waHkgY29tcGF0aWJsZSBzdHJpbmcgdG8gdGhlCnFj
b20seDFlODAxMDAtY3NpMi1waHkgRGV2aWNldHJlZSBiaW5kaW5nIHNjaGVtYS4KCj4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSx4MWU4MDEw
MC1jc2kyLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9x
Y29tLHgxZTgwMTAwLWNzaTItcGh5LnlhbWwKPiBpbmRleCAxZjFlMmE0OTkzYjJhLi4yYTExY2E3
YzdkMTEyIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvcWNvbSx4MWU4MDEwMC1jc2kyLXBoeS55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHgxZTgwMTAwLWNzaTItcGh5LnlhbWwKPiBAQCAtMTks
NyArMTksOSBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgb25lT2Y6Cj4gICAgICAgIC0gY29uc3Q6IHFj
b20seDFlODAxMDAtY3NpMi1waHkKPiAgICAgICAgLSBpdGVtczoKPiAtICAgICAgICAgIC0gY29u
c3Q6IHFjb20sZ2x5bXVyLWNzaTItcGh5Cj4gKyAgICAgICAgICAtIGVudW06Cj4gKyAgICAgICAg
ICAgICAgLSBxY29tLGdseW11ci1jc2kyLXBoeQo+ICsgICAgICAgICAgICAgIC0gcWNvbSx3YWlw
aW8tY3NpMi1waHkKCltTZXZlcml0eTogTG93XQpTaG91bGQgdGhpcyBjb21wYXRpYmxlIHN0cmlu
ZyBiZSBxY29tLHNtODQ1MC1jc2kyLXBoeSBpbnN0ZWFkIG9mCnFjb20sd2FpcGlvLWNzaTItcGh5
PwoKV2FpcGlvIGlzIHRoZSBpbnRlcm5hbCBjb2RlbmFtZSBmb3IgdGhlIFNuYXBkcmFnb24gOCBH
ZW4gMSAoU004NDUwKSBTb0MsIG11Y2gKbGlrZSBIYW1vYSBpcyB0aGUgY29kZW5hbWUgZm9yIFgx
RTgwMTAwLiBJbiB1cHN0cmVhbSBEZXZpY2V0cmVlIGJpbmRpbmdzLAp0aGlzIHBsYXRmb3JtIGlz
IGVzdGFibGlzaGVkIHVuZGVyIHFjb20sc204NDUwOgoKRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9xY29tLnlhbWw6CiAgICAgIC0gaXRlbXM6CiAgICAgICAgICAtIGVudW06
CiAgICAgICAgICAgICAgLSBxY29tLHNtODQ1MC1oZGsKICAgICAgICAgICAgICAtIHFjb20sc204
NDUwLXFyZAogICAgICAgICAgICAgIC0gc2Ftc3VuZyxyMHEKICAgICAgICAgICAgICAtIHNvbnks
cGR4MjIzCiAgICAgICAgICAgICAgLSBzb255LHBkeDIyNAogICAgICAgICAgLSBjb25zdDogcWNv
bSxzbTg0NTAKCkRvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcWNvbS1zb2Mu
eWFtbCBhbHNvIGRlZmluZXMgdGhlIGFsbG93ZWQKbmFtaW5nIHBhdHRlcm5zIGZvciBTb0MgSVAg
YmxvY2sgY29tcGF0aWJsZXMgYW5kIGRvZXMgbm90IGluY2x1ZGUgd2FpcGlvIGluCnRoZSBsaXN0
IG9mIHBlcm1pdHRlZCBjb2RlbmFtZSBwcmVmaXhlczoKCiAgICAgICAgIyBQcmVmZXJyZWQgbmFt
aW5nIHN0eWxlIGZvciBjb21wYXRpYmxlcyBvZiBTb0MgY29tcG9uZW50czoKICAgICAgICAtIHBh
dHRlcm46ICJecWNvbSwoYXBxfGlwcXxtZG18bXNtfHFjbXxxY3N8cVtkcl11fHNhfHNjfHNkW2Ft
eF18c218eDFbZXBdKVswLTldKyhwcm8pPy0uKiQiCiAgICAgICAgLSBwYXR0ZXJuOiAiXnFjb20s
c2FyWzAtOV0rW2Etel0/LS4qJCIKICAgICAgICAtIHBhdHRlcm46ICJecWNvbSwoc2F8c2MpOFsw
LTldK1thLXpdW2Etel0/LS4qJCIKICAgICAgICAtIHBhdHRlcm46ICJecWNvbSwoZWxpemF8a2Fh
bmFwYWxpfGdseW11cnxoYXdpfG1haHVhfG1haWxpfG1pbG9zfG5vcmR8c2hpa3JhKS0uKyQiCgpP
dGhlciBTTTg0NTAgY2FtZXJhIGFuZCBQSFkgYmluZGluZ3MsIHN1Y2ggYXMgcWNvbSxzbTg0NTAt
Y2FtY2MgaW4KRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3Fjb20sc204
NDUwLWNhbWNjLnlhbWwsIHVzZSB0aGUKcWNvbSxzbTg0NTAtKiBwcmVmaXguCgotLSAKU2FzaGlr
byBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMDIzMTYz
MDU3Ljc3NTkxNy0xLXZ6QGtlcm5lbC5vcmc/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

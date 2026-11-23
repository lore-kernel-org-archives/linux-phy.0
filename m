Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694F5606A331
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 20:33:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4qUYfzpP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=g6DV9Eo4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=HLuTbWFTFy/dVyj+LBAhWnsxgjNmdEtY+bxFjqUzuS8=; b=4qUYfzpP5GB7zhUtynG47xqKVw
	HVJZ2M6L5Qa6vSgl2LA05HN7RkgU+5qbqkQ6f07+TXhi/vZ3w9v1610UXqjPqS4fBBiCRjNa4dzSo
	6Ak1ggFPzANuXleaUC9z1H+IkVn96f7J6oExLqbfZtXeGyOCu1fqKGztdjF4jwFlg/dtdegNqixjl
	M7qghigIzepXN4RJpIDffhyGcaxwujWohGbA0U8hMetqO8r31kfuHhoTfc0wMSrlIvCyIHDfsajgB
	SpBj+dpW6h3Zk0z00vyWyECWA+gI3U6hnA0+Uo4T3fGj+DbIuvnq/hKwHnjUs4kcP+mSFZ1u6jP9p
	u3vnoneg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVaim-00000004qib-0hrD;
	Mon, 23 Nov 2026 20:33:04 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVaiP-00000004qXA-1hNF;
	Mon, 23 Nov 2026 20:32:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2A59A45983;
	Mon, 23 Nov 2026 20:32:41 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1795465960;
	b=Bvgoipplmy6fHs134UIKd7PviolEA8gTTthn3spTpWWUO1HCbHnfaluhjyiVf3MdxY5x
	 3VQJgKKhM5HtbbmNkck/Xl8DY3014DxC3Xrx/IPZDHFfjuWzXRGX3cKyswtW9ziz+FcmM
	 FOQayMrIJvUDpG+egvUr5jbEEbd5p7d4nKaWR1Mz9PCZj1DLKzmbsuW55geQqIxNsKcWG
	 EGVvUIOGQUDCFkR8CrkJL1mr2ppOVxoR6aIeSxm/k9OCnu3vCouvgby2yGhZ24LPuFraS
	 TevwmB5zh8xKKjeGz4QCQwlfj0d5C9J4CdN/OHW7TSpXMuAwK90OSqivn7tQEbSdhkg==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1795465960;
	h=DKIM-Signature:Received:From:Subject:Date:Message-Id:MIME-Version:
	 Content-Type:Content-Transfer-Encoding:X-B4-Tracking:X-Change-ID:To:
	 Cc:X-Mailer:X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To;
	bh=9r3Pre0r4NItXk0EkmkIa/89K2E/lW0nEW1wW9AtDoE=;
	b=2tnZXJlD+yBf3KMSkMOs88VyQcI9W4JOp/1x2aRQkXz/JG//PCRGP8XZCfeIqzPFSbYl
	 TBhUD1PpPBZHsDxq5pqb5AdoEfNYcdJBRBj0Z0ZtQaQ3j9MJagHVDGdhTYT5bbvIlhUET
	 TJOOjU+t46W72if3agZc8YSfHi+oigotjwE7nluuHQ2HYzPO8rAOomGtZwghT1zPm0gzR
	 wpDlEYSizM1zb6pxe3lnMWRnEo3cIizAIU/FVXV3AgQhfHNKZj10Oqb0tT8uwPfSk4XY4
	 6I4ltjKs93hyMqWOJtxeJy/7mJHpHnizUlPQuDUdNQxCIfvVyQQHi/E0IgIsMHcqn/A==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id DC8A91F000D2;
	Mon, 23 Nov 2026 20:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795465960;
	bh=9r3Pre0r4NItXk0EkmkIa/89K2E/lW0nEW1wW9AtDoE=;
	h=From:Subject:Date:To:Cc:Reply-To;
	b=g6DV9Eo4aL8d1WcuLCWX2DfrNUowmhw4eP+/MBJ4Dme2B2qrNC2Xfprd804iBUs2M
	 VQGasSGjPQMCPr77El5+K5okDIReh24SjYGmTk8uthc3Ni4RIGXleUAs0lHBGjx/Rj
	 nE95+nYyG0a+OA9sYAkeBkcvCzZmEv6xkN8K6Eua7Mc2vs8q0c9evoD1OZz/HCjQTJ
	 VQ8ObagBId55ynynPnKQ1xxhxMJ0tLe83IcyIjOWHHNnFCyOURrdVxKQLUtIC1RwM/
	 TIFWloUPOwbbzMpAj76SEeIkB3pwYJPsyJsf9Vf4ZplUXbooWdrqYv5WI8PofQ8FiV
	 jkZcFwID9HrRw==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 3A8834C6E9;
	Mon, 23 Nov 2026 20:32:17 +0000 (UTC)
From: Fil Dunsky via B4 Relay <devnull+filipp.dunsky.gmail.com@kernel.org>
Subject: [PATCH v2 0/8] soc: cortina: Add CS7542 PCIe control, SerDes and
 host support
Date: Mon, 23 Nov 2026 23:32:14 +0300
Message-Id: <20261123-b4-cs7542-pcie-v2-0-f589a9cd0bef@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3WPQW6DMBBFr4K8ris82GCy6j2qLuzxOHFVIPEQ1
 Cji7jUklbrp8kt/3n9zF0w5EYtDdReZlsRpGkuAl0rgyY1HkimULKCGVilopNcSuTMa5BkTSQB
 NjenRtr0V5eicKabvHfj+8ch89Z+E80Z5NjJdrmVpftSEd0wSp2FI86HyreujazSSVrZD3/ahQ
 WOt097HiI1CMsHbuKEGYna7YjH+FXza8Y1xGuUCspYKQ6c9GIDYvx0Hl75ey5zY/E6J5ynf9v8
 Xtev89+qiCkpjIAO1CrrWf1Hruv4AIYoFQEwBAAA=
X-Change-ID: 20261123-b4-cs7542-pcie-224e359c8698
To: Manivannan Sadhasivam <mani@kernel.org>, 
 Stephen Boyd <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Krzysztof Wilczynski <kwilczynski@kernel.org>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Brian Masney <bmasney+clk@redhat.com>, 
 Jerome Brunet <jbrunet+clk@baylibre.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795465935; l=5529;
 i=filipp.dunsky@gmail.com; s=20260930; h=from:subject:message-id;
 bh=R3MajGKj6VJAQnzG5H4txrr1+B19HSrtNKMUWSyBtcQ=;
 b=kM2sUfrYHm8idroYzoX+8G2g8KmPVRJD2fBFdfZ/MqMeeqLwVrZi3bQ5hlRnLtTAgNgsSWxAA
 vCcYz5D+N82ApsCDSaf+bEe7ANJX51Ca3/9MWIHCNrx3HQrJQmoZrkU
X-Developer-Key: i=filipp.dunsky@gmail.com; a=ed25519;
 pk=JAYP8e2rJ54DHOmhNtXud8rl1igAaAXoOHxtJmVXI1g=
X-Endpoint-Received: by B4 Relay for filipp.dunsky@gmail.com/20260930 with
 auth_id=1085
X-Original-From: Fil Dunsky <filipp.dunsky@gmail.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: filipp.dunsky@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QWRkIENTNzU0MiBQQ0llIHN1cHBvcnQgd2l0aCBnbG9iYWwgZ2F0ZS9yZXNldCBjb250cm9scywg
YSBTbm93IEJ1c2gKU2VyRGVzIFBIWSBhbmQgRGVzaWduV2FyZSBob3N0IGdsdWUuIFRoZSBnbG9i
YWwgc3lzY29uIGFscmVhZHkgcHJvdmlkZXMKdGhlIEFQQi9DUFUvQVhJIGNsb2NrczsgZXh0ZW5k
IHRoYXQgc2FtZSBwcm92aWRlciB3aXRoIHRocmVlIFBDSWUgZ2F0ZXMKYW5kIGNvbnRyb2xsZXIg
cmVzZXRzLiBObyByZXNvdXJjZS1sZXNzIHBjaWUtY29udHJvbCBjaGlsZCBpcyBjcmVhdGVkLgpU
aGUgZXhpc3RpbmcgY2xvY2sgaW5kaWNlcyByZW1haW4gdW5jaGFuZ2VkOyBQQ0llIGdldHMgbmFt
ZWQgc3BlY2lmaWVycy4KClRoaXMgc2VyaWVzIGRlcGVuZHMgb24gdGhlIHBvc3RlZCBnbG9iYWwg
Y2xvY2svcGluY3RybCB2MjoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYxMTIzLWNz
NzU0Mi1zeXNjb24tdjItMC0xY2Q3NGIyNTIyZjlAZ21haWwuY29tLwpUaGUgY29tcGxldGUgcHJl
cmVxdWlzaXRlIGFuZCB0aGlzIHNlcmllcyBhcHBseSB0byBMaW51eCB2Ny40LXJjNC4KQm9hcmQg
RFRTIGNoYW5nZXMgYXJlIHByZXBhcmVkIHNlcGFyYXRlbHkuCgpUaGUgaG9zdCBwcm90ZWN0cyBp
dHMgNTEyLWJ5dGUgcm9vdCBjb25maWd1cmF0aW9uIGxpbWl0LCBvd25zIHRoZQpjb21iaW5lZCBJ
TlR4L01TSSBpbnRlcnJ1cHQgbGlmZWN5Y2xlIGFuZCByZWFkcyBsaW5rIHN0YXR1cyBmcm9tIHRo
ZQphcHBsaWNhdGlvbiB3cmFwcGVyLiBVbnVzZWQgU0FUQSBtb2RlLCBob3RwbHVnIGFuZCBzdXNw
ZW5kIGFyZSBvdXRzaWRlCnRoaXMgaW5pdGlhbCBzdXBwb3J0LiBHYXRlIHNvdXJjZSByYXRlcyBh
cmUgbm90IGFzc3VtZWQuCgpWYWxpZGF0aW9uIG9mIHYyOgotIEZ1bGwgaW5kZXBlbmRlbnQgQVJN
IEdDQzE0LjIgdm1saW51eC9tb2R1bGVzIGJ1aWxkcyB3aXRoIFBIWS9ob3N0PXkKICBhbmQ9bSwg
Q09NUElMRV9URVNUPW4gYW5kIG5vIENvcnRpbmEgcGxhdGZvcm0gc2VyaWVzLiBUaGUgZWFybHkg
Z2xvYmFsCiAgcHJvdmlkZXIgaXMgYnVpbHQgaW4gYmVjYXVzZSB0aGUgQVBCIHRpbWVyIGNsb2Nr
IG11c3QgYmUgYXZhaWxhYmxlIGVhcmx5LgotIFVwZGF0ZWQgc2NoZW1hcy9leGFtcGxlcyBhbmQg
c3RyaWN0IGdsb2JhbC1kcml2ZXIgY2hlY2twYXRjaCBwYXNzLgotIEFjdHVhbCBwYXJlbnQtcHJv
dmlkZXIgc291cmNlOiA0NjEgY2FzZXMgYW5kIDIzMzA5IGFzc2VydGlvbnMgdW5kZXIKICBBU2Fu
L1VCU2FuLCBpbmNsdWRpbmcgYWxsIHN0cmFwIG1vZGVzLCBzaXggY2xvY2sgb3V0cHV0cywgdW5y
ZWxhdGVkCiAgYml0cyBhbmQgZXZlcnkgYWxsb2NhdGlvbi9yZWdpc3RyYXRpb24gZmFpbHVyZSBw
YXRoLgotIENvbWJpbmVkIEFSTSBtdWx0aV92NyB2bWxpbnV4L21vZHVsZXMgYW5kIGJvYXJkIERU
IGJ1aWxkIHBhc3MuCgpUaGUgcmV2aXNlZCBwYXJlbnQgcHJvdmlkZXIgYW5kIFBDSWUgaG9zdCBi
b290ZWQgTGludXggNy40IG9uIEFsbW9uZCsKaW4gUkFNLiBFbnVtZXJhdGlvbiwgYWxsIDMgcm9v
dCBwb3J0cycgcG9zdC1lbnVtZXJhdGlvbiBNU0kgZW5hYmxlIGJpdHMsCk1TSS1YL0lOVHggeEhD
SSBjb21wbGV0aW9ucyBhbmQgaG9zdCB1bmxvYWQvcmVsb2FkIHBhc3NlZC4gVGhlIElOVHgKbWFw
cGluZyBjb3VudCByZXR1cm5lZCB0byBpdHMgcHJlLXByb2JlIGJhc2VsaW5lIGFmdGVyIHVubG9h
ZC4gRmluYWwKcmVzdWx0OiBmYWlsdXJlcz0wLCBmb2xsb3dlZCBieSBhdXRvbWF0aWMgcmV0dXJu
IHRvIGluc3RhbGxlZCBPcGVuV3J0LgpObyBmbGFzaCB3cml0ZXMgd2VyZSBwZXJmb3JtZWQuIEFj
dHVhbCBjb25maWcvREJJIHRlc3RzIGNvdmVyIDQ5Mjk4CmNhc2VzLCBpbmNsdWRpbmcgemVybyBo
YXJkd2FyZSBhY2Nlc3NlcyBhZnRlciBsaW5rIGxvc3M7IGxpZmVjeWNsZSB0ZXN0cwpjaGVjayBs
b2NrZWQgbWFza2luZywgSVJRIGRyYWluaW5nIGFuZCBzcGFyc2UgbWFwcGluZyBkaXNwb3NhbC4K
Ci0tLQpDaGFuZ2VzIGluIHYyOgotIEV4cG9zZSBQQ0llIGdhdGVzL3Jlc2V0cyBvbiB0aGUgZXhp
c3RpbmcgZ2xvYmFsIHN5c2NvbiBwcm92aWRlci4KLSBSZW1vdmUgdGhlIHZpcnR1YWwgY2hpbGQg
YmluZGluZyBhbmQgc2VwYXJhdGUgZ2F0ZS9yZXNldCBkcml2ZXIuCi0gUHJlc2VydmUgZWFybHkg
c3RyYXAgY2xvY2tzIGFuZCB1bndpbmQgcGFydGlhbCByZWdpc3RyYXRpb24gZmFpbHVyZXMuCi0g
UHV0IGNsb2NrcyBiZWZvcmUgaW50ZXJydXB0cyBpbiB0aGUgaG9zdCBiaW5kaW5nIGFuZCBleGFt
cGxlLgotIEVuYWJsZSByb290LXBvcnQgTVNJIGFmdGVyIGVudW1lcmF0aW9uOyBkaXNwb3NlIElO
VHggbWFwcGluZ3Mgb24gdGVhcmRvd24uCi0gUmV0dXJuIDAgZm9yIGxvc3QtbGluayBEQkkgcmVh
ZHMgdG8gZmFpbCBpQVRVIHBvbGxpbmc7IHNlcmlhbGl6ZSBxdWllc2NlLAogIGNvbmZpZy9EQkkg
YWNjZXNzIGFuZCBJUlEgZHJhaW5pbmcgYmVmb3JlIHJlc2V0LgotIExpbmsgdG8gdjE6IGh0dHBz
Oi8vcGF0Y2gubXNnaWQubGluay8yMDI2MTEyMy1iNC1jczc1NDItcGNpZS12MS0wLTRjZGU1MjAx
ZDQwNEBnbWFpbC5jb20KClRvOiBKaW5nb28gSGFuIDxqaW5nb29oYW4xQGdtYWlsLmNvbT4KVG86
IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaUBrZXJuZWwub3JnPgpUbzogTG9yZW56byBQaWVy
YWxpc2kgPGxwaWVyYWxpc2lAa2VybmVsLm9yZz4KVG86IEtyenlzenRvZiBXaWxjennFhHNraSA8
a3dpbGN6eW5za2lAa2VybmVsLm9yZz4KVG86IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+
ClRvOiBCam9ybiBIZWxnYWFzIDxiaGVsZ2Fhc0Bnb29nbGUuY29tPgpUbzogRmlsIER1bnNreSA8
ZmlsaXBwLmR1bnNreUBnbWFpbC5jb20+ClRvOiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprK2R0
QGtlcm5lbC5vcmc+ClRvOiBDb25vciBEb29sZXkgPGNvbm9yK2R0QGtlcm5lbC5vcmc+ClRvOiBT
dGVwaGVuIEJveWQgPHNib3lkQGtlcm5lbC5vcmc+ClRvOiBCcmlhbiBNYXNuZXkgPGJtYXNuZXkr
Y2xrQHJlZGhhdC5jb20+ClRvOiBKZXJvbWUgQnJ1bmV0IDxqYnJ1bmV0K2Nsa0BiYXlsaWJyZS5j
b20+ClRvOiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPgpUbzogVmlub2Qg
S291bCA8dmtvdWxAa2VybmVsLm9yZz4KVG86IE5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9u
Z0BsaW5hcm8ub3JnPgpDYzogbGludXgtcGNpQHZnZXIua2VybmVsLm9yZwpDYzogbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9y
ZwpDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwpDYzogbGludXgtY2xrQHZnZXIua2Vy
bmVsLm9yZwpDYzogbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKCi0tLQpGaWwgRHVuc2t5
ICg4KToKICAgICAgUENJOiBkd2M6IEV4cG9ydCB0aGUgbXVsdGlwbGV4ZWQgTVNJIGludGVycnVw
dCBoYW5kbGVyCiAgICAgIGR0LWJpbmRpbmdzOiBzb2M6IERlc2NyaWJlIENTNzU0MiBQQ0llIGNs
b2NrcyBhbmQgcmVzZXRzCiAgICAgIGNsazogY3M3NTQyOiBBZGQgUENJZSBnYXRlcyBhbmQgcmVz
ZXRzIHRvIHRoZSBnbG9iYWwgcHJvdmlkZXIKICAgICAgZHQtYmluZGluZ3M6IHBoeTogRGVzY3Jp
YmUgQ1M3NTQyIFBDSWUgU2VyRGVzCiAgICAgIHBoeTogQWRkIENTNzU0MiBQQ0llIFNlckRlcyBz
dXBwb3J0CiAgICAgIGR0LWJpbmRpbmdzOiBQQ0k6IERlc2NyaWJlIHRoZSBDUzc1NDIgaG9zdCBj
b250cm9sbGVyCiAgICAgIFBDSTogY3M3NTQyOiBBZGQgQ1M3NTQyIFBDSWUgaG9zdCBzdXBwb3J0
CiAgICAgIE1BSU5UQUlORVJTOiBBZGQgQ1M3NTQyIFBDSWUgc3VwcG9ydAoKIC4uLi9iaW5kaW5n
cy9wY2kvY29ydGluYSxjczc1NDItcGNpZS55YW1sICAgICAgICAgIHwgMTI5ICsrKysrCiAuLi4v
YmluZGluZ3MvcGh5L2NvcnRpbmEsY3M3NTQyLXBjaWUtcGh5LnlhbWwgICAgICB8ICA2NyArKysK
IC4uLi9zb2MvY29ydGluYS9jb3J0aW5hLGNzNzU0Mi1zeXNjb24ueWFtbCAgICAgICAgIHwgIDEw
ICstCiBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8
ICAgNyArLQogZHJpdmVycy9jbGsvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgIDYgKy0KIGRyaXZlcnMvY2xrL2Nsay1jczc1NDIuYyAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgMTgzICsrKysrKy0KIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL0tjb25maWcg
ICAgICAgICAgICAgICAgIHwgIDEyICsKIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL01ha2Vm
aWxlICAgICAgICAgICAgICAgIHwgICAyICsKIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtY3M3NTQyLmMgICAgICAgICAgIHwgNTUxICsrKysrKysrKysrKysrKysrKysrKwogZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWhvc3QuYyAgfCAgIDEgKwogZHJp
dmVycy9waHkvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMTEgKwog
ZHJpdmVycy9waHkvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDIg
KwogZHJpdmVycy9waHkvcGh5LWNzNzU0Mi1wY2llLmMgICAgICAgICAgICAgICAgICAgICAgfCAy
MzIgKysrKysrKysrCiBpbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2NvcnRpbmEsY3M3NTQyLWNs
b2NrLmggICB8ICAgNCArCiBpbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L2NvcnRpbmEsY3M3NTQy
LXJlc2V0LmggICB8ICAgOSArCiAxNSBmaWxlcyBjaGFuZ2VkLCAxMjAwIGluc2VydGlvbnMoKyks
IDI2IGRlbGV0aW9ucygtKQotLS0KYmFzZS1jb21taXQ6IGI2YTlmYTM0Y2U0MTg3Y2I2OWQzYzU4
OGE0YmJmZmMzMWNlNWRiOGYKY2hhbmdlLWlkOiAyMDI2MTEyMy1iNC1jczc1NDItcGNpZS0yMjRl
MzU5Yzg2OTgKcHJlcmVxdWlzaXRlLW1lc3NhZ2UtaWQ6IDIwMjYxMTIzLWNzNzU0Mi1zeXNjb24t
djItMC0xY2Q3NGIyNTIyZjlAZ21haWwuY29tCnByZXJlcXVpc2l0ZS1wYXRjaC1pZDogNGI1Njhk
NzQyMDk1ZjFhNjEzMTJjOTExZDJiNmU4MWM4ZTc1NDMxMgpwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6
IGE0YmJhMjZhM2FhYzU3ZTRlNDIyOWE3MjdmZGY5NDY3NzM3MzQ5M2EKcHJlcmVxdWlzaXRlLXBh
dGNoLWlkOiBmOGEyYmE3MTcxN2Y3MWNhMmJlZGRhOTg2ZjhiODYxOTk1Y2RjNTg2CnByZXJlcXVp
c2l0ZS1wYXRjaC1pZDogN2ZiZTk0MDUyNjVlZjNkMWVjNjI4MTE0MTVhNDZjMDA2MWFmZDdjOApw
cmVyZXF1aXNpdGUtcGF0Y2gtaWQ6IDI1MjIwODM1ZjVkMjUwNmEwMWJhNjUyZDg2ZjliOWFjM2Fk
NTEyMWEKCkJlc3QgcmVnYXJkcywKLS0gIApGaWwgRHVuc2t5IDxmaWxpcHAuZHVuc2t5QGdtYWls
LmNvbT4KCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFD4606A31C
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 13:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=WTrh5XQX;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=U/GVgjhZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Uam4FkLPZ5XRgf+Y2Z+LRKKLl8QrXa0/wvAIn1jTZdg=; b=WTrh5XQXEPGr7M07g3pDS6/NLi
	7ba2cJtYztzqvNfR87sLe0KoLJuzW6fyH92lNh2bC+t0ITvOz7ZnL9XIyKsXuyExL+7bhaqV2TbGl
	bijFWPFMjLOLi2XDKGp33IfiRZwMwIhCd7XRLwue4ttNNl89lG3hlvDihstUp7MkkxM2XV7K8GT+V
	OX2Y+RlIdaZWmRxnzRY10Js60jRBo2wJ/SLyeoeGyuJFBm3+UgVlxXoSo685Llwmshgc7PDJ8tLuR
	hNXfUQBXjNYyFGG0CqcIseTNEqffXat2yJ3aqNy5e1KuQENpBGz+UDhfHsr+cGjX0SxmUsqagk2J6
	nks2mNSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwo9-00000002diJ-25T7;
	Mon, 16 Nov 2026 13:31:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwo8-00000002di3-0QKr
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 13:31:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2CCA460DD0;
	Mon, 16 Nov 2026 13:31:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FDC81F000C4;
	Mon, 16 Nov 2026 13:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794835898;
	bh=bjnLIEDd3fA8ZoSUDOtXlRcDA4ewkoBbdcAwv0SMyqU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=U/GVgjhZiOBJ+vyURcnofxYLjP5GaNk8a3Mbozn16PBrzfMDMCmFBwKLqno4An5Ut
	 8Y7zF/7TQtk41A8AohkeHlhwgj+xAUX1YYALIZADPahpvo7Wz97l8y+JyzPSX7rmNS
	 EQ1getkclLaN6V0220WHhJBImHQ9B71gJOF2t3Fo5sh2YteULPOPruM2SfNyEZY05w
	 6cEBsYAF8o80vLxEYb5h6+Mhi7K7z6X7L3SxxVZ1JZY2b/E4NGi0rvH7r/oylBUQt1
	 Al03+8zgbqpIBdYEJEhpJ76Me701My53lEPB2kaRBgx924Fjx00o4tyjm4u9+9pJHS
	 rc957NOulFzeQ==
Message-ID: <sashiko-outbox-217082@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 02/11] dt-bindings: display: msm: dp-controller:
 Document Nord DisplayPort Controller
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261116-nord-drv-dt-v3-2-e3d3bf0e2c49@oss.qualcomm.com>
References: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
 <20261116-nord-drv-dt-v3-2-e3d3bf0e2c49@oss.qualcomm.com>
Date: Mon, 16 Nov 2026 13:31:37 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IGRpc3Bs
YXk6IG1zbTogZHAtY29udHJvbGxlcjogcWNvbSxub3JkLWRwIG5vdCBpbgogIGFscGhhYmV0aWNh
bCBvcmRlcgotLQoKY29tbWl0IDBlYzc4NDJjNWJhMzY1MWQ2ZjBhM2RlMDMxNjVhZDk5ODRmYjhl
NzUKQXV0aG9yOiBNYWhhZGV2YW4gUCA8bWFoYWRldmFuLnBAb3NzLnF1YWxjb21tLmNvbT4KCmR0
LWJpbmRpbmdzOiBkaXNwbGF5OiBtc206IGRwLWNvbnRyb2xsZXI6IERvY3VtZW50IE5vcmQgRGlz
cGxheVBvcnQgQ29udHJvbGxlcgoKVGhpcyBjb21taXQgYWRkcyB0aGUgcWNvbSxub3JkLWRwIGNv
bXBhdGlibGUgc3RyaW5nIHRvIHRoZSBxY29tLHNhODc3NXAtZHAKZmFsbGJhY2sgZ3JvdXAgaW4g
dGhlIE1TTSBEaXNwbGF5UG9ydCBjb250cm9sbGVyIGJpbmRpbmcuCgo+IGRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tc20vZHAtY29udHJvbGxl
ci55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbXNtL2Rw
LWNvbnRyb2xsZXIueWFtbAo+IGluZGV4IDA5NGE2MzgzYmI3NzkuLjliZTAyODgyNjFlNzIgMTAw
NjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbXNt
L2RwLWNvbnRyb2xsZXIueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kaXNwbGF5L21zbS9kcC1jb250cm9sbGVyLnlhbWwKPiBAQCAtMzUsNiArMzUsNyBAQCBw
cm9wZXJ0aWVzOgo+ICAgICAgICAtIGl0ZW1zOgo+ICAgICAgICAgICAgLSBlbnVtOgo+ICAgICAg
ICAgICAgICAgIC0gcWNvbSxxY3M4MzAwLWRwCj4gKyAgICAgICAgICAgICAgLSBxY29tLG5vcmQt
ZHAKPiAgICAgICAgICAgIC0gY29uc3Q6IHFjb20sc2E4Nzc1cC1kcAoKW1NldmVyaXR5OiBMb3dd
ClRoaXMgaXNuJ3QgYSBidWcsIGJ1dCBxY29tLG5vcmQtZHAgc2hvdWxkIGJlIHBsYWNlZCBiZWZv
cmUgcWNvbSxxY3M4MzAwLWRwCnRvIGtlZXAgdGhlIGNvbXBhdGlibGUgZW51bSBsaXN0IHNvcnRl
ZCBhbHBoYWJldGljYWxseSBsaWtlIHRoZSByZXN0IG9mCnRoZSBiaW5kaW5nLgoKLS0gClNhc2hp
a28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTExNi1u
b3JkLWRydi1kdC12My0wLWUzZDNiZjBlMmM0OUBvc3MucXVhbGNvbW0uY29tP3BhcnQ9MgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

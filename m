Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E51606A324
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 10:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=obzGxCY1;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=hkT7kjDz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=A5gKFCwuUHdQIRsdU6YA4O1Gf9Wabxb5U8rnzvz3FDA=; b=obzGxCY15FnDYu+3JUlacBKZkj
	UbyBswM2YyoKu1j9KzLybr00B+kY9YOaPlhNWvOJBnfFyjfwdPFTZIqras5zj5Mb6GodlXkZM7R9f
	AyvhQqatqAxzgvDN6eNRKmsBxWcpBCLt5q5u3Mv5fPjefEtqGo4YptlGG+uc4VIYcvkY7k66PLZzT
	ijWyKWVSlyjfXzbcOKvDA9QmmQwsqkPY23Q6f7ZzqwE7Atdfmrmyp1BimbCFyY62FrWzzx+A0+TXP
	lnAZN74kIwtvkzWyhj0/CbTld4zAZvsiW4E1QnHA1YQXqdV9plfvT7/+5oJCm8bX2HqjAtMWs88Ew
	ZwDeLq5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpSi-0000000GC2I-0mUn;
	Mon, 02 Nov 2026 10:40:24 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpSh-0000000GC2C-16Mv
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 10:40:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6ACDF60DC0;
	Mon,  2 Nov 2026 10:40:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2BDC1F000C1;
	Mon,  2 Nov 2026 10:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793616022;
	bh=hvu240eBRoY1aXEt3RbWfkOxwOzXBhw+bI6p1t7/mTM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hkT7kjDzq0bic3D35fd0tEtUeaJk/EnXtKq7lHCfAjiNk3Leto63VrcBuG8V746IK
	 59mcGTps0MCE8UDZYADrWeFGdZh8Xm5js0FLmV7w+nPKKKLHvoQYLXWI1aQ41zPxae
	 1S5+zXgyMSlvlu3IRpE8VbiN8sJ8uiZMnpeJxIyAOpygnS05OSWym3ITmbvyeIky8W
	 LAwf9xVHWv56K8NPGnwjMTPD2d2+JQ5V8nLT6gOcg1bXBlf+/ACo8iq4MGoZK8TfSW
	 ABPK6Aq90DN8/uMp2ITShttNSq/P4meIiZmZao4FhgeZRmPs+SPp4/Ck0j0AGYF/+l
	 E+UWNWg7QWjLA==
Message-ID: <sashiko-outbox-193269@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v17 1/2] dt-bindings: phy: document the serdes PHY on
 sa8255p
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261102-sa8255p-eth-phy-v17-1-aa138f2912a0@oss.qualcomm.com>
References: <20261102-sa8255p-eth-phy-v17-0-aa138f2912a0@oss.qualcomm.com>
 <20261102-sa8255p-eth-phy-v17-1-aa138f2912a0@oss.qualcomm.com>
Date: Mon, 02 Nov 2026 10:40:21 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IHBo
eTogcWNvbSxzYTgyNTVwLWR3bWFjLXNnbWlpLXBoeTogdW5yZW1vdmVkIHBvd2VyLWRvbWFpbi1u
YW1lcwotLQoKY29tbWl0IDAwYzgzMmY5NTM0YWU1YTZhZmRkNjM5MTU1MzI0NDY1OGNkYmM4MWMK
QXV0aG9yOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiYXJ0b3N6LmdvbGFzemV3c2tpQG9zcy5xdWFs
Y29tbS5jb20+CgpkdC1iaW5kaW5nczogcGh5OiBkb2N1bWVudCB0aGUgc2VyZGVzIFBIWSBvbiBz
YTgyNTVwCgpUaGlzIGNvbW1pdCBhZGRzIHRoZSBEZXZpY2UgVHJlZSBiaW5kaW5nIHNjaGVtYSBm
b3IgdGhlIGZpcm13YXJlLW1hbmFnZWQKU0dNSUkvU2VyRGVzIFBIWSBvbiBRdWFsY29tbSBzYTgy
NTVwIHBsYXRmb3Jtcy4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvcWNvbSxzYTgyNTVwLWR3bWFjLXNnbWlpLXBoeS55YW1sIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNhODI1NXAtZHdtYWMtc2dtaWktcGh5
LnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjllODQ2
ZTM4MTU1NTUKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9xY29tLHNhODI1NXAtZHdtYWMtc2dtaWktcGh5LnlhbWwKPiBAQCAtMCww
ICsxLDUwIEBACj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wIE9SIEJTRC0y
LUNsYXVzZSkKPiArJVlBTUwgMS4yCj4gKy0tLQo+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9y
Zy9zY2hlbWFzL3BoeS9xY29tLHNhODI1NXAtZHdtYWMtc2dtaWktcGh5LnlhbWwjCj4gKyRzY2hl
bWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ICsKPiAr
dGl0bGU6IFF1YWxjb21tIFNlckRlcy9TR01JSSBldGhlcm5ldCBQSFkgY29udHJvbGxlciAoZmly
bXdhcmUgbWFuYWdlZCkKPiArCj4gK21haW50YWluZXJzOgo+ICsgIC0gQmFydG9zeiBHb2xhc3pl
d3NraSA8YnJnbEBrZXJuZWwub3JnPgo+ICsKPiArZGVzY3JpcHRpb246Cj4gKyAgVGhlIFNlckRl
cyBQSFkgc2l0cyBiZXR3ZWVuIHRoZSBNQUMgYW5kIHRoZSBleHRlcm5hbCBQSFkgYW5kIHByb3Zp
ZGVzCj4gKyAgc2VwYXJhdGUgUnggVHggbGluZXMuCj4gKwo+ICtwcm9wZXJ0aWVzOgo+ICsgIGNv
bXBhdGlibGU6Cj4gKyAgICBjb25zdDogcWNvbSxzYTgyNTVwLWR3bWFjLXNnbWlpLXBoeQo+ICsK
PiArICByZWc6Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBkZXNjcmlwdGlvbjogc2VyZGVzCj4g
Kwo+ICsgIHBvd2VyLWRvbWFpbnM6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKPiArICBwb3dlci1k
b21haW4tbmFtZXM6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKPiArICAiI3BoeS1jZWxscyI6Cj4g
KyAgICBjb25zdDogMAo+ICsKPiArcmVxdWlyZWQ6Cj4gKyAgLSBjb21wYXRpYmxlCj4gKyAgLSBy
ZWcKPiArICAtICIjcGh5LWNlbGxzIgo+ICsgIC0gcG93ZXItZG9tYWlucwo+ICsgIC0gcG93ZXIt
ZG9tYWluLW5hbWVzCj4gKwo+ICthZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKPiArCj4gK2V4
YW1wbGVzOgo+ICsgIC0gfAo+ICsgICAgcGh5QDg5MDEwMDAgewo+ICsgICAgICAgIGNvbXBhdGli
bGUgPSAicWNvbSxzYTgyNTVwLWR3bWFjLXNnbWlpLXBoeSI7Cj4gKyAgICAgICAgcmVnID0gPDB4
MDg5MDEwMDAgMHhlMTA+Owo+ICsgICAgICAgICNwaHktY2VsbHMgPSA8MD47Cj4gKyAgICAgICAg
cG93ZXItZG9tYWlucyA9IDwmc2NtaTdfZHZmcyAwPjsKPiArICAgICAgICBwb3dlci1kb21haW4t
bmFtZXMgPSAic2VyZGVzIjsKPiArICAgIH07CgpbU2V2ZXJpdHk6IExvd10KQXMgcmVwb3J0ZWQg
YnkgS3J6eXN6dG9mIEtvemxvd3NraSBvbiB2MTEgWzFdLCBzaG91bGQgcG93ZXItZG9tYWluLW5h
bWVzIGJlCmRyb3BwZWQgZnJvbSBwcm9wZXJ0aWVzLCByZXF1aXJlZCwgYW5kIGV4YW1wbGVzIGlu
CkRvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYTgyNTVwLWR3bWFj
LXNnbWlpLXBoeS55YW1sPwoKVGhlcmUgaXMgb25seSBhIHNpbmdsZSBwb3dlciBkb21haW4gdGhh
dCBpcyBhdHRhY2hlZCB2aWEgdGhlIHBsYXRmb3JtIGJ1cyBjb3JlCnJhdGhlciB0aGFuIGxvb2tl
ZCB1cCBieSBuYW1lLCBhbmQgY2hhbmdpbmcgcG93ZXItZG9tYWluLW5hbWVzIGZyb20KY29uc3Q6
IHNlcmRlcyB0byBtYXhJdGVtczogMSBsZWF2ZXMgdGhlIHByb3BlcnR5IHJlcXVpcmVkIGZvciBE
VCB2YWxpZGF0aW9uCndoaWxlIGFsbG93aW5nIGFueSBhcmJpdHJhcnkgc3RyaW5nIHZhbHVlLgoK
WzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjA2MzAtZXh1YmVyYW50LWRyYW1hdGlj
LWJ1c3RhcmQtMDY4YmY4QHF1b2xsCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9z
YXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMTAyLXNhODI1NXAtZXRoLXBoeS12MTctMC1hYTEz
OGYyOTEyYTBAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

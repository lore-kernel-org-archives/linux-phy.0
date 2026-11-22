Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5F1606A336
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 03:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iAE5nWWS;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=a9Lsb/FX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ws9RTDh1aHBTvDK0GupNCC6sbb3VkM50QlHMBrNp+5Y=; b=iAE5nWWSrCSYA9I0WdxsyTttWt
	iWKETLugC5TcQn6ybMo7ptLXfy7xRjnzsPZb8eiICIMS0z4zSNiQW57+nDb1Oigx4oaEIBoDp/9xS
	PFaL8sAbIwEmkZBGl+icKyEF8imYH1z4kGKt41hfPR491AdjDrsYVrT3SsL0lTvoru8tEaW5oEWgG
	kIrANvXjQimQJkkaeUiP0jux0oRHrRPoWoJAy/Q0KHvturCNtLlU/P0rgwaVy5WceFy1GcmDtmJpN
	Xw8UM9mz6H30u5prz+3tSsmzniVsPXPAx8a1Kf6t+598MU6TrixcA73njJZXsUmcgYs4gmegLIP/z
	WPZ0Krdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUy6r-00000000hwO-1VOo;
	Sun, 22 Nov 2026 03:19:21 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUy6q-00000000hwD-27QD
	for linux-phy@lists.infradead.org;
	Sun, 22 Nov 2026 03:19:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1576E411C3;
	Sun, 22 Nov 2026 03:19:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88F041F000C4;
	Sun, 22 Nov 2026 03:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795317559;
	bh=Fy8V29D8kYwB6Exatu7VPdyzmc2sUNsTaNpcQ+njmJg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=a9Lsb/FXYTzMUOFS13AmCjw/7nXycTZGmop8SvOa9yod/pUfIxCvpnVM0YaK+dl0S
	 BR1LmG+QBjs/5BT3GKWwgIU1hVvfbHJ4UL7xkgiUumi8b7r3D5l59UZ3XC7OJDxhZO
	 oXR3SLjRgY/+KSdB2o+ZVBbAWm/QTCPAodrO9tSnHZ1qWUZrvx0fmh+NE9inrIO3FI
	 UGWaqUu5seXiW1z3SJL0HiwmUWlVs63RT2aURGuBtOF+vZHVd19tmDuWxQLOosa9rL
	 nSPjlHzSNG4p9HcTS6L4BoFfi9sEsytbZTcrm6T089DawbHOA37xEHEF4zKUiGqCEk
	 wfwolksc4w8+Q==
Message-ID: <sashiko-outbox-227669@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 10/11] bus: mhi: host: pci_generic: Add support for
 Qualcomm Nord
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261122-nord_ep-v1-10-6d8839ffa9aa@oss.qualcomm.com>
References: <20261122-nord_ep-v1-0-6d8839ffa9aa@oss.qualcomm.com>
 <20261122-nord_ep-v1-10-6d8839ffa9aa@oss.qualcomm.com>
Date: Sun, 22 Nov 2026 03:19:19 +0000
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
MiBwb3RlbnRpYWwKaXNzdWVzIHRvIGNvbnNpZGVyOgotIFtNZWRpdW1dIGJ1czogbWhpOiBob3N0
OiBwY2lfZ2VuZXJpYzogMHgwMTIwIHdpbGRjYXJkIGNsYXNzIG1hdGNoZXMKICBRQ09NIFJvb3Qg
UG9ydAotIFtMb3ddIGJ1czogbWhpOiBob3N0OiBwY2lfZ2VuZXJpYzogdW5zb3J0ZWQgUElEIDB4
MDEyMCBlbnRyeSBpbgogIG1oaV9wY2lfaWRfdGFibGUKLS0KCmNvbW1pdCBiZjk5N2QxYWM1ZTNm
MjYzZGVhNjY1NjBiM2U4NWM5ZmRkOTcwM2UzCkF1dGhvcjogS3Jpc2huYSBDaGFpdGFueWEgQ2h1
bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9zcy5xdWFsY29tbS5jb20+CgpidXM6IG1oaTogaG9zdDog
cGNpX2dlbmVyaWM6IEFkZCBzdXBwb3J0IGZvciBRdWFsY29tbSBOb3JkCgpUaGlzIGNvbW1pdCBh
ZGRzIGFuIE1ISSBQQ0kgZGV2aWNlIGVudHJ5IGZvciB0aGUgUXVhbGNvbW0gTm9yZCBlbmRwb2lu
dAooZGV2aWNlIElEIDB4MDEyMCksIHJldXNpbmcgdGhlIHNhODc3NXAgTUhJIGNvbnRyb2xsZXIg
Y29uZmlndXJhdGlvbi4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvYnVzL21oaS9ob3N0L3BjaV9n
ZW5lcmljLmMgYi9kcml2ZXJzL2J1cy9taGkvaG9zdC9wY2lfZ2VuZXJpYy5jCj4gaW5kZXggY2E5
ZWY0YWFhMDE0MC4uNjUyMDFlYzhkYzc2YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2J1cy9taGkv
aG9zdC9wY2lfZ2VuZXJpYy5jCj4gKysrIGIvZHJpdmVycy9idXMvbWhpL2hvc3QvcGNpX2dlbmVy
aWMuYwoKWyAuLi4gXQoKPiBAQCAtOTY2LDYgKzk3Nyw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
bWhpX3BjaV9kZXZfaW5mbyBtaGlfbmV0cHJpc21hX2ZjdW42OV9pbmZvID0gewo+ICBzdGF0aWMg
Y29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgbWhpX3BjaV9pZF90YWJsZVtdID0gewo+ICAJe1BD
SV9ERVZJQ0UoUENJX1ZFTkRPUl9JRF9RQ09NLCAweDAxMTYpLAo+ICAJCS5kcml2ZXJfZGF0YSA9
IChrZXJuZWxfdWxvbmdfdCkgJm1oaV9xY29tX3NhODc3NXBfaW5mbyB9LAo+ICsJe1BDSV9ERVZJ
Q0UoUENJX1ZFTkRPUl9JRF9RQ09NLCAweDAxMjApLAo+ICsJCS5kcml2ZXJfZGF0YSA9IChrZXJu
ZWxfdWxvbmdfdCkgJm1oaV9xY29tX25vcmRfaW5mbyB9LAo+ICAJLyogVGVsaXQgRk45MjBDMDQg
KHNkeDM1KSAqLwo+ICAJe1BDSV9ERVZJQ0VfU1VCKFBDSV9WRU5ET1JfSURfUUNPTSwgMHgwMTFh
LCAweDFjNWQsIDB4MjAyMCksCj4gIAkJLmRyaXZlcl9kYXRhID0gKGtlcm5lbF91bG9uZ190KSAm
bWhpX3RlbGl0X2ZuOTIwYzA0X2luZm8gfSwKCltTZXZlcml0eTogTWVkaXVtXQpEb2VzIHRoaXMg
bWF0Y2ggMTdjYjowMTIwIFBDSWUgUm9vdCBQb3J0cyBpbiBhZGRpdGlvbiB0byB0aGUgTm9yZCBN
SEkKZW5kcG9pbnQ/CgpEZXZpY2UgSUQgMHgwMTIwIGlzIGFsc28gdXNlZCBieSBRdWFsY29tbSBS
b290IFBvcnRzOgoKZHJpdmVycy9wY2kvcXVpcmtzLmM6cGNpX2Rldl9hY3NfZW5hYmxlZCgpIHsK
ICAgIC4uLgoJLyogUUNPTSBHbHltdXIgcm9vdCBwb3J0ICovCgl7IFBDSV9WRU5ET1JfSURfUUNP
TSwgMHgwMTIwLCBwY2lfcXVpcmtfcWNvbV9ycF9hY3MgfSwKICAgIC4uLgp9CgpCZWNhdXNlIFBD
SV9ERVZJQ0UoKSBsZWF2ZXMgLmNsYXNzIGFuZCAuY2xhc3NfbWFzayBhdCAwLCB1ZGV2IGF1dG9s
b2FkcwptaGlfcGNpX2dlbmVyaWMgZm9yIDE3Y2I6MDEyMCBSb290IFBvcnRzLCBhbmQgaWYgcGNp
ZXBvcnQgaXMgbm90IGJvdW5kCihmb3IgZXhhbXBsZSB3aXRoIENPTkZJR19QQ0lFUE9SVEJVUz1u
IG9yIHBjaWVfcG9ydHM9Y29tcGF0KSwKbWhpX3BjaV9wcm9iZSgpIGJpbmRzIHRvIHRoZSBSb290
IFBvcnQgYnJpZGdlIGFuZCB0cmllcyB0byBtYXAgQkFSIDEgYXMKTUhJIHJlZ2lzdGVycy4gIFNo
b3VsZCB0aGlzIGVudHJ5IHJlc3RyaWN0IC5jbGFzcyBhbmQgLmNsYXNzX21hc2sgdG8KbWF0Y2gg
bm9yZF9oZWFkZXIncyBQQ0lfQ0xBU1NfT1RIRVJTPwoKW1NldmVyaXR5OiBMb3ddClRoaXMgaXNu
J3QgYSBidWcsIGJ1dCB0aGUgY29tbWVudCBhYm92ZSBtaGlfcGNpX2lkX3RhYmxlIGFza3MgdG8g
a2VlcCB0aGUKZW50cmllcyBzb3J0ZWQgYnkgUElELCBzbyAweDAxMjAgc2hvdWxkIGdvIGFmdGVy
IHRoZSAweDAxMWEgZW50cmllcy4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nh
c2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjExMjItbm9yZF9lcC12MS0wLTZkODgzOWZmYTlhYUBv
c3MucXVhbGNvbW0uY29tP3BhcnQ9MTAKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

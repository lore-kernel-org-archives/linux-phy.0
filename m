Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D48B1D58CCA
	for <linux-phy@archiver.kernel.org>; Tue, 24 Mar 2026 12:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ma2EbrUl+EwJFCYay0O1ooHdCTpRgcbu0FcXBdNxFRQ=; b=GNfWl1blgRUniF
	8YTb3wWknKcUeT0hujyYYLS6VDtknFYahwmAxtogNzEnsUJdYSInc5LPGC7LHsIDsnNGB5KdatmMm
	MEknVGFlrRtwhQTpSLNfyo+cCFmgx8v0o07QrvDN9ncGY7ppl/Ks4K4LhFuV9GwUb8dWhp/4Gra0g
	fMpJbgidLuOLYeMNp5OZU4orWiCOEOWWkAcUpKp9VOzDv/q1jMIAyCQcuXgPc/X6Tf5aECQBIL4aF
	4ngk9pGmkQicl9tl0lZ/5aHyOQnD+wn4pWu4QNRktG/I/fB3qdANke2kBMAgr3+yzqxwfPPZGGX+E
	OFKjSCw4HSwqIiScbwDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w50uB-00000001NfG-2Mf6;
	Tue, 24 Mar 2026 12:30:43 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w50tz-00000001NWv-2oPH;
	Tue, 24 Mar 2026 12:30:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=2V1nSrzkw8whgF6Q+7w667AJP3xXFU3VQ4vWMQ71LF8=; b=N1fh9Lq2ubwiOVhwvENsVtEux7
	1lzXIuNjTNljmOQLaFFdXGO7pC17VYM6yj3jArQfaC24cFUTP0k7hZT72ytmjaasMsjvErsZGwqs6
	oHA/I/IK+FjP6INca2SfynvLQIA0j/i60Z21oHNwbbpq0VKxxzfdcBRyu9z1V81L4ACZiskAZbJfn
	wGJ9YVsatW9zfV9+JLQ+EznvYQWI6dhuOvpiIxR6h3im256MDnMPpfq97NWTCPgcwmKpf1IiwisFj
	ACfMIXyB14ScShtxH0TVYEGlQ2O3qIrgKB8Vvk2jqmxBOKWVwZm/E3/rr91ZrGoRqj362O3hUMKXu
	ev05gPVg==;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w50tt-0005qU-08;
	Tue, 24 Mar 2026 13:30:25 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy05.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w50ts-000Pna-2i;
	Tue, 24 Mar 2026 13:30:24 +0100
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Cc: Siddharth Vadapalli <s-vadapalli@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	Nora Schiffer <nora.schiffer@ew.tq-group.com>
Subject: [PATCH v2 6/7] net: ethernet: ti: am65-cpsw: add support for J722S SoC family
Date: Tue, 24 Mar 2026 13:29:42 +0100
Message-ID: <0cef90aa0bf1bfc8f0bc8e3f751991aa617f0700.1774354734.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1774354734.git.nora.schiffer@ew.tq-group.com>
References: <cover.1774354734.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27950/Tue Mar 24 07:24:19 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_053031_711349_0EE6203C 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhlIEo3MjJTIENQU1czRyBpcyBtb3N0bHkgaWRlbnRpY2FsIHRvIHRoZSBBTTY0J3MsIGJ1dCBh
ZGRpdGlvbmFsbHkKc3VwcG9ydHMgU0dNSUkuCgpTaWduZWQtb2ZmLWJ5OiBOb3JhIFNjaGlmZmVy
IDxub3JhLnNjaGlmZmVyQGV3LnRxLWdyb3VwLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5l
dC90aS9hbTY1LWNwc3ctbnVzcy5jIHwgOCArKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDggaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3RpL2FtNjUtY3Bz
dy1udXNzLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC90aS9hbTY1LWNwc3ctbnVzcy5jCmluZGV4
IGQ5NDAwNTk5ZTgwYTQuLjdhYzc1ZmM4Y2RjZjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L3RpL2FtNjUtY3Bzdy1udXNzLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkv
YW02NS1jcHN3LW51c3MuYwpAQCAtMzQ2OCw2ICszNDY4LDEzIEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgYW02NV9jcHN3X3BkYXRhIGFtNjR4X2Nwc3d4Z19wZGF0YSA9IHsKIAkuZmRxcmluZ19tb2Rl
ID0gSzNfUklOR0FDQ19SSU5HX01PREVfUklORywKIH07CiAKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
YW02NV9jcHN3X3BkYXRhIGo3MjJzX2Nwc3d4Z19wZGF0YSA9IHsKKwkucXVpcmtzID0gQU02NF9D
UFNXX1FVSVJLX0RNQV9SWF9URE9XTl9JUlEsCisJLmFsZV9kZXZfaWQgPSAiYW02NC1jcHN3eGci
LAorCS5mZHFyaW5nX21vZGUgPSBLM19SSU5HQUNDX1JJTkdfTU9ERV9SSU5HLAorCS5leHRyYV9t
b2RlcyA9IEJJVChQSFlfSU5URVJGQUNFX01PREVfU0dNSUkpLAorfTsKKwogc3RhdGljIGNvbnN0
IHN0cnVjdCBhbTY1X2Nwc3dfcGRhdGEgajcyMDBfY3Bzd3hnX3BkYXRhID0gewogCS5xdWlya3Mg
PSAwLAogCS5hbGVfZGV2X2lkID0gImFtNjQtY3Bzd3hnIiwKQEAgLTM0OTUsNiArMzUwMiw3IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGFtNjVfY3Bzd19udXNzX29mX210YWJs
ZVtdID0gewogCXsgLmNvbXBhdGlibGUgPSAidGksYW02NTQtY3Bzdy1udXNzIiwgLmRhdGEgPSAm
YW02NXhfc3IxXzB9LAogCXsgLmNvbXBhdGlibGUgPSAidGksajcyMWUtY3Bzdy1udXNzIiwgLmRh
dGEgPSAmajcyMWVfcGRhdGF9LAogCXsgLmNvbXBhdGlibGUgPSAidGksYW02NDItY3Bzdy1udXNz
IiwgLmRhdGEgPSAmYW02NHhfY3Bzd3hnX3BkYXRhfSwKKwl7IC5jb21wYXRpYmxlID0gInRpLGo3
MjJzLWNwc3ctbnVzcyIsIC5kYXRhID0gJmo3MjJzX2Nwc3d4Z19wZGF0YX0sCiAJeyAuY29tcGF0
aWJsZSA9ICJ0aSxqNzIwMC1jcHN3eGctbnVzcyIsIC5kYXRhID0gJmo3MjAwX2Nwc3d4Z19wZGF0
YX0sCiAJeyAuY29tcGF0aWJsZSA9ICJ0aSxqNzIxZS1jcHN3eGctbnVzcyIsIC5kYXRhID0gJmo3
MjFlX2Nwc3d4Z19wZGF0YX0sCiAJeyAuY29tcGF0aWJsZSA9ICJ0aSxqNzg0czQtY3Bzd3hnLW51
c3MiLCAuZGF0YSA9ICZqNzg0czRfY3Bzd3hnX3BkYXRhfSwKLS0gClRRLVN5c3RlbXMgR21iSCB8
IE3DvGhsc3RyYcOfZSAyLCBHdXQgRGVsbGluZyB8IDgyMjI5IFNlZWZlbGQsIEdlcm1hbnkKQW10
c2dlcmljaHQgTcO8bmNoZW4sIEhSQiAxMDUwMTgKR2VzY2jDpGZ0c2bDvGhyZXI6IERldGxlZiBT
Y2huZWlkZXIsIFLDvGRpZ2VyIFN0YWhsLCBTdGVmYW4gU2NobmVpZGVyCmh0dHBzOi8vd3d3LnRx
LWdyb3VwLmNvbS8KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK

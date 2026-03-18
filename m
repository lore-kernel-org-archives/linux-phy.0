Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41D1D103E189
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 14:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JslZDW2ly06df4rtduekFfIPVDi77IpAss5fRcZoqEk=; b=s9N9t0ms7b6Slq
	PXb/i9fGK4rU9BANTEtJcqwJUczZCw2+BrYBgKMioBotQsVuPMC4DDaqXb4CZ8+MG0I88K1NUjBNp
	otLTzBpEZs3tIovb+o20lewg5u8nX32MhAWQ09y53IG46mhO3p1L483SddkEzz4mfnBY5MYEe8g6G
	wi20s59ZS0eQULWAIf8288b4caJ/6nfQFM5gtti3hpGEt3eUzXgl/61WNf3tB4CXEOw5jDubL2R8l
	oJHzMee4KgvQWSjyoIW60XPgP/Qvp20r6KvABpRcd9Ofs9ET8S4S6s3ehrusNW7THuuTOYkB1D5eN
	o39S1USbmqk1mOJTdh4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2rYI-00000008YHh-023o;
	Wed, 18 Mar 2026 14:07:14 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2rY1-00000008Y7Q-1Huf;
	Wed, 18 Mar 2026 14:07:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=lN1yDT3RAJCOoSQ4DvWodIFR/io63EZopfQK3kE+hGw=; b=Duk6H2xgDIwydvTkRMTZd0R0a8
	yT+ZChQznQuzYZkvGDnbgfi6EYW6tu2q4y71y6TZZSA7HJxbtMkU0UDTLesQXteg++FMl5/2qmLKs
	zHXrzHqV28FQbIphIYczXWLBokA4EntlZPa1sFvMKYgrMQ8Jf+Philm7SH4dyanA99o+jGPP3qEHF
	oXYISkZbjV9najaQte/lrptvFiKpqxZwmUmTW9rKC0UZxxTAxyhy6Kr98jLzBxa48MwelljJK3P0g
	re8r0x68lh9Y81ii+qNe5KCDk++wKWgZXHBZwPPgyMlYVpwc91wiHcB7e38jbMTW55XkBQloDHYsE
	SSAvqj3Q==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w2rXz-000BqS-0h;
	Wed, 18 Mar 2026 15:06:55 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy06.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w2rXW-000B1s-1E;
	Wed, 18 Mar 2026 15:06:26 +0100
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
Subject: [PATCH 6/7] net: ethernet: ti: am65-cpsw: add support for J722S SoC family
Date: Wed, 18 Mar 2026 15:05:28 +0100
Message-ID: <4cc3dd9fab460d35215c8f97496b9ae16c5bcb22.1773751309.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1773751309.git.nora.schiffer@ew.tq-group.com>
References: <cover.1773751309.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27944/Wed Mar 18 07:24:13 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_070657_485902_DA1E9AFD 
X-CRM114-Status: UNSURE (   9.77  )
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
IGQ5NDAwNTk5ZTgwYTQuLmZjNTdkNWU2ZWRmNGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L3RpL2FtNjUtY3Bzdy1udXNzLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkv
YW02NS1jcHN3LW51c3MuYwpAQCAtMzQ2OCw2ICszNDY4LDEzIEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgYW02NV9jcHN3X3BkYXRhIGFtNjR4X2Nwc3d4Z19wZGF0YSA9IHsKIAkuZmRxcmluZ19tb2Rl
ID0gSzNfUklOR0FDQ19SSU5HX01PREVfUklORywKIH07CiAKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
YW02NV9jcHN3X3BkYXRhIGo3MjJzX2Nwc3d4Z19wZGF0YSA9IHsKKwkucXVpcmtzID0gQU02NF9D
UFNXX1FVSVJLX0RNQV9SWF9URE9XTl9JUlEgfCBBTTY0X0NQU1dfUVVJUktfQ1VUX1RIUlUsCisJ
LmFsZV9kZXZfaWQgPSAiYW02NC1jcHN3eGciLAorCS5mZHFyaW5nX21vZGUgPSBLM19SSU5HQUND
X1JJTkdfTU9ERV9SSU5HLAorCS5leHRyYV9tb2RlcyA9IEJJVChQSFlfSU5URVJGQUNFX01PREVf
U0dNSUkpLAorfTsKKwogc3RhdGljIGNvbnN0IHN0cnVjdCBhbTY1X2Nwc3dfcGRhdGEgajcyMDBf
Y3Bzd3hnX3BkYXRhID0gewogCS5xdWlya3MgPSAwLAogCS5hbGVfZGV2X2lkID0gImFtNjQtY3Bz
d3hnIiwKQEAgLTM0OTUsNiArMzUwMiw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNl
X2lkIGFtNjVfY3Bzd19udXNzX29mX210YWJsZVtdID0gewogCXsgLmNvbXBhdGlibGUgPSAidGks
YW02NTQtY3Bzdy1udXNzIiwgLmRhdGEgPSAmYW02NXhfc3IxXzB9LAogCXsgLmNvbXBhdGlibGUg
PSAidGksajcyMWUtY3Bzdy1udXNzIiwgLmRhdGEgPSAmajcyMWVfcGRhdGF9LAogCXsgLmNvbXBh
dGlibGUgPSAidGksYW02NDItY3Bzdy1udXNzIiwgLmRhdGEgPSAmYW02NHhfY3Bzd3hnX3BkYXRh
fSwKKwl7IC5jb21wYXRpYmxlID0gInRpLGo3MjJzLWNwc3ctbnVzcyIsIC5kYXRhID0gJmo3MjJz
X2Nwc3d4Z19wZGF0YX0sCiAJeyAuY29tcGF0aWJsZSA9ICJ0aSxqNzIwMC1jcHN3eGctbnVzcyIs
IC5kYXRhID0gJmo3MjAwX2Nwc3d4Z19wZGF0YX0sCiAJeyAuY29tcGF0aWJsZSA9ICJ0aSxqNzIx
ZS1jcHN3eGctbnVzcyIsIC5kYXRhID0gJmo3MjFlX2Nwc3d4Z19wZGF0YX0sCiAJeyAuY29tcGF0
aWJsZSA9ICJ0aSxqNzg0czQtY3Bzd3hnLW51c3MiLCAuZGF0YSA9ICZqNzg0czRfY3Bzd3hnX3Bk
YXRhfSwKLS0gClRRLVN5c3RlbXMgR21iSCB8IE3DvGhsc3RyYcOfZSAyLCBHdXQgRGVsbGluZyB8
IDgyMjI5IFNlZWZlbGQsIEdlcm1hbnkKQW10c2dlcmljaHQgTcO8bmNoZW4sIEhSQiAxMDUwMTgK
R2VzY2jDpGZ0c2bDvGhyZXI6IERldGxlZiBTY2huZWlkZXIsIFLDvGRpZ2VyIFN0YWhsLCBTdGVm
YW4gU2NobmVpZGVyCmh0dHBzOi8vd3d3LnRxLWdyb3VwLmNvbS8KCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

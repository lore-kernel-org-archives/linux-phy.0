Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1C1D103E18B
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 14:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SQpRdq5CuWaB1cVyPVQtB+tqgRCXWqKwASiE5nyH4RA=; b=nMmsaI3gG9Buhv
	LM2T5wvilqC7fjhPc87Ojc8E8567+avJ8GpivBXH7yHoazyTpTo8O3+TpzN4TLRKo/N/3cHhuL1Ma
	PGhhdKde0kTBQ6I9brScStuguaShv+3ORM7cKqw9/652aQAU+jF4AoXbw3LSYXUJB+iFgNuIMuR0G
	z3yy71Qp3Y5g4Ktu2CnWnnmNhzPvACJMdlEynm00Nma3oVO+Xz2PoF7eZ63JmLC/ST+LC/9iY7QwR
	tC93ydbhPj/FmqP8MQpZoELkkY8E50FmCpRq/QKnrb2r9AjDy+MNUSkMz9ImBGJ6lVXnkANYjeoNw
	0MvPNXW1Ekmn/5d5oYbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2rYI-00000008YIC-1FVK;
	Wed, 18 Mar 2026 14:07:14 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2rY1-00000008Y7N-1Is2;
	Wed, 18 Mar 2026 14:07:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=A91VE9zUrSarhv4N3nkmhVVO6faCulKxcborukDvgLY=; b=nmrnwH9pG2mqsKD1lZrM19kaDU
	/3aLB0+tIO0Vrg8qlynkCu8JEZ3w06Z3JVCUCNpcxuHccWniFaEAjXhiKdToTHTKhF2CaKDLbE/oM
	qKxusimom65Ks2viu8TFARbsEiJJrrWO3CglRF6uKKictQ/+quEkR4YEM7xbaZH0/bxCvSqAjnEPH
	E/N+VMjVNkSM9s3Oi54xkY6G/ZegcgfQnh0Kl5TP9hiRQLSKWv5gASuq915BzCX0vXR+hYMz6Ta4t
	1UySG8addNXDFPx4ZyiLGdqsveKKpUOnKat0muU+tAduH2XTAk1wiDtGqJJYqrqqL60VSuPYRqD/Q
	XLf5MjnA==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w2rXv-000BpY-2w;
	Wed, 18 Mar 2026 15:06:52 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy06.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w2rXT-000B1s-08;
	Wed, 18 Mar 2026 15:06:23 +0100
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
Subject: [PATCH 0/7] J722S SGMII support
Date: Wed, 18 Mar 2026 15:05:22 +0100
Message-ID: <cover.1773751309.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27944/Wed Mar 18 07:24:13 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_070657_484772_B61027A3 
X-CRM114-Status: UNSURE (   9.48  )
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

VGhlIEo3MjJTIENQU1cgYW5kIFNFUkRFUyBhcmUgdmVyeSBzaW1pbGFyIHRvIHRoZSB2YXJpYW50
cyBmb3VuZCBvbiB0aGUKQU02NCwgYnV0IHRoZXkgYWRkaXRpb25hbGx5IHN1cHBvcnQgU0dNSUku
IEludHJvZHVjZSBuZXcgY29tcGF0aWJsZQpzdHJpbmdzIGZvciB0aGUgSjcyMlMgdG8gYWRkIHRo
aXMgc3VwcG9ydCB0byB0aGUgZHJpdmVycy4KClRoaXMgaXMgYSBwcmVyZXF1aXNpdGUgZm9yIHRo
ZSBTaW5nbGUtUGFpciBFdGhlcm5ldCBpbnRlcmZhY2Ugb2YgdGhlClRRLVN5c3RlbXMgTUJhNjd4
eCBiYXNlYm9hcmQgZm9yIHRoZSBUUU1hNjd4eCBTb00sIHdoaWNoIHdpbGwgYmUKc3VibWl0dGVk
IHNlcGFyYXRlbHkuCgpOb3JhIFNjaGlmZmVyICg3KToKICBkdC1iaW5kaW5nczogcGh5OiB0aTog
cGh5LWo3MjFlLXdpejogQWRkIHRpLGo3MjJzLXdpei0xMGcgY29tcGF0aWJsZQogIGR0LWJpbmRp
bmdzOiBwaHk6IHRpOiBwaHktZ21paS1zZWw6IEFkZCB0aSxqNzIycy1waHktZ21paS1zZWwKICAg
IGNvbXBhdGlibGUKICBkdC1iaW5kaW5nczogbmV0OiB0aTogazMtYW02NTQtY3Bzdy1udXNzOiBB
ZGQgdGksajcyMnMtY3Bzdy1udXNzCiAgICBjb21wYXRpYmxlCiAgcGh5OiB0aTogcGh5LWo3MjFl
LXdpejogYWRkIHN1cHBvcnQgZm9yIEo3MjJTIFNvQyBmYW1pbHkKICBwaHk6IHRpOiBnbWlpLXNl
bDogYWRkIHN1cHBvcnQgZm9yIEo3MjJTIFNvQyBmYW1pbHkKICBuZXQ6IGV0aGVybmV0OiB0aTog
YW02NS1jcHN3OiBhZGQgc3VwcG9ydCBmb3IgSjcyMlMgU29DIGZhbWlseQogIGFybTY0OiBkdHM6
IHRpOiBrMy1qNzIycy1tYWluOiB1c2UgSjcyMlMgY29tcGF0aWJsZSBzdHJpbmdzIGZvciBTR01J
SQogICAgc3VwcG9ydAoKIC4uLi9iaW5kaW5ncy9uZXQvdGksazMtYW02NTQtY3Bzdy1udXNzLnlh
bWwgICB8ICAxICsKIC4uLi9iaW5kaW5ncy9waHkvdGkscGh5LWdtaWktc2VsLnlhbWwgICAgICAg
ICB8ICAxICsKIC4uLi9iaW5kaW5ncy9waHkvdGkscGh5LWo3MjFlLXdpei55YW1sICAgICAgICB8
ICAxICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtajcyMnMtbWFpbi5kdHNpICAgICB8IDEy
ICsrKysrKysrLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L3RpL2FtNjUtY3Bzdy1udXNzLmMgICAg
ICB8ICA4ICsrKysrKysKIGRyaXZlcnMvcGh5L3RpL3BoeS1nbWlpLXNlbC5jICAgICAgICAgICAg
ICAgICB8IDExICsrKysrKysrKwogZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jICAgICAg
ICAgICAgICAgIHwgMjQgKysrKysrKysrKysrKysrKysrKwogNyBmaWxlcyBjaGFuZ2VkLCA1NiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKLS0gClRRLVN5c3RlbXMgR21iSCB8IE3DvGhs
c3RyYcOfZSAyLCBHdXQgRGVsbGluZyB8IDgyMjI5IFNlZWZlbGQsIEdlcm1hbnkKQW10c2dlcmlj
aHQgTcO8bmNoZW4sIEhSQiAxMDUwMTgKR2VzY2jDpGZ0c2bDvGhyZXI6IERldGxlZiBTY2huZWlk
ZXIsIFLDvGRpZ2VyIFN0YWhsLCBTdGVmYW4gU2NobmVpZGVyCmh0dHBzOi8vd3d3LnRxLWdyb3Vw
LmNvbS8KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF486C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 02:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o0qK49fNFYinm8ysQB+FoSNJ+jLpwvMwNmG+4Ts9pJk=; b=Qq24owNaHTrfqU
	aFExajYXKE7npupCdavjKCltIfTEzfRIfWxnTuNf9+sPvo/bTrvUPKSPTZL7GMOIuzUYICPAtBKWT
	cdBsAJHXjna6iEMN+z/luo/Miu9CVF4pFYhbDz9kJGuYOXxfqCW4HKY85SANSOqsGJo0BPh2ywV7u
	Ohe29E25lWb+eTYQ/wuawmVx58FCwLxbyELabEAUx5W6ox7l8HsJOyCN/c9WtPkkOI9y6PRhMFJkZ
	HE7qiexs1cjtOe50ss0kQxRkGN98Ie0Mex+Q+iT+rZe9nYYwCaXRNmTJb5VNluCLa26FfPePYtaIG
	MZ5a7rwDrZGS+2WIuKLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mumt0-00AiBr-BM; Wed, 08 Dec 2021 02:40:50 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mumsx-00AiAc-8A
 for linux-phy@lists.infradead.org; Wed, 08 Dec 2021 02:40:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id EDBDDCE1F59;
 Wed,  8 Dec 2021 02:40:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F47BC341C5;
 Wed,  8 Dec 2021 02:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638931243;
 bh=mKJYw9rOWK5J2xoaJNV9PFNdrOW62dvvsvoMX8oKAHc=;
 h=From:To:Cc:Subject:Date:From;
 b=dY4GbZ6P/Kgm8k/s0lbBh3NY0BInPy2JKJnTMYLqKI8HLjHg/iQxP+fj1aP27N6lF
 WQlPmoeP2t3pt3nrON+BTGJ6hgOTMVD7AjfZARAikMaX914cZtjR93PNlA9Oc7Lp22
 FtsNRnMZX4J8CqXslhMPVTl9J/nWW5WtdFPe7Da8pBm77KGWfEZEst5jSKAb503rW+
 UoEcHFYgiUjaGx0AIu+lFoi2Erth/+eEzi/o4B4M4h2CNtL+dAbcJGOkpcb+RJ048j
 M88JJtZ34vtA9YAsFO3HSFuTztEgNYGL5hMFWIkMEOcPXzRlmWFTRNV0ybqaRli70Z
 /H0S+xb0nNzVg==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 pali@kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH phy v2 0/6] Armada 3720 comphy native implementation
Date: Wed,  8 Dec 2021 03:40:32 +0100
Message-Id: <20211208024038.8797-1-kabel@kernel.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_184047_712506_77762BB8 
X-CRM114-Status: GOOD (  13.13  )
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

SGVsbG8gVmlub2QsCgp0aGlzIGlzIHYyIG9mIHNlcmllcyBjb252ZXJ0aW5nIEEzNzIwIGNvbXBo
eSB0byBuYXRpdmUga2VybmVsCmltcGxlbWVudGF0aW9uLgoKVGVzdGVkIG9uIFR1cnJpcyBNT1gg
YW5kIEVTUFJFU1NPYmluICh0ZXN0ZWQgYWxsIHN1cHBvcnRlZCBQSFkgbW9kZXM6CmV0aGVybmV0
LCBQQ0llLCBVU0IzLCBTQVRBKS4KCkNoYW5nZXMgc2luY2UgdjEgKGFsbCBjaGFuZ2VzIGluIHBh
dGNoIDIvNik6Ci0gcmVmYWN0b3JlZCB0byB1c2UgR0VOTUFTSygpCi0gZml4ZWQgdmFyaW91cyBy
ZWdpc3RlciBuYW1lcyB0byBjb25mb3JtIHRvIEZ1bmN0aW9uYWwgU3BlY2lmaWNhdGlvbgotIHJl
ZmFjdG9yZWQgdmFyaW91cyByZWdpc3RlciBuYW1lcyB0byBoYXZlIHVuaWZvcm0gbmFtaW5nCi0g
cmVmYWN0b3JlZCByZWdpc3RlciBhY2Nlc3MgaW50byBvbmUgZnVuY3Rpb24sIHdoaWNoIGRlY2lk
ZXMgd2hldGhlcgogIHRoZSBhY2Nlc3Mgc2hvdWxkIGJlIGRpcmVjdCBvciBpbmRpcmVjdCwgc28g
YXMgdG8gbm90IGhhdmUgYWxsIHRoZXNlCiAgY2hlY2tzIGRvbmUgZXZlcnl3aGVyZSBpbiB0aGUg
Y29kZQotIG1vdmVkIGFyb3VuZCBvbmUgcmVnaXN0ZXIgZGVmaW5pdGlvbiB0byBoYXZlIHRoZSBy
ZWdpc3RlcnMgc29ydGVkCiAgYWNjb3JkaW5nIHRvIHRoZWlyIG9mZnNldAotIGFkZGVkIGNvbW1l
bnRzIHRvIHNvbWUgcmVnaXN0ZXIgZGVmaW5pdGlvbnMKLSBhZGRlZCBzdXBwb3J0IGZvciBQSFkg
cmVzZXQoKSBtZXRob2QKLSB3aGVuIGNoYW5naW5nIFBIWSBtb2RlLCB0aGUgZHJpdmVyIG5vdyBy
ZXNldHMgdGhlIFBIWSBhbmQgaXRzCiAgcmVnaXN0ZXJzIHRvIHB1dCB0aGUgUEhZIGluIGtub3du
IHN0YXRlCi0gZml4ZWQgdGhlIHBvd2VyX29mZigpIG1ldGhvZAotIGFkZGVkIHNwaW5sb2NrIGd1
YXJkIHdoZW4gYWNjZXNzaW5nIFBIWSBTZWxlY3RvciByZWdpc3Rlciwgc2luY2UgaXQKICBpcyBz
aGFyZWQgYmV0d2VlbiB0aGUgUEhZcyBhbmQgc28gdGhlIFBIWSBtdXRleCBpcyBpbnN1ZmZpY2ll
bnQKLSB1cG9uIGRyaXZlciBwcm9iZSBjaGFuZ2VkIHRoZSBjYWxscyB0byBwb3dlcl9vZmYoKSB0
byByZXNldCgpCgoKVGhlIG9yaWdpbmFsIGNvdmVyIGxldHRlciBzYWlkOgoKVGhlIFJQQyBjYWxs
aW5nIHRvIEFSTSBUcnVzdGVkIEZpcm13YXJlIGltcGxlbWVudGF0aW9uIG9mIEFybWFkYSAzNzIw
CmNvbXBoeSBkcml2ZXIgY2F1c2VkIHF1aXRlIGEgbnVtYmVyIG9mIGlzc3VlcyAoZXhwbGFpbmVk
IG1vcmUgaW4gcGF0Y2ggMikuCgpUaGlzIHNlcmllcyBmaXhlcyB0aG9zZSBpc3N1ZXMgYnkgcmVp
bXBsZW1lbnRpbmcgdGhlIGRyaXZlciB0byBuYXRpdmUKa2VybmVsIGltcGxlbWVudGF0aW9uLgoK
VGhlIGxhc3QgMyBjb21taXRzIHJldmVydCBjb21taXRzIGluIEFIQ0ksIFVTQiwgYW5kIFBDSSBk
cml2ZXJzLCB0aGF0IHdlcmUKaW50cm9kdWNlZCB0aGVyZSBiZWNhdXNlIG9mIHRob3NlIGlzc3Vl
cy4KClBhbGkgUm9ow6FyICg2KToKICBwaHk6IG1hcnZlbGw6IHBoeS1tdmVidS1hMzcwMC1jb21w
aHk6IFJlbW92ZSBwb3J0IGZyb20gZHJpdmVyCiAgICBjb25maWd1cmF0aW9uCiAgcGh5OiBtYXJ2
ZWxsOiBwaHktbXZlYnUtYTM3MDAtY29tcGh5OiBBZGQgbmF0aXZlIGtlcm5lbCBpbXBsZW1lbnRh
dGlvbgogIGFybTY0OiBkdHM6IG1hcnZlbGw6IGFybWFkYS0zN3h4OiBBZGQgeHRhbCBjbG9jayB0
byBjb21waHkgbm9kZQogIFJldmVydCAiYXRhOiBhaGNpOiBtdmVidTogTWFrZSBTQVRBIFBIWSBv
cHRpb25hbCBmb3IgQXJtYWRhIDM3MjAiCiAgUmV2ZXJ0ICJ1c2I6IGhvc3Q6IHhoY2k6IG12ZWJ1
OiBtYWtlIFVTQiAzLjAgUEhZIG9wdGlvbmFsIGZvciBBcm1hZGEKICAgIDM3MjAiCiAgUmV2ZXJ0
ICJQQ0k6IGFhcmR2YXJrOiBGaXggaW5pdGlhbGl6YXRpb24gd2l0aCBvbGQgTWFydmVsbCdzIEFy
bQogICAgVHJ1c3RlZCBGaXJtd2FyZSIKCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJt
YWRhLTM3eHguZHRzaSB8ICAgIDIgKwogZHJpdmVycy9hdGEvYWhjaS5oICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAgICAyIC0KIGRyaXZlcnMvYXRhL2FoY2lfbXZlYnUuYyAgICAgICAgICAg
ICAgICAgICAgIHwgICAgMiArLQogZHJpdmVycy9hdGEvbGliYWhjaV9wbGF0Zm9ybS5jICAgICAg
ICAgICAgICAgfCAgICAyICstCiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5j
ICAgICAgICB8ICAgIDQgKy0KIGRyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12ZWJ1LWEzNzAwLWNv
bXBoeS5jIHwgMTM2MiArKysrKysrKysrKysrKysrLS0KIGRyaXZlcnMvdXNiL2hvc3QveGhjaS1t
dmVidS5jICAgICAgICAgICAgICAgIHwgICA0MiAtCiBkcml2ZXJzL3VzYi9ob3N0L3hoY2ktbXZl
YnUuaCAgICAgICAgICAgICAgICB8ICAgIDYgLQogZHJpdmVycy91c2IvaG9zdC94aGNpLXBsYXQu
YyAgICAgICAgICAgICAgICAgfCAgIDIwICstCiBkcml2ZXJzL3VzYi9ob3N0L3hoY2ktcGxhdC5o
ICAgICAgICAgICAgICAgICB8ICAgIDEgLQogMTAgZmlsZXMgY2hhbmdlZCwgMTI0MCBpbnNlcnRp
b25zKCspLCAyMDMgZGVsZXRpb25zKC0pCgotLSAKMi4zMi4wCgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

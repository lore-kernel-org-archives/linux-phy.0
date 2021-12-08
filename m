Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3457DC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 02:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHZowJC1Xb3dcuEf0G5FXx19dq/Kw+NgFFPTu1J1YFg=; b=MwvZA8F83BkR7+
	68sYweQXlZjgUXcaoTqx+3yUZF4BAbaDV0ufXh9wgf21n7W8Q8UOcFei22gnjXbj/o4ohxN94oEcU
	Fr/ALbnSyWSibnWrIKVhuNRAND3JBd/uWbGk7qUojCM9EP9AYvQ1aBrdWpqSwU25C+VPlvAp2JXdJ
	wp6GFieQtCYgVXl2YTjisAPITRUjB9qkpXc8PdK01NjmxVbRB2LNwb/71bX+whx1EWd/8+SU7HP8H
	FvsPD8TT5hZ+eIzoe/HM8LnDOnbVbEQqFFZLYb6Pr2ArVbCPVcpBeXO35AguUa/RgkPEqnKdFpmmm
	FSEIdq786jJJvombj9mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mumt6-00AiDu-MJ; Wed, 08 Dec 2021 02:40:56 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mumt3-00AiCl-Kj
 for linux-phy@lists.infradead.org; Wed, 08 Dec 2021 02:40:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 65E64B81F50;
 Wed,  8 Dec 2021 02:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C138C341C8;
 Wed,  8 Dec 2021 02:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638931251;
 bh=+Rj5nfgGjmwV6Dug7p3+3X833FrXiYs5dzzDeEYHfss=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Uxl8ISnj/LvTKeZ3TxZEwyaAamiJN6IEt+mZFey02wFpBV3y8zkx/laWN33lX0tIN
 oZlX5/xk1kwBc7GIg9jYkfhoQzMyr/0O2jli1uXsKRRlOoGNiqWRfKmk+z7Em6gkBy
 N2M0X0s7jDMT9t452hYociRU00l5g/S3HCH+pSwp4jmTvu6Qk6FOa0nGRkLDq86YTg
 GF9cKiy+UxU2+raJmNvpB/qrAj40TG7vrR2RZ+1m30malmEEPf+AHJIe4Zf7zHN6sT
 WD/zTePBxN/kJ3nKH1keQjQ+2A7Y5RnE6eCbddwh6AYr7t/hkos3mPiG9m5vEnrsv9
 hHR/Kklp2673w==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 pali@kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH phy v2 4/6] Revert "ata: ahci: mvebu: Make SATA PHY optional
 for Armada 3720"
Date: Wed,  8 Dec 2021 03:40:36 +0100
Message-Id: <20211208024038.8797-5-kabel@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211208024038.8797-1-kabel@kernel.org>
References: <20211208024038.8797-1-kabel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_184053_843957_E3757833 
X-CRM114-Status: GOOD (  14.01  )
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

RnJvbTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KClRoaXMgcmV2ZXJ0cyBjb21taXQg
NDVhZWZlM2QyMjUxZTRlMjI5ZDc2NjIwNTI3MzlmOTZhZDFkMDhkOS4KCkFybWFkYSAzNzIwIFBI
WSBkcml2ZXIgKHBoeS1tdmVidS1hMzcwMC1jb21waHkuYykgZG9lcyBub3QgcmV0dXJuCi1FT1BO
T1RTVVBQIGZyb20gcGh5X3Bvd2VyX29uKCkgY2FsbGJhY2sgYW55bW9yZS4KClNvIHJlbW92ZSBB
SENJX0hGTEFHX0lHTl9OT1RTVVBQX1BPV0VSX09OIGZsYWcgZnJvbSBBcm1hZGEgMzcyMCBwbGF0
IGRhdGEuCgpBSENJX0hGTEFHX0lHTl9OT1RTVVBQX1BPV0VSX09OIGlzIG5vdCB1c2VkIGJ5IGFu
eSBvdGhlciBhaGNpIGRyaXZlciwgc28KcmVtb3ZlIHRoaXMgZmxhZyBjb21wbGV0ZWx5LgoKU2ln
bmVkLW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KU2lnbmVkLW9mZi1ieTog
TWFyZWsgQmVow7puIDxrYWJlbEBrZXJuZWwub3JnPgpBY2tlZC1ieTogTWlxdWVsIFJheW5hbCA8
bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KLS0tCiBkcml2ZXJzL2F0YS9haGNpLmggICAgICAg
ICAgICAgfCAyIC0tCiBkcml2ZXJzL2F0YS9haGNpX212ZWJ1LmMgICAgICAgfCAyICstCiBkcml2
ZXJzL2F0YS9saWJhaGNpX3BsYXRmb3JtLmMgfCAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2F0YS9haGNp
LmggYi9kcml2ZXJzL2F0YS9haGNpLmgKaW5kZXggZWVhYzU0ODJmMWQxLi5hNTdkOTBkZDQ5NjQg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvYXRhL2FoY2kuaAorKysgYi9kcml2ZXJzL2F0YS9haGNpLmgK
QEAgLTI0MCw4ICsyNDAsNiBAQCBlbnVtIHsKIAkJCQkJCQlhcyBkZWZhdWx0IGxwbV9wb2xpY3kg
Ki8KIAlBSENJX0hGTEFHX1NVU1BFTkRfUEhZUwkJPSAoMSA8PCAyNiksIC8qIGhhbmRsZSBQSFlz
IGR1cmluZwogCQkJCQkJCXN1c3BlbmQvcmVzdW1lICovCi0JQUhDSV9IRkxBR19JR05fTk9UU1VQ
UF9QT1dFUl9PTgk9ICgxIDw8IDI3KSwgLyogaWdub3JlIC1FT1BOT1RTVVBQCi0JCQkJCQkJZnJv
bSBwaHlfcG93ZXJfb24oKSAqLwogCUFIQ0lfSEZMQUdfTk9fU1hTCQk9ICgxIDw8IDI4KSwgLyog
U1hTIG5vdCBzdXBwb3J0ZWQgKi8KIAogCS8qIGFwLT5mbGFncyBiaXRzICovCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2F0YS9haGNpX212ZWJ1LmMgYi9kcml2ZXJzL2F0YS9haGNpX212ZWJ1LmMKaW5k
ZXggM2FkNDZkMjZkOWQ1Li5kNGJiYTNhY2U0NWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvYXRhL2Fo
Y2lfbXZlYnUuYworKysgYi9kcml2ZXJzL2F0YS9haGNpX212ZWJ1LmMKQEAgLTIyNyw3ICsyMjcs
NyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGFoY2lfbXZlYnVfcGxhdF9kYXRhIGFoY2lfbXZlYnVf
YXJtYWRhXzM4MF9wbGF0X2RhdGEgPSB7CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYWhjaV9tdmVi
dV9wbGF0X2RhdGEgYWhjaV9tdmVidV9hcm1hZGFfMzcwMF9wbGF0X2RhdGEgPSB7CiAJLnBsYXRf
Y29uZmlnID0gYWhjaV9tdmVidV9hcm1hZGFfMzcwMF9jb25maWcsCi0JLmZsYWdzID0gQUhDSV9I
RkxBR19TVVNQRU5EX1BIWVMgfCBBSENJX0hGTEFHX0lHTl9OT1RTVVBQX1BPV0VSX09OLAorCS5m
bGFncyA9IEFIQ0lfSEZMQUdfU1VTUEVORF9QSFlTLAogfTsKIAogc3RhdGljIGNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgYWhjaV9tdmVidV9vZl9tYXRjaFtdID0gewpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9hdGEvbGliYWhjaV9wbGF0Zm9ybS5jIGIvZHJpdmVycy9hdGEvbGliYWhjaV9wbGF0Zm9y
bS5jCmluZGV4IDA5MTA0NDEzMjFmNy4uMjUwYjgyZTMwYWEzIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2F0YS9saWJhaGNpX3BsYXRmb3JtLmMKKysrIGIvZHJpdmVycy9hdGEvbGliYWhjaV9wbGF0Zm9y
bS5jCkBAIC01OSw3ICs1OSw3IEBAIGludCBhaGNpX3BsYXRmb3JtX2VuYWJsZV9waHlzKHN0cnVj
dCBhaGNpX2hvc3RfcHJpdiAqaHByaXYpCiAJCX0KIAogCQlyYyA9IHBoeV9wb3dlcl9vbihocHJp
di0+cGh5c1tpXSk7Ci0JCWlmIChyYyAmJiAhKHJjID09IC1FT1BOT1RTVVBQICYmIChocHJpdi0+
ZmxhZ3MgJiBBSENJX0hGTEFHX0lHTl9OT1RTVVBQX1BPV0VSX09OKSkpIHsKKwkJaWYgKHJjKSB7
CiAJCQlwaHlfZXhpdChocHJpdi0+cGh5c1tpXSk7CiAJCQlnb3RvIGRpc2FibGVfcGh5czsKIAkJ
fQotLSAKMi4zMi4wCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==

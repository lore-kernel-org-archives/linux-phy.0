Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5459BC433F5
	for <linux-phy@archiver.kernel.org>; Thu,  3 Feb 2022 21:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNw4mnXdYp1eRRFPkpQcz2VmWF+dFictYSr+4+9ho80=; b=vP/zht+DdwB/IA
	drwRAK6jPp+tkVzXiFyxrsITG2KtFJAok0giJ9Z/z63wjXxVvm3CXdREOh6inHVvw1JUpMk1hmRPP
	FOWLUCR+rcX6uyonmPExTazZ5O6FMnJW7+ZACF80e4XEPPYvI0R8gOO1/a4V91vh36t79WhR1WSMn
	x8RLlXKXN0MLKX4gg2/2/QI46tYsycaEh96JElrhko+UIDJBdX6CW9wdje5025UEVLfuLqt5jaJJO
	dhkbAMtwrkXypnMeOVvPG8HUDpfmdYOl1D13RI1Dj+cwRRFzfQ9EvWEwtzehQKI3beKYKr9VjVC9y
	qMMV0NEtveKsuIYPsh+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFjuU-002zch-QB; Thu, 03 Feb 2022 21:44:58 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFjuR-002zbg-It
 for linux-phy@lists.infradead.org; Thu, 03 Feb 2022 21:44:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id F388161747;
 Thu,  3 Feb 2022 21:44:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10834C340F0;
 Thu,  3 Feb 2022 21:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643924694;
 bh=8g0tDIGTnsuqL/WarhfUzHNc/21/40hTnKx4Bpf6igA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G+sbHWQdgmEaub4pYg/A5K+Ks5F5XeqAr5RUJruqx9sMZMe/6Q4BFSnRfUzLE8JtX
 hrIEL2EZhsjbeO5uzQ+wqzwSsGcbW/Zjb9oWtT9vx7fSL6n4ZBPcIMczzdE5eXmEya
 Dl9b+QxEoKIPQu1+t2quZO8nEj5yutQiV3ORqPa5uZNDEGr9hChUm0whr9HJ7Mq+z5
 RfZLMIY59msJp6IMLSVVpIvFZykoLsCUFQva3yruvkgcSsM9EE/ztEycaJacv5sdI5
 +Vk6IBoZBdfkcR9DkE4VnSegGqrHzOCLKhZ+wI+MNXu62JjdGoNYVQm3267PgzA2gW
 leNGLV3LCyUlg==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 pali@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH phy v4 3/5] Revert "ata: ahci: mvebu: Make SATA PHY optional
 for Armada 3720"
Date: Thu,  3 Feb 2022 22:44:42 +0100
Message-Id: <20220203214444.1508-4-kabel@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220203214444.1508-1-kabel@kernel.org>
References: <20220203214444.1508-1-kabel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_134455_688556_590D5414 
X-CRM114-Status: GOOD (  14.34  )
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
bS5jCmluZGV4IDE4Mjk2NDQzY2NiYS4uYjI2NzU1YmRjOWQ2IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2F0YS9saWJhaGNpX3BsYXRmb3JtLmMKKysrIGIvZHJpdmVycy9hdGEvbGliYWhjaV9wbGF0Zm9y
bS5jCkBAIC01OSw3ICs1OSw3IEBAIGludCBhaGNpX3BsYXRmb3JtX2VuYWJsZV9waHlzKHN0cnVj
dCBhaGNpX2hvc3RfcHJpdiAqaHByaXYpCiAJCX0KIAogCQlyYyA9IHBoeV9wb3dlcl9vbihocHJp
di0+cGh5c1tpXSk7Ci0JCWlmIChyYyAmJiAhKHJjID09IC1FT1BOT1RTVVBQICYmIChocHJpdi0+
ZmxhZ3MgJiBBSENJX0hGTEFHX0lHTl9OT1RTVVBQX1BPV0VSX09OKSkpIHsKKwkJaWYgKHJjKSB7
CiAJCQlwaHlfZXhpdChocHJpdi0+cGh5c1tpXSk7CiAJCQlnb3RvIGRpc2FibGVfcGh5czsKIAkJ
fQotLSAKMi4zNC4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==

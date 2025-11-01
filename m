Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B39AACCF9F0
	for <linux-phy@archiver.kernel.org>; Sat,  1 Nov 2025 08:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sQ+5IVQa6XUQEtmQa1sVR80b7xTI10lrn4+eeBV5Jhk=; b=vcrF1kPkdnN5RZ
	w+z+dDD9fIQ+0rEWowGc3raSNjPlMihuD5jhDr156TFRhzUjU7Pr+A9aL4NDnAqPFaBx0sCKo9c0h
	NY6hqdB9pa+itsHXzLPSaUk/ebRVM3Pk6hCMprXzdwltaeBuCw4cEx8jprpR+7fk6oWzwVCoRaGtq
	5DxsdlQKdOuvR+D86UAKLSFPtbRRcdxozRg+xWeX9MT8dmPn5+FPfob0xmQK6gyEH3lRf403E+epl
	65Co/OaL/f7LAqF2idZY6IehCF4x56QEluCB/pcVl4QUi9OHS61laWvEBudZqXnjHwKGMASEzPz1M
	WeIoBBza5qRAlubUZmcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vF7N9-00000007CiJ-1yKl;
	Sat, 01 Nov 2025 08:54:07 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vF7N6-00000007Cfg-21b3
	for linux-phy@lists.infradead.org;
	Sat, 01 Nov 2025 08:54:05 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id E67F84E4145E;
	Sat,  1 Nov 2025 08:54:02 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id BC9F76070B;
	Sat,  1 Nov 2025 08:54:02 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6E8E91181ABE2;
	Sat,  1 Nov 2025 09:53:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761987241; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=rXG4FkA1j+W5VMPKCg2jc3dsIgNY9MiT6EY2h7XkH50=;
	b=uKR9LFirouVZ+/YEKLS5DrpGVjyj6wy3mG+sqpAwX/+fjT+bxJ9RrJYZ3EGR+CfVBRTTsK
	vmX5JNNlY51rlr9uuBcT+1WCyiBplJc5KBXeubdUnr0f/4a/sPDX5QlWCUhCojrU+SqWqH
	YUOLXRi8M4boVLeatWm2b3bbRwUxHTsg1OMK6kiROneZ8xUfmwEgYrOtSkUTDdKPEUqgGb
	Pkly8oBn/XYDBCDfktfSPJCnGZWPJTwxDnYB7Fib9aYL0IXAB2PdKJ9Ozg9ANNV9TU30W/
	VL1NYoI56tP4aT0/dO20j/0jYI9WPtqJ7p971bbOgHl/OddoLLdZBovS387EDw==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Sat, 01 Nov 2025 09:53:33 +0100
Subject: [PATCH v2 5/7] reset: eyeq: drop device_set_of_node_from_dev()
 done by parent
MIME-Version: 1.0
Message-Id: <20251101-macb-phy-v2-5-c1519eef16d3@bootlin.com>
References: <20251101-macb-phy-v2-0-c1519eef16d3@bootlin.com>
In-Reply-To: <20251101-macb-phy-v2-0-c1519eef16d3@bootlin.com>
To: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: linux-mips@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-clk@vger.kernel.org, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251101_015404_661879_67EF00C6 
X-CRM114-Status: GOOD (  11.62  )
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

T3VyIHBhcmVudCBkcml2ZXIgKGNsay1leWVxKSBub3cgZG9lcyB0aGUKCWRldmljZV9zZXRfb2Zf
bm9kZV9mcm9tX2RldihkZXYsIGRldi0+cGFyZW50KQpjYWxsIHRocm91Z2ggdGhlIG5ld2x5IGlu
dHJvZHVjZWQgZGV2bV9hdXhpbGlhcnlfZGV2aWNlX2NyZWF0ZSgpIGhlbHBlci4KCkRvaW5nIGl0
IGFnYWluIGluIHRoZSByZXNldC1leWVxIHByb2JlIHdvdWxkIGJlIHJlZHVuZGFudC4KRHJvcCBi
b3RoIHRoZSBXQVJOX09OKCkgYW5kIHRoZSBkZXZpY2Vfc2V0X29mX25vZGVfZnJvbV9kZXYoKSBj
YWxsLgpBbHNvIGZpeCB0aGUgZm9sbG93aW5nIGNvbW1lbnQgdGhhdCB0YWxrcyBhYm91dCAib3Vy
IG5ld2ZvdW5kIE9GIG5vZGUiLgoKU2lnbmVkLW9mZi1ieTogVGjDqW8gTGVicnVuIDx0aGVvLmxl
YnJ1bkBib290bGluLmNvbT4KU2lnbmVkLW9mZi1ieTogSmVyb21lIEJydW5ldCA8amJydW5ldEBi
YXlsaWJyZS5jb20+Ci0tLQogZHJpdmVycy9yZXNldC9yZXNldC1leWVxLmMgfCAyNCArKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmVzZXQvcmVzZXQtZXllcS5jIGIvZHJp
dmVycy9yZXNldC9yZXNldC1leWVxLmMKaW5kZXggMmQzOTk4MzY4YTFjLi44MDE4ZmE4OTU0Mjcg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcmVzZXQvcmVzZXQtZXllcS5jCisrKyBiL2RyaXZlcnMvcmVz
ZXQvcmVzZXQtZXllcS5jCkBAIC00MTAsMTMgKzQxMCw2IEBAIHN0YXRpYyBpbnQgZXFyX29mX3hs
YXRlX3R3b2NlbGxzKHN0cnVjdCByZXNldF9jb250cm9sbGVyX2RldiAqcmNkZXYsCiAJcmV0dXJu
IGVxcl9vZl94bGF0ZV9pbnRlcm5hbChyY2RldiwgcmVzZXRfc3BlYy0+YXJnc1swXSwgcmVzZXRf
c3BlYy0+YXJnc1sxXSk7CiB9CiAKLXN0YXRpYyB2b2lkIGVxcl9vZl9ub2RlX3B1dCh2b2lkICpf
ZGV2KQotewotCXN0cnVjdCBkZXZpY2UgKmRldiA9IF9kZXY7Ci0KLQlvZl9ub2RlX3B1dChkZXYt
Pm9mX25vZGUpOwotfQotCiBzdGF0aWMgaW50IGVxcl9wcm9iZShzdHJ1Y3QgYXV4aWxpYXJ5X2Rl
dmljZSAqYWRldiwKIAkJICAgICBjb25zdCBzdHJ1Y3QgYXV4aWxpYXJ5X2RldmljZV9pZCAqaWQp
CiB7CkBAIC00MjcsMjEgKzQyMCw4IEBAIHN0YXRpYyBpbnQgZXFyX3Byb2JlKHN0cnVjdCBhdXhp
bGlhcnlfZGV2aWNlICphZGV2LAogCWludCByZXQ7CiAKIAkvKgotCSAqIFdlIGFyZSBhbiBhdXhp
bGlhcnkgZGV2aWNlIG9mIGNsay1leWVxLiBXZSBkbyBub3QgaGF2ZSBhbiBPRiBub2RlIGJ5Ci0J
ICogZGVmYXVsdDsgbGV0J3MgcmV1c2Ugb3VyIHBhcmVudCdzIE9GIG5vZGUuCi0JICovCi0JV0FS
Tl9PTihkZXYtPm9mX25vZGUpOwotCWRldmljZV9zZXRfb2Zfbm9kZV9mcm9tX2RldihkZXYsIGRl
di0+cGFyZW50KTsKLQlpZiAoIWRldi0+b2Zfbm9kZSkKLQkJcmV0dXJuIC1FTk9ERVY7Ci0KLQly
ZXQgPSBkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQoZGV2LCBlcXJfb2Zfbm9kZV9wdXQsIGRldik7
Ci0JaWYgKHJldCkKLQkJcmV0dXJuIHJldDsKLQotCS8qCi0JICogVXNpbmcgb3VyIG5ld2ZvdW5k
IE9GIG5vZGUsIHdlIGNhbiBnZXQgbWF0Y2ggZGF0YS4gV2UgY2Fubm90IHVzZQotCSAqIGRldmlj
ZV9nZXRfbWF0Y2hfZGF0YSgpIGJlY2F1c2UgaXQgZG9lcyBub3QgbWF0Y2ggcmV1c2VkIE9GIG5v
ZGVzLgorCSAqIEdldCBtYXRjaCBkYXRhLiBXZSBjYW5ub3QgdXNlIGRldmljZV9nZXRfbWF0Y2hf
ZGF0YSgpIGJlY2F1c2UgaXQgZG9lcworCSAqIG5vdCBhY2NlcHQgcmV1c2VkIE9GIG5vZGVzOyBz
ZWUgZGV2aWNlX3NldF9vZl9ub2RlX2Zyb21fZGV2KCkuCiAJICovCiAJbWF0Y2ggPSBvZl9tYXRj
aF9ub2RlKGRldi0+ZHJpdmVyLT5vZl9tYXRjaF90YWJsZSwgZGV2LT5vZl9ub2RlKTsKIAlpZiAo
IW1hdGNoIHx8ICFtYXRjaC0+ZGF0YSkKCi0tIAoyLjUxLjEKCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

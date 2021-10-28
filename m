Return-Path: <SRS0=1k0B=PQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CA0FC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 18:42:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1019A61040
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 18:42:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1019A61040
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XQynAv/n/IbsV2gYnXa4NE7eD1pgh2s8MGgQHdl+MgE=; b=Iu7Kti0lhgmxxM
	nh6hz2JMyrrcQyHxihJJnH+wL1J9S2U9rnh5Z3X3WyLBIom3SOlB+v4f8Re4vTRp4EuaqFxfOz3+3
	IQhT/fZoC12RERzdQGgtstULaFLgwFGz2VsKN4PWRah4gcE1iu3YjaGzYHfxZZRjB80mbVK0URKCV
	PZDO7bMOKD/qdMmdEznFjoz1qYlLOFMUJ86YR/6+RLgE0zQdVKc3esFo0kJxAQsnEJZpHKcbB1exa
	kh3YAmAbcjD1D43upUGS6r19BGUxOtUQltIPIY+WRQ3sd6kZQsK+I8F84v/gFnPZ5Ui80wPQjmbUL
	gdezaGSUPcokLIzley4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgAMX-008v2R-Ax; Thu, 28 Oct 2021 18:42:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgAMS-008v0H-JR
 for linux-phy@lists.infradead.org; Thu, 28 Oct 2021 18:42:51 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7616B60D43;
 Thu, 28 Oct 2021 18:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635446567;
 bh=9BpUYoDt6XpRp7WadMUzCoWbzq4ISwpHZ3KtZ5ETCt4=;
 h=From:To:Cc:Subject:Date:From;
 b=i47Cb/kyI9y5Y0mGrsQdpRuieZyfnpY2Ci3A9BUru30lu4rHGDYbQLUsEM87Pe+x1
 M+udeojrJzP7NmtLH3QQGw0dNbm/E8w4Oh7l6VHV/0EuLxWmOJQtsbLJX9BgXYBzOx
 0STrXo42t6yDJIT/dKybkG2rC/G71wbVFPD/vetmZHkPt+xgUTQ1T7ifO+HAuP3eN9
 OsnoneMP4GbRqL9dYx43VR2SrQwj+69ZJgQIQzNKVsve7GMg5S1AH2NX55BTVY2Biv
 2l/q6vGC8EFr9lKN7O7/hcFivo3l6rbELT3cuRfrxUQ5giziiC5epG81b5NgoNydnU
 ycap5UeHkZk/w==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, pali@kernel.org,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH phy 0/6] Armada 3720 comphy native implementation
Date: Thu, 28 Oct 2021 20:42:36 +0200
Message-Id: <20211028184242.22105-1-kabel@kernel.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_114248_693209_0A633C6A 
X-CRM114-Status: UNSURE (   6.62  )
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

SGVsbG8gTWlxdWVsLAoKdGhlIFJQQyBjYWxsaW5nIHRvIEFSTSBUcnVzdGVkIEZpcm13YXJlIGlt
cGxlbWVudGF0aW9uIG9mIEFybWFkYSAzNzIwCmNvbXBoeSBkcml2ZXIgY2F1c2VkIHF1aXRlIGEg
bnVtYmVyIG9mIGlzc3VlcyAoZXhwbGFpbmVkIG1vcmUgaW4gcGF0Y2ggMikuCgpUaGlzIHNlcmll
cyBmaXhlcyB0aG9zZSBpc3N1ZXMgYnkgcmVpbXBsZW1lbnRpbmcgdGhlIGRyaXZlciB0byBuYXRp
dmUKa2VybmVsIGltcGxlbWVudGF0aW9uLgoKVGhlIGxhc3QgMyBjb21taXRzIHJldmVydCBjb21t
aXRzIGluIEFIQ0ksIFVTQiwgYW5kIFBDSSBkcml2ZXJzLCB0aGF0IHdlcmUKaW50cm9kdWNlZCB0
aGVyZSBiZWNhdXNlIG9mIHRob3NlIGlzc3Vlcy4KClRlc3RlZCBvbiBUdXJyaXMgTU9YLgoKTWFy
ZWsgJiBQYWxpCgpQYWxpIFJvaMOhciAoNik6CiAgcGh5OiBtYXJ2ZWxsOiBwaHktbXZlYnUtYTM3
MDAtY29tcGh5OiBSZW1vdmUgcG9ydCBmcm9tIGRyaXZlcgogICAgY29uZmlndXJhdGlvbgogIHBo
eTogbWFydmVsbDogcGh5LW12ZWJ1LWEzNzAwLWNvbXBoeTogQWRkIG5hdGl2ZSBrZXJuZWwgaW1w
bGVtZW50YXRpb24KICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBhcm1hZGEtMzd4eDogQWRkIHh0YWwg
Y2xvY2sgdG8gY29tcGh5IG5vZGUKICBSZXZlcnQgImF0YTogYWhjaTogbXZlYnU6IE1ha2UgU0FU
QSBQSFkgb3B0aW9uYWwgZm9yIEFybWFkYSAzNzIwIgogIFJldmVydCAidXNiOiBob3N0OiB4aGNp
OiBtdmVidTogbWFrZSBVU0IgMy4wIFBIWSBvcHRpb25hbCBmb3IgQXJtYWRhCiAgICAzNzIwIgog
IFJldmVydCAiUENJOiBhYXJkdmFyazogRml4IGluaXRpYWxpemF0aW9uIHdpdGggb2xkIE1hcnZl
bGwncyBBcm0KICAgIFRydXN0ZWQgRmlybXdhcmUiCgogYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2
ZWxsL2FybWFkYS0zN3h4LmR0c2kgfCAgICAyICsKIGRyaXZlcnMvYXRhL2FoY2kuaCAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgICAgMiAtCiBkcml2ZXJzL2F0YS9haGNpX212ZWJ1LmMgICAg
ICAgICAgICAgICAgICAgICB8ICAgIDIgKy0KIGRyaXZlcnMvYXRhL2xpYmFoY2lfcGxhdGZvcm0u
YyAgICAgICAgICAgICAgIHwgICAgMiArLQogZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFy
ZHZhcmsuYyAgICAgICAgfCAgICA0ICstCiBkcml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1tdmVidS1h
MzcwMC1jb21waHkuYyB8IDEzMTQgKysrKysrKysrKysrKysrKy0tCiBkcml2ZXJzL3VzYi9ob3N0
L3hoY2ktbXZlYnUuYyAgICAgICAgICAgICAgICB8ICAgNDIgLQogZHJpdmVycy91c2IvaG9zdC94
aGNpLW12ZWJ1LmggICAgICAgICAgICAgICAgfCAgICA2IC0KIGRyaXZlcnMvdXNiL2hvc3QveGhj
aS1wbGF0LmMgICAgICAgICAgICAgICAgIHwgICAyMCArLQogZHJpdmVycy91c2IvaG9zdC94aGNp
LXBsYXQuaCAgICAgICAgICAgICAgICAgfCAgICAxIC0KIDEwIGZpbGVzIGNoYW5nZWQsIDExOTIg
aW5zZXJ0aW9ucygrKSwgMjAzIGRlbGV0aW9ucygtKQoKLS0gCjIuMzIuMAoKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

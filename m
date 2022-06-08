Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EC8EC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 07:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JppALXiUniAZohoyOqhR1TpFbi91svkUNCq24zFqxe8=; b=AiqsM7V/qiZCDE
	X6o7ebyuWGKmXUczp2iLMwLqXtFaQ6dTrCJ8k9AknWcayuzuDpaDcOoYls0q0JfVikAZxKy32Uvp3
	TrAWTJI2kIYx6fns79UvWQKSz4mZisOTNlHh3wo2BEMmd4FvOhz8HY3c/jbUYSqhLWaM1yu7q4ZJR
	ezqZVrDI+KrUisGm0uibba0MKwyCsW0zr0RlYUgL3Mjq+OT5aMXyYXSUKLrspHNwnefOeeBX7jBxn
	lzy3JBukUWk1zuMSnYB6RNUr+tCMReRJGJkOnV/EaYvjfTbIz0/oF6B4UuT2S1Axgj+BTftkuQt5X
	LsxMY+xkIYEfR9CbTERQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nypks-00BPOn-E6; Wed, 08 Jun 2022 07:05:26 +0000
Received: from sender4-op-o18.zoho.com ([136.143.188.18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nypkp-00BPLu-5x; Wed, 08 Jun 2022 07:05:24 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1654671917; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=EwX9GHj36baFZECDvbfvU8mD912tZ+9/+KGQTTtvObKU35dhQ0kSaPkKMjR7WRpTO6A7Q+M5wYVzGb6JLyuZFygwIOZPdxj0PVAXBTixbJh0XwBQUOHd64GL+Uut/fFAJmP52dYib6yXfwi8e0XjiZuLoqUKILvjllpAhyh3Hhw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1654671917; h=Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=4qHioTwosoMtsVC5cf0hSqO5QmqpfNid/SOhD8fTy7Y=; 
	b=GdcGV3gzIoJEsQr7znI/Gf1ba4EPwrnQywrEfjnkN3/n1UCi1MCAV0nwXBtr7a6pFkKH/RlzVaGGIeHZPIpXnPgn92aCq+Edd8EEgXeB4iDjTZVbaoi/Zv/tJJW7jW/3Z3iOeemrnRsldJYYGFmHFn0ryGhF++xuudo+F/4qIu4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1654671917;
	s=zmail; d=icenowy.me; i=uwu@icenowy.me;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Reply-To;
	bh=4qHioTwosoMtsVC5cf0hSqO5QmqpfNid/SOhD8fTy7Y=;
	b=byVdaaJj/CFCY6LvkPczj0FZUgIyfzT1CfhzFmF164613R0xCJ1voYda6Tk+cUBA
	7hTddmz0vMKq8GLGzA8sHKK6NI75Ks1qOeIQ4Fnbd03UWAdDiFKIw1HAmpl15pvsjd8
	edRTAUMtbEoxVzeU8rt9aSMsFPFZckayGjDMjN64=
Received: from edelgard.icenowy.me (59.41.163.66 [59.41.163.66]) by mx.zohomail.com
	with SMTPS id 1654671914833265.775927181988; Wed, 8 Jun 2022 00:05:14 -0700 (PDT)
From: Icenowy Zheng <uwu@icenowy.me>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bin Liu <b-liu@ti.com>
Cc: linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-usb@vger.kernel.org,
	Icenowy Zheng <uwu@icenowy.me>
Subject: [PATCH 1/7] mailmap: update Icenowy Zheng's mail address
Date: Wed,  8 Jun 2022 15:04:46 +0800
Message-Id: <20220608070452.338006-2-uwu@icenowy.me>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220608070452.338006-1-uwu@icenowy.me>
References: <20220608070452.338006-1-uwu@icenowy.me>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_000523_376661_08C273C8 
X-CRM114-Status: UNSURE (   8.72  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Due to the SMTP provider adopted by AOSC applied some more restricted
rate limit that is not suitable for sending kernel patches, I switched
to a mailbox hosted on my own domain name now. In addition, there's a
single commit that is pushed to the mainline kernel tree during my
internship at Sipeed the last year.

Map two AOSC mail addresses (both aosc.io and aosc.xyz domain names) and
a defunct Sipeed mail address to the new mail address.

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
---
 .mailmap | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/.mailmap b/.mailmap
index 825fae8e6b7b..b4065082029e 100644
--- a/.mailmap
+++ b/.mailmap
@@ -150,6 +150,9 @@ Henrik Rydberg <rydberg@bitmath.org>
 Herbert Xu <herbert@gondor.apana.org.au>
 Huacai Chen <chenhuacai@kernel.org> <chenhc@lemote.com>
 Huacai Chen <chenhuacai@kernel.org> <chenhuacai@loongson.cn>
+Icenowy Zheng <uwu@icenowy.me> <icenowy@aosc.io>
+Icenowy Zheng <uwu@icenowy.me> <icenowy@aosc.xyz>
+Icenowy Zheng <uwu@icenowy.me> <icenowy@sipeed.com>
 Jacob Shin <Jacob.Shin@amd.com>
 Jaegeuk Kim <jaegeuk@kernel.org> <jaegeuk@google.com>
 Jaegeuk Kim <jaegeuk@kernel.org> <jaegeuk.kim@samsung.com>
-- 
2.36.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

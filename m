Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 648B7C44507
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VF6dNeLVH5+HdcadRJYXrfcwVerTQaCs2YGt1NUZOoA=; b=L7sQU1Qi6/fQ72
	NEK474jsP7Cfi8He92TNNICcaFn3QmKzDAmYEy0qggaSvo3TU/sN35QOoP8VwVJs9kIkFIxi3IBal
	XMG4BCHzHyHVmzlfe+HBOGTCB7gGxiNmjQ9b7neDQSkYa9vWD2ctpjnliPtqToM3MbCdMDHs4+PG/
	elETe0TIpsa3PaZ2sZu7TU3P8477mMcBBhIGY5pcmg90HhfxfXad+MmzXkZGkwEg3w4QnP3lNvQyG
	o2H0RNuI5cfySQ6TPVS7yBNBmdNvpvldQgfsvy/nzn6cNlailtIpG0W3SerRcQR0dQ0kiM49LStAC
	S3rA7LUIqBDEbn5d4iGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiaj-0000000D0nX-0KOe;
	Tue, 14 Jul 2026 19:14:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiah-0000000D0lC-43Bf
	for linux-phy@bombadil.infradead.org;
	Tue, 14 Jul 2026 19:14:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=kGEBxSja9QK9v749iu4BHEOzirdhrkQ+xdtjQ0ijsW8=; b=HuAxFwhNsCsVLWueqnB4MtUHTn
	HxhM8N4XaVt75VNSPVj8Q1mAttjWqT1XUxt7v/VH3FLxelGr3y8y5Izeh4d+Qr6KNk90gzTUiRWdF
	JYjLrQIaQJLIbTTUolfp2MpE+zn+oNMekJtf/6ph6tHpZTj8qtrJBSit47B45YJCwrV3qeavrUrwQ
	EBitj/+TimxQ2HmZqs+SkLzlXNNfKqq0fqmRbHJmvkSRFGQqwJkhA9LjBwVnwBAEYkFfw6awGnRRU
	dv+6U3j2uIhxy8MSaIhC3SQo0/b4OMBvLawrTISZZMQvaPEJryLeYWhrgnlHofFhGFNR74/k8g8gR
	Dah9a3gQ==;
Received: from mail-pj2-x04.google.com ([2607:f8b0:4864:39::4])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wjiad-0000000CnfL-1FRy
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 19:14:50 +0000
Received: by mail-pj2-x04.google.com with SMTP id d9443c01a7336-2cabf1f1051so4128525ad.0
        for <linux-phy@lists.infradead.org>; Tue, 14 Jul 2026 12:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784056485; x=1784661285; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kGEBxSja9QK9v749iu4BHEOzirdhrkQ+xdtjQ0ijsW8=;
        b=k95Ax1h/DMv71Izi/3v4xWsHJetNRSY7QPvPlwo/MKMUSmbbzZYNgzC1XVMJ4/61Va
         FJuFg85cLxZfahfQ/WNU+Ym3gU79hLI4+jh/rc4F2X20ooXTxyZzMe7Gvx8pV33Aj7oA
         G2yoDNh9NI1TVhL8TIEpW29swC8mzhBj01M9u6kYIjmfq538vCT18JGR6x69ZFmAzgAJ
         VTtJBiWZibfCR12ISXL99YyVmI/VBuPGY+Zvd51mMfQS/LZHlSSehOKipUl5XLfa0e0P
         SkSB+RrWba399lSpsQ4A2lB+0voOZ5YUA8btUgBZhz5kg+Crgu+KmdqRC/PCtwp2dwLq
         DErQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784056485; x=1784661285;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=kGEBxSja9QK9v749iu4BHEOzirdhrkQ+xdtjQ0ijsW8=;
        b=W0A2kY2x/ABO74//+DVeqQ9CntZfvV/ong8e6aiSHmbZcv7PKs78SQ2CRAgRjGv4oA
         H6Bta9xwCBMuDdHnk+cMKX8WOD4qT/fnK9huBHlRJBDOxL6XWDq/UEcDtm/+qiVozFpY
         saUKXk9RUj4IO1KUKTH1ED05Q6RQU/drNuR+zHsT5pd3wdPgTEkOUX4ETftkjoW6WEOA
         ezKtbnrnZnfitOVxE8/WaAB6fvbmZpGdEW1iSnqNN2L9vCTGipgTzBwKvtNx9MOXzfyp
         4phG1Edo4zCTghu0JpCvJf6iuDz5ncAbTL7vxCAIUwd76J4WNHggGX/CdHGeA5bN/36Z
         QDlg==
X-Forwarded-Encrypted: i=1; AHgh+RrK7EtJloO5kfyFdZ3E2mD6wzSGlNjI8JOlVGFHTbbvBfLtC4AtTeLaw6CigpM59QGajepJYxmQBg4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwV7dsbwX7rdud1JN5IgF4Yh3UwVJGv1CP8omPONwx7X7DipWw+
	cEr/BL0jkcDlkx3WGPBm3/MW/TkXgwYwvHzRXVz8gOK3D8AH7UdqcS14
X-Gm-Gg: AfdE7cmfapHWLQGDZHSOBz6v5WbblanK4svi63g3IHHfV66FxXFMMeAtVauGmgP4Wg5
	rGm7xDf06Evoi5xm5AU6ziTlg1WCMkMP7PMDHmSA45rGfe8hT1sc5slIRaCIYO40ZKIMKx5MjfC
	X13p0aQfDl6vPKZIgAFKlf3GAvZo2f/D02VaGRz8QfBytp2EUFLOJmwNG6Oqz6IyQVCEAS2a3de
	+ZKdB0JC1poaYHHgdoI43jR6zFkiNHlfRk1xujOzKBER+XMJDyKTpeA6rub/y32OcGjHZr70Ufd
	bqaOzaxQrFRKIkius8yFEhZtnph8ccW9KqNTKEBLajnaoBB5QuRkEiuZqdZZjX390JBbna7E5vy
	1ZQSGSJbdEcF8eKxdv5QPJNMN2Jm1laTt7bkDTHvF7ZNotnFdqc4y6B1/0hjq1CifkPLxIkB+/j
	665lsMbKqCbKQ=
X-Received: by 2002:a17:903:15c3:b0:2cc:777f:d67c with SMTP id d9443c01a7336-2ce9e99be82mr146416405ad.13.1784056484883;
        Tue, 14 Jul 2026 12:14:44 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9d3d451sm120763245ad.65.2026.07.14.12.14.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:14:43 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: kuba@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	pabeni@redhat.com,
	andrew+netdev@lunn.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	heiko@sntech.de
Cc: netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [RFC PATCH 10/10] MAINTAINERS: add entry for Rockchip XPCS driver
Date: Wed, 15 Jul 2026 03:08:38 +0800
Message-ID: <20260714191341.690906-11-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714191341.690906-1-coiaprant@gmail.com>
References: <20260714191341.690906-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_201447_401234_5484B5C9 
X-CRM114-Status: UNSURE (   8.99  )
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

Add a MAINTAINERS entry for the Rockchip RK3568 XPCS platform driver
and its device tree binding.

Include the relevant mailing lists (netdev and linux-rockchip) so that
future patches are properly distributed.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 806bd2d80d153..8cba6a0a2dd03 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23463,6 +23463,15 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/sound/rockchip,rk3576-sai.yaml
 F:	sound/soc/rockchip/rockchip_sai.*
 
+ROCKCHIP XPCS DRIVER
+M:	Coia Prant <coiaprant@gmail.com>
+L:	netdev@vger.kernel.org
+L:	linux-rockchip@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml
+F:	drivers/net/pcs/pcs-xpcs-rk.c
+F:	include/linux/pcs/pcs-xpcs-rk.h
+
 ROCKER DRIVER
 M:	Jiri Pirko <jiri@resnulli.us>
 L:	netdev@vger.kernel.org
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

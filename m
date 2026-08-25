Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6861EC5DF94
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 05:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rXmzMvJd24bEZO3Pcu/gr2MQgvHdEDdIosgtt9I1sAg=; b=e/Y+Ax9cUmRD1r
	rSYD2GePg9qfcjHg/vW6pFj2oHiRvnnDmmh1BbOMXDhBbP3dK9EGXwkagayMN3M7Ej6sU5N52DISr
	P8ohcaRHO2I03mubq5Ebqwv577H63Bg7CMDh0CiWkceYHdQoBqZ7vwpu/iRGWbzXGg77UwRupEnCh
	yUnJDF6qzjln3Ot9m91j5mtjPZJcV9IRqRAKuxvMW6P2jJWaGTRMyZ8p1vQscsYiWuN8Np2AoQdbZ
	jD7Wh/7q0e0HJwpsqCBv6VdY2e4Bt2NwmZJZa0jewHJsmnDvuNEPmie/dIvEehL2sug1IEWR7kwF7
	vkr3DsB/chFXlSlHup9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyjbs-00000000B8R-0QoO;
	Tue, 25 Aug 2026 05:22:08 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyjbp-00000000B7c-1bqj
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 05:22:07 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-c2022323c37so677553266b.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 22:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787635323; x=1788240123; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=0ryfq8ZlJaF8dkUkfOTfrmP2SiE+/6PCtICjVZMb1cA=;
        b=IZtAFzMNg9zsZ/wCMGbO3bneqlhIamnLKzf/Oupf8OCVZeqTsPXul6H+1JXqT9RNOK
         way/zCY7EpXc5lkR2s63fYbjI7eVdXlu5vd6X4IDpYO3TpOqgaa6vLiUFCZ3y/+nUBSA
         aF4Y4ZM57SNUIptI9wQJJREMbfUaluVK7ab+RflHTu/wziNwAIzO6+dwpUxAhphha0Co
         biRj0wWROvTwfJ4xVN7QeP+KeuLVBe5u50fviKVvGfRZRKteigz+8QlbEyEgMkgE0tpO
         ak90h+MqTKxf3sljmqDr4gfK23fMg4iUvRE3avOLWPG+M2/+wCCgo4OsFGfoZWf0NaZR
         SBcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787635323; x=1788240123;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0ryfq8ZlJaF8dkUkfOTfrmP2SiE+/6PCtICjVZMb1cA=;
        b=Yy1kqdpadAi3aKD4wJZs+IBQfu0spB+jvFfa8xCAwxHT27mx1VOK+US3qqFaYszgkv
         LvN/1mYvhnFhDqILJ03xmtC2f4DtwoULL/Hrg0+G0O7/H3/dCsyad7BRTCYHZQEIXYzO
         nhgo43vq7pluSl3/lEZel/87gw9jfn82XJ0/qa2Zj/h/OnrEyT9hwp8Mh+QIoN5WXIfI
         PZ4QgajWDm4JbB2HV4IVD3OyI/wVJRnd2ti+jDkPrytwQ8DwVeB26MUWS8ZuDv1xy2Nv
         1lsqvZinZLQ7UwTxGusMEC6+AcrzrokfsIqzdNKae5bZwNSPVWHo/X6+Y2rRUcnNpZFr
         VO9A==
X-Forwarded-Encrypted: i=1; AHgh+Rq3k3lTxQDrixXXrjinWRq8C+AKTH8S//MwdRMMBWTB40oKbpA4QGh/HIKfIt4RnCVzkrgY8lvGzf4=@lists.infradead.org
X-Gm-Message-State: AFuF++mrjRDRHnuZXPSa+XeCKq/l5Xmo+nYC+dWQJdU/gBBG9exCb87O
	31XZk5mEdznzQOuIcn5ADT45DB8Fo5LVxYNHBfnI25iKdKfeXa/1Y8xB
X-Gm-Gg: AR+sD10qRIysqMAO7HZmM//+nQz6b5jYsCABJfuMeLSpMetHiXe0zfcZ3EQCcnkRTy8
	EZLMjn7RWZ7cQUo9b5RgIxK/voawzOFwZEyc2gyTI5GkYUA8MYSPZp+itaETA5r4iDZN2r6Rwta
	diZkj+hCG+YLQG1IagBZp2vEBhR9DH1p/rRbfZD0hufJQg3q06GvSsmN6fw/wUkwBy4rHdcP5bu
	ROxCjpbpIi7CvkIZAu7zecfPpE0dGbQNVpuhDUxFLfowkNdruxcIdKVeOhVX276XQPoRaO72OA6
	AkszTdEGvb9trRa8LA9OnFl2QAC6ytTAVl9tcT7akgffyu1F8zxPcx8U88jCte1QmnIhnqPXCpG
	0yK23C7l/CXoWKGgxJoubT30fqF6tvbbOwaeN9dmDfu1xafseJBYVUdZSAKxRsodAL9JpW6OAIU
	ub0RgREkYip1TeUl30UB+7q1pqAe5PthOqIfnQetH1ojtthSLJdDWgVmL/pv2XKS+ZASloEbZCZ
	LhO/o0lSxqpIOw0ErcQthuWzVLolnM0VSjIcPILyZ5PW4ehx2HGhhr62A==
X-Received: by 2002:a17:907:8995:b0:c24:4128:c19d with SMTP id a640c23a62f3a-c24e584dc37mr325956566b.4.1787635322840;
        Mon, 24 Aug 2026 22:22:02 -0700 (PDT)
Received: from GOLDENAXE.office-radnicka.localarea.network (c82-214-103-66.loc.akton.net. [82.214.103.66])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c249606a8fasm1733198866b.8.2026.08.24.22.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 22:22:02 -0700 (PDT)
From: Bruno Banelli <bbanelli@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Yixun Lan <dlan@kernel.org>,
	Ze Huang <huang.ze@linux.dev>,
	Alex Elder <elder@riscstar.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	linux-phy@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Bruno Banelli <bbanelli@gmail.com>
Subject: [PATCH] phy: spacemit: enable K1 USB 2.0 PHY by default on ARCH_SPACEMIT
Date: Tue, 25 Aug 2026 07:21:58 +0200
Message-ID: <20260825052158.66367-1-bbanelli@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_222205_430579_5585AC21 
X-CRM114-Status: GOOD (  11.28  )
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

PHY_SPACEMIT_K1_PCIE has "default ARCH_SPACEMIT", but
PHY_SPACEMIT_K1_USB2, twelve lines below it in the same file, does not.
Since the symbol is also absent from arch/riscv/configs/defconfig, a
plain "make defconfig" build for a SpacemiT K1 board ends up with the
USB 2.0 PHY driver disabled.

dwc3-generic-plat needs that PHY, so the result is a kernel with no
working USB at all on boards such as the Milk-V Jupiter, where all four
USB 3.0 type-A ports hang off the single dwc3 controller.

Give it the same default as its sibling.

Signed-off-by: Bruno Banelli <bbanelli@gmail.com>
---
 drivers/phy/spacemit/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/spacemit/Kconfig b/drivers/phy/spacemit/Kconfig
index 5fdf18fce..dd74a3faf 100644
--- a/drivers/phy/spacemit/Kconfig
+++ b/drivers/phy/spacemit/Kconfig
@@ -20,6 +20,7 @@ config PHY_SPACEMIT_K1_USB2
 	depends on COMMON_CLK
 	depends on USB_COMMON
 	select GENERIC_PHY
+	default ARCH_SPACEMIT
 	help
 	  Enable this to support K1 USB 2.0 PHY driver. This driver takes care of
 	  enabling and clock setup and will be used by K1 udc/ehci/otg/xhci driver.

base-commit: 66498c75b4f8017f62d720d9b59675bdf3abce91
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

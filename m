Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3C65C7EE24
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 06:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q6bRc9lkCA7DtScHNDpKLbbAx0+vu+wEFz5QLvm/oAU=; b=eqmlDZyx1LavuG
	6f0QoFONXpgqoCw3at+sHP7UHTgvkval8vdQmXVP0yCGZAgVqqni5GdegNN/fL6Dy6KueV5AtauxG
	0CaIYuykZlpreKL1tTSjXf5cjU9CUbBbzcM9Df4nq8hWgmRQ2RnC02ebNUPDQJAEAF5Weg2QbJ4oR
	PYJC/0JXB+5BhZBgbq0XkBpyi62wmEYJlIYw+exFuN6QbcyhfXQcNKNsOzIFtul94k+Zra7YTgSai
	Ro/xUdSt9DYZBV+5S/vpQdPg8F0JGSBZuAfyMoeO9alWZNnVApzXQvQoj3DmNYawdUAoiu9CZzFVz
	6yB12yzs9Ln3nDn8iYtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwGTs-002NKf-0a;
	Tue, 09 May 2023 06:05:48 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwGTq-002NJR-0L
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 06:05:47 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1aaf91ae451so51500395ad.1
        for <linux-phy@lists.infradead.org>; Mon, 08 May 2023 23:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683612342; x=1686204342;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IzJM++trNdzMDT7oM7AdgBO0zlbtFrrX6DG+chcJV/k=;
        b=nNrTrG9YjTTi3415nM9nQU2ZssYKWGffubLAK/Ys9KUaoUmfmgiS/FqPnj+HRy1te5
         PtDQGeDWvyIHSaF30g20SAOuqJfQqKnLmux9/m7AQI45hpmp01HZqB37ZgKqPgVlBzRh
         ozSsOEzgjpCkTqnRPJe8Ip/wVFw8KI38s/lumYkTMmTs2tR2icnzJGexoXYFbps7dBaT
         Tx7INzEOLBSS4dQX0BurzlIQW7Bz+vBTRkS4EerYfSuph1Y+nU3+PponYHbttRVC/xfz
         Xhod6cl/4Y72l3DRDKkxdV0VutovMxVOx/EVBZb+/EK9/Uo4UzHOkCFO4ZIXSZZ/sNgz
         y1OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683612342; x=1686204342;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IzJM++trNdzMDT7oM7AdgBO0zlbtFrrX6DG+chcJV/k=;
        b=VoXzpskWXBuoQ2cyrdzKywx0Bz/IYvD3aqn7Rd4bbfARcygNgPJ475mAXCedZXLFRf
         qUksdPzzGL7O/s2dpJqsiPoEFdLDKgT/tjn+6yy30QiJ5ozE6dJS8PzeTyq86FpR6yF+
         Lli7W4zkyVcga21oo1MEoQ/glcB6uiqIPgAHhJdZUr72YSew8aqrHHU+7q36L05VH0kV
         SMroW4hglbQdloxvGS6/XFzav+xiXI0ZoT8YuNXG1DWdhqwnWH3e1vzuqAkSi5qfid1y
         BUZLAfN0hmEGEHTSzfRtqMUCG2cyp+6atNtWxiR3HnnpeJsrWlyGqOgYG9E1hsqizEt5
         tWDQ==
X-Gm-Message-State: AC+VfDzEZF8L3qBvDiGE0lbNoAw/X/TTecY7uXwFvWEDQXM3UAPSrLQA
	vUWvpRp0Na4ecJTOf1IQgJRmvf54FwoytDI9sqw=
X-Google-Smtp-Source: ACHHUZ4u7KnVLIOZkZt1uNMyWmer6cE3FrcCiocERxPqyOOAoWfVdAr7wQJ8HYuWhbudTNjNq4CRzA==
X-Received: by 2002:a17:902:db10:b0:1ac:5c90:23e with SMTP id m16-20020a170902db1000b001ac5c90023emr12875765plx.7.1683612341636;
        Mon, 08 May 2023 23:05:41 -0700 (PDT)
Received: from d.home.yangfl.dn42 ([104.28.245.199])
        by smtp.gmail.com with ESMTPSA id ay8-20020a1709028b8800b001a9a3b3f931sm582220plb.99.2023.05.08.23.05.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 May 2023 23:05:41 -0700 (PDT)
From: David Yang <mmyangfl@gmail.com>
To: linux-phy@lists.infradead.org
Cc: David Yang <mmyangfl@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] phy: hisilicon: Add inno-usb2-phy driver for Hi3798MV100
Date: Tue,  9 May 2023 14:04:43 +0800
Message-Id: <20230509060449.1151113-1-mmyangfl@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_230546_146163_35A9608E 
X-CRM114-Status: UNSURE (   7.58  )
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

This series adds support for inno-usb2-phy on Hi3798MV100.

v2: split patches, and other changes according to reviews

David Yang (2):
  phy: hisilicon: Add inno-usb2-phy driver for Hi3798MV100
  phy: hisilicon: Allow building phy-hisi-inno-usb2 on ARM32

 drivers/phy/hisilicon/Kconfig              |  2 +-
 drivers/phy/hisilicon/phy-hisi-inno-usb2.c | 62 ++++++++++++++++------
 2 files changed, 47 insertions(+), 17 deletions(-)


base-commit: ba0ad6ed89fd5dada3b7b65ef2b08e95d449d4ab
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BBE6E87846
	for <linux-phy@archiver.kernel.org>; Tue,  3 Feb 2026 16:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nphRzbMBZ1KTeB+KBGqGi9psyoLREMz9bK/q405gbLs=; b=v4TcLC5e6ZeQQX
	keupzDG2Luw8KW0VOTk321nZ1daKaJFtRrHmukgD6xkoDXMnRnJou0Es1N3VOQZQ32F12FXDDidYH
	UvDQoljFBIwp+nXyGdpdd1L4QoQwzLBm5o4Psms1RFzv1l+3L3U0crMeRPf/YPr1W1ENSgYvV+Bgg
	1saN0mkhHLADbTLD2ovTAlPv5jaZ85FUaYjUz8qxNfKxgBPQ+ySuCZZvVFub8F7JtRqkNA2XyEQVr
	g0pi/XrqLq+T68wS8oFpHS/DbMlX8AJ1j1eNuyYNJDoznjCVnNEY/tE8fa1hffIcWYBtZ5TOUa5I8
	Lncr8RRhWsN+1GiLxdpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnJ7h-00000006v4l-0gyv;
	Tue, 03 Feb 2026 16:19:29 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnJ7f-00000006v0c-0PQM
	for linux-phy@lists.infradead.org;
	Tue, 03 Feb 2026 16:19:28 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4806dffc64cso44995945e9.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Feb 2026 08:19:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770135565; x=1770740365; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L5M1ZbJBKUwOtAuomtIJGP1xLtlDmn08RXJLiC0W3qw=;
        b=mV6vZG8SbZCJTnd8/dXCTtjw5SbOgHaaVpDmqfjoNll/z9KgD9uaMsH2x55oo7PyFW
         TfFhvEs7IAMy8FxxBWNKKUO0uDalWKCY41EsyxN2l4GG/F6oNAW2govRt75YmUZvec4W
         xZVHEC/0wUa6kH06Sn5hwXh9/xL2zxMsDQlOJkUgYI7Q0MpppKss2+CX5R8UOoNwZ47l
         Y9fEiYiwWpw+azSu4ICT+Dj4E3v+amrsGx/3ZiLZCMznJYgtwt67u7NB7nUPgRho/hSX
         mMgJGkN+pJ9RwO9uAtnbeFL8Fl8gKbQviQy8XtKbGDmiCkqsMf+HdbeN3QfAvRAxZA9K
         skmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770135565; x=1770740365;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L5M1ZbJBKUwOtAuomtIJGP1xLtlDmn08RXJLiC0W3qw=;
        b=GPKEj3gjVUa21sHIhsFxgE5rYA6wa73LRfX+SiO+zDM3yA0OB97wXy/xtUWAWHsyvn
         WCfe81fnK0J0cAoKDsqESCE5HrjN36JVdCYttRHUutUCVuGlVcbaTLq4/zSzSXPiEx+O
         2pnYrGZsh0/ZOtbkaowa07PyoKpDdPLxwFhnjVCTIef0UsybbJy97bCG4PGsPbMVYGb1
         g6go8KGag+H3cljyCrVk2wgUwxC0WCIhg92xSy7mXVDkE4K2hKHcMu/9kSPxgvCyZNn0
         kMNNc84ldv9NwtRBTLYEFFJqCZ2N9chMQRTd4rtM9AhlGhqsQXntd6fyh6XCQpCsqNFx
         hS8A==
X-Forwarded-Encrypted: i=1; AJvYcCWYWlS1ZmqRIk3ykpaD/MlpWInVN5tgYVceTLkDi+IzfWX8xniUQNQS6JB/6oViurbjCUBfhmcNzQQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyjap6dEQsscJ3vTINQqomOFsrmOnshT3nlAMWjtd5hBMIgKxQD
	N89t6RIo49z3E1QP+cZtqAIgQHyfM7FBQ10Qa4Db/quYP4MggWFM91bs8WJ7Fg+tS3U=
X-Gm-Gg: AZuq6aLyphLq3WtVnR2alRz7CzHQeInjGHme58hti5onQqwMHoDw42VTeOAXhd2WO2r
	mvcvihQPzkRnWRkMkqcTP5ZD7vjuNb1UTTqlZgUxYxwUQBLOU8ggfJiolE2KhmtWxwLQk9CGmap
	kprTNeA2u2Moj2xLXyHh7LfS1IZZU4KIiJmAEj5oKSUoM5CrHrH9jqiym5PgS7Z4fRMWCeFNhR2
	b++EQAap0Zs//ieiiPIU7otosOYD+M4zLvN1S/HDxUw8Qic2WcVK4mIqNf8LMkO5EfA7YN92AGd
	hCCG9ibNUk+oDw8TNzUSMXWVdxQUC8CPDe3nPG/qnQ3qCqAKLTTSjUmEGz7rIk8yHDUWPiIbQQu
	8weHjrNOezx6w7RLWvyag7X29BBc1uBR1XCbER1qtS0Xn8PmsF4Vt2hwHtGTuRu0Jp8IHEJBID2
	Z3TUau+drkYW5L1Dv6qD8=
X-Received: by 2002:a05:600c:820e:b0:477:df7:b020 with SMTP id 5b1f17b1804b1-4830e96abaemr2199595e9.18.1770135565342;
        Tue, 03 Feb 2026 08:19:25 -0800 (PST)
Received: from vingu-cube.. ([2a01:e0a:f:6020:81d1:b874:c1dc:42e5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482dbd21f5dsm144120785e9.8.2026.02.03.08.19.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 08:19:24 -0800 (PST)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ciprianmarian.costea@oss.nxp.com,
	s32@nxp.com,
	p.zabel@pengutronix.de,
	linux@armlinux.org.uk,
	ghennadi.procopciuc@nxp.com,
	Ionut.Vicovan@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org,
	horms@kernel.org
Cc: Frank.li@nxp.com
Subject: [PATCH 4/4 v2] MAINTAINERS: Add MAINTAINER for NXP S32G Serdes driver
Date: Tue,  3 Feb 2026 17:19:17 +0100
Message-ID: <20260203161917.1666696-5-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203161917.1666696-1-vincent.guittot@linaro.org>
References: <20260203161917.1666696-1-vincent.guittot@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_081927_176993_0CFF452B 
X-CRM114-Status: UNSURE (   9.15  )
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

Add a new entry for S32G Serdes driver.

Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 67db88b04537..fab748292821 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3206,6 +3206,16 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/net/nxp,s32-dwmac.yaml
 F:	drivers/net/ethernet/stmicro/stmmac/dwmac-s32.c
 
+ARM/NXP S32G SERDES DRIVER
+M:	Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
+R:	NXP S32 Linux Team <s32@nxp.com>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
+F:	drivers/net/pcs/pcs-nxp-s32g-xpcs.c
+F:	drivers/phy/freescale/phy-nxp-s32g-serdes.c
+F:	include/linux/pcs/pcs-nxp-s32g-xpcs.h
+
 ARM/Orion SoC/Technologic Systems TS-78xx platform support
 M:	Alexander Clouter <alex@digriz.org.uk>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

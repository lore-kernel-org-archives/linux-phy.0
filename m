Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5102C43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 18:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDpwgkHoTU5S/5HQ5m930Xk7D91mnhdvkFn96kiMhLo=; b=p7r9Ft8kv/9VOQ
	OxxteNQKbpjXS4kl0JKyijK74ed+9R7m+a9W1V822AF6DGIeq5SHQ0VzQiosN4wJjgDWUwWXo4846
	5X2aoLfe5jOgLDv8e6QAuokVNQ/9VFwrJn11ztmZ5QP0TzECLWnRbmx7cGyDdSjsUgNRhHpXzTXZH
	vGGyNnHi5j3JeO+lbLtF/PvI4SjAIMvxVb8ch/kCuoYpmYHH74NGR2vpyF2aTIvxK0nETbBhgz6jK
	bKYvuqwQZEEazbGcFR5Cdl3ISqIdNdZ31zmNLRM0x65Wg2rSXZrvHjscjDKbk3IT5EjjQCvRispbY
	Vd24Awo+xvV4uGhE2emw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weH8z-0000000FN3a-17Gf;
	Mon, 29 Jun 2026 18:55:45 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weH8u-0000000FN2v-3EFs
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 18:55:44 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4938d5f86f3so15338925e9.1
        for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 11:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782759339; x=1783364139; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EadCIK0hv1ebJMqpfwTHlVp1CFu9ZSZHhVnHkud6iSI=;
        b=jwTZRrTaaLQVSy9R4mybI4Qpf3uuuEae96mLwqiTRnhHRX30W9Rkvb8qKsoulu7owf
         YnC7uRiWCPq75D8bbc4tS4tMMPSPJxdogk/J2nxHQGcS4C5542MPquzd0ci1Ln+2mPuw
         Q30ngPRVng8zIjSLsgcxCBnQ2Z/fi+UYGd1ntlt0GBmYpuLIxbE8gOESRp7Y9/a/8TE5
         JETXYooHF/4YyyBD2Cfv7Z8U5u30rK9Zn5QnQnnvaAZzkodQzAGDSv2IE8UlVec2xft6
         THNW7gBhtfd7v30w9WGln4I2753YOD8Bm3CuKjFdO+sV98usER6aaxodes1EXeC12giw
         nkaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782759339; x=1783364139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EadCIK0hv1ebJMqpfwTHlVp1CFu9ZSZHhVnHkud6iSI=;
        b=fnwGVMi8PdZj941pOSLa+ZKLk7bh6Lfhq6NTj+zf9cVxQKBwrs6KkEzMnb4BaD/Ym4
         HnScfmX0mXjUS22DFy+MjiwWlfB+xGyHMPIePQWwyeCcLO4kQwIMkdKLwoBf0vj+VhVA
         DG4SGL/2tJl2ylbeLXKqnBiJ5VdkPpAzbKkaQVS10yyeEK1oM5w9S+FfR9mvz5mW1+Ej
         XGs9etOA4Uy7XEHsTttiC/QDnaML2iFq8JzAfIVXggTEKVV5Wx/WdyFmgDhtK/VMxErj
         t2ZGp87mjP799YcCu10dZb0NLxscnK63hgB5fdBWSsWGoCQeEercajjMPqpalk/SX3YI
         +DEg==
X-Forwarded-Encrypted: i=1; AFNElJ+V1gkcuf43xu9T6k7ZDWfyG3/sjv8zRcby44nDFahdi9+CTL9Gz6Zuo80PuvJw3YS4TnnsGJjxsNo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwSX/2+YnCTQUXIYMLSL1Bd1wrgiKJmmxkLzxl9mmJpNQL3PIZk
	kM4pWaA2nrolegYUpg7ams1e4asRBPJYJrXd+78pP2b4WwsEr05wIE3B
X-Gm-Gg: AfdE7cmG3BabZS2XYN8f7y1g+vd6rbep4VNLU4cYhEDhhZp/wRhjUvZT7hfEzkRquuy
	0+11MZk6hmhWyxKF25dl9pFBQb8YzE8C4ZwApppWBcGKndY0V071eEutyfRHvFwwPq6OPLS/Tbq
	lnR6BNEp2ARri2RRdlLzlzpIYdqnsFGDRfInAmxgJZRpksJgkr8ilc6DBYmw5cSpxY3daIYVjIM
	PjOUflOprsRTuMF8kt+39xCul3YArTAe53kBD8KPFCoED3zTpXxNDAKGHA1tAETfwoRU5uN6VnB
	r0arHUEhCCyDO8OVQhb8dNf6gn4ZCWBtYeSGl1BZJYgckJWKnnXIc9lwfN4Lzi32VcARFhwYnpy
	ubUaWzDDAVOL+KyVHQxlBbVUhz+mwpvcCrwbXdNi088oJm0hUkj2WZ5uSdnj5bT7Kp8V5ZAtS9h
	PBeEjwU+McQ+FJro4MnjP9Sf4oCwvoFoiwGY+8YEv9G3R51B0xa6ySuUfyBcPXAfxWG3T0q5zDm
	PyvfXc=
X-Received: by 2002:a05:600c:3485:b0:490:af63:2cb1 with SMTP id 5b1f17b1804b1-493b8d1bd68mr4749085e9.7.1782759338421;
        Mon, 29 Jun 2026 11:55:38 -0700 (PDT)
Received: from localhost.localdomain (ip-89-176-136-191.bb.vodafone.cz. [89.176.136.191])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493b8ca8a81sm9144875e9.10.2026.06.29.11.55.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 11:55:36 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: maxime.chevallier@bootlin.com,
	linux@armlinux.org.uk,
	andrew@lunn.ch,
	hkallweit1@gmail.com
Cc: kuba@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	pabeni@redhat.com,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	bjorn@mork.no,
	olek2@wp.pl,
	kabel@kernel.org
Subject: Re: [PATCH net v5 2/2] Revert "net: phy: sfp: probe for RollBall I2C-to-MDIO bridge in mdio-i2c"
Date: Mon, 29 Jun 2026 20:55:34 +0200
Message-ID: <20260629185534.15571-1-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <1bdf0dd4-4f34-406e-ae97-f2ec5b540906@bootlin.com>
References: <23e3931915c3ed2a14cec95f1490e43d30b225e8.1782581445.git.petr.wozniak@gmail.com> <1bdf0dd4-4f34-406e-ae97-f2ec5b540906@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_115540_846251_44D028D9 
X-CRM114-Status: UNSURE (   5.55  )
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

Hi Maxime,

Thanks a lot for testing and reviewing, much appreciated.

No worries about the original probe approach not panning out; restoring the
working RollBall detection is what matters here. If I ever get my hands on
genuine RollBall hardware, I'll revisit the per-module timing idea.

Thanks,
Petr

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

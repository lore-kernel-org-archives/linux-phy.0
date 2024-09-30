Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54AA1CCFA16
	for <linux-phy@archiver.kernel.org>; Mon, 30 Sep 2024 19:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0P4Td33Q5A7bokzAGaDCEpHCzoFtw47Bw9VoOyRcGTE=; b=U82B9HTrCcWWiE
	lOl6DyChcsRbERRKkP61S/DM/WeVvbr9G99alWI3vEZ669YXQU1XkdlRvl3QIPLt9KA0vGh11/XzJ
	tCcmlAa9ZxsGf2+Xs7MQ35WHwRlXaRMd+361aensTit8LZcunyCKBipTcvnudPhWQ9hEziZzQBAmu
	6Da9J2HcyvvQApJlmQMUbIaOlYl3lrbyc9iIbgpkMz9/mLfleAn9JmeFwDQNYkU5lCmxDKfX3nYD4
	+DVkbk07tDn8N3Lp8v2E7Rpaxk0+ZnnrFo0Z5iK/0Nraqg8RvIQF91gUWnrYIfB89Ld8E9A4E3q4C
	NsGpBOsD81EQgzyklEqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svLnd-00000000b7i-09Z1;
	Mon, 30 Sep 2024 19:11:13 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svLna-00000000b7N-1kLN
	for linux-phy@lists.infradead.org;
	Mon, 30 Sep 2024 19:11:12 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-207115e3056so41151885ad.2
        for <linux-phy@lists.infradead.org>; Mon, 30 Sep 2024 12:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727723469; x=1728328269; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aCTSpjE7HL0LhWw7HAwvpibvAomrawMsBzaMkMKPJCs=;
        b=S9z7UuuZ5v7Frc5iCeRxFU2uGsHkbxHlzfzBgXAS0gB7NfhPjprru54D+8ahjXt/nt
         YC2JiDPrIxVV6DEgovE52owyaoBDGFXD0HD68MiThMPFUcHvRioogk5EXqmFQ6RgxH5i
         71QwiCKOLc+06U3klESRzSnlcCHE2Iw7ppg8ss42vpgen/PUuOCbJ8vEYvAVUPFYfQXu
         t+R50EQkGl9i1hqA9YlOL0PmvfTcwt3l+oMO1Qz0A29crKXFshQY6xzw3eYso3+MQ5ij
         eR30nxaXhMK2hyOInH6iauNcvtEt36kkJcyiWfYRxLEFaTlf+SWsrX10460dvLNlJdVK
         WkhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727723469; x=1728328269;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aCTSpjE7HL0LhWw7HAwvpibvAomrawMsBzaMkMKPJCs=;
        b=HvMl1vGk+WBqz89S+14vl5eWsXmzkSNT23/Omdi3xVYHJTEsWGz6wr4j5bDpyj7V/q
         arYzBDT/W1m/Wk0cGI/xN3WJqxihgk9PGVvzyvu6MTO28sNR+fmgtXeTDxazm/QPxDHc
         PV5diDfQiRqohy5v2BN+c7kGScv5CZfYra6s+OCDJFy0+zV2CVegsjCdiaeed03B0YMR
         C0Lfk5fGa9+V0r6zfJu4H0AW3HOy8npr5Guqv9exDS4yvghvPRIUcyYN4iLqqLzLtQLf
         V5aOdl3kTUigvd+RtOfRL+raSoRzbKp6Oe4yqNxbpLSKIL1qDNFzVDaTTzanMOmoFrtp
         OLuw==
X-Forwarded-Encrypted: i=1; AJvYcCWhHHwb++W0VhuTsM5vYsPU00N+5CJ9EMK8rzMRbWJZ9qf2Gz9hjKsxJPwkDz6yCDDpw/MZIoDZuD4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzM8Nf4Xugc5L3cSQbDhH8fSrzTmTSNaTzyTcFhbPnLU7PsghUY
	/pI12APJhlddistpmtYGg1HREGQq5bEY+Yr8uP39/5ng5PhGN2Lsa6LkTrkr
X-Google-Smtp-Source: AGHT+IGPKqgmSCwIUXXbGEMtmjlMHyUWhICIzjtK2cewowvU+9I7L/QxmmbWD2bHNlk1OGpGpmIQOQ==
X-Received: by 2002:a17:902:e5cd:b0:20b:968e:2585 with SMTP id d9443c01a7336-20b968e285emr37146775ad.6.1727723468585;
        Mon, 30 Sep 2024 12:11:08 -0700 (PDT)
Received: from ubuntu.worldlink.com.np ([27.34.65.164])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20b37e5fd40sm57598175ad.266.2024.09.30.12.11.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 12:11:08 -0700 (PDT)
From: Dipendra Khadka <kdipendra88@gmail.com>
To: jckuo@nvidia.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	thierry.reding@gmail.com,
	jonathanh@nvidia.com,
	nkristam@nvidia.com
Cc: Dipendra Khadka <kdipendra88@gmail.com>,
	linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: tegra: xusb: Add error pointer check in xusb.c
Date: Mon, 30 Sep 2024 19:11:00 +0000
Message-ID: <20240930191101.13184-1-kdipendra88@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_121110_510658_73ACF0D9 
X-CRM114-Status: UNSURE (   8.34  )
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

Add error pointer check after tegra_xusb_find_lane().

Fixes: e8f7d2f409a1 ("phy: tegra: xusb: Add usb-phy support")
Signed-off-by: Dipendra Khadka <kdipendra88@gmail.com>
---
 drivers/phy/tegra/xusb.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index cfdb54b6070a..342f5ccf611d 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -699,6 +699,8 @@ static int tegra_xusb_setup_usb_role_switch(struct tegra_xusb_port *port)
 		return -ENOMEM;
 
 	lane = tegra_xusb_find_lane(port->padctl, "usb2", port->index);
+	if (IS_ERR(lane))
+		return PTR_ERR(lane);
 
 	/*
 	 * Assign phy dev to usb-phy dev. Host/device drivers can use phy
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

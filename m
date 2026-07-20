Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB1A8C44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 10:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FzwGDXy0e33mXmjy/GEpg9ROxN1ME0mBEKU7VDrI1/o=; b=NexeNYQWCzoete
	oyOutMLO44PvD4VmULfuPKP9I58XU2+5LW0MNxE4KF3Qt4hY4CVySQpx0b8jcC+PFQxuuFtqtAVDe
	qPxbunaEd0xWJ7tCwMTzt9uqwArgER7J7fwBQS9T6enqtrREHPTxl+Ez74NOaAjh0tkW8iPXlCj4L
	tBCj1SNncIcg5iQEM1E0QdYDXP3ykZmBy9kUuXr7o1eeqqiW5otvUWPm4h8KyXaNKBBtq1w7SRaoj
	jm98HMW2r323Zo2PnL6JbQZxBMzBfBY471NKdi/zU8YGFe3TaIlJxbJMrmBSC6ZtNCuVSCW+jdQbB
	pUPffPYkKzLHOhVN8oug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wll6T-00000006TGa-2baj;
	Mon, 20 Jul 2026 10:20:05 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wll6R-00000006TG0-1Wjt
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 10:20:04 +0000
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-ca00f126b7eso6589768a12.2
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 03:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784542802; x=1785147602; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=eBik4rNwr+Vo/kNhhYOUVadRXwI3dT2C+cEHBotjVuA=;
        b=A+Y7NW4fjX/YH3BkEezq7yUmWWMKFG713CDTI3zLMgN88hWqFveZjGcb89TfyBCJGU
         oqYfkIL5oAwk1cXxwFIGGjTcTlROTfc5KWB/z5SnKyYZI++9sUt60j3PEo1bXr1VzWPJ
         xvZoI7Lzfj9uLUTQjUOl78ISMZ0pGg/JmmQYWrHOfhZkmHamrQgj+LhUaYzZYAOU9HTZ
         AQmTzKLNPiyvl5LKH4Y7hrOFx2DkCKx2PHprcYu1GRQEtX38awHk6P75MeT+xoMB4M88
         cafb6PGqehMavn/krxztW9UZu5w+V9ALXY4uUi5yNgiBxRrS6/48tZJVgfJxAUMM5LgY
         tDWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784542802; x=1785147602;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eBik4rNwr+Vo/kNhhYOUVadRXwI3dT2C+cEHBotjVuA=;
        b=KQuljV4e0ofKNdEfw2k8IfOmIpEzgRMoNHAZiO2BQm/xL76Igox3kKPdW2oGGRE62Z
         fDa7HzhYApLZIRDjwVGs4glGvavGJPC3Uw+cZl7W4IEuAoilRcJerA7w7IbsbPnyZVoB
         q834nWim95r8u7afPMKCaXk1RhcRQpwsjLt9lSHO345tMkGAua//k7oZH9LNKAQauCES
         3xqLWhcmtPWsrd/HaLpkc6hEiJTp+Yy4n4dxMDQqNMEJUGRmDs440tkm8UuCObO5oe5M
         hWC6Xi+MSxx1SsRKKhssk8X8ybOJAPyASwMRQlVGp5CELTcLYDCzEsnC44ZKK9nsuX0E
         0snw==
X-Forwarded-Encrypted: i=1; AHgh+RpA0n34HMhqjn0Ui3CEv6fdtUyIyzAss8rpZgDJfV7dq8YrLwcELkbNdqYeeFhAzdm6PxkN6beIwco=@lists.infradead.org
X-Gm-Message-State: AOJu0YxTc/pFTBK3hMM+vJJsuzDgCsf5NlL2IgMXqecPtjGVbz7jgYdZ
	sssf5NVW+RLBXB4rl2/2/GmHwCovIy+CnwG6DXCIO7uANj/8aQlJpBM=
X-Gm-Gg: AfdE7clwXZGKczJMIPciVM0/15TPCClObcGDjXKBfESclqhl7v1p0p95i7fusE3W5Cb
	BMs8uPMMsyEkgpRs3O5JGqyXPS6CVPMNULZWkzb6vMHD90toWd4G12kyLcVFb7/f9pcramonZvH
	2CEoKYuqiGrIsDJad6K4UzL7I6SjRAyA+yt5ZAUpn8KdjMeoQBStAkG/0NmJoTcbDo90LFAixQc
	bJtJHJ3n/ufw73nbubvpa/RPESg0oeqiH71tpAHaBF+3cmoBf22rxh5bzacTn9eU/rioLPgCR8g
	synwyMJgSAONGKZ2/KCsZZudJLDI17QIGXn7E4M1pQPANYnUgErM44YzgR/c3QFyI1HG0DYIIcL
	35Pndacq22gaUHepKcYDUn+7D+n+KTJnRnvhOebVQ7B7dNAo/xy8S8HtjJ2Dt/9oU829X9Tb7ic
	BeIRPiILiFNcQS+gTolla4dIfFSu8EV4VgGI3r
X-Received: by 2002:a05:6a20:b786:b0:3c3:97fc:93e1 with SMTP id adf61e73a8af0-3c3ad677c23mr14063104637.15.1784542801669;
        Mon, 20 Jul 2026 03:20:01 -0700 (PDT)
Received: from t-rex ([2401:4900:c200:8f2e:8d2c:f805:595:9600])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3142a20c158sm37931653eec.29.2026.07.20.03.19.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 03:20:01 -0700 (PDT)
From: kr494167@gmail.com
To: ioana.ciornei@nxp.com,
	vladimir.oltean@nxp.com,
	vkoul@kernel.org
Cc: neil.armstrong@linaro.org,
	netdev@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	surendra <kr494167@gmail.com>
Subject: [PATCH] phy: fsl-lynx-10g: propagate PCVT enable errors
Date: Mon, 20 Jul 2026 15:49:06 +0530
Message-ID: <20260720101906.80584-1-kr494167@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_032003_412733_97EB1FE0 
X-CRM114-Status: UNSURE (   9.52  )
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

From: surendra <kr494167@gmail.com>

lynx_10g_set_mode() currently ignores failures from
lynx_10g_lane_enable_pcvt(). It then updates the lane mode and reports
success even though the protocol converter may remain disabled.

Propagate the error and leave the previous lane mode intact so the caller
can handle the failed reconfiguration.

Signed-off-by: surendra <kr494167@gmail.com>
---
 drivers/phy/freescale/phy-fsl-lynx-10g.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-10g.c b/drivers/phy/freescale/phy-fsl-lynx-10g.c
index 38def160ef1a..9740b08700c4 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-10g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-10g.c
@@ -1231,7 +1231,9 @@ static int lynx_10g_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 
 	lynx_10g_lane_change_proto_conf(lane, lane_mode);
 	lynx_10g_lane_remap_pll(lane, lane_mode);
-	WARN_ON(lynx_10g_lane_enable_pcvt(lane, lane_mode));
+	err = lynx_10g_lane_enable_pcvt(lane, lane_mode);
+	if (err)
+		goto out;
 
 	lane->mode = lane_mode;
 
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

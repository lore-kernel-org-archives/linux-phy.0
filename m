Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85974C4167B
	for <linux-phy@archiver.kernel.org>; Tue, 13 Dec 2022 12:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gAq4icOm8qfsCX1cDJQFubSpeAH8YQWUWPy8tDPOtE4=; b=gvyvfEfwNo9h5K
	jU7I3WXOI1dao+14Qf6TRSXLW+e3aDgOHM3E3+HCXF/+D/IRNH57SdJvwJOOVdnJgAEYQTphsj+2r
	BzCgn217xqI2hm1KxX69oaic/lH01PH7KKHB4Flpgxn6RBNKtkHP6HmVxiyqQgRJ9CzhRtymu6pR4
	lsAj+Q2sm85+O3YR41muvnVcU6NE9FEhFXM6NjQIChEG+mAg4JU25cjhMWbSBgzfTYO14k/04XeB3
	6xumnXygePX7YRxuo9BJ5+9wBRthO8IqqAwmbItUHU/Kmkxf+mCMy6HZI8MfVIn1JXn1/UtLsu0pw
	T14iosh+z86Apqb1GHZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p54ij-00HPw7-Qh; Tue, 13 Dec 2022 12:49:17 +0000
Received: from egress-ip4a.ess.de.barracuda.com ([18.184.203.227])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p54ih-00HPpa-4W
	for linux-phy@lists.infradead.org; Tue, 13 Dec 2022 12:49:16 +0000
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70]) by mx-outbound46-236.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Tue, 13 Dec 2022 12:49:08 +0000
Received: by mail-pj1-f70.google.com with SMTP id b6-20020a17090acc0600b0021a1a90a3e0so1914079pju.0
        for <linux-phy@lists.infradead.org>; Tue, 13 Dec 2022 04:49:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vLc9KUPPcfPmJRkVZ9SzdiZuUqpVIHZA1Sml1/BlenA=;
        b=XpKOWhRGTDSr5jAXwnG90EKsthoHokOx6CPQ4vtl35ZodA2iOXdTANmWpNYwm7miDe
         RuM9IQe3LuJxytqt2HaeI8F9sdsaagwSEXZVCcqN7e5a7p/JL1eja1LVUmmKt21eb+7a
         Et8YJHqJuSJ665HKlEQP9WXpglpQt8VPbMgsU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vLc9KUPPcfPmJRkVZ9SzdiZuUqpVIHZA1Sml1/BlenA=;
        b=GVtKIkhJQ9aMGeHhVCQxWtnBevbVlfAQx6LjJPGBK8+KqgLu33iU4F32/WKe7jCCPV
         DZprhc6sLddHmEO8FKFjLF48Etk6ae1QKizik8sS6XIC6Y3zfLAT1BSqM5cUpyOnwVWZ
         jRddnzLLb7ZUWoxnt69OsHi20ONfCOY4tp7E05WJSpGf6HBLpk1ZZ1+gpnnJZQHcVK7S
         IbRB4slz7IaOpf3V0AVzIkeseqDaakT3m4Jygpll/n/0tYDYDH5S2wOMY6Z1pl56bAWQ
         qU/i0uVGGp1BRb+HqnpiOTvzZrLbrW7xVsHx4dAlMYnXFA+cdfBD+d2pSOOn7XBwLKOZ
         LCQg==
X-Gm-Message-State: ANoB5pkgJnn8oCBOmP5LjWFL/dA2zWZSw0Get8+gMNsG+Jp0kIbm8GNh
	g8PNYAgR977uAidWVyxkkyBeKTzQDADWA4Dfjuu4pfMpAPLODE7FvxSvmf0Dir6W0KUU8f8IFkN
	Bj0K8raj3V6NMa4O9chC1ubRVgsKkXHGP2z1dQjZ7rOw3ggccR8oMCjSQAVfiww==
X-Received: by 2002:aa7:858a:0:b0:575:de28:b1f4 with SMTP id w10-20020aa7858a000000b00575de28b1f4mr17867560pfn.16.1670935747444;
        Tue, 13 Dec 2022 04:49:07 -0800 (PST)
X-Google-Smtp-Source: AA0mqf51MQfHwJ6t4Lvah3KwdrYDJWVHA2Kmc4GYcnXbMwC/zZ+eRo+9tBgoS8nc/AgolPiROKnrIA==
X-Received: by 2002:aa7:858a:0:b0:575:de28:b1f4 with SMTP id w10-20020aa7858a000000b00575de28b1f4mr17867540pfn.16.1670935747043;
        Tue, 13 Dec 2022 04:49:07 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id y15-20020aa7942f000000b0057622e8e82csm7605485pfo.191.2022.12.13.04.49.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 04:49:06 -0800 (PST)
From: Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To: Vinod Koul <vkoul@kernel.org>,
	Ravi Gunasekaran <r-gunasekaran@ti.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
	Roger Quadros <rogerq@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH 0/2] phy: ti: j721e-wiz: Add support to manage type-C swap on Lane2 and lane3
Date: Tue, 13 Dec 2022 18:18:52 +0530
Message-Id: <20221213124854.3779-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-BESS-ID: 1670935747-312012-5634-5399-1
X-BESS-VER: 2019.1_20221212.2317
X-BESS-Apparent-Source-IP: 209.85.216.70
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.244774 [from 
	cloudscan23-230.eu-central-1b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221213_044915_467567_49941722 
X-CRM114-Status: UNSURE (   8.86  )
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

Hi All,
This series of patch add support to enable lane2 and lane3 swap by
configuring the LN23 bit. Also, it's possible that the Type-C plug orientation
on the DIR line will be implemented through hardware design. In that
situation, there won't be an external GPIO line available, but the
driver still needs to address this since the DT won't use the
typec-gpio-dir property. Update code to handle if typec-gpio-dir property
is not specified in DT.

Sinthu Raja (2):
  phy: ti: j721e-wiz: Manage TypeC lane swap if typec-gpio-dir not
    specified
  phy: ti: j721e-wiz: Add support to enable LN23 Type-C swap

 drivers/phy/ti/phy-j721e-wiz.c | 90 ++++++++++++++++++++++++----------
 1 file changed, 65 insertions(+), 25 deletions(-)

-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

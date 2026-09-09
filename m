Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A7C9C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 15:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crSBL9AfMDpQYufIa5L6J6cOyTvrGqTBaD+EFTttAk8=; b=qUscD3u5RaasIo
	BUUpsWPlv43UF59w6Eq3c99fPGKCVGBd4axPpManKBjDcVS3w4NBlDT/PPZxIMvDazHjOmE3ARvyK
	eL1IaYzDovA1dYWMJjHQJqw4fyggfrvdkYr7qU2vO01VcnHg461UEPhkVip/mP1Ps0Sjt+PYpU9WU
	cua43psCriA/jMNpUghNIHUt9Vwr6Bxjik93vRMwiEW6VEtibZGpAOsAxDvIfURsxqJVjtu4HYIM/
	eSEJZLUN8G2QuBPIL5CrF785Ih9GE3c7U35thuarzCyyBs3Ye6aWV0Pwz6fvOY8I5JohL+Zo/iida
	bWr9RAiEO6ev5H7daQLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4KNk-0000000CCB4-2fDM;
	Wed, 09 Sep 2026 15:38:40 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4KNi-0000000CCAR-0JSY
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 15:38:39 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-49d036e0e99so25348055e9.1
        for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 08:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788968316; x=1789573116; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=8S3fBhkCPJSV3cRNUQtxcR+vjeMJsdADNC9uYmwfZuQ=;
        b=VKIOb7hShK1mcJVrWl3PZrQjBc4cBKUyVhjvS0pvF3BbCX7eS/aY7r0OYtLg+BeeQ9
         kP0uCCOHCc9a+fQesiLRmLX/Z1CYGhJdngNIGOUgzB26CZWQtDXVMsufPIws+6hb7PbE
         MhlTJcWfEg/0e5WNetTd0sg2ZrFbELEb1PPknMyjU3SDGMp9OgXM97q6Fqj7gsiGjJBz
         9LbSrDnKG1IDrWmRsgp8naHwOq/0n+0HhFdoFe/D758D/l8hcIXDZBdxCTbLxLEdf8rS
         BXNkcD9XQiSNB+Ra1FU2WigKZ5Bqrn3HcBm8DwWYv+1z9Cnru+5Cz+Rk/IcesAAOuZT7
         QJ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788968316; x=1789573116;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8S3fBhkCPJSV3cRNUQtxcR+vjeMJsdADNC9uYmwfZuQ=;
        b=SNKWnngOBZuE0KlH+lBeOcP2W6P3Fru5QO/dXf+FiiFnP7bNSkPmy2n4buSTEppVY4
         MQnUj5oXEvHE6xa+L6WnCISzh2YkDfYg1CdLv66WVrejJK7nvJSqhOaPsZ34bu+zCUNn
         pkPNtTyTyUsyME3i3E/I2seatF1HxpGtyAgJ/zPijZT4mD/EkSdugGXf7wJJ4Dw9dwu2
         BeUX0B8FUYH2ylA1LXdniShYkhYVE+H30k5SaWb3GYppDmu0uq/n2EKUBNcR3FIqlRHc
         UUOf6DSCdwRmeA5YxaeiQ4g0uG5CqzjkGC9dnQxs0a5616r5pWHWBS7G8WAT3TP4wg37
         qViw==
X-Gm-Message-State: AFuF++mNtgowZcVZLwowRu1KoA0ZhSFVl34r/ZwH93G5pHQ4eubAQfP1
	nRrKYanq/GURwZB6MMfoJsFmgKL/hI849hPue6XX3oYFfFxuqPnh094z
X-Gm-Gg: AYBFou3Ag693VoUy/D5qDHN3B3uGAX3dVruBHVijMz6JVc2XaQZMYLjnGd84RNkJ561
	fck+UeB38I9lEg4JVbKbTPZekd7lf96/ZYUKDH66i6SRKyMhVhyG4T1QdmWr4q8r675JjXNmfvH
	apyMudLosUfreERbQbGMXi1D6RRu4rKpPiSBV8LbmVTsXp27FyzeASvalU58hbCibiBaGDlkf9o
	3us6kfkA3oyTFTyCjrGi5Dl+C+Un9pM7BJgUFU0JoetsCkWwDc4O2pm6iiIcHNZ4A0K9ma+KlWH
	ZGLIWI3DSGD3RSxX2fRsNsHpsrU+ILGB6nLhZ+3Dmrtnk3NksO9oAcK/lmhjgBYyJMpXIbY6PZF
	TtzQ2jO+ADYx3e4jxZHQpWdyiWbLYxABtN9TxPg1bhoJLJKjsTgnvQ7195xIcVjH2ph4x/eiBTv
	9QNajbZ2AWt1+WlIJ8MC/x4+ev2KtBoRF/4drgaYBCqM1lBfQKUYgV5PD+24n1Mq19hUfxd8mnw
	VibALe+XBMp5Or9rxgon07iuiDHouI7fwNGJEhA2EJSRyJ21ViCoA==
X-Received: by 2002:a05:600c:4505:b0:49c:dca2:ac47 with SMTP id 5b1f17b1804b1-49cf7fe607cmr338568715e9.2.1788968315686;
        Wed, 09 Sep 2026 08:38:35 -0700 (PDT)
Received: from localhost.localdomain (mob-31-26-103-238.net.vodafone.it. [31.26.103.238])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-485883c81c3sm45437055f8f.26.2026.09.09.08.38.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 08:38:34 -0700 (PDT)
From: Oleg Keri <okerixx@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Michael Scott <mike.scott@oss.qualcomm.com>
Subject: Re: [PATCH 1/2] phy: qcom: qmp-combo: do not decrement init_count on a forced init failure
Date: Wed,  9 Sep 2026 17:38:25 +0200
Message-ID: <178896830509.10915.10301668870227152275@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260909152846.3C3931F00A3A@smtp.kernel.org>
References: <20260909152846.3C3931F00A3A@smtp.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_083838_126862_7ABE4156 
X-CRM114-Status: GOOD (  14.65  )
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

You are right, and this patch should be dropped.  Please do not apply it.

The diagnosis in the commit message holds - a forced qmp_combo_com_init()
never takes the reference, because && short-circuits on !force, so the
unconditional decrement in the error path drops one that was never taken.
The remedy does not.

Tracing a consumer that holds phy_init(), so init_count is 1 and the block
is up, through a typec callback that does com_exit(force) then a com_init(force)
which fails:

  before this patch   init_count 0, hardware down.
                      a later com_exit(false) does --init_count -> -1, which
                      is non-zero, so it returns early: no double disable,
                      but the reference is lost and the count stays negative.

  with this patch     init_count 1, hardware down.
                      a later com_exit(false) does --init_count -> 0 and
                      proceeds to the full teardown, so
                      clk_disable_unprepare(), clk_bulk_disable_unprepare()
                      and regulator_bulk_disable() all run against resources
                      the error path already released.

So it swaps a silently negative counter for a real unbalanced disable, which
is worse than what it replaces.  Exactly what you asked.

The underlying problem is that init_count is being used for two different
things - how many consumers hold a reference, and whether the common block
is currently powered - and after a failed forced re-init those two diverge.
No adjustment to the single counter can express that, so I would rather send
nothing here than send another half fix.  I will come back to it with the
hardware state tracked separately, once I can convince myself the teardown
paths are balanced in every case.

Patch 2/2 does not touch the counter at all - it only stops both callbacks
carrying on to write PHY registers after the bringup has already failed and
left the clocks disabled - so it stands on its own and can still be applied.

The runtime PM patch it was a follow-up to is likewise independent:
https://lore.kernel.org/all/20260909140345.4239-1-okerixx@gmail.com/

pw-bot: changes-requested

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

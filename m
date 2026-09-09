Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B9C6C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 15:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZBwiUa72wqeYgoPV+dqkhzQDcOGlTMfrFitPIN6FsDE=; b=zg25g60z+qHe50
	sS2difrpNprhKzSa2EiefrhMLuhs4pX4la61IXQcquK+LXtwfqDk1PtBMgS+6XTUp9xmxGPmJ1T1e
	25CexRAg638NuWJOLjboH8Hwm93XxvzVL2MUXEfGrK8qahXYX8YuHsdMv13dEo8Zs+sGz1n+nGGG3
	cgzPx+TwyVXCULmwDFys/gPAahEYdEEcnooDpCxJhxXwCNpXIv39xT5wICy553mFeYbSGO9Spzh2T
	dlKqAe6t8xkyq5CtVdshj4ZHKLbhv9WgwthAxhNFGL9opRjfrf/6Wd9pXqMfuv6nBTzaA1UuFlWKt
	AOxesYk43lQ2/SCYNlvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4K1F-0000000C6wz-3sjS;
	Wed, 09 Sep 2026 15:15:25 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4K1C-0000000C6vU-1eR2
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 15:15:24 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-484392e3d33so4296203f8f.2
        for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 08:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788966920; x=1789571720; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=q7rwmF0hySld2HyOILzYsqpEuhwCI2TFr3jDyI8CRI4=;
        b=LieD2MIq7Dfa03GjarTq1yBoaNCI/SjuqJNzUFXCNczHxzgUBcVUEsSvvmwwv2UzRt
         lBaQ5nAhqBqZ4v0pEQyqweyGJiL8lOUbeESOtvHSbxRwmKc5pHqpVzHSegLtsH1gpm+/
         Ur8vx8ZF7skKLkZm8xswiTdvHQft4y6OG4rPmlmsqtAQ9GDYM7UXCmECNytDBZndahul
         Y5abq/jK+ehh1ka7UCcafj+1KGTUyJN+6YHw/aAHM/zlNi4yaIqtTXONF6eNYogFs7CN
         vWbGqbRwig+iQhGdPmmHPRBXNwhJysM/QXJDbhQ0J7aGxBKcb6cvNy6a/+W+Kt3xF0na
         D8RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788966920; x=1789571720;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=q7rwmF0hySld2HyOILzYsqpEuhwCI2TFr3jDyI8CRI4=;
        b=hxVrS2tElvu6vc69cTJTuDm3h5EIGVfkoMHLbWoQNbVA7DFzvdY7yzHyVce6OLmJGA
         Lz320UJKm8GSQ8en5vD/7cqUb+0/+Iw3/s0F5nsutZ0FF8sGOFLKWXOzook10Q+1pj3p
         x07Dln8CQRvJEO4MHiCM7280taK1A3HUD3vYCLunIxRP+kaG5RNaLXtGaHA/LSTmQM6w
         sYzDglZ0pjlifJ9e/QIp7eVv3EGlsrGXVvuwQEtriMcuIz0REGSnzGtUG8HC7VMAF6Du
         PxzrrNOT7A9t1lYbgD8FWYxSQFiyxGMW+gCSVmk+wwm0yxL3wHhMkZlFv7WSy8z5q2gA
         vf7Q==
X-Gm-Message-State: AFuF++kBxfdl8UY0M8XDftueYpIuHYv+NXdmkgd8UAhriuKkmeN/dBt7
	I2TSkKYjeKlG8GePfhfX0Zgfl8lrIz4XLahY0HUw/JIHYBIueVXDhz7X
X-Gm-Gg: AYBFou30kHH6HBkvvnoQ+NK19IXt+TTsp/X9VjSpooxTyKPjaG2oGyH370zvj3W/Y4+
	aMWKn8r7uxyArgYxBv7o7CZdelkguII3BjBfTpWWc0808KEP6B2AR32oGL+N7p67hMPx45lXjsZ
	KaxqqHZDbQNHBF3o8mXVrgibWqZlfjF8ZbaOJvv7yuiFkM1yRo97dD12/YqbiZWcTzYO2zvCRO+
	fYWesooAprhsNYKXwG+9dwQoJecU7GMGT5spm+389cNAntk8LwBvyy6wUbVvDlRAwuJC0v/mgP3
	ro8HJyeZhpbIIFaTZRBNzb9kmgSDqLyl0jmevivmeHRD6K1Gbr6FhT5wl1sk/g2xWY+VUbaUkoB
	WguCJeec0q22Uxv1oUuBIUCr+EoVASrlA7QNoqInLllXFzncvZwcySyr+0fkecUC7iPhdPOm0M7
	8DFAuW4kFVjDx8BjyEPYPh5riUmr6/uVJaHdD47J2iBR5C4mixK/09a9KGcqssSYYu1wq1NXlAB
	MZ09d2mo+A145Oq0NU3WqkXaWOPDdW1hiDZ4h/IyfsA
X-Received: by 2002:a05:6000:2584:b0:482:b813:8315 with SMTP id ffacd0b85a97d-485872ac3b1mr40255536f8f.21.1788966920068;
        Wed, 09 Sep 2026 08:15:20 -0700 (PDT)
Received: from localhost.localdomain (mob-31-26-103-238.net.vodafone.it. [31.26.103.238])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-48594172546sm36325061f8f.15.2026.09.09.08.15.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 08:15:19 -0700 (PDT)
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
Subject: Re: [PATCH] phy: qcom: qmp-combo: hold a runtime PM reference in the typec callbacks
Date: Wed,  9 Sep 2026 17:15:08 +0200
Message-ID: <178896690892.10327.10619929289869883612@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260909141841.532191F00A3F@smtp.kernel.org>
References: <20260909141841.532191F00A3F@smtp.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_081522_443911_0C180857 
X-CRM114-Status: GOOD (  12.86  )
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

Both findings are real, and I have posted a follow-up series for them:

  [PATCH 0/2] phy: qcom: qmp-combo: fix forced com_init() error handling

To answer the two questions directly.

Yes, the error path has to skip the decrement when force is set.  The
reference is only taken in

	if (!force && qmp->init_count++)
		return 0;

and && short-circuits on !force, so with force set init_count++ is never
evaluated, while err_decrement_count decrements unconditionally.  A forced
init that fails therefore drops a reference it never took.  init_count is a
plain int, so it goes negative rather than wrapping, and the damage lasts
for the rest of the boot: qmp_combo_com_exit() sees a non-zero value in

	if (!force && --qmp->init_count)
		return 0;

and returns early every time, so the clocks, resets and regulators are
never released, while the runtime PM callbacks only bail on exactly zero
and keep touching hardware that may already be off.

And yes, on arm64 a read or write to a peripheral whose clock is gated is
not a benign no-op - it typically raises an imprecise external abort, which
arrives as an SError.  Whether that reaches the kernel or is taken by
firmware is platform dependent; either way it is not something to walk into
after an init failure has already unwound the clocks.

Both are pre-existing, as you say, and neither depends on the patch you are
reviewing - that one only stops the teardown re-entering the driver's own
runtime suspend callback.  The three are independent and can be applied in
any order.

For the record, the two problems are reached only when
qmp_combo_com_init() itself fails, so I have not been able to trigger them
deliberately; they are found by inspection.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

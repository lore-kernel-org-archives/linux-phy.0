Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ABB1CCFA13
	for <linux-phy@archiver.kernel.org>; Thu, 30 Apr 2026 10:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vBQmZfGPQcxmXwdpHC2yCvYSyosjSigPQ4tqz776ufw=; b=vvih+UxUxJFPSa
	kNy5ogIOVlMKiRYyTCKYxTvmN/VHwj0FjI5NMFk7E6vvVxtVb4Lue5cwZiTatw6fSQBDY8v8L4GNO
	jeUVbc5+oM918XQNhtT2dWAAYU9Fc/RVjBcy7hs847DimtAuCZP9RizhDfIHLWHfmidoR96/Wj5TZ
	SPcMAYbVIRPLUvqHMz4ia728cBu3flfggu07LrRQKPcXJx/Y8qXrdfG6qlUbEYVObq8xl4ZkVwEm8
	8pLiZWXQTkgEyaUpqZ5wmkwfhqQqj/dMQwQlvzJrwiCPo0FvmtLRn3FVpUw5NosWnYAp3VmzO1NFk
	J3LvCfMPdl5ghMwI/o/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIOje-00000005Cuv-0juT;
	Thu, 30 Apr 2026 10:35:10 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIOjb-00000005Ctu-0GlV
	for linux-phy@lists.infradead.org;
	Thu, 30 Apr 2026 10:35:08 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-43d77f60944so540860f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 03:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1777545304; x=1778150104; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9MMDcbCnN6B5xSu+JFTFRjKxTGCN7slC3w+efbXWDzs=;
        b=gRFuTIh7ZXyAdbgEZv4rpcIUq1pJKYYiARj7SJsTQ8EgBGZxmw0rTg7toSGvUxiM/A
         DImiEe8TIj2IqCdveJrAefDR0DMVD6QwmXSFTB21i5RW7BlE/MvnVKPZOJhuL4a41UOk
         Ck4uP92Ne5dto0hAqqosJHyCpya0HrfM0ohbSLwnVouiU8soE+FKRo5YW9nzWWjjAn6P
         B9prdgmywQPH14Bf1Ahwo7Y3KfHnYOJKSBsr4ASAaYkd00WuMc5vYH9rMHhl7ONI4niP
         a0Jcfb+kHAl23aXsZMG+nvNEcUq1r9Z5YfGywuG/8iELuvQrPW2rhPNicsoY6U3QDfGa
         8QWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777545304; x=1778150104;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9MMDcbCnN6B5xSu+JFTFRjKxTGCN7slC3w+efbXWDzs=;
        b=LW45YybKQtq1iATrxvZRR1kLrJji5m39ob6xEMZZzH0/kyNfLeJfMAx3Ys3pmllktS
         H1+gtVRi86JOith4a47VHmpDdYafdS4Z2hPo355nyid9grmgz7GbYzKQxEgMMGzFeI6h
         3wRH/Orh7a5uv9rnhn00FoSeYboAyuPU+eEJnnT8F7BAOfMwd3SZAkQd2WULsxm99Jqe
         89FAKZDECg1HssElM5a3hOH3lJ3sU/bb4qVRa/EbUjd9le1AW/0ud++SXZNQPgvVR8AQ
         L/O/JxQPuEAdg4RuhIwjeyo/8XBCOGguaEKcOFMwjnOp4jID2QZEazlXcDpV06v+D2qK
         Jymw==
X-Forwarded-Encrypted: i=1; AFNElJ9R1C4FlAKRQO9MIjM18yrzYXdlJCPG6rxb1ohTb+24s/N1POWR0Puz4eAptiF+othfjEh/p4EcIio=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXLq4Pydjg1R6inL2TRqUGYdFgRSze2OD6kVuWAQ56RkLkCBTn
	PHLDjPUqYq/PoUzAMbDGXvlXdsXtMfvYS2EIPuPU+rZf6StKLWl+6YkxFAIomf3ysJIGXmhk/Qf
	TJSd/n6k=
X-Gm-Gg: AeBDietGT0TnZ2LZu7oI/QaRxXpUoI5Y/wFs8PsovDU9lkczRbklwc3KkVwefutc6RS
	9Z7dJUQSmWdnIkveAL8tIy5cbT4WR2c0LgQ3SjZUAIM+RzSdKPZU4SRX82PlbSjgnBAN0+xmsVg
	OVjd28j3SKsZsRejKRsjJ73ANlNMbd9Jdtfx3e/HTn4D51NrS0UflpRLNwemneTpQVjFl65gHdS
	pkfz4OZaEAF62Z/HNdppBz8e4hYmPOQaUYFXBfuY0UuwRU7HmWr61s0P6SrBq5u2a8ibFnk+4Qb
	4ZNWeHwr8kvuRRV4j1LuC7EidzGjHBPrvllOxWqBlAhpImXmr+Pd3fzdlVbWNkXRTh2FnoIloB6
	B8GOswE1UuqzNeKPQ3AXCFrbjPBTDOPe5Jr4SpmA0tkzl5QhFMFDSMrPG5C+994vf9xQv4C/1hq
	Dcduk/kE9DdNkMV8c5o3oABMprQDG0g+mY4I1q
X-Received: by 2002:a05:6000:2c11:b0:43d:d037:d59c with SMTP id ffacd0b85a97d-4493d02b4c7mr3864269f8f.16.1777545304567;
        Thu, 30 Apr 2026 03:35:04 -0700 (PDT)
Received: from linux ([2a00:6d43:105:c401:e307:1a37:2e76:ce91])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-447b72176fesm11515172f8f.17.2026.04.30.03.35.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Apr 2026 03:35:04 -0700 (PDT)
From: Marco Crivellari <marco.crivellari@suse.com>
To: linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: Tejun Heo <tj@kernel.org>,
	Lai Jiangshan <jiangshanlai@gmail.com>,
	Frederic Weisbecker <frederic@kernel.org>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	Marco Crivellari <marco.crivellari@suse.com>,
	Michal Hocko <mhocko@suse.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [RFC PATCH] phy: ti: tusb1210: Move long delayed work on system_dfl_long_wq
Date: Thu, 30 Apr 2026 12:34:55 +0200
Message-ID: <20260430103455.185238-1-marco.crivellari@suse.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_033507_146196_6CAB762D 
X-CRM114-Status: GOOD (  13.55  )
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

Currently the code enqueue work items using {queue|mod}_delayed_work(),
using system_long_wq. This workqueue should be used when long works are
expected, but it is a per-cpu workqueue.

This is important because queue_delayed_work() queue the work using:

   queue_delayed_work_on(WORK_CPU_UNBOUND, ...);

Note that WORK_CPU_UNBOUND = NR_CPUS.

This would end up calling __queue_delayed_work() that does:

    if (housekeeping_enabled(HK_TYPE_TIMER)) {
    //      [....]
    } else {
            if (likely(cpu == WORK_CPU_UNBOUND))
                    add_timer_global(timer);
            else
                    add_timer_on(timer, cpu);
    }

So when cpu == WORK_CPU_UNBOUND the timer is global and is
not using a specific CPU. Later, when __queue_work() is called:

    if (req_cpu == WORK_CPU_UNBOUND) {
            if (wq->flags & WQ_UNBOUND)
                    cpu = wq_select_unbound_cpu(raw_smp_processor_id());
            else
                    cpu = raw_smp_processor_id();
    }

Because the wq is not unbound, it takes the CPU where the timer
fired and enqueue the work on that CPU.
The consequence of all of this is that the work can run anywhere,
depending on where the timer fired.

Recently, a new unbound workqueue specific for long running work has
been added:

    c116737e972e ("workqueue: Add system_dfl_long_wq for long unbound works")

So change system_long_wq with system_dfl_long_wq so that the work may
benefit from scheduler task placement.

Signed-off-by: Marco Crivellari <marco.crivellari@suse.com>
---
 drivers/phy/ti/phy-tusb1210.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/ti/phy-tusb1210.c b/drivers/phy/ti/phy-tusb1210.c
index c3ae9d7948d7..9956921c094b 100644
--- a/drivers/phy/ti/phy-tusb1210.c
+++ b/drivers/phy/ti/phy-tusb1210.c
@@ -197,7 +197,7 @@ static void tusb1210_chg_det_set_state(struct tusb1210 *tusb,
 			tusb1210_chg_det_states[new_state], delay_ms);
 
 	tusb->chg_det_state = new_state;
-	mod_delayed_work(system_long_wq, &tusb->chg_det_work,
+	mod_delayed_work(system_dfl_long_wq, &tusb->chg_det_work,
 			 msecs_to_jiffies(delay_ms));
 }
 
@@ -380,7 +380,7 @@ static int tusb1210_psy_notifier(struct notifier_block *nb,
 	struct power_supply *psy = ptr;
 
 	if (psy != tusb->psy && psy->desc->type == POWER_SUPPLY_TYPE_USB)
-		queue_delayed_work(system_long_wq, &tusb->chg_det_work, 0);
+		queue_delayed_work(system_dfl_long_wq, &tusb->chg_det_work, 0);
 
 	return NOTIFY_OK;
 }
@@ -458,7 +458,7 @@ static void tusb1210_probe_charger_detect(struct tusb1210 *tusb)
 	 */
 	tusb->chg_det_state = TUSB1210_CHG_DET_DISCONNECTED;
 	INIT_DELAYED_WORK(&tusb->chg_det_work, tusb1210_chg_det_work);
-	queue_delayed_work(system_long_wq, &tusb->chg_det_work, 2 * HZ);
+	queue_delayed_work(system_dfl_long_wq, &tusb->chg_det_work, 2 * HZ);
 
 	tusb->psy_nb.notifier_call = tusb1210_psy_notifier;
 	power_supply_reg_notifier(&tusb->psy_nb);
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

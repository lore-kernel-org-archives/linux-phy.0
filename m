Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EF46C10F15
	for <linux-phy@archiver.kernel.org>; Fri, 26 Apr 2024 10:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tt8BT8URfvgs3s5ctTw4/eFoFcamu5FY9Ll1s04YRys=; b=SzrYL0V+zTam8O
	1kp0xpOlZDPMmU4rXvyDaovf7eHZOiiUgvsfYpN5/N5yHjEuvdEHWCdG9sLO/RbNQTtAWTC5rGp3F
	d55bkVOCDNgmSvhi3oRuGeQ83YDN3KlwTgztm9I1H0Quh3dajQBvTgZVwpvngUd4cnbJOGKk7UUw/
	cJstWi3pkTkyrMLePSJNAY/B+ctrtSDF4btOKOewXHjrayGkNid9rrGnD4WXL6ByKQRa/+JPOrc4s
	bJQ0jpxyaLHL7rkEKF7SArhXYTvPHkj0qFXGEL6O0JMykTOcSlOItIYq27odoRxkZSWVvJj3CxDYU
	28TV1d34CZtMiLIn7YHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0J1P-0000000CBHJ-46mf;
	Fri, 26 Apr 2024 10:41:39 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0J1L-0000000CBFe-1baT
	for linux-phy@lists.infradead.org;
	Fri, 26 Apr 2024 10:41:37 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-41ba1ba55e9so1663875e9.3
        for <linux-phy@lists.infradead.org>; Fri, 26 Apr 2024 03:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714128093; x=1714732893; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WV6OPanVmYA5r5EmkQ7/rYqaeYoVyLASpzgyuZ+VcXw=;
        b=M/s21SjSAVhz3TgeqcDRTPfq/MeyGK58CL6FCzfqoQGI6Q9kQr8RPtqA6Mr41RP7fe
         hJorgq05IdYQED/k8pXLc/5cNJj9FjGklU8JaOJdcAdiE9rh2HvG/ChhhgHgsuKixzpu
         qRXt7au83nYAMgC5RtblBrN13x3XlssQ/qxNckqTzJ6Ny15CiuLCDU1HUiXKFHuQ977R
         hPtYEmiEi28zWsIA5fasWtEhTYQXxIUJPjCKh/868mdoQDq3CbdnkH0GXcMYBOz/9p8b
         dQb3yh2Z+iNfj3tENggjYvnXeIpRYHCrK1IHow3eTdTrZJKPPi5KpQU/dvmSKL/MWc+p
         nZHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714128093; x=1714732893;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WV6OPanVmYA5r5EmkQ7/rYqaeYoVyLASpzgyuZ+VcXw=;
        b=ARYxuCED/fnbgajCYER2scckpSEBQFSf4tYBcUp9gHMUpG8SWd4tgYwMXnMZv4mqMd
         z4JJXIZDIR1uGrTzrjwjfYgYdDzN6ZnVnPVH+c04XTpQwFPE6kZfb6ssuESGRghXlwEi
         NcP6V7HFuabFn54AToOR8jRcu4wbSiEZIrYQcClnRFt8AVKn86DBgNApG6mYqJ9H/v7o
         +2gLyfWOFZ8sqKRBusJNtyrEoXwKvL46MfZ7mM5KjqwTYiSTt08akBzwigleaYfAg2wH
         4D01rxuy+8pvptITRygta7Zk+ndo9jI+oISk1m/w8LUVa8vhHwJVZWt6h2ZbcDW3JoRs
         Oa7w==
X-Gm-Message-State: AOJu0YzEZ5iD+a/SfTTKip++sWkTXwUqrFjomnFmoBPodxDk26JR4g80
	F/vNOAN+AB7wgMFU4msTZhzhYGaVCmzlTcDLg+5SFBp1STwGqRTH72PvAOX0p5E=
X-Google-Smtp-Source: AGHT+IH8wK3JXHy1LCmqDycOo9ehbJoXmdU0TA1d/vl29W7tPUPtsbjGsAEAODalDRLZ2sUl+1cM1Q==
X-Received: by 2002:a05:600c:474a:b0:419:f241:632f with SMTP id w10-20020a05600c474a00b00419f241632fmr1706553wmo.31.1714128093024;
        Fri, 26 Apr 2024 03:41:33 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:63cc:9bae:f542:50e4])
        by smtp.gmail.com with ESMTPSA id o14-20020a05600c510e00b00419f572671dsm22035335wms.20.2024.04.26.03.41.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 03:41:32 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: vkoul@kernel.org,
	kishon@kernel.org,
	krzysztof.kozlowski@linaro.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	kernel-team@android.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH RESEND 0/2] phy-samsung-ufs fixes
Date: Fri, 26 Apr 2024 11:41:27 +0100
Message-ID: <20240426104129.2211949-1-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240426_034135_513393_97B128E8 
X-CRM114-Status: UNSURE (   8.61  )
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

Hi Vinod,

Two minor fixes for the phy-samsung-ufs driver. These were sent previously
as part of the v2 of the UFS series [1], but I'm re-sending after
splitting the patches out into separate series (clocks, phy, UFS, dts), to
hopefully make things clearer and easier for the relevant maintainers.

These patches were based on feedback received from Andre and Dan on the ML
after the gs101 phy patches were queued [2].

regards,

Peter.

[1] https://lore.kernel.org/linux-kernel/20240424195144.GA360683-robh@kernel.org/T/#m83601bf4230be17669080b8c2ee8b418413ada4e

[2] https://lore.kernel.org/linux-clk/20240404122559.898930-1-peter.griffin@linaro.org/

Peter Griffin (2):
  phy: samsung-ufs: ufs: remove superfluous mfd/syscon.h header
  phy: samsung-ufs: ufs: exit on first reported error

 drivers/phy/samsung/phy-samsung-ufs.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

-- 
2.44.0.769.g3c40516874-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

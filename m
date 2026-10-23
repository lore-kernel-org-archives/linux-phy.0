Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BB1E606A328
	for <linux-phy@archiver.kernel.org>; Fri, 23 Oct 2026 12:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uUPk51zH;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=UECHjTD5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=YEG2KyoosAQSwwy0ByJmC4KSobaLcoCRwtwKEk4sEXQ=; b=uUPk51zH9l7vWXnP7rGKQTNcpJ
	daw0yMA4UM2al0G/h+uSB21fplB8K27VxFpfbQw7svDE/AWzpwaO6CuVqv/n6hQTjNfJFdXqB4lRW
	ipEUpNPOJJNQARiZQKivmMxxKj1ucq9te6HbZTnEpwo/Jgd7BpSBDkWVG1k9HyuEdK53fERQANyfm
	rGRgZet/LIsv1loR3Zb8MsuWrw8GIGBHcrKaOF8SQUEs826Jboow+MzqCHctqKTgFtzb2VHrOGlAd
	X1IHxDH76DCrHdwUdwZliTwcaos8MgyngdE/vh/z27x8/1aqKcvQgJTAueyTgTIMxcf49PbQnbvbJ
	LYSkndtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKEVI-0000000GIjI-0sT5;
	Fri, 23 Oct 2026 12:36:12 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKEVD-0000000GIib-1ydT
	for linux-phy@lists.infradead.org;
	Fri, 23 Oct 2026 12:36:10 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-cc4ca696de6so465628a12.2
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 05:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792758966; x=1793363766; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EmfKpji+90isn+q04JehTBPzQ9AQUDyGYMHQgJ4/n9Y=;
        b=UECHjTD5uBZnjmlx+DcKNN3I25qxpRaEVThKIFY61hu0Xcls9+fXwpP5l7B3IhgUYu
         XEXVDeOzmP3X0ymikeWF6W3QC2/4urSzLP8i2QkPTP33mZYjhXarDMk3Fjf3LamEKrnq
         H1m8UPHbi9sht9/whOhxbUFNqAQmabCvgN7MBBqB3eHO96DBLJbjHJBBPgBBzIPb2IK3
         NxmOX5vJDygP+a95uHxkFqvEw1EO48RsVwfSwzBbBkDosfuJKrJN36Hznn+LKq1QA+1M
         ZNXUfAtdnEYs4doG1EJE9OXLnzt6Ivd3Jgx4wHwrBy6ZjhJCwzGWwLOE4XevstneJdRp
         Ciiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792758966; x=1793363766;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=EmfKpji+90isn+q04JehTBPzQ9AQUDyGYMHQgJ4/n9Y=;
        b=lL0tMykfcPu2nlsWZiUrCMnm2U6+C7qhNvfixirKMJnlBmmyEGpyHrlfmkPnKXrUf7
         WPOG/5tpMD1qg77On6a8Vzam2b5Gfr1dbS4494JvB4NoTCztdDvkpm4zNGiWK4qUCYai
         Gr3kDf9Oe0Y+XXcQKBuFdNyBFda9ZmpsZNCZpvrnsPZJh+waijUGVmPAaiNQTH2yckgk
         KWsd60h0PtyQvz4XRnZfOOL6poYwAw+vDP2yN4ZaJb4AgYkdMCFGbANYpUlYiC3VhWVI
         +mcFB743O5m4w3fbeNcTfUDKfvhfdAyvy9nsGLpIti0kkQENEiBJFvGdC8qpBsBq+zkq
         exEg==
X-Forwarded-Encrypted: i=1; AKwUvBz8vi6nqtUJxcH65+P9FC96Fl959t6+LIGjOaETboV+wNufs3gfdfv4tez/q6dDVJ3LXDKxEiFp8E8=@lists.infradead.org
X-Gm-Message-State: AFq9FYKb9psNyDAgzgPWu1Qnp2q+lP0xDEL39lIO4QBrh1n3ala+6qxF
	7mBEuX6ff+9LQPBDoDwW/N8Yh8HIAFsgPUI0wNTHSy4SHBjhd3zjBsz+
X-Gm-Gg: AYBFou3bLVbSZdOGTIX0E8zkXIUwFLkJo5sxWUAmA9xaNNtFEQsR55QDqqZ9uSh8FeC
	GyPpCOfkUZFZAv7v+dJJSrY22x5Eloq4GsMfDvJzosCy7MlZ81FnELMtNDuwELg9sEagFqvDTle
	Bbv5OtuFOaxvYib0/GSo4c7H4S6sVTJA5akBYgECSjkWQPkG0qSWVcT8/Y6Et/eHjxeYQV2+I12
	DziZk/lJBTQ3rQHSHKT21Tw049d054pXXujU+P6CPghAez42JySl4EVQxarFlr8lxtLuHz1Iy56
	ak5XpF3LQq83jmCr3hHuMbzyuc4NEwOyixof6VY86GUeb0xbEWLYTQg7hhk9P7VnUOBexgX2Ins
	73qQSrudAxtgNGK3dDT/LlmILB4GhbrUUeF1zMwPMYXLpg5jSgGNlY5YKIxZxkjk9wnNWTOD/0y
	eUV1eHhKK97h81wZMtaYJEor+OM1nrm00gi/VbuNQKf3ILMirT/f3mCQsfjL/7g+8tEB7nCMSH/
	1VSQmSc+hHChZ76cfGv5jIYQ2FFfixfEd/HSv0zQLln1TmwEZ30g7X8OPvtJ2ZnNdSbXvjq
X-Received: by 2002:a05:6300:392:b0:3e1:6acc:5b08 with SMTP id adf61e73a8af0-3e37676d16emr1403665637.63.1792758966458;
        Fri, 23 Oct 2026 05:36:06 -0700 (PDT)
Received: from DESKTOP-NM9EKIA ([125.134.240.130])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cd8ba8a5342sm684757a12.17.2026.10.23.05.36.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 05:36:05 -0700 (PDT)
From: Joonhoe Kim <26rote@gmail.com>
To: sashiko-reviews@lists.linux.dev
Cc: sashiko-bot@kernel.org,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	olteanv@gmail.com,
	mani@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	dmitry.baryshkov@oss.qualcomm.com,
	val@packett.cool,
	wesley.cheng@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: qmp-combo: Leave the USB PCS alone in DP-only mode
Date: Fri, 23 Oct 2026 21:36:00 +0900
Message-ID: <20261023123601.374-1-26rote@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.5
In-Reply-To: <sashiko-outbox-181846@kernel.org>
References: <20261022165219.1368-1-26rote@gmail.com> <sashiko-outbox-181846@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_053608_082242_61EE8B5D 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, 22 Oct 2026 17:07:04 +0000, Sashiko AI review wrote:
> - [High] phy: qcom: qmp-combo: qmp_combo_typec_switch_set() powers USB in DP-only mode
[...]
> Would this overwrite the serdes, lane, and PCS tables, time out waiting
> for PHYSTATUS, and call clk_disable_unprepare(qmp->pipe_clk) on the
> error path while qmp->init_count remains non-zero?
[...]
> Should both qmp_combo_typec_switch_set() and the power-off path in
> qmp_combo_reconfigure_phy() also skip the USB PCS when qmp->qmpphy_mode is
> QMPPHY_MODE_DP_ONLY?

Yes. Since 89563a152973 ("phy: qualcomm: qmp-combo: Add preliminary
USB4 support") the mux keeps usb_init_count when it enters DP-only
mode, so an orientation change in that mode already re-ran the USB
PCS power-on over the DisplayPort configuration before this patch. v2
skips the USB PCS in qmp_combo_typec_switch_set() as well.

The power-off in qmp_combo_reconfigure_phy() when leaving DP-only mode
only asserts SW_RESET, clears the start bits and puts the PCS into
power-down, which it already is in DP-only mode, so it is harmless, but
v2 skips it too for consistency.

The pipe_clk handling on the error path of qmp_combo_usb_power_on() is
a separate issue: pipe_clk is enabled in qmp_combo_com_init() and
disabled in qmp_combo_com_exit(), so disabling it on a PHYSTATUS
timeout leaves it unbalanced whatever the mode. This patch does not
change that.

v2: https://lore.kernel.org/all/20261023123512.1912-1-26rote@gmail.com/

Thanks,
Joonhoe Kim

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCBDBC982D0
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 18:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ljwUMpHaZ49kHen3Sr1XIOzzlNMzVnQgaOgMuZGoH8c=; b=BCf79lS8V1iCjp
	QcedKoPw5rgWOnkg3GvMyQkqCxho4mAgtkR2rImP/5GZK10uq/GKw2CFLtcfjA7PZ59D8nAyyWoZN
	/TB671/cGBQJoScLiO9WQ6YCdA/7CfCQ766holcqD/omxnpuPZDQI9lt9wUHPzlO/XlehDPPsa8rW
	D/14D4IQ5Zrl0YJSyPKkkWteVWIXAODRCia3zRevNSlljdRqSi48KqfM5hu3Gc44wXNBaFhYB0ynJ
	KwEae4yHup1Ls607af/G4vMZgjV9VQOYyFiJO5p1HNSKuviCE3Jhmn+Z5t4B2jV/D2xSWyHCaWqoh
	kRxz15tVFCAaagdc4K3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Gq9-0000000CE5l-0xZp;
	Thu, 17 Sep 2026 18:28:09 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Gq6-0000000CE4v-1xKv
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 18:28:07 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49ccfd61ecaso11243515e9.3
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 11:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789669684; x=1790274484; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=wXQrE0cSC2j1UcC86SeRkMHcu0uW3qI+LeREPCrSbF4=;
        b=pHzAlCaXbrq4O3lhqICgdB9hjWxpLxArKlLYXpX9cKFncAn4Cl0+yK3NQhfljxxWd4
         246JF2whtuVjogFGJdAl4nnty+OEumg2wBu4FWbaYdn0S5PINSJb8I3SwEQwTT8HGHKI
         avQX69hVb/dSnPDzHf02Zo3qUuTsM1UQjS4d/aFYGOMsfX5zAynVM/ZWtIfbS3PEXkSA
         ynJriKwvQQ2m3iHPq0IL7GXkqQM4ucrruTEpGL3Qbkv75zRVp/fbQOqoEQGmzQzpK2tE
         qJx+XC8BBWBsm8ALH3RiinMyCgU7WWQfhqPMDRiuNI7J+AyDqVL07yb8c1GZ9HLf5j9k
         6Zxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789669684; x=1790274484;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wXQrE0cSC2j1UcC86SeRkMHcu0uW3qI+LeREPCrSbF4=;
        b=CqCAarwZ6kyLkXNbLaBf+macP79lwzdMT3RoB6QXKo3bPfgld3sQ480IwUGjWtpEIp
         +zGIzmtIiS1Ns2qWzx/I24IPtCZcSN/wwejfx95C9cr5wGPQgdlXZw4t5lRAw7wlyH8U
         WwyIf8H6p1UORiTBqMEj152Z7WSB/piprCkPiCi99d3urtiCdkxRDM3nw4Kb+qsh8De+
         /clvoebe3H72YFLlsuvUMO7es7aiZCstR3LT2wc+vx0K3dcjeDOppYF9ZSo5GNP3dRc1
         yA4fJIb/pZ9YKcaBhF5xDw6HhmLsz3iDZvHdUGFyzr8cZB6jKo+XvmY9dhHMxIlF8K0m
         hbjA==
X-Forwarded-Encrypted: i=1; AKwUvByY+2J5RgV4FgoBG4qX+xqER7eESf98eQV7hNjh+dblNTGxOSf3zfDDeqeMDqLthA/k1H6TAidrOv8=@lists.infradead.org
X-Gm-Message-State: AFuF++lxQDznS3D6WeiTJU9tbaMtKTc3DEklB7tO7WzbetkeR5rFUhh2
	jzKFptuCn0L4TiOy6pXX/zn5o0RQm9JtD6N/NPS41e9/szbrkdwShXGo
X-Gm-Gg: AYBFou28DfQM0cxemU32UoWkgMRYwFADqcR0PdPpXK6iANQqy3POWip6VcUSlqLJUjk
	eHjheKjoBFnqEm8qNwOmdOm0BD/Fo115c/gU9uOG+4Sm7olaReoVr+OHzvSdV7L6Pxs1bMu5VKC
	nCwMjP8me3Q9Fo9OnH/hsJF4XBlRQH22kvzkILqrlqAxnwvbUwycrYCDw8bu0B/lY3qFJ/g3gbA
	ToMb4p3V6z/kL1bnQd7IJK5jcNLg6ZyFGvFfF4+4IjOzhlkWCz0raPi+3nvKI07Lig26HqKZh8x
	H4rl/hpGYOhDVtUzoWdRrymPgYm2cKsbBIKeAA904/JqPW4bmrnEkghXjGahMnj1nwH+1icjEqA
	KebYad27tUPI+RHBsHpwTV3b4HDbVFYy9LH047d+NkPl0LgwOLy2u1oX81v++X1LOxhPIfNKCiR
	ynKf83FQEL0Gd1zElGy+HIbL/mZDPhQ2xepFoP72Z2v+8eIfKoANx7j7+RAauR9Lur/jw/K4ycm
	82QbWhp
X-Received: by 2002:a05:600c:3492:b0:495:6e68:5df2 with SMTP id 5b1f17b1804b1-49eb72fb7f2mr83849295e9.12.1789669684372;
        Thu, 17 Sep 2026 11:28:04 -0700 (PDT)
Received: from localhost.localdomain ([94.252.75.113])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-49fbbd83e39sm126935705e9.4.2026.09.17.11.28.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 11:28:03 -0700 (PDT)
From: Oleg Keri <okerixx@gmail.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
	Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v4 4/9] phy: qualcomm: qmp-combo: Add hardware-specific DP PHY config fields
Date: Thu, 17 Sep 2026 20:27:54 +0200
Message-ID: <178966967452.3333.16125740437772430030@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260908-glymur-phy-v3-v4-4-ff22e5150538@oss.qualcomm.com>
References: <20260908-glymur-phy-v3-v4-4-ff22e5150538@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_112806_529227_C66223E1 
X-CRM114-Status: GOOD (  11.60  )
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

Hi Nabige,

On Tue, Sep 08, 2026, Nabige Aala wrote:
> Update qmp_combo_configure_dp_mode() to honor dp_mode_ignore_reverse,
> so Glymur can bypass TypeC orientation-based lane reversal.

This breaks 2-lane DP with a reversed plug on a Lenovo Yoga Slim 7x
Gen 11 (Glymur), with the whole v4 series on next-20260916.

With dp_mode_ignore_reverse set, qmp_combo_configure_dp_mode() always
programs the normal side (DP_PHY_MODE 0x5c, lane 2/3 power bits in
DP_PHY_PD_CTL), while qmp_v8_configure_dp_phy() still follows the real
orientation and enables TXA for a reversed plug. With fewer than four
lanes the two no longer match.

On a 2-lane DP + USB3 dock (HBR2, one LTTPR) the reversed plug passes
clock recovery and then never reaches channel EQ: the LTTPR reports
CR_DONE on both lanes but never EQ_DONE or SYMBOL_LOCKED, walks its
pre-emphasis request up to level 3 at swing level 0, and then clock
recovery is lost. All four attempts end the same way:

  [drm:msm_dp_ctrl_link_train_1_2] *ERROR* link training #2 on phy 1 failed. ret=-110
  [drm:msm_dp_ctrl_setup_main_link] *ERROR* link training of LTTPR(s) failed. ret=-110
  [drm:msm_dp_display_atomic_enable] *ERROR* Failed link training (rc=-104)

The same dock trains at once with the plug the other way round. UCSI
and pmic_glink_altmode report the same orientation in both cases, so
the orientation itself is right.

Ignoring the orientation only when all four lanes carry DP fixes it
here, both orientations train:

-	bool reverse = (qmp->orientation == TYPEC_ORIENTATION_REVERSE) &&
-		       !cfg->dp_mode_ignore_reverse;
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
+	bool reverse = (qmp->orientation == TYPEC_ORIENTATION_REVERSE) &&
+		       !(cfg->dp_mode_ignore_reverse && dp_opts->lanes == 4);

I have no 4-lane sink to check whether 0x5c is really needed for a
reversed 4-lane link; could you say what the flag is for?

Separately, on 7/9: LN0/LN1_DRV_LVL is now looked up from v/p levels,
but only in qmp_v8_configure_dp_clocks(), i.e. at power-on when both
are zero. Level changes during training go through configure_dp_tx(),
which does not touch these registers, so they stay at the [0][0] entry
(0x02 at HBR2) where the old code had 0x1f. I can test a v5 on this
machine.

Thanks,
Oleg

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

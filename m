Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D70BC982C3
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 12:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A65GGO1nfcsPE88DM2+iV8CaTSRLfAFq2+uDXnlQm4s=; b=klgBra5nI93MjL
	FAja9vmXKHPISAh9WKBIKormG5udBR+gE5W8gMwCPvF5OfZKwxdAn1P7DGs9SYE/XUSaZqYXic5Lh
	fVxDJJvSKiYk/RZ2s5HXpslaKQoX92XrM/WMKyXb1CarWrjPE1b9WkLXgp1JtBiC88j/cWUc4jwNm
	icMUABQQeqvK9WVzAoByXWs8LuiPC1Ovsri0FNNwuTC1PoD1BXgb8B9Z7XFIZjYHrgsQF77P48n1a
	COm8s58a+O4/oJbFJhzt5Q922BaiiAcux6de/tvGfWV8a0pu9mtuv8wPyoM/2cC+Dz3Qhzq9sWz03
	lespBDEmxO4zAURAPEjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pBk-00000009DcX-056Q;
	Wed, 16 Sep 2026 12:56:36 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pBf-00000009DbM-07D1
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 12:56:34 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-482f6351832so438065f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 05:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789563389; x=1790168189; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=K65vKL8xh3jtkztbOsGnSCiF0lSalpJ1jm2FXDGayB0=;
        b=MHu0VpZgtJj0TVITYNMJbvkvP8F6lf4Uf+Pv3tDXWjOX+Ghd0qzzF+/nac3r0gAAx8
         KZknx7NTPAgYcepGxib/ThgBLrwu7CsPZD9iJL7Mlv6HA6WY8sWHGai96Ptg7pCdXv8m
         3rtPw003RZBoTTm969nHXb/Wk40TGjkUCAjwdEJRTcMOh4KRMBxMJLD91CqaV8xFk1jp
         2WuIJ9nz6WQ3pInL2nzSlHpbFN/kl5XlebPetA9FILMM2P2X/Yo66+nFEttY8kOoB/gu
         jdCrDNgzLZO3nMpAkIKP52idLQjZIdGUEqsaVr45ltwBA8sdhJ9jhTm/aMgvX0WpEOwc
         lpXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789563389; x=1790168189;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=K65vKL8xh3jtkztbOsGnSCiF0lSalpJ1jm2FXDGayB0=;
        b=aScdHGMqA2aIOBIeUrox3lnVjPiKxMKSWi1WPPOUTJwb+3L+MfluJpPCCZ43R1ublg
         0WTr6CAVCehsw94yejGuMm6Rmw70bp2fs1tFGyfTPaGWqu9F6x8Q4owrrtND2ed/iPpa
         /VKDi2Ev/WT/ANannFNR+rmdjepOpO1S6Gax9Hlo2LqNOXh9q3laOZSuf8ZOoaNhOd9h
         Y1NsYrQNHeyWMo1p3uS5AFWJUk0kusQ42p6RPyX+cwH+kuiXAGD0qgzv06DpTCBqQqA8
         zz3o0gICqpvT4iS7k+o+2jJh81Tc4VtQKzQG5Xep/lFsRBrGIfhq3VEOyrRFtNOEUrcl
         oCsA==
X-Forwarded-Encrypted: i=1; AKwUvBxn0JXmH3EWKZyjNW5BQBeABhxQTBh5ZJFzDIEq1GoSZV9Y1O+Ud18e+Urd2BuLc1MsIDALphWHDaU=@lists.infradead.org
X-Gm-Message-State: AFuF++k7yjSyMNbMX7LfR2tPPPdiIpzJeRA90Ol39GKY2vX57yHMpaKl
	k1FPhtYpVodx9eQPPHi4yfz12P2PXerAS76+Uy/tWZed6G8IIxOGkWWH
X-Gm-Gg: AYBFou0iT6b3XeZvMuJCtoNaXI7qjlEVdC7UWE8KZTcvTahX05GXe9tZ9PzDom7m2aS
	wMrf0TiuaexTL4ZQK03rUAvoW7V/ZPnc+ZokW1eqFG1YlyhPjnmWcpx9gRCtk4T3d1tNJQ6Q5Sy
	puWmhMoMBsrJ/MFy5VDDqqc9IJ/dp/gSs33TZBBbtC8+r2ulkwbI0/rrCSb0lW1KRPq7x/cwVic
	htFDwwJ06u6S3/XFFJU+1DQ1n6RMT7NlV55KNfFTjiGeU3lLcOfMH1FYLf084RlOl0xnpTwZrr/
	+mkmwFvWs4EmizLYZkGkq1GQmlUXUsGvwOy+DYd6j1FL+KujH/uAT/AJLtgk27P+MAB54yAOFgq
	xWMzpLWi+ZiXVSObpMEHtzMIiycz9P7j2Xf6ZTCrvaSJ7Lz9+4YkrZb5ACOZfLrmGqZ+JeL5wYE
	zUIzjR8/VidDLexR/OaWEBv4MvWyvJfrCuCLOnXWviq2np/7nRx1QE3VkFuaXI8T4/HtAc7JvgS
	gpryKO8tP4=
X-Received: by 2002:a05:6000:200e:b0:487:c4b:71c5 with SMTP id ffacd0b85a97d-4870cf0498cmr3375808f8f.17.1789563388825;
        Wed, 16 Sep 2026 05:56:28 -0700 (PDT)
Received: from localhost.localdomain ([194.154.195.114])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-4870bf342a0sm6750729f8f.24.2026.09.16.05.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2026 05:56:28 -0700 (PDT)
From: Oleg Keri <okerixx@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v2 0/2] phy: qcom: qmp-combo: keep the Type-C callbacks off unclocked registers
Date: Wed, 16 Sep 2026 14:56:17 +0200
Message-ID: <20260916125619.4587-1-okerixx@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_055633_618006_DB6CEBF7 
X-CRM114-Status: GOOD (  11.46  )
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

The typec_switch and typec_mux callbacks of the QMP combo PHY tear the
common block down and bring it back up with force=true on every USB-C
orientation or altmode change.  Two things go wrong on that path.

Patch 1: the callbacks hold no runtime PM reference, so releasing the
clocks during the teardown can drop the device's last reference and
re-enter qmp_combo_runtime_suspend() from clk_core_unprepare(), which
then disables clocks that are already being torn down.  Seen as
"gcc_usb3_prim_phy_pipe_clk already disabled" warnings from the
pmic_glink_altmode_worker on a Lenovo Yoga Slim 7x Gen 11 (Snapdragon X2
Elite) once runtime PM is allowed from userspace.

Patch 2: the result of the forced qmp_combo_com_init() is discarded, so a
failed bringup is followed by register writes with the clocks off.  Found
by inspection; it needs the bringup to fail.

Both were posted separately on 2026-09-09, patch 1 on its own and patch 2
as 2/2 of "fix forced com_init() error handling", whose 1/2 was withdrawn
the same day and is not resent: its remedy was wrong, and the init_count
imbalance it described is left for a separate patch.

Tested on next-20260915 on the Yoga Slim 7x Gen 11 with a USB-C DisplayPort
display: plug, unplug and orientation changes, no clock warnings.

Changes in v2:
- Rebased on next-20260915, where "phy: qualcomm: qmp-combo: Add
  preliminary USB4 support" moved the mux callback's teardown and bringup
  into qmp_combo_reconfigure_phy().  The runtime PM reference is now
  taken in both callbacks before that helper runs; the com_init() check
  moved into the helper, so qmp_combo_usb4_init(), which already checks
  the helper's return value, sees the failure too.
- Both patches carry a Fixes: tag for the commit that introduced the
  forced re-init path.
- Link to patch 1 v1: https://lore.kernel.org/all/20260909140345.4239-1-okerixx@gmail.com/
- Link to patch 2 v1: https://lore.kernel.org/all/20260909151443.10276-3-okerixx@gmail.com/


Oleg Keri (2):
  phy: qcom: qmp-combo: hold a runtime PM reference in the typec
    callbacks
  phy: qcom: qmp-combo: check qmp_combo_com_init() in the typec
    callbacks

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

-- 
2.55.0

base-commit: a7728f5e1fc3d472a314acdabca6039f71ec3a9d

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

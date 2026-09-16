Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AB9CC88E5C
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 13:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pT0R3t2WppxsyWshSUNBZ74rXTkdC6O7xq1woZkBM1Q=; b=arwx8zT866MkOg
	Ws3fSGsSxBJLaovpnYaur8U1NHemvlMtOM++jPGkk5r/IEOnlzCFRLZCVVz3NYmhRjIONarjGqVQX
	X9bbKlsgnQ9YRGiIe6pcycbFdtg9xMQuOiD8pJbv+MW1vNGh1aBocLm2I+h5PFItgfm4zKk8g4mqt
	jjOglNeIQtTpCG1RjZmhrchUX4V8C22hnIjQ3UBUXVlh7BA8KVB2FY0+iww40bqVh4JaqLbHPepdl
	+/p0mbxYrj+ZQ4iP321IAMedxXi6JrI4HXTCTwUR5D6HvNZ22Ka4DkeaUNDrpw2PvOeOOUqvnkMhw
	NAYKfK70Ee9tjGSGjb9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pqG-00000009HZS-3pYO;
	Wed, 16 Sep 2026 13:38:28 +0000
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pqD-00000009HXz-2q2C
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 13:38:27 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49b912e4b11so5553455e9.3
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 06:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789565904; x=1790170704; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Ju3lCVadqYYzbSITuTuPTwnYx7YPGhrLuUWNWr5KAzA=;
        b=HIU+fgdr6cqf+GOv4IH6iSuW791CfquxMQtsZpiviaPG34SLGdO3Pm5vB+1Jlq42oo
         jCEnZ28ASBn+pf+vROZQwcsR4sf7kKI+4qDj4kJlRN0KC6Pf+rE5C7c23qsKpItIWrED
         dIkEVFWtIxWzq/AOXx+E4SRFRM8A+6Hd0GqsmDSPGrgBN3xIEzodpZDT3U0IP/IfLvSD
         2Gj9v7TP2HegNYtXT0qBa6M+Ppw8CgyeP6Rt7eVgjwJnbq6ursslA2tRVVpi8e0LslfV
         mWotiDh1KX+vl7GQmWFY6YFe1PEVOtWA8i924+E9K0U0Quy36KvfQEVv6YtgPSUyd1FY
         0Tqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789565904; x=1790170704;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Ju3lCVadqYYzbSITuTuPTwnYx7YPGhrLuUWNWr5KAzA=;
        b=aO+VzXFuoYBpuXPq0kMg05jSOwkKdaFfD/m7YVj1hTBEHLziVMAd/VPzwyz2GTiav6
         /780Cxj5SpKgltephPyQPyL3JGSY6qDPc9IUEvB2GzJKlrLaZ8kP/dhHEwIZNLeqlq6t
         7GKWpAXM24fJV4QxDHJtFqfjE5Sie/m2CSEiMl0AHzYDHsPhKii9baWpcWa7pJCoAWY/
         JJPdOvBEkzkFf6b58p45zfj4arvAjNrHsDViVDXtf2CiPKheoXGjNLK3hBoAIeK49b6d
         8FO2U/UWSXG+RsAjN7I2rAjMrtRAedq1GCo5wwTocKF5TTojp804azvMdNWmi6Ut54bR
         M13g==
X-Forwarded-Encrypted: i=1; AKwUvBw1c5CrdHZdVzlq6VJZlB3wJA2VrhP42YfAPMB+KguNOTW5G75TY9QbSJSXvX7y2QqUHrd4lALq7Q0=@lists.infradead.org
X-Gm-Message-State: AFuF++nY6qNDuRYouzwK+o3CQh3NAsUdTDWtlQy36fRwxhzkgl5DO8rd
	FYD5B0pPpUr7bLFMjxS4BHTN9GrKEI8UxcqKL3Pbt4Z4D0gx0WDSk8gT
X-Gm-Gg: AYBFou3Rn4mQQ5zpfzcf4qObf88+pMDgRL/Jy2P5M6mwJvWzfTmo6fkMUe2adUUqbv6
	ZiLJwM51UWoswd8c7N/SqfwCOnhOafjj9MJMsiBSBMUDrdrsrShyEw21LtEmAFCFgeP/kUPjqqL
	h+p52BglUbHnby3g5VIPz8arodHWAJvCOvW1ThZblblUItdGzTOj47eydJ4pTtStcLuwIcPwq6n
	JuGOmJ5Jl4+rNn8pm/z5+9L6e0UB1h2ZR8hXHt36r/Ft3dbwmTQ84NRuw3Tt/4TqPmr7uRufDvw
	joppYoabfTAcvWAPRbIHAPcfwx/CvN7txSiXoDvuSXYVZ+UtXBLHG6KdjqZ5VaHfzJdaWnsG11/
	i9GIMfYJHqmL3sETGm4Rh+LQY+tFKTSyCkLvQzj03KMc7vyrTMNR4akSC/RR21NM9+5uoB53uOD
	aw5tM6oetKnELtzX1UYgi95qNNGL/XsW22C+v7iRAQ75txGH4XtCbpQmeXNuZR8NoOnTCaPlxCr
	sd+vrs2mKxp
X-Received: by 2002:a05:600c:1909:b0:49e:8418:389d with SMTP id 5b1f17b1804b1-49eb72f35bfmr30119185e9.9.1789565903614;
        Wed, 16 Sep 2026 06:38:23 -0700 (PDT)
Received: from localhost.localdomain ([194.154.195.114])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-49e83da9a7csm77085295e9.11.2026.09.16.06.38.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2026 06:38:23 -0700 (PDT)
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
Subject: [PATCH v3 0/2] phy: qcom: qmp-combo: keep the Type-C callbacks off unclocked registers
Date: Wed, 16 Sep 2026 15:38:12 +0200
Message-ID: <20260916133814.3977-1-okerixx@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_063825_821983_D09337B0 
X-CRM114-Status: GOOD (  12.16  )
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

Tested on next-20260915 on the Yoga Slim 7x Gen 11 with a USB-C DisplayPort
display: plug, unplug and orientation changes, no clock warnings.

Changes in v3:
- Patch 2: on a failed bringup restore the previously cached mode and
  clear the cached orientation, so the next Type-C event retries instead
  of being short-circuited as already configured (Sashiko review on v2).
  The commit message now also says plainly that a consumer's later
  phy_power_off() still reaches an unclocked PHY until that retry; that
  is pre-existing and not addressed by this series.
- Patch 1: unchanged.
- Link to v2: https://lore.kernel.org/all/20260916125619.4587-1-okerixx@gmail.com/

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

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

-- 
2.55.0

base-commit: a7728f5e1fc3d472a314acdabca6039f71ec3a9d

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D384FC5AC67
	for <linux-phy@archiver.kernel.org>; Sat,  8 Aug 2026 17:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PJVzg5CoYmZmLS87Zw4CXbrP1VZD7aB/gXevqskOb3Y=; b=4LsE5hq3rowTXy
	Dw1HATsgILZqR6u4o2hxqz/mfWaoubwgpz7EFo90amcjhPZa7bM3vkPKUPk+6LRT871fmmdo54obU
	UplP19bU1CuMIK9I9EttCo3WHXwKXaXWqy+TkvbUYeXYOxss7RTNoQ0U3Uo1wlMsobwbKFu3l2dl7
	5wCiVqq2qotWc/rcvblR5ZE9IXqFPXhqKXQmx7Kdl9T9SU5nUS0a1ISpmpnkqHJZ3598bO8J3vO+c
	EqmsX+N8gF9kotN+xsW9zNKCkR3LEg5dta2MZsqkiMyWurOplcQby776zC47qdfQwTdtCRz6ww/M6
	i8yytQKfdVlzqkOSSANw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wskbx-00000009Y1r-1dGd;
	Sat, 08 Aug 2026 17:13:29 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wskbu-00000009Y0B-3BoG
	for linux-phy@lists.infradead.org;
	Sat, 08 Aug 2026 17:13:27 +0000
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-8efbafa1bacso2814726d6.1
        for <linux-phy@lists.infradead.org>; Sat, 08 Aug 2026 10:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786209205; x=1786814005; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=tOPf2FedcS2eOFBS8+PnivGCIYlDP4XiFxFJYIs9CDY=;
        b=XFRQ5w3zbJ/VDTL3l9g3SsLPfgmYvFXA/IqVhfITpLvMJJUURSe3qzNk5QTsHQftQW
         0DU8iIdmKoHWYR2bHvGNSEkAdItO3MC+y9zJd9cGyhXtnKICAx0/UFE/lFpf4LfsZvEj
         MzRdiURoYgy9ZzTHfnermdC/eEMQWSUg/MAQ4/xyUPomyrbt1uLBrogbgYoXTRoRWZXR
         dtkBDHKgmHhMHuIQVBspTlh+O64iU9KptiBf33Z99GY1I2m/XLBZTtMq9ldHK+MgP8nE
         NxXUOZOUXFCay4X6JocCEcegIB1g4NRS0qeI4HaPrljHbYe4VJW1ACtxD6Y8DQNzGLak
         o7Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786209205; x=1786814005;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tOPf2FedcS2eOFBS8+PnivGCIYlDP4XiFxFJYIs9CDY=;
        b=Jmt48ZgFxCE2w40VkD/QCX6aGj/7EKlSWI5rwSUEe1PK7c1rC6zT2/eDvKFCC+fCGZ
         56ZFXYKV6xe9rsGlvXK1DJ+COVf5+owp7PQYomY8uvGwCVXmOxcefeQirT/Xjo3ecsgH
         v74xSd2FKPdvGoV3/4gYTDi1PeaMBd65Yj3Y6ouCdBYrQuEmbO9KkluBj5bwndfBOMhM
         btvWj2zUHt+9zKo+ylNTt3MCCQydrefO0VGOhoTkp//xZBrc8SdfwctzSaEZ09vmHIt0
         V4XhEvP1aOGDe3nnJxZRCSM0GlgtIr+RMME7Fx0RAU7DNBDyit8ws173MwICbhPpWB9f
         d4SA==
X-Forwarded-Encrypted: i=1; AHgh+RoJCbFTwEa/4GpG7EbY9nSjZAINovO3j+KtEboeVgUVVj2APVsXrO16in+CpXUTdlznlzLZxZfPp7s=@lists.infradead.org
X-Gm-Message-State: AOJu0YyWuZLbbyB8I74nOkdWqvPyEd7tOjg6EHJFzZqJWahzI508xoJ4
	Opj3sUW+83HqcXnLfUyGcbxYrhcUogaM12+HOk/LskBH975saSyz7h1x
X-Gm-Gg: AR+sD108ARq40AJM4dqxWF4/9ETor6gebC/qimdQLI0TxEV3kNQRmuc2Klx9N/jqGDc
	s8/deJJpfLi0ro7tHe5KH1ipSxz0Uc5aPGUZuXPddf9rdyNmD/wuH5Kfq6LUZeB7U2C8tuY8DJ7
	3M+i+fMMPsaKHu090n7bTOQbSQ5IWU5BbGvfj+nu7gw0LoWFBL9f/ZZz27P1AGppUi6wtJRmWoE
	+xGsU9vPd0IvZ+ZskR3phEOphBpzEC66txoNWgKJrTbh/5taGUGHiSkJy2GbKil35Gc0dK/4zBZ
	srq+dmr8Pte1WOHOmPesiVmJbKZ6PQEMdoEX8rqoXix8em5Al0l8vf00WahbJ7wGZfC6ITivmqv
	mT77H6mVLRlx2sTU3vULPfBA3Ti+wh9wi1Q7jr+8wQRO8Vx7ykUoRJCfOfuJWTDuIXDhdaunb0z
	soAybOjAA+0eZlkORUy6Jb4Rtkp/CwjRxWSOnqyp8LQSbg84AYcYHpd7kOobPgUKbO5IMMcWDVp
	/hMwZdjRFEmpVXGhipA09+Lx1gl4KeXBPYrxOVVWh3KEBX4VaqetLCTv5P+pg53dw9GHWAkqQ==
X-Received: by 2002:a05:6214:4108:b0:907:888e:380c with SMTP id 6a1803df08f44-908813741c6mr361668286d6.26.1786209204977;
        Sat, 08 Aug 2026 10:13:24 -0700 (PDT)
Received: from JesseofTheNorth.internal ([2600:4041:502b:ea00::1408])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-908a91b5899sm34499566d6.17.2026.08.08.10.13.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 10:13:24 -0700 (PDT)
From: Jesse Casco <jesse.casco@gmail.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Abel Vesa <abel.vesa@oss.qualcomm.com>,
	Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Clark <robin.clark@oss.qualcomm.com>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Subject: glymur eDP PHY (v8): link trains only at HBR3, all lower rates fail
Date: Sat,  8 Aug 2026 13:13:21 -0400
Message-ID: <20260808171321.133028-1-jesse.casco@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_101326_831249_1D6A05C6 
X-CRM114-Status: GOOD (  17.03  )
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

Hi Abel,

On an ASUS Zenbook A16 (UX3607OA, Snapdragon X2 Elite Extreme) the internal
eDP panel never comes up on mainline. It is the link rate: the v8 eDP PHY
appears to bring up a usable link only at HBR3.

Tested on linux-next next-20260713, next-20260803 and next-20260807, where
phy-qcom-edp.c is byte-identical -- so not a recent regression, and the May
2026 series (eDP low-vdiff LDO config, unified swing/pre-emphasis tables,
eDP/DP mode switch) is present in the tree tested here. The sweep below is
from next-20260803; the machine has since run next-20260807 as its daily
driver, where HBR3 still trains every boot.

PHY: phy@faac00, "qcom,glymur-dp-phy". Panel: SDC ATNA60HR07-0.

Rate sweep. Same kernel, same DTB, same PHY driver; only the requested link
rate forced (one line in msm_dp_panel_read_dpcd(), msm rebuilt as a module
between boots). Four lanes throughout, which the sink and the DT both allow:

  link rate     clock recovery (TPS1)   equalization (TPS2/3)   result
  1620 (RBR)    FAIL -110               -                       no link
  2700 (HBR)    FAIL -110               -                       no link
  5400 (HBR2)   pass                    FAIL -110               no link
  8100 (HBR3)   pass                    pass                    panel lights

HBR3 trains on the first attempt, every boot. At HBR2 clock recovery succeeds
and the sink then requests voltage swing 0 / pre-emphasis 1 on all four lanes
and never reports EQ done, through the full retry budget, with the driver
programming exactly what is asked each time. At HBR and RBR clock recovery
itself never completes.

Why the panel never comes up: the sink advertises HBR2 as its maximum, so msm
correctly selects the one rate that half-works.

  DPCD 0x001 MAX_LINK_RATE           = 0x00
  DPCD 0x00e TRAINING_AUX_RD_INTERVAL= 0x84   (ext receiver caps present)
  DPCD 0x2201 ext MAX_LINK_RATE      = 0x14   (HBR2)
  DPCD 0x010..0x01f SUPPORTED_LINK_RATES = 1.62 / 2.70 / 5.40 Gbps, no more
  DPCD 0x002 MAX_LANE_COUNT          = 0xc4   (4 lanes, TPS3, enhanced framing)

That advertised maximum does not close against the panel's own preferred
timing: 2880x1800 @ 120.000169 Hz, pixel clock 709.633 MHz, EDID declaring 10
bits per primary colour.

  10 bpc -> 21.29 Gbps   HBR2 4-lane = 17.28 Gbps  123%  does not fit
                         HBR3 4-lane = 25.92 Gbps   82%  fits
   8 bpc -> 17.03 Gbps   HBR2                      98.6% fits, barely

So at the depth it advertises, this panel's preferred mode cannot be carried
by the maximum link rate it advertises. It currently runs at HBR3, four lanes,
output_bpc 10, no DSC. I have not read the panel's DSC capability registers,
so I cannot rule out that HBR2 plus DSC is the intended combination -- if so,
that would explain the advertised maximum and I would be glad to be corrected.

Forcing the link above that advertised maximum is what our local tree does,
and it is why this laptop has a display at all -- but it is not a fix, which
is why I am reporting rather than sending a patch.

One observation, as a question rather than a claim: of all the revisions,
qcom_edp_com_configure_pll_v8() is the only one in which HBR2 has no PLL
programming of its own --

  rate   v4 hsclk_sel/dec_start   v6            v8 (glymur)
  1620   0x5 / 0x69               0x5 / 0x34    0x5 / 0x34
  2700   0x3 / 0x69               0x3 / 0x34    0x3 / 0x34
  5400   0x1 / 0x8c               0x1 / 0x46    0x2 / 0x4f  <- falls into 8100
  8100   0x0 / 0x69               0x0 / 0x34    0x2 / 0x4f

DP_PHY_VCO_DIV does differ between the two (0x02 vs 0x01), but
qcom_edp_set_vco_div() uses it to derive the pixel clock rather than the
serial rate. Is the shared case intentional for v8, and if not, are the
correct v8 HBR2 values available? It would not explain the RBR and HBR
failures, whose cases are distinct, so I may be looking at the wrong thing.

Ruled out by experiment here:
 - the device tree: our board file and the merged upstream one fail
   identically; link-frequencies allows 1.62/2.7/5.4/8.1 in both
 - the drivers/gpu/drm/msm/dp rework between next-20260713 and next-20260803:
   an rc6 kernel built with the 0713 dp/ directory fails the same way

Separately: when eDP training fails, msm_dp_display_atomic_disable() pushes
the idle pattern into a link that was never enabled, and on glymur that
resets the SoC. I am sending a patch for that to the msm list alongside this
report.

Happy to run any test here and capture logs over netconsole -- a retail
machine with no firmware unlock, but I can rebuild and reboot it freely.

Thanks for the glymur PHY support -- everything else in it works here.

Jesse Casco

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

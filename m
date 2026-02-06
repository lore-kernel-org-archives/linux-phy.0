Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03675EE20A3
	for <linux-phy@archiver.kernel.org>; Fri,  6 Feb 2026 13:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=4STfn2ImH2Kuq80rGbfwKO8OhkZ7gi5x85pMNB/K9lQ=; b=th+SMGwVCWvx9+
	7oYG014nmWcpx23j1FiJWiMaUQwfCFmvzPNHt2KX3/IwEXKRkOTR+wOws/sxJ95WKZc5KF7NDw5mo
	meAfdZ9lF1TekL9EkMC1z8RWIeIJBO7hP1kO5/L6drFk7yUMprgzkYpeuBZEKKsRHp2wbGDEgNCIQ
	9aS/qVSYoFi3HpsYYD+rpjn9rIdfJvcR03B+9VLsjq1+v0a1cTCzUFSnEKIBNeNYc+8CnzYlTZjaP
	gwdfJ2x0vq1p8drZm/IrwVCzaWUWwSVohqiCHaKxo/7kHHlW6tAHDpqm8foS7akZcGOuEBrVgS9N3
	q1IPL6W4ytb3M7imG9kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voM3R-0000000BNKj-0m0M;
	Fri, 06 Feb 2026 13:39:25 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voM3O-0000000BNK1-0d6W
	for linux-phy@lists.infradead.org;
	Fri, 06 Feb 2026 13:39:23 +0000
Received: by mail-wm1-x342.google.com with SMTP id 5b1f17b1804b1-47f5c2283b6so19253975e9.1
        for <linux-phy@lists.infradead.org>; Fri, 06 Feb 2026 05:39:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770385160; x=1770989960; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pkmg6MECDuPF+xcEwX762rYgEkjZEg/GKrH4QFrx1WE=;
        b=FUVBMBLnizZFRJitJaVYjUBUJsgKrAwLyH5nBiGoM9TUe5fa6ft1/odMUvH6uvr0+e
         QWFiEPCB42Bkk+33sOwHhOSRqEOd1kca2KoW0UTGqYearcO2v+BfARHKYF09l0ocYVz+
         0TBugCjf18bk+8fJtmp+HK2YbgHbCyFUz2pyk3M+zlSg75tg7GE43kRei7Iq7JN5+vFJ
         qsQLeb9vv1ZU9qNYAcrhfysr4mqMW89TgOlWozoBcLoFutk34uaT8lsLnhi4bx6MEebN
         PhzPEbupgxaQI5NIEmQYhhy8HfVPcneqYo0eyPWbFQd/xdXZaZUx72I22u3PPziXcSfI
         77Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770385160; x=1770989960;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pkmg6MECDuPF+xcEwX762rYgEkjZEg/GKrH4QFrx1WE=;
        b=Bvz1CujqxsckOldtN4xciym/wFS5O7sELq2HJF0kxq6OONQaDGfYV9ek2xIJy3Znmd
         5x9SeCmVWoUZymTGe6UE48PaCmgUWVe/k4IqeZx1Gm6Ne4n2ygb95vYxkaSzssYZdJTL
         U9fWimuWQguWq+pY86/V+DwER5l19em/1miXHiqCnLj/dej/g1ggbpjQx9W84UCepmxN
         XRzdhnbZSEvAx7KJtDmom0vwVPP5xRbZNI29drnj8Blg/7VeaH4XMleGDEFM/MlazoO2
         iB502TTwmZ12puZKzUESGRo3DkJmryzbn0+En4BFuBDYdjW0Qio1ZOjGsprtLZPWGLNg
         9wAw==
X-Forwarded-Encrypted: i=1; AJvYcCUwMhTRNhk72hpUa905tTOJGTt/yqkmqtRULJlZZ1tzz0tHuDAcfdf87otfk6vmQe5833Skr9tGxug=@lists.infradead.org
X-Gm-Message-State: AOJu0YxixTmtbDeoEIe0rjsRk8Tph/NAaQzP7M2tdv9/r8KYA6TAqjxa
	6ASGhMPS3BkH6xrh5kYcqVbiFsD1qIpoHs/oIekai+bmMn1zSuB2ESkHQ46GGIX2UK0=
X-Gm-Gg: AZuq6aIyOVMqzsctvk1Be7yUwjBXgSwkXoG/4YpUsfofkvUGI7xb9NmG1km71SGYkvm
	k28kE9TDaMMwnkkeQVT471fTVWsEIy8AdJJn4e8suC9qhn1iSWt9GqTDGLW2eLqn71xOKPh9o0M
	Um0No+eQ4KTszOmBc6gythaJRVsufqfJluxwUOfTyXD7WwiOgEJ5NIbEHiYbqTs0EORCgsk/DrS
	YMtjBBKY5Bq0TjNv4ENN+qgilvZCRlkgmC+R2dASM2L49tO6sDsy9HewlvuuYcUBvTMbcC6Wu8S
	ZEGDAMkAmyaky2MyfrNpsSU+3e938H3ZNog2EHWdM4SVycIZjPzxe6VolLrwe9cbLgG+qnloZgu
	xg/8MfDqQWrL8MlTZZQXp+Yqxuc9UCI5rEjwRw7v+LlT1meNF+gAD/3v5Tay4PxH1XI4wlFxaOF
	qT38sqqV7imQlOnTmD
X-Received: by 2002:a05:600c:64c6:b0:477:a36f:1a57 with SMTP id 5b1f17b1804b1-483201fffeamr38774665e9.3.1770385159943;
        Fri, 06 Feb 2026 05:39:19 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48317d2ba61sm196904435e9.1.2026.02.06.05.39.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 05:39:19 -0800 (PST)
Date: Fri, 6 Feb 2026 16:39:16 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel <linux-kernel@vger.kernel.org>
Subject: [bug report] phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY config and
 DP mode support
Message-ID: <aYXvBGVdwXTrJNio@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <caa37f28-a2e8-4e0a-a9ce-a365ce805e4b@stanley.mountain>
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_053922_444019_988988FB 
X-CRM114-Status: UNSURE (   7.65  )
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

[ Smatch checking is paused while we raise funding.  #SadFace
  https://lore.kernel.org/all/aTaiGSbWZ9DJaGo7@stanley.mountain/ -dan ]

Hello Xiangxu Yin,

Commit 81791c45c8e0 ("phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY
config and DP mode support") from Dec 15, 2025 (linux-next), leads to
the following Smatch static checker warning:

	drivers/phy/qualcomm/phy-qcom-qmp-usbc.c:803 qmp_v2_configure_dp_swing()
	index hardmax out of bounds '(*cfg->swing_tbl)[v_level]' size=4 max='4' rl='0-4'

drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
    777 static int qmp_v2_configure_dp_swing(struct qmp_usbc *qmp)
    778 {
    779         const struct qmp_phy_cfg *cfg = qmp->cfg;
    780         const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
    781         void __iomem *tx = qmp->dp_tx;
    782         void __iomem *tx2 = qmp->dp_tx2;
    783         unsigned int v_level = 0, p_level = 0;
    784         u8 voltage_swing_cfg, pre_emphasis_cfg;
    785         int i;
    786 
    787         if (dp_opts->lanes > 4) {
    788                 dev_err(qmp->dev, "Invalid lane_num(%d)\n", dp_opts->lanes);
    789                 return -EINVAL;
    790         }
    791 
    792         for (i = 0; i < dp_opts->lanes; i++) {
    793                 v_level = max(v_level, dp_opts->voltage[i]);
    794                 p_level = max(p_level, dp_opts->pre[i]);
    795         }
    796 
    797         if (v_level > 4 || p_level > 4) {

These should be >= 4 instead of >.

    798                 dev_err(qmp->dev, "Invalid v(%d) | p(%d) level)\n",
    799                         v_level, p_level);
    800                 return -EINVAL;
    801         }
    802 
--> 803         voltage_swing_cfg = (*cfg->swing_tbl)[v_level][p_level];
                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
This is a 4x4 array.

    804         pre_emphasis_cfg = (*cfg->pre_emphasis_tbl)[v_level][p_level];
    805 
    806         voltage_swing_cfg |= DP_PHY_TXn_TX_DRV_LVL_MUX_EN;
    807         pre_emphasis_cfg |= DP_PHY_TXn_TX_EMP_POST1_LVL_MUX_EN;
    808 
    809         if (voltage_swing_cfg == 0xff && pre_emphasis_cfg == 0xff)
    810                 return -EINVAL;
    811 
    812         writel(voltage_swing_cfg, tx + QSERDES_V2_TX_TX_DRV_LVL);
    813         writel(pre_emphasis_cfg, tx + QSERDES_V2_TX_TX_EMP_POST1_LVL);
    814         writel(voltage_swing_cfg, tx2 + QSERDES_V2_TX_TX_DRV_LVL);
    815         writel(pre_emphasis_cfg, tx2 + QSERDES_V2_TX_TX_EMP_POST1_LVL);
    816 
    817         return 0;
    818 }

regards,
dan carpenter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

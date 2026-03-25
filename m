Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8C9D109C05D
	for <linux-phy@archiver.kernel.org>; Wed, 25 Mar 2026 21:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ztp5Q0wHoaEqV0YUC4VUD2BB1jjG6w1iD6Eqi6HD+zM=; b=P6oKjWqLs1/t6r
	6oaN976IO3PYPXKB0TEQwBY0DFGFpzj+++S8/oBsLxijLlpmWpEjHke5upPGO6Uhp/cKIvGPovSWH
	D9yG03bUsst0Y/t7qxw8+ypqRKNUUDUrTkvkCJNyX7ojbZefBTtPrlgq4ZrACcV5Wt6J8I9Un5ws6
	/c71yuPcMptOfDTOe03fUwmtmWndRdMx9fT9DHQyQaVaEr3C4xqstRqDxs8HdOjhRgfYmVCQW8sBw
	ah1KBnNJEPAyvHy6Qui4Gm6VVDlCUsgNKFd0g7wrgadrgmbGcyLOkW0cvaBSXbh3tMkefIBhUZlx9
	VW8y0a47RvRHW4tNvc6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5W4i-00000004IT3-2uz8;
	Wed, 25 Mar 2026 21:47:40 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5W4f-00000004IQX-2BHX
	for linux-phy@lists.infradead.org;
	Wed, 25 Mar 2026 21:47:38 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-43b88b7ca76so190148f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Mar 2026 14:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774475255; x=1775080055; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uUstGY1OLdebuZ1BESUKz634CCi9BMwy/wM8UA1WsL4=;
        b=TQ5UhkiqpZ2nKihSSmxoGM/guSlEZJoaYHUrgCKPdmutR8z2QrQ7CWFrB/qVyfD+xg
         YhoHb6qBQd55eOsjlihqvg6RQdYvHn2lSnIyoD44UFnfIX6qB7YAQ/KFLsNkAcpybnnN
         AUqbQgkwJS9BdpXTllwVwflnHeUkhxVQ28jDn/mZackG6IJ5y71OUsyPLG1Ybj35fJmC
         erHau4xwnGQC9WbkMWbj8agC4zsJlKB6JkpAPhrHliYkGkLWL6o3AVS+p58LAI78jzOM
         SF3UuG1faXg8DnHGLsAo3KRlviB3NtsCzSPzzLXEkNOeeHCbCH/6LKyZep0iJuLSXOCL
         2Ykg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774475255; x=1775080055;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uUstGY1OLdebuZ1BESUKz634CCi9BMwy/wM8UA1WsL4=;
        b=BNgki7P4IdUNdvuMvpEtXUVA8yUXJHZuciuuvfqQhOporwmSSrQuRtOSRovh2C7O6z
         8ytGruZtasgwI2OZIpGL46nVQRDzlYQokN05Wo78WjyK25jcuZVZQE8SlRePBegbT0Qq
         MrYRf3XKo2vHSKfNL5KJbDysix8HpODJXg3SE6k8gn42muTcYMW4GYW3eBAhuJns/acG
         wHqm+XfnjNvUt78Mn/Ezs0xP/c7AhhdvkEnkcq8C+/V9fdnbb2+FKaErHfV5A/RYi+eO
         KeiTlWFbVC2Yd0GMzLtZTJDH3jWmdHPIZD7yvfHvgrT1V/pq33VvB3xN6VB6p04GE7mS
         AxyQ==
X-Gm-Message-State: AOJu0YxCugAOYGip3pviez1pkrdVun4z/Yfir7ToZ6to8lMVtsxzvSem
	ITO+yKqJNGIBgSi//4lD9cFZfODwTTqkDDaq0kGmFUKxmNk0/77D1nyMAYmFGYgpNi7x5jQ1NGU
	+djND
X-Gm-Gg: ATEYQzzQ4fA21MverICa4Qt+eF9TXH/tvDeHt+Xyl9KdaDUSbQukWzxCC9Lk6KjwX+c
	6rT80dYHOxZN4MiHG9gHuX0kwsrJvHu9ylW0JrMIAYVCU6UxKIeyG9gYnub8B3lrAiFuh+XIRF3
	rL6XtDLi1w4Amp0jP5dWp65ht1vK2p/lV6SKUbnye2HESSQjXSthWRsBdCv2uiQkQbC96IS8fGa
	WzkNypx3nLHYnKm444TFMES1fYEXGbKy8KXwwJR0+mYmBZPC+FRs3YHQMH1mHhCisFJDsp1k4g/
	Db2aFARHOV82C3fXoZNBZqaMzvyu9O2vYM1p7c7mneEHmZ88i19NKZ6qiedHgzPKK0Eip2h9nQx
	JhuGj1J2bPwseomQ69IKwOJxltucnEyHaFe7oLuBY68wa/GWaEVijMTkbijBu6a80SDdqTWyebX
	PbUXKF+tqxtFYsFGjxWXOYddKH2TR55Goe8dEccqwfPi8cag==
X-Received: by 2002:a05:6000:60f:b0:43b:3d44:6624 with SMTP id ffacd0b85a97d-43b8896cf00mr7698268f8f.2.1774475254784;
        Wed, 25 Mar 2026 14:47:34 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.163.154])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b919df85csm3440402f8f.28.2026.03.25.14.47.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2026 14:47:34 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Wed, 25 Mar 2026 21:47:59 +0000
Subject: [PATCH 3/4] phy: dphy: Add clock_lane_position to DPHY config
 struct
MIME-Version: 1.0
Message-Id: <20260325-dphy-params-extension-v1-3-c6df5599284a@linaro.org>
References: <20260325-dphy-params-extension-v1-0-c6df5599284a@linaro.org>
In-Reply-To: <20260325-dphy-params-extension-v1-0-c6df5599284a@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Marco Felsch <m.felsch@pengutronix.de>, Maxime Ripard <mripard@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=923;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=WFedhgZd4xQLEP9DMPHx1qaOXKqM4Hgl4bUmxaqzH/Q=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpxFgO+bJdtvTEQi9k2G/aJxL6EIppIBtBGYTI2
 0M1G5JlvkeJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCacRYDgAKCRAicTuzoY3I
 OoEcD/9nR1qbgPFdgw+/0+Rja5eh8+VHWRPIOQ/1oCCR5ji2WHBF0k10hl+SvPNRizuspS//REp
 ucirkQVx7AI4iFnTYbKUEbQR972XDwDr77/LGH9BkRXTuex5vwmUHc9zaSe2hdJWMYO/DAjsL5x
 XmkSkv6L07ah2NWUY89J7hzstwVOc+63D9Lw6JQvu3DmZIMQhU0yksxPbRTGYkvNSKUARtC0M9F
 XbadbCMEI2PK2+gMPkGb2K7hzELIZmoqFRAbXXFOI+y9kzNlw9zA+l7qIRxY3FaZXyYbTVgYCC+
 8LvRItR2EG4hghlkOeibCPipGRTdpnTi7MvykGsJCeXQ8WkavAk5X73ZtsFiawVluIcn7tK2u4P
 LBbnG0m+6psoDScn51SAa6gBBWUJo3jfAMORuzabJUWaf9pUQiYnNAswuYVAvSZRUbwwqY0eaew
 xRP+5G+G7OebYpNyDQ05XIFUel9yI0c+8nz4TYym5cB1J/Yf6klxL1/y26iiLdqGPeYgIGi1mdO
 193FZ6xqBTmbcRwdYyZ1jaemNzn1EciattjQujSp+OevMo6fTlxBDYBsmZmwWxdoXbYJxCq0Xhg
 gTIqV9Y8MMndkOhqZ4SyaGLEoYEL1rWhK3paZE441NvL1AmhGCxmXgoQO9XqiGqrIe9AenArp1j
 r8mcDBCNsndvRuQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_144737_609173_CC22D9BF 
X-CRM114-Status: UNSURE (   9.34  )
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

We need to identify which lane is the clock-lane as many different PHYs
allow for a range of lanes, potentially any of the lanes to be the clock
input lane on a PHY.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 include/linux/phy/phy-mipi-dphy.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/linux/phy/phy-mipi-dphy.h b/include/linux/phy/phy-mipi-dphy.h
index 3e0333b5a1a71..76d41580e225a 100644
--- a/include/linux/phy/phy-mipi-dphy.h
+++ b/include/linux/phy/phy-mipi-dphy.h
@@ -292,6 +292,13 @@ struct phy_configure_opts_mipi_dphy {
 	 * Indexed by logical lane number.
 	 */
 	bool			lane_polarities[PHY_MIPI_DPHY_MAX_DATA_LANES];
+
+	/**
+	 * @clock_lane_position:
+	 *
+	 * Physical lane number used as the clock lane.
+	 */
+	unsigned char		clock_lane_position;
 };
 
 int phy_mipi_dphy_get_default_config(unsigned long pixel_clock,

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

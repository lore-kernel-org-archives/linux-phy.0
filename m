Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 822F4109C05D
	for <linux-phy@archiver.kernel.org>; Wed, 25 Mar 2026 21:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cr5rSpP6pWgqr93vs/O9whQvlkCBwB3R5IK9ypdl/VQ=; b=M+Ox7nHB2QBfy2
	MUE7DftyBmZsxJ0U4GHlybWCYtg67z3cZl/nQTIIu3Xkr86GLF21JLz+8ClejN9uYS5whEuytuVnA
	kvqcfQrbZ9lkcGpoFiUeMWzdXLeGdlo0QujvGjQpnrp2fKHjRpnxqsVYdAZkTJldLVvv0eqx/k4Db
	dpj2QZuA714VgVWsMd6tgb0JQfQvYii36I8ADsC9sxqAlbnrrinHzKJFHX443mGeo7UNctd0AUS4f
	vT0iT5LwXCpZNweZoswDyDlDu05Rlur99nwU75BVcAQIbAWG1L5Zad1iaapLiWOtidZoiJAy6x46E
	jbcfmd4ix3uZH6WCEsQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5W4e-00000004IQu-3uYf;
	Wed, 25 Mar 2026 21:47:36 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5W4c-00000004IPl-4Bdg
	for linux-phy@lists.infradead.org;
	Wed, 25 Mar 2026 21:47:36 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-439fe4985efso184110f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Mar 2026 14:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774475252; x=1775080052; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xe7eXXDP3L0vXrOWT5z92igv2fMgE+UHfVHXwTkWdIc=;
        b=ALdCY38lxVgBJHhf4+O3tKFTRWOssmMJ9OHvEvVOYXMi841GydQxw26Z1BzW3xJz4R
         A+TTdKOurLcwOL/dHqoIYxeZbF2GsUh/Niqh3iuyVsz6PjZM1aotftiug7gDg0m1BeFD
         fEKMvghzcH5qDrW59sXOSaB6JfLiYvxTmWkWLsJZ0lLifbx/4tA4OK268FhC7Jdi63gI
         heyyLPs481/bfDiyqJbLUzLEM4HrMJ7iXWq0eB8sQkL1ukdNOFI58AkJjWhNMtaRWoWp
         Z+GxBMBeiHW1Mh0up+pFA6KiCLkJoPF8t7eeuhq5IpLAHdH0dmJ57KbhsH8OsvVHoTTo
         k0Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774475252; x=1775080052;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xe7eXXDP3L0vXrOWT5z92igv2fMgE+UHfVHXwTkWdIc=;
        b=RDMqlx9Ux2QEIdoGAHwYO6UozPIgrKvtCaRV69xai/x6GN2v09qd49D8gz+E8pj0I4
         sktg2d45ZnvATLReWjMpeSg11ZsoadSW8SKZ+Gig+KNdAlt1nQ1iNvT+azfycQIvRxFK
         Ylm/sA/RViALi1NAnWoriuxM5WH8/zhfeCglPlv6KNpU0HjeJgG52GrlH2tLMR8EpM0J
         ykaJGySXrFwVgucxRt77zSXTHEnmrrphgWv4f4R0ZVMVbWPdxBYH8youmvM4sSQRBRoE
         G3ULKr/a6z6L+BvJPhiShx8oT7PEtXlAoFUSFUeEIpFCHvaONSfyHbXFK4WylEJWfMNt
         CsCQ==
X-Gm-Message-State: AOJu0Yw0ZhA3dMOqdCOBUxffevJ+Hyu2fHcVFv0aVQzmUKqvti5dFCRA
	bgbTLGBXAfm4fDCKtY3RcceKaQ0xOw6tpDuvIE/oFZNOOmVnOAxWkaicMnVlX5tfWSnxTO/oGY7
	uM4jL
X-Gm-Gg: ATEYQzy01ZE80dUxZb0QHTFouqueSweZH4YVonyPG3OoKLNfPyUTo9NuO5xghov5UZM
	fFbIBmPft7c8SVV3IwET06uFUANVNulUBNsZeJL31vxqm7rkgux76eVM+E46QvrIE+rH6pheXM8
	EAE6UVKw0y7fWk1NahPI4wm/OQvmgQs9rmL1iNJkT1x3PPShf/pmlDZc6wbQQWk2JdODvONVvBE
	2fNQwmObt8/vtr1+VM9qZPdJzCrxuyw6LnClHDJghL5xvHgpZFAmtFApG83OMmMYu5MIaHj1WlH
	PF4nZO80eTzOugFGSAi5R+VeRQGwW5mkgo4JcnJr2UB42wo7QNHmY+4J1DITUIRhqDLWloeB/UB
	Q+wc71N4tPpMMD0JxpfhiYf3lF7R7kY/WnuUgWWErhIWuf51GQNgXd3ZxmULBUHXI7LAZRAt4mq
	4l524T9HvCJhh7bmNYGncXn6K37s6Qi+79DiY=
X-Received: by 2002:a05:6000:2c0e:b0:439:b60a:b400 with SMTP id ffacd0b85a97d-43b88a055ccmr8076782f8f.31.1774475252079;
        Wed, 25 Mar 2026 14:47:32 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.163.154])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b919df85csm3440402f8f.28.2026.03.25.14.47.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2026 14:47:31 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH 0/4] Extend phy_configure_opts_mipi_dphy to support
 position and polarity
Date: Wed, 25 Mar 2026 21:47:56 +0000
Message-Id: <20260325-dphy-params-extension-v1-0-c6df5599284a@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAxYxGkC/x3MQQ5AMBBA0avIrE1CheAqYjF0yixU04pUxN2V5
 V+8f0NgLxygz27wfEqQ3aYo8wzmlezCKDo1qEI1RaVq1G690JGnLSDHg+0nsDaz7iZqyTQlJOs
 8G4n/dxif5wVsK8oWZwAAAA==
X-Change-ID: 20260325-dphy-params-extension-5fcd9ba8af61
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Marco Felsch <m.felsch@pengutronix.de>, Maxime Ripard <mripard@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1651;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=ULXzPx0jM2iE0OsECWAeyqbNhJYN7P7Ol0Y61IBEihU=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpxFgO8LtL0IaJAp0HEyUSTeF0X5J1m6Fvi95pq
 9Mr6CwfoOSJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCacRYDgAKCRAicTuzoY3I
 Op8ID/9L1vocWKrHw66H/C3EkTxWuoR+RzBcDWLbSoZD7lslJ8OdGB8hDl7HDc7IIjcKojOjINB
 zdXWw4Zpr3IZbfkQFTSIEEnMB0w/xKs7k4JhlE3Pu/QG4GpvndU0L/OhabS7V5KxFH6g7cSkHmS
 M5iVmwUqyEDflCJEEsgSWdfGlL/aHQzyAYjwU0wwP3tJxsY0nDu/Wcjot/3CW7LKJPb8cClSt4H
 aBayCTO34Z5Lx9eHCfjYMfsoCT0paL3wCIjE0BqrbZtBD4a6/ihXBkLnzbXXme1kHRPerLfLPv+
 1G22G099X3U9RZ3MwF5+p9XNJ2FQMabolmqAj9YO7hIFDNAM7wPSnWZ5dkkWemD5k/mhZ4zraJ7
 uBDJUmrvPKAaDlS+f/ThWdk/3SLDLAJU8HjkjLc7QHrhE2dP07JggS5TscG9VNw3pK9CRR6gOJH
 RQIxorc0EOluE2lOdjh4R6HUUO4z/0P5U6WvdHNJs4yXIFp33dDUsNRf3LSQgQmP6HkQCJCavjR
 ygz/+Razubu9DmUtfY1uFgD1wEhkroMILFlc+7JskWp0suZDLoqT/4tVjHHRB/+UmSV99g9JiUZ
 81CcCxqcnBLDsaJ4zZ27bv48qnpPgZ/3jO+KsPPEOSA0QvgA44oZgXCMICsfmwRHHBzZKlFCRSA
 eNNSIiQRNjLrnrQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_144735_055835_87FB59FD 
X-CRM114-Status: UNSURE (   8.41  )
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

struct phy_configure_opts_mipi_dphy currently passes @lanes as a linear
count of data-lanes starting from lane zero to a consuming DPHY driver.

This proves insufficient when we want to specify lane location and lane
polarity.

To address this gap extend the structure to pass four new fields.

- lane_positions
  An array indicating the physical position of each data-lane

- lane_polarities
  An array indicating the polarity of each data-lane

- clock_lane_position
  A singleton indicating the physical location of the clock-lane

- clock_lane_polarity
  A singleton indicating the polarity of the clock lane

These properties correspond to data-lanes, clock-lanes and lane-polarities
as defined in video-interfaces.yaml and already parsed by
v4l2_fwnode_endpoint_parse.

A controller can use these fields to pass down the relevant data to the PHY
driver over and above the assumption of simple linear consecutive
data-lanes as has been possible to this point.
 

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
Bryan O'Donoghue (4):
      phy: dphy: Add lane_positions to DPHY config struct
      phy: dphy: Add lane_polarities to DPHY config struct
      phy: dphy: Add clock_lane_position to DPHY config struct
      phy: dphy: Add clock_lane_polarity to DPHY config struct

 include/linux/phy/phy-mipi-dphy.h | 37 +++++++++++++++++++++++++++++++++++--
 1 file changed, 35 insertions(+), 2 deletions(-)
---
base-commit: c824345288d11e269ce41b36c105715bc2286050
change-id: 20260325-dphy-params-extension-5fcd9ba8af61

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

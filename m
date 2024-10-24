Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9965D0BB5E
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 06:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:From:Subject:Mime-Version:
	Message-Id:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kES2+idVr/63sCBr9sw4IzvXSmlB2BdORX7x7eqabUE=; b=IsD
	5Ftnaq0t5SXzMd8hnYfvVOTLPixUiWc8cBGarGGYzzk3hCnr0sRsVEoTv4+dzID4GaErXcrr2iJur
	tupmmgXLFo2Y9TEv0ASnMzs1EzkRS6Xe2OLuhw9SP/nZWCLUKyGcDaF/nEOXGFhy9X1H/z6Aj+2ih
	Xhqe07EncBRM8WNMREtciJ7W2e2p0Apy3SxUL3N6HfzeACqXj9dfc8/RoU6l3l7399PDFYH/ogaTk
	axatYiQqcreW1Um9mfPv68w8kWt/0lydEunENLBtyv6LZt29O9Gr5BLiyGtIry1RCWRVUqPa4HXT4
	oxCQH2y0U9bvpCce5kQu8XStmeWlVDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3r89-0000000GstW-0CZL;
	Thu, 24 Oct 2024 06:15:33 +0000
Received: from mail-yw1-x1149.google.com ([2607:f8b0:4864:20::1149])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3r6X-0000000GsQ1-2cn2
	for linux-phy@lists.infradead.org;
	Thu, 24 Oct 2024 06:13:55 +0000
Received: by mail-yw1-x1149.google.com with SMTP id 00721157ae682-6e376aa4586so10675867b3.1
        for <linux-phy@lists.infradead.org>; Wed, 23 Oct 2024 23:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1729750431; x=1730355231; darn=lists.infradead.org;
        h=cc:to:from:subject:mime-version:message-id:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=55/hvgYNWdvBpZX8vS6a0ZNEj9vu+ZIZIEdADHyK4mM=;
        b=JyIGXFWLIIpMxi/683kNseP2042jk+74Yz8RRNOJ1MYsg+LXg/gcWY5DL8d7UW4ttT
         vRMjKEtU2cuBlXNksv3tJJqzLrU37tGLYma15m1PNDs8amLdIHMW7TpmvyV0qOkfE9V2
         hM80Y8ZdETXsx2T1yTngdjAVTVfoVnbEs6wy9UdZzbpLlNWobxPAu0mhVnooKikjWGli
         t60+0Px7AdBaRulPTnlZlqCZ10AA5sTVbBKhyNBEGL+JsUZpa5/dpiHQrc+I+Ebgi+5w
         ocbm11V3HWvluqDmyAiI7SNljkeooy2ukuVM5Vw8VzsaQD/eJ3SBavljU8LfO6k+eRjM
         IqPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729750431; x=1730355231;
        h=cc:to:from:subject:mime-version:message-id:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=55/hvgYNWdvBpZX8vS6a0ZNEj9vu+ZIZIEdADHyK4mM=;
        b=wdAsc20Y/43SqCw7s8WIonnOM+G6so+izgNjGsObchv8IwVsaeaZapaNlwRLYogYvM
         Ej9yzQrTvH3FqCeaSQDv0zHFwP/IJBDK10R7i6K0RmLxTr6KqDLWDaO5wYK2O1dM4NiK
         Rr76P2dO8luvB6ijhqSBklaLYu5b2IO7KlSAXwfIwLSh7cdWmdhO+3QFAkje4yHNbpUB
         7vEMB4aDAPSg1c/bsupS3b2tVilpb71aZDRgZlRfi/g+lxj0pgVvUyZzgsAXgqn6oeSE
         dyr49mSDsAAbbBOKUOOPZEKVNeWiaFObBwGC3C8ZFk4qS9wU8pgM6/Vf6NXcA+/moKbs
         y1NA==
X-Forwarded-Encrypted: i=1; AJvYcCUSt2/LKbxD+0nPoySgn0pUvSiMMaxAg1EfgC21KDh097GyUUn2St9oZQPnWtJhbms//Y/CS7DXDP8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxGNfUYBEZb28jTty9EwlBXYSkQvTPEDDHW02GPWtpSLXJ1H61P
	lTvp7hc5Tj4Q/hTRvjMQmIy5EbvkwQXF4KttBkCNVIL4a5n2r2Y19EIHR8LHQvPgfHrwjBKRYPR
	U5agR+Tpb87yU6g==
X-Google-Smtp-Source: AGHT+IEjm5xZ8oWEf7u6//TA4Kt5HjH6iFnxvFJipXmVy8asdr1VaVjmTPVebbvVpJLKuPZgRMsL7ilkx4vd+j0=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:965e:f81d:c9fb:b352])
 (user=saravanak job=sendgmr) by 2002:a05:690c:7082:b0:6e7:e493:2db6 with SMTP
 id 00721157ae682-6e86632ee4bmr196737b3.3.1729750431239; Wed, 23 Oct 2024
 23:13:51 -0700 (PDT)
Date: Wed, 23 Oct 2024 23:13:41 -0700
Message-Id: <20241024061347.1771063-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.47.0.105.g07ac214952-goog
Subject: [PATCH 0/3] A few minor fw_devlink fixes
From: Saravana Kannan <saravanak@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Saravana Kannan <saravanak@google.com>, 
	"=?UTF-8?q?N=C3=ADcolas=20F=2E=20R=2E=20A=2E=20Prado?=" <nfraprado@collabora.com>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_231353_670632_21DE8C6E 
X-CRM114-Status: UNSURE (   9.85  )
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

Probably easiest for Greg to pull in these changes?

PSA: Do not pull any of these patches into stable kernels. fw_devlink
had a lot of changes that landed in the last year. It's hard to ensure
cherry-picks have picked up all the dependencies correctly. If any of
these really need to get cherry-picked into stable kernels, cc me and
wait for my explicit Ack.

Thanks,
Saravana

Saravana Kannan (3):
  drm: display: Set fwnode for aux bus devices
  phy: tegra: xusb: Set fwnode for xusb port devices
  drivers: core: fw_devlink: Make the error message a bit more useful

 drivers/base/core.c                      | 4 ++--
 drivers/gpu/drm/display/drm_dp_aux_bus.c | 2 +-
 drivers/phy/tegra/xusb.c                 | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.47.0.105.g07ac214952-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

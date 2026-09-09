Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E008C79FB7
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 15:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pdxL9oBakcLhs0eXIu9Ots+0ZoNzOYEu3y9E4CAAsW4=; b=dymbV3hRlnim3b
	HIdeQUxFTaiFaB3Ex7w9wiBj11GTCmMRoqVzMdsz8jNT63ZT0ugufvES4M2FeVBht0Y89dZNiXDtU
	2pvhP8xk6UnHYL2///8kbIxMc047IaU1MRoTfjrhGVlX1GFo7BA8JS7UkZ/bEDGDfMdG5tFR6CvFx
	KBMmMizTuWq8gFEAIOIElTS2dEmOZ9hPpqQhEOkQvknHvJagq1CbiJ/QHY2TGWV/jzSslsYDu0277
	pCIi7+gy+QSpqpu6wNVpCxtXQvzQiMwgoGJoEcuWT+R+T3MmMvx3V1BNxIQps4UCgbWTGMrdnEFt9
	LnSPkXqFDPdHrKVerpfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4K0p-0000000C6oe-2l6D;
	Wed, 09 Sep 2026 15:14:59 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4K0n-0000000C6mz-0egX
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 15:14:58 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49b912e64ccso2654385e9.0
        for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 08:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788966895; x=1789571695; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=3NMvm8qf6zXuBrsZ4ksCDxs4+LTSFOsWcxQZ6U5RW1A=;
        b=peEOuQsZDZemls3BcX4bPJ+lr980MRP653YeGfluIZ1aLV/p9mNNR9CO4OJ5qtBGB9
         fTeYBYOvlYRqZkw/0iEw47mDpe3Z3fy3XeROwNJToXz4+iozGYE9IqP52P1ryh+EhAJn
         h2jAPES1brwjfAqgRN/c7+MzJRS+A3sL9zK3VxWALXbzH6l6N0uq1eTxgxNlE20Rico3
         K995QmkwoTLIYEov2qcY5/gY3Hul8ILB/cJtpwPuM1VQNIlwXl8J9w7i0qHtaGeTJIAf
         cyNZZZavtF7Y0rQrBVCR+hFnUlTdbvllyzR0JSsaDVgvDrCvmQjCPLHviOC+jjmzoAla
         KeuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788966895; x=1789571695;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3NMvm8qf6zXuBrsZ4ksCDxs4+LTSFOsWcxQZ6U5RW1A=;
        b=nuACLsQZQ3LqALvP1SMiTSSlfv/8AP8RFJOTk3OJhBwJJuYtyTExbSfHLUXcpy55bt
         Lat4vTL24WOrle5szPtODbu/wTxaTGdt6o2sp0vZqIo5d5XaOK9MH0WXSHRfpRd5SUqw
         QJafYIBen4xeuroYmmqhioBj1TBSsG7CGCyslu2OOxtT4oMLjWkDFtnPHMsWBk0YtXcI
         /DpjJwmc58cKzDSEt3Nye1AplDnSEwBo0ycvY777yrd+1R0tjMvYIx/on+xlW36+/awz
         W5jqQWcsC0K3GwC7PYhRjuObYqp61dEk4P8mmEg06qZbueZo9kH+50XDgiZD2jicSLbF
         Vz2A==
X-Forwarded-Encrypted: i=1; AKwUvBw8eIZWgcA6GER5i9cys3+DwstTifyIJwI6CGVTAGhd63A21L14YHMRw/zJ8tmrLT12hJkZWR2Cz3g=@lists.infradead.org
X-Gm-Message-State: AFuF++loXtsd5oY4jTq69jjYezVNt4mekplIzY/NIv7eVxmyC3zedsic
	4eyHJSupbIIhhxJjXYdYGkL5cuWw0KeQbSeGu0FlHoVqYiRM8tCdlLUx
X-Gm-Gg: AYBFou3yqyPYv1R80F2p5BGfuoE8+1rmTuShZR8jeNoog2Pz68jplVXoYIppW0WFb11
	a9Vx1Tifi0+rnGJ+ESqtdrxJe1Z1zdF39QUw47+jhMQL2CpcMZuuZhfbGsE3gAzgoWy/M2AgogJ
	yTJSL7UQmvk2cN7v1i8M6u65r2FHknTKvNGsZP2NY3bn3y74l9jxHP1WIE+4jVKjLEm4KcN3/sp
	0tUWsmLnd2wxKe1cZgNLhu/qqX8HGe2b+C3XyKVBk+yYzQvaL6NV84rYpI4P30MxR4NOZbwgrAJ
	s/ZyOyABSZUaFlg8dCaXGgELaNqH8u7hUvwdsLBS8ZkPdqXeTeTjKxI5CyrV1f0Bok+9rMuxcEh
	mlLGv6j2oXDs4WTDzKJoaeOCQcA/nsJz+5Yw5wCUTWSI0CQkScqCxAOTBcg/yuxRtvjvz6anPnV
	K7lJ+JQIpNLq+r77AFU1/3kEpdD/85xF0eI/+Eol9JMQhbilO6FvbV24SkMfZoipTUNesFRNOAh
	LY5aOrZhtVBXrbBcUxAzcEPXJIrBTVHIE+qfrdaKi2pElFZ4rCpLxQ=
X-Received: by 2002:a05:600c:150a:b0:499:7a15:fcec with SMTP id 5b1f17b1804b1-49d2592e85bmr25190535e9.13.1788966894942;
        Wed, 09 Sep 2026 08:14:54 -0700 (PDT)
Received: from localhost.localdomain (mob-31-26-103-238.net.vodafone.it. [31.26.103.238])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-49cf755c22esm483644155e9.0.2026.09.09.08.14.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 08:14:53 -0700 (PDT)
From: Oleg Keri <okerixx@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Michael Scott <mike.scott@oss.qualcomm.com>
Subject: [PATCH 0/2] phy: qcom: qmp-combo: fix forced com_init() error handling
Date: Wed,  9 Sep 2026 17:14:41 +0200
Message-ID: <20260909151443.10276-1-okerixx@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_081457_211173_533B0C66 
X-CRM114-Status: UNSURE (   9.53  )
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

Two pre-existing problems in the typec_switch and typec_mux callbacks,
both on the force=true path that tears the common block down and brings it
back up.  Found while looking at that code for

  https://lore.kernel.org/all/20260909140345.4239-1-okerixx@gmail.com/

which is an unrelated fix to the same two functions and does not depend on
these; they can be applied in either order.

Patch 1 stops a forced qmp_combo_com_init() failure from dropping an
init_count reference it never took, which drives the counter negative and
makes qmp_combo_com_exit() return early for the rest of the boot.

Patch 2 stops both callbacks from carrying on to write PHY registers after
the bringup has failed and left the clocks disabled.

Neither is easy to trigger deliberately - both need qmp_combo_com_init() to
fail - so they are found by inspection rather than reproduced.  The tree
they were written against is exercised daily on a Lenovo Yoga Slim 7x Gen 11
(Snapdragon X2 Elite), where the typec callbacks run on every USB-C
orientation and altmode change.

Oleg Keri (2):
  phy: qcom: qmp-combo: do not decrement init_count on a forced init
    failure
  phy: qcom: qmp-combo: check qmp_combo_com_init() in the typec
    callbacks

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

-- 
2.55.0


base-commit: df2908090cda368b01ff43709f51890076c56157

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

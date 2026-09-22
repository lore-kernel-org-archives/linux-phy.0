Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FAEEC982F1
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 02:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9cg1xNkwagRt85cokdRvwELJuy0ACuyN7y/MB+insNs=; b=R5YmbW+Ht2BZ5G
	pBwAkkqZTRLhmRkniYb+7Enj7JCxiUeGJyTWZNo3KhUMyb1sG7GCnt9RkYaLZDYkhODfRRe/VhlXk
	hcShoKgkG/dwPfgkMlgarlPBkTP/wuUBxx3sj7Il249aNL6Q5om02q3HJXjhtAH+kfHWpA4Gx7Dfy
	NBJP6mKVmjYShnNTc0MuDSIupK4IJ4ZT8vA68YyJvXKjarlL1Up7QpWIAduv3Nv5XWmCuR8+x8dgf
	iGTyq5/AWPmTfuHOliLQZuktvtROvajFzrAX1d/ns8I0z0A+AH2p861BDhDlLdAQhTjSLXmwt87jM
	z8IMyTmzfiaf5h81u0Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8qYW-000000041aG-0LMn;
	Tue, 22 Sep 2026 02:48:28 +0000
Received: from mail-pz2-x0d.google.com ([2607:f8b0:4864:3b::d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8qYS-000000041ZY-1GDN
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 02:48:26 +0000
Received: by mail-pz2-x0d.google.com with SMTP id d2e1a72fcca58-85a4329731cso2830358b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 19:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790045303; x=1790650103; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=2fqnxRDPGydfMihJ2OX+RSCvcoKZzlenNPZIcztBjRk=;
        b=kz++x7+zH0LZx9G7yT28opCjUPezi+l78/F8RYgrnxczRJQoeAXjtARAD+AOsbzVNl
         sQkBoUHe57dk2rdN+iteqVBzDQTeDc96lTGxZrpeBFdQ+HvKDYqWhDg5SV7w+j72kHU6
         bzuyZtlwoafCDQ/tBjtT8KMMmB5bkyzQcv9QLdNwoG0f9p/J9LKeEpviUfxbVdQq/wzX
         IRM2PoEl7z/u5CoUAb+fM0S013SkdmE/WQXhsz9ANbTyjtmsNHrbeR7/+vOOf14f0avi
         YYt/bxMFXM7RGtgYcKFrtbv0JaFDm9JbBak7Q8/MI/CLU/9WaqH0oW0mgo4w0ys+c5Zx
         NGJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790045303; x=1790650103;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2fqnxRDPGydfMihJ2OX+RSCvcoKZzlenNPZIcztBjRk=;
        b=wkFic4Sj/pNkvDSHxWn90++UCPGABlcqUuuSUgbLtM9C5UpSj3aAilfuXEDiuCsadR
         xKJ3tkcs0AvclNfSS/d7WgWc0+imdFlXWWg6rPxQNi2LiUJPFamuujW1c0i/Hw8sQekg
         MHgA6AJAdSxAYH5gLmAFslsmwR1ozbP9e/MiVXdyvLjAWsKAGkZ/90R6/ykTeDkz9MFf
         P5Gd6XLPhNOZtBxgt2DviY+31j0cZ5fK7D7jGnaMbm3smkJ3JSJzidOkMpw58aUNGHj4
         VucUggnYGm1Dbua7A2N7uq14uC96AFx8ldiYv6I60IBU9cP4RUYNz+uvtA9l6L/MWRLh
         OZhA==
X-Forwarded-Encrypted: i=1; AKwUvByH2LJYGJWwF5QAfifLLa4dVA7+uUw25J3vefx17ls4CFLOlU21J13/P/wL4i02A75x3KQqskqDFS0=@lists.infradead.org
X-Gm-Message-State: AFuF++m3L7q5EBcz62e/Q/ZQe3X0Il1f0F66eR54aGQabTeXOx1yIhQh
	qfL9kDo1E25nizE5kDgjFXIZj/xmYDKjvGcrdFovkUwWdB12tUFzpRkq
X-Gm-Gg: AYBFou2w92ujWpeGIidfkJzxkPQLzDlz3i3KReiaIFCWGI4xwECg0zeix8DS8VxgatV
	CvHyGfMclEI5UFQsYTlSTeDlJfKJQWGNah/gKctk9XlYJ5pL3Y/rIHPENQYbk9MEqTVyGmp1otf
	lCQ+qAls4lN3w7LnFV5Io0sZWdjvMw4GWXLb2klg33TM5WwA/zDd4MXUd3c2o6CoHQhZlTT14Cy
	bXud/kRBvbdek/VjnxwPvlkEmi0HsDcqgUu6fVJ7Kl4d+65+GohZKZjo9tMIV+u+eZeU4UJ9sCi
	wWLGPOduZ7BYQelzxqgC9mNd5Ncr2VfdcKeqj7HQnhusC6vz/hTNyT2Cy0ktl067GW3PH6UgICv
	WkfpPjKS//sc1SYTyKYJv/L3VW9EDd/SL7dEa2TKpdbPq0+zc2WEE6fDLFINEj8iMyLHGS8zknU
	/SA+uKcOyTdt4XbpiRa+syijkryLgmB6AXWVqqf2R+OTvk6/snSFmTIaqufpmXjr2gLD3zFsfrz
	Hx879o=
X-Received: by 2002:a05:6a21:6282:b0:3dd:a197:7362 with SMTP id adf61e73a8af0-3dda1977457mr14288897637.59.1790045302885;
        Mon, 21 Sep 2026 19:48:22 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc756a18d4fsm115091a12.11.2026.09.21.19.48.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 19:48:22 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Hans de Goede <hansg@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Minas Harutyunyan <hminas@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Vinod Koul <vkoul@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Damon Ding <damon.ding@rock-chips.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Inochi Amaoto <inochiama@gmail.com>,
	linux-ide@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [RFC PATCH 0/5] phy: core: Use EOPNOTSUPP for disabled blob return value
Date: Tue, 22 Sep 2026 10:47:15 +0800
Message-ID: <20260922024724.191412-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_194824_340389_81934F74 
X-CRM114-Status: UNSURE (   8.10  )
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

Currently, the phy subsystem uses ENOSYS for dummy blob functions,
it does not reflect the function state correctly. As kernel already
has EOPNOTSUPP for disabled blob function, replace ENOSYS with
EOPNOTSUPP for a clear return value.

Inochi Amaoto (5):
  phy: core: Use EOPNOTSUPP for disabled blob return value
  ata: libahci_platform: Adapt the return value changed for disabled
    blob
  usb: dwc2: Adapt the return value changed for disabled blob
  usb: dwc3: core: Adapt the return value changed for disabled blob
  drm: bridge: analogix/dp: Adapt the return value changed for disabled
    blob

 drivers/ata/libahci_platform.c                |  4 +-
 .../drm/bridge/analogix/analogix_dp_core.c    |  2 +-
 drivers/usb/dwc2/platform.c                   |  2 +-
 drivers/usb/dwc3/core.c                       |  4 +-
 include/linux/phy/phy.h                       | 52 +++++++++----------
 5 files changed, 32 insertions(+), 32 deletions(-)

--
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61558EF5868
	for <linux-phy@archiver.kernel.org>; Sun, 15 Feb 2026 08:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G1Hqz6V2FOYNrtolFAGf3MAaRMJT8+Sbhb04fz9emj4=; b=2Kk7URJ9F5B9us
	JbRdVl0wWX/6uN9gIIa8cDqLJPG63R3lJ9BP0HQ3QkvbOltoW4ZWmKOt8hb4BtGlriuqqTrSYjiVO
	OYZiR8SpgqNHNnhC+Hg0jaSPZIzaHSIDwaGfVyhiTB9uZD2PVGruMEghDazG/E8dGDzPe6id8KtgJ
	F3C2gm7cR2r4Ai2jDrYWt5IdVMMkOaxkJ9+etdYar5AbYr7DbVKf7Ao1wV4Ox7LljnjFimhdLjzG1
	zCM1Hx+bucVjJ0nJz16thbB/H+/U0fI3R392Lbd5slJuwiJJ/4fbCvx3q4isYQ0OHznniQxozYV4f
	FS+9t2lTmSFYcgWW98QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrXuq-00000005H8U-2URc;
	Sun, 15 Feb 2026 08:55:44 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrXum-00000005H5h-0hv6
	for linux-phy@lists.infradead.org;
	Sun, 15 Feb 2026 08:55:41 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4806ce0f97bso16614575e9.0
        for <linux-phy@lists.infradead.org>; Sun, 15 Feb 2026 00:55:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771145738; x=1771750538; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sAQNxQv4JzsX9m+4gmiEwv4VehekE5HhN8PtLOEQY1Y=;
        b=U2heVTBrA2/Ui/qJncYndQuoAnc5mxg0uvsRkm0IRnby6WXD5AQKpzuwvkFSDN42KN
         dInghujX7WhpiyGbXsf8h/AYpFVoYbFx8qvyVzndd09dw48sT55LFk4ovsrTLUyxtSDH
         m2SiSHFjAgzfrQko84NL15OTrE/8HNPcv0fSN885re9cx9OXo0vqRuOAuLZ7lKbr7fze
         3RkCHaFH8tpvE5YtxraS13YEU+tlxmKMBF/6fDcag/dexnXNghPSvINeOjv5Gczv8q2O
         7CAZfBe4WuAHLzA1Hx3x+ZGyuRbsZH6rMLP+9dBhVeGVNcwsDokkO2XMSrdEFY1m6vyZ
         o+BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771145738; x=1771750538;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sAQNxQv4JzsX9m+4gmiEwv4VehekE5HhN8PtLOEQY1Y=;
        b=LFuOHHnWLwJ/L2HkSoOedraRiFZhKjD4cJIIceBgvHCsRQl6QjW/l0oz2CwUh7kCoa
         vMUlJe/WNjx7UGA9haMW3oK1sy54QFs7QIBm/Qg+Pf5V0Fa6/R5hp2v37gG3Nx4W5uyg
         SiuL1t9HU794585GI6tW1oWibM0fLxrTE7Kz1WIyYKMaH6y7ihei2VnB6XojshMFao5h
         1xk+GQBumrPRjsr64YcsDQ1/Bby4yw+qwTbrFUZCTi9okAleMwIONgJPEWZWZIB335VU
         CijOR/hJ8OEFkQVeNfwMamM7tgjh+6M4kV0tfW22QxuZme+OSN93PRexC3tnSxXxjSFu
         GK6A==
X-Forwarded-Encrypted: i=1; AJvYcCUkn8m/2pH0vOulDt4k8cEeLE0nhwjLbAZUeahVNvYP1GmWM5C8TidSin0lhrwHhXcD1Ep8IzidbEE=@lists.infradead.org
X-Gm-Message-State: AOJu0YydSN9Jj7iFl8jH9b1sPxFQLkPZT8mjSRUNpIsYnp1CM3o430z1
	Ab8e9jlBwrGCElFfXmYBDWq5Y0lgo9jRRWLiG722YmHQuIIgwzBthdKZ
X-Gm-Gg: AZuq6aK6DG2CBbWxesMHJ8/3taSfmKY20/PakAQ5kO7iyXp+tpdPgwpvlpsoZiB4fIt
	KI9Pl4F6KXgG261jn24wTfCOTb8YqIT9uV1zgvPfXnWjnaceMGVI43O8PTZzgHtqsU0M34S3IG9
	p59f2vFH4PBKWQeVyFhQ/sNop+o82E/cNSyTE3zieL+bx21aLdyiMI034gk/Fr6691mqO489FQv
	9XyCDnfUCUNzFDjsO1fPY3Xylbv5UdgqwKW7WlYXoP/1F6v1azQXq2XIvDWG/Lu/iMS5TBIfpXO
	x/1hoX65mu5ifM3EuGwPnne3cDDDqQHvqkhJSFRPjLRmTHZlC0s+hZ8XejuXbJINY2Ha4PsWc9H
	HNrs7NsuBLambTbbTzVbImx+M61DNgyLtICGMJDC3cNdQIBJh2ywIyxTDSa1sD5io3+0JEBELZZ
	Q7gpCpWWGjhXC0Q4VFlYk=
X-Received: by 2002:a05:600c:314f:b0:483:6d4e:9811 with SMTP id 5b1f17b1804b1-48373a73ec5mr119238475e9.31.1771145737543;
        Sun, 15 Feb 2026 00:55:37 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d78cfsm547211675e9.1.2026.02.15.00.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Feb 2026 00:55:37 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 0/4] Add support for mt8167 display blocks
Date: Sun, 15 Feb 2026 08:53:52 +0000
Message-ID: <cover.1771144723.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260215_005540_246851_568537D1 
X-CRM114-Status: UNSURE (   9.18  )
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

This series adds support for the display blocks on MediaTek mt8167.
Tested on Xiaomi Mi Smart Clock x04g.

The first patch just does some reordering of dts nodes with no other changes
as this makes later patches cleaner and easier to follow.

Luca Leonardo Scorcia (3):
  arm64: dts: mt8167: Reorder nodes according to mmio address
  dt-bindings: display: mediatek: Add compatibles for MediaTek mt8167
  arm64: dts: mediatek: mt8167: Add DRM nodes

Val Packett (1):
  gpu: drm: mediatek: ovl: add specific entry for mt8167

 .../display/mediatek/mediatek,aal.yaml        |   1 +
 .../display/mediatek/mediatek,ccorr.yaml      |   4 +-
 .../display/mediatek/mediatek,dither.yaml     |   1 +
 .../display/mediatek/mediatek,dsi.yaml        |   5 +-
 .../display/mediatek/mediatek,gamma.yaml      |   1 +
 .../display/mediatek/mediatek,ovl.yaml        |   1 +
 .../display/mediatek/mediatek,rdma.yaml       |   1 +
 .../display/mediatek/mediatek,wdma.yaml       |   4 +-
 .../bindings/phy/mediatek,dsi-phy.yaml        |   1 +
 arch/arm64/boot/dts/mediatek/mt8167.dtsi      | 450 ++++++++++++++++--
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c       |  12 +
 11 files changed, 446 insertions(+), 35 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

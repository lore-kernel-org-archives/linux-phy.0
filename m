Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8167C531C9
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jul 2026 08:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzX717IKeh+qBGyikdS9MSFVfh9JhzUQtFIh6x2Lul0=; b=JWM0QjdRJdj72Z
	I4uEQyEk6I8Ys2IuGaaBPpvcVadZtgwN5uFy2exOpfjdzGJY49Q9TsMLGASpQbU9zIQedp+263lUB
	k4AtlzdoqOtqSy0uNFsH9RymLM148O5iRk5oWp1eiHWk41HhHRMIt3zq6id1AzcIhMF72Ac1zJyOL
	ieJo+1toCAhmd+FcYPXD9FijV78UL2Wb+d9ChObLhya1SLpcQfObHtrqtZ8y6TJ8Fgy04zhlE2mA/
	60tlOX68sQhLpvRbGzXmT/0mF78trdLu69kww/Z5QexQOlqdHtJCscF4b0A3RKf9MR5T6nFiGtyrL
	P0UPGeYTXyhn6hMGfaBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnXQZ-00000000AY3-458G;
	Sat, 25 Jul 2026 08:08:11 +0000
Received: from mail-ej2-x03.google.com ([2a00:1450:4864:34::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnXQX-00000000AXk-1p99
	for linux-phy@lists.infradead.org;
	Sat, 25 Jul 2026 08:08:10 +0000
Received: by mail-ej2-x03.google.com with SMTP id a640c23a62f3a-c159467cca6so52264266b.0
        for <linux-phy@lists.infradead.org>; Sat, 25 Jul 2026 01:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784966887; x=1785571687; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=gPeXPPGLbFmRB2bRAKpa2gFojTcQTquw5RAY2mSvs50=;
        b=iJeQjgDa3hmYqzyddExh9YH/neJM0Xe5XfXN4nC1YGOdnLjijxI3dsXItaA5BXyvP+
         IMRivAAwyFy5QIquOTJbDYXsSZQBm7l19eUgdiPdWdU+5zhazKdelXDokA4CU2B2cWuD
         TzyJN/o7+kwBA+/44CB7tgFs99fH4ccPlTR37llcVaOZ6rR53JpN16ZRGsd8f8imIr24
         3RHiQoPEV1pQSRwM1dVQ5gPwCuszRYb4IG/EmrpZbdbHIgvWg3nyYzMPAH9NPFaO/yGM
         yVaoT8b5Ugp3jVR4s3TtqY9M/Kf3fxKYycNMLVHpaN06V/lCo1ubkR+Z/Cn6fXCOEbAh
         k/2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784966887; x=1785571687;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gPeXPPGLbFmRB2bRAKpa2gFojTcQTquw5RAY2mSvs50=;
        b=jwbm5QyPminjmW4ZlIKP4oiXTdKfdQHA0AGXefq9zPFa7JLt/jX2ttOgjJhzm76zoR
         4HrG39obuZQm2PhuDNdhhPAweeJcVEpb+YXttFG0GNspVI4khqI3jv0qTaYiar/PlLrK
         tt7VWnq1VAwELZhNL4aiIsXu4jVDfOv7kzvAXG/GApilX1cicCmiKH+mdEL6ycqWjSCk
         xzbnADqB+eKNZPFC88nXd3QffNZqwejcz3i6JCfXWeWyUWqH71QNEDige/XZCxAu0uHw
         QetACmQXhPH+Lz+5mbV+rKALc5reZsOLl2k9OBfUPVTAvz/RKLxj7julX55oFK8Yzimy
         NNdA==
X-Forwarded-Encrypted: i=1; AHgh+RqSAx8ztKwkakPL76jjOai4AVeF7BrKemKPGI8QzVyqoU2lgMbLdwS7EdmjQUIOWVLPnp54iHPgAQo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6iSavfRHxzB80RgijhUEEsi+X2MTkN5ri9dAbuBRDJQDezOyH
	Jks/xHKwirzU+nEJ5DPhR4stLQ6NDY8gqwSWCrpnmr9xKAB/BUiL0Lfw8EF/gmJHArWlPg==
X-Gm-Gg: AR+sD13U/2OS1hxL8hgJr1fl4ekYI+TLST4/PAUhat7QC2aAH7XLpDDOzQqqy4Bk+MV
	HIFARk1IKeIf43Je0l3781VR0kZjwV/ueps9rbbhPAGY9A12BTFbj/mKP06CoJ4lk6/Zhv/5DPm
	Hx3QHdOebOTUYjz+dH5+c/XFcBPu9CUVKm0dZ0hKtQAhyUj33yV8mPjhLmnuzmZxwPBOwU0Xqj2
	xLjF+oZgpfN24Ur6w4T7/VoTelao30SnodvSOkGGHBDiAYQaush5d4OyLfsXqGiAZzG90wtfSkv
	Qwnkbez/iF+daImvFg1tn+AcnvuMVcmOjCLinbV4fRmyN4zVdp0c5qrt9+5x0lu933KhJWICEcl
	NxdYK0XdlfNAXFqKQSTAA+VEED26zr9NZ9wHRiTcnvR0BSbGMfn17
X-Received: by 2002:a17:907:1caa:b0:c15:ccd6:79c5 with SMTP id a640c23a62f3a-c1f1eecc34bmr64140366b.33.1784961423771;
        Fri, 24 Jul 2026 23:37:03 -0700 (PDT)
Received: from localhost ([2a0c:59c0:1::208f])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1c32ebc828sm440790366b.43.2026.07.24.23.36.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 23:37:03 -0700 (PDT)
From: Cody Kang <codykang.hk@gmail.com>
To: David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Haylen Chu <heylenay@4d2.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>
Cc: Cody Kang <codykang.hk@gmail.com>,
	dri-devel@lists.freedesktop.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH 00/17] drm/spacemit: add SpacemiT K3 display support
Date: Sat, 25 Jul 2026 02:36:26 -0400
Message-ID: <20260725063628.3499-1-codykang.hk@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
References: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260725_010809_515678_1B85BC8C 
X-CRM114-Status: UNSURE (   7.78  )
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

Apologies for the duplicate posting. The patches are identical in both
threads, this series and a resend series, see [1].

Please use the resend [1] for furthing review comments:
[1] https://lore.kernel.org/r/20260725-k3-display-v1-0-6de34d80e86c@gmail.com

A delivery failure on gmail side appeared to have lost the cover letter
and eight of the patches from this thread. For about two hours I can
only find 9 (4, 6, 7, 11, 13, 14, 15, 16, 17) of the 17 emails in the lore
link. So I decided to resend the series with a different mail server.

Sorry for the noise.

Thanks,
Cody

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

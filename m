Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7A0FC83F1B
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 18:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z2OQEy9sz6t9IRp2PYIkLtqdLsRpO6ARL2CLKqeu92E=; b=sMiiwgmOy5pvUg
	B1S7q3ZrkJ4LF+mNmxgpKR0VDWD6N4Axmo3bx7nkaFbbuoOlpRaSb8q2b65AO6XWeH4SaUdk7tIgF
	pI4J7qiIV9w+W09A6Ac1Pvb3RgDTZUwca71mFXGB2HN6qTdqss+KPeEaZd9V9cjIbYcKJjKnFR0ua
	AdMVyzDmd5oY66iGMjuKW9KDvx/RO9k8m4LmKl+o9UTWBW0+vmoqcjXV1QM50Xiu+QzqpuBfCI6oU
	X+Su9uh99TlkjV3H72RiXAzrxRIkYHO0qQMKvY3QTJTOgc1R7wD/CoaZAtFNGly90ToGEVkICJUvF
	D2kdzbp8YY+PEGdVBugw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZvvj-0000000CgxW-2g2C;
	Thu, 10 Jul 2025 18:23:35 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtoj-0000000CMDU-0FBA
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 16:08:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163692;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=9y0trkj4fUoS0RrnudnNCXl9kNIfdjh6JnTKD549Do8=;
	b=HbOw7XLWj7QVXo9WS0h5OsfAmHGJefRBxk4lESE5VcJqk4NVwhFqwfVi8KQ0sZA89vaS2p
	p69Ut+B3I2GNjq4lpSQXbxwkSRlhs7l8lnilSesGNkp5iguUXjXeDdXamK2r6rWhMs/KCD
	Om/U64oDkP+VRoj0se/iF4b3Sj8IPVQ=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-482-d32Q5xpbPd-lMY_9Ubep2Q-1; Thu, 10 Jul 2025 12:08:10 -0400
X-MC-Unique: d32Q5xpbPd-lMY_9Ubep2Q-1
X-Mimecast-MFC-AGG-ID: d32Q5xpbPd-lMY_9Ubep2Q_1752163689
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6fb3654112fso20217766d6.3
        for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 09:08:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163689; x=1752768489;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9y0trkj4fUoS0RrnudnNCXl9kNIfdjh6JnTKD549Do8=;
        b=Q4yOnLgD41YIxUXoz136YZ2N0UnXGeH8l9CFpm6AIOBlVzzLjPioTfK9LMV1zue8Wv
         eeLw7tkI71NmmdDNrd0kC5VXY/2btiWmlS8gFvwuIDLEdXjsP+7/cE4V6EM5ey6uvVEk
         V4Ek6wvvO41q45bOs/uo0Ju/FHt+iTdUHkubEN6Z8bzPy8f2AiP+BnGYngu3+oMhnu6q
         TxYYwpOcci86tuX8un7bOEhyQ2qOhya24EF683Jnps9Pks6h3OhgO1TdEe1DdmFnzSaX
         73CvtlJyFJNOIHESogz3tDWk0gO56YOTn/VIr60YVe2aulZlyH6F1pb785cbfOFEl/4a
         s+NA==
X-Forwarded-Encrypted: i=1; AJvYcCUrynUnoir6kwZLH/JnG7e7GkWy33yKgBe9afI3n7bz5T5+sl52tPOLPDjyaYP2YGIe6i2znRligas=@lists.infradead.org
X-Gm-Message-State: AOJu0YxYFmuuPhasodoZGV+/j6oeqBluNQ1f6d4cjq4JeLm/DtTCgwJn
	VAFVQPQaqyl59/ig+ZWIAjOds5RsIsntj9ui3ExeeWK3PnTxyJd5t39TAfbWw0tGHE9zyhfuRfV
	L8l3wZIb418SFNcJvcT/pmS0gXRU48UjxdQd+BD0ra7HGCVs0B/m8suZR5EOb+x6fgZnpjEcH36
	3pKaxZ+PuHG7Jb3HdjE3UrtzFBOAfQE2K5CMq8Wd2b4axbz+9KZw==
X-Gm-Gg: ASbGncue6EQn9UmHZ+ON7/Sw9fm4541K55RLn29725VAawAwMAlhTtOT4IDEsOI2vbJ
	iLRLO3v16C/i2N1SlhD0ByzqfR2tLVvvmhOxHZ4hr4z2Yo/uQUdmfUXN1jdfhHNXGhmJEXD8RM1
	eS12VB0Ie6oKrYvOX+Ng5cLUfVk69ccxVgMHouOlJIbbSH/jLdxOeunScMffgvxB4AdlqVYSrAr
	oMRpjIx8y6raU+IyQAEcIMzB2+WBBXTvipIKpp9lgXB/VBHsYbsx0zxRErE5cg/rRkEX+AqFlKQ
	szmQDLAae9Yk6fDUxon8hvvXyXwDh2OOM3/TECQKlYUIrMZbwMeztZFkTBmU
X-Received: by 2002:a05:6214:2b0b:b0:704:a23f:9d36 with SMTP id 6a1803df08f44-704a23fc534mr3788606d6.25.1752163688678;
        Thu, 10 Jul 2025 09:08:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4gXy2Dkx4egeBxiGddHTDVbGuVB+8YXO54lWBniB7kXUceb7curtnNMZMf9c09zPdEAmsFw==
X-Received: by 2002:a05:6214:2b0b:b0:704:a23f:9d36 with SMTP id 6a1803df08f44-704a23fc534mr3787296d6.25.1752163687765;
        Thu, 10 Jul 2025 09:08:07 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:07 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Subject: [PATCH 0/9] phy: convert from clk round_rate() to determine_rate()
Date: Thu, 10 Jul 2025 12:07:10 -0400
Message-Id: <20250710-phy-clk-round-rate-v1-0-0ff274055e42@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAC/lb2gC/x3MQQ5AMBBA0avIrE3SChquIhYNU52QkilCxN01l
 m/x/wORhClCmz0gdHLkNSToPIPB2zAR8pgMhSoqZbTCzd84LDPKeoQRxe6EpbWGnK6VowZSuAk
 5vv5p17/vByQloVBkAAAA
X-Change-ID: 20250710-phy-clk-round-rate-4aa7ef160fe9
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, Maxime Ripard <mripard@kernel.org>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=5746;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=oHw4EaNbWszhl2nWjfiTC4gPuNzXI86YghpIW4T3XYU=;
 b=+YTf6TGhVZLwRnFkAqozoviaA3InI8pyoCfUeHJRT13VIoshFQfOj4nk5h5s6PLxBjQMoxHBQ
 8+w6S9SAMg+C2VTLAoUj9UtD3pjNbsegU6UjRkwkyeFq4rIhJkVs1CU
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: tpHoASBa0cCAr9pleCqPBm3ZCmWjRxtP7CM6remwz4M_1752163689
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_090813_164826_0378ABB9 
X-CRM114-Status: GOOD (  14.67  )
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

The round_rate() clk ops is deprecated in the clk framework in favor
of the determine_rate() clk ops, so let's go ahead and convert the
drivers in the phy subsystem using the Coccinelle semantic patch
posted below. I did a few minor cosmetic cleanups of the code in a
few cases.

Coccinelle semantic patch:

    virtual patch

    // Look up the current name of the round_rate function
    @ has_round_rate @
    identifier round_rate_name =~ ".*_round_rate";
    identifier hw_param, rate_param, parent_rate_param;
    @@

    long round_rate_name(struct clk_hw *hw_param, unsigned long rate_param,
                  unsigned long *parent_rate_param)
    {
    	...
    }

    // Rename the route_rate function name to determine_rate()
    @ script:python generate_name depends on has_round_rate @
    round_rate_name << has_round_rate.round_rate_name;
    new_name;
    @@

    coccinelle.new_name = round_rate_name.replace("_round_rate", "_determine_rate")

    // Change rate to req->rate; also change occurrences of 'return XXX'.
    @ chg_rate depends on generate_name @
    identifier has_round_rate.round_rate_name;
    identifier has_round_rate.hw_param;
    identifier has_round_rate.rate_param;
    identifier has_round_rate.parent_rate_param;
    identifier ERR =~ "E.*";
    expression E;
    @@

    long round_rate_name(struct clk_hw *hw_param, unsigned long rate_param,
                  unsigned long *parent_rate_param)
    {
    <...
    (
    -return -ERR;
    +return -ERR;
    |
    - return rate_param;
    + return 0;
    |
    - return E;
    + req->rate = E;
    +
    + return 0;
    |
    - rate_param
    + req->rate
    )
    ...>
    }

    // Coccinelle only transforms the first occurrence of the rate parameter
    // Run a second time. FIXME: Is there a better way to do this?
    @ chg_rate2 depends on generate_name @
    identifier has_round_rate.round_rate_name;
    identifier has_round_rate.hw_param;
    identifier has_round_rate.rate_param;
    identifier has_round_rate.parent_rate_param;
    @@

    long round_rate_name(struct clk_hw *hw_param, unsigned long rate_param,
                  unsigned long *parent_rate_param)
    {
    <...
    - rate_param
    + req->rate
    ...>
    }

    // Change parent_rate to req->best_parent_rate
    @ chg_parent_rate depends on generate_name @
    identifier has_round_rate.round_rate_name;
    identifier has_round_rate.hw_param;
    identifier has_round_rate.rate_param;
    identifier has_round_rate.parent_rate_param;
    @@

    long round_rate_name(struct clk_hw *hw_param, unsigned long rate_param,
                  unsigned long *parent_rate_param)
    {
    <...
    (
    - *parent_rate_param
    + req->best_parent_rate
    |
    - parent_rate_param
    + &req->best_parent_rate
    )
    ...>
    }

    // Convert the function definition from round_rate() to determine_rate()
    @ func_definition depends on chg_rate @
    identifier has_round_rate.round_rate_name;
    identifier has_round_rate.hw_param;
    identifier has_round_rate.rate_param;
    identifier has_round_rate.parent_rate_param;
    identifier generate_name.new_name;
    @@

    - long round_rate_name(struct clk_hw *hw_param, unsigned long rate_param,
    -               unsigned long *parent_rate_param)
    + int new_name(struct clk_hw *hw, struct clk_rate_request *req)
    {
        ...
    }

    // Update the ops from round_rate() to determine_rate()
    @ ops depends on func_definition @
    identifier has_round_rate.round_rate_name;
    identifier generate_name.new_name;
    @@

    {
        ...,
    -   .round_rate = round_rate_name,
    +   .determine_rate = new_name,
        ...,
    }

Note that I used coccinelle 1.2 instead of 1.3 since the newer version
adds unnecessary braces as described in this post.
https://lore.kernel.org/cocci/67642477-5f3e-4b2a-914d-579a54f48cbd@intel.com/

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
Brian Masney (9):
      phy: freescale: phy-fsl-samsung-hdmi: convert from round_rate() to determine_rate()
      phy: mediatek: phy-mtk-hdmi-mt2701: convert from round_rate() to determine_rate()
      phy: mediatek: phy-mtk-hdmi-mt8173: convert from round_rate() to determine_rate()
      phy: mediatek: phy-mtk-hdmi-mt8195: convert from round_rate() to determine_rate()
      phy: mediatek: phy-mtk-mipi-dsi-mt8173: convert from round_rate() to determine_rate()
      phy: mediatek: phy-mtk-mipi-dsi-mt8183: convert from round_rate() to determine_rate()
      phy: rockchip: phy-rockchip-inno-hdmi: convert from round_rate() to determine_rate()
      phy: rockchip: phy-rockchip-samsung-hdptx: convert from round_rate() to determine_rate()
      phy: ti: phy-j721e-wiz: convert from round_rate() to determine_rate()

 drivers/phy/freescale/phy-fsl-samsung-hdmi.c      | 13 ++++++----
 drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c        |  8 +++---
 drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c        | 16 ++++++------
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c        | 10 ++++----
 drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c    | 10 +++++---
 drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c    | 10 +++++---
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c     | 30 ++++++++++++-----------
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 21 ++++++++++------
 drivers/phy/ti/phy-j721e-wiz.c                    | 11 ++++++---
 9 files changed, 73 insertions(+), 56 deletions(-)
---
base-commit: b551c4e2a98a177a06148cf16505643cd2108386
change-id: 20250710-phy-clk-round-rate-4aa7ef160fe9

Best regards,
-- 
Brian Masney <bmasney@redhat.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

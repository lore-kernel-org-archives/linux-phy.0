Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B70511099B44
	for <linux-phy@archiver.kernel.org>; Wed, 25 Mar 2026 21:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNg5ficuQpN4T7JvSjryTu62+Ui7lv6VYsGDroNY/bk=; b=G3jwKP1EGguQYP
	RBGSD3Bpf1wTDnvO/1JYkLuPrve+XiU3OXiasNpOTV4R161dXXVPJZaENNdpgglcDIgBNjyeTNMY+
	dlJ4hcQJmaIaBfYYuDmVgPCZHhNA09UUC3+coyGRYXaPMEK9HcAPUEmVG38DkKe2S4mUUHkAFdDOu
	3c2zSjNRFZFzgN2pU+MVNcxB/wYfQG0BZ0C6ZQfCe9ilfDMfT7kfeWDkESFdVCZmSFH52+upYhoUL
	6pqSIo0bU6kBf7KLUi6OcQ6Mv+YVE0tP6qddLCOYiqe3v0PgwK5QEkfEUFlsjnMq1vr7Ffdm97KFs
	GAZ4NdvCGgDaqYSNx1zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5W4i-00000004ISi-1v14;
	Wed, 25 Mar 2026 21:47:40 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5W4e-00000004IQE-1jNX
	for linux-phy@lists.infradead.org;
	Wed, 25 Mar 2026 21:47:37 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-43a03cb1df9so228948f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Mar 2026 14:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774475254; x=1775080054; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Oa4pBg8VcmdNIDqijQJGoiyheg0RWL2jtw5zWTXjtn4=;
        b=VOpm5EGfRyFJZ/jSumQQna/NOaFkxPME2gU419P+aNEuMOeJshYBCh6HtObFhOv7sa
         rgvJ13CnxXr774ZVAOVb2O1PQFdruVIYLtI9spgESHXXaAE4HnNd7d0dVAczex96sQ0F
         vrVGfMKaq5S9KgZbIgws5upWdfuv5IeHxfcauP/5X3/jKOUJHDwRsjrp1irkeJcpg6Ag
         R3/RmCLr9KaoRqYYDDJAVEkqdK/C4oEFTb0u9R1uiRuNx47weWo/1f1jWczqkzQJFPuo
         /boKE+1jEnHWQobOv01esKPBe8nAuqG1HqNqh2UTDEJoXfl+qrnzP5eXUN1QqjYAPftS
         SgkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774475254; x=1775080054;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Oa4pBg8VcmdNIDqijQJGoiyheg0RWL2jtw5zWTXjtn4=;
        b=fw+It5uF1jt8V6biMdcL9XLs4vPSMIkkoF5QAm65teFno/O7NUu3eJv1gICmACRXPw
         +xPHc9O655Bd/nZd2o9RBj50T9jnWvnN2a4ET4TcYOVESCazlFYLDA7yJYcmSVLq/hrl
         Adz7DA6P1AOYL63gv1ZEvsyJbu+tfQY9zJLHYnzkU42auqwkOnAl+EErN8+ucOj3vvnr
         /srjoCHt0JjHXJn3s/CeCKGaowP7tcFvb1JRnCxiBnO743XK6SQYjYma6wti9ogiglqf
         5E5E2+3gFdJpYSprEimsr/KisJpVVilinf0Bt/JcYQVT7N4fyPgjEpDgAaIRe5J94QOe
         P7sg==
X-Gm-Message-State: AOJu0YyYn3YyvGDZ66hEeogmD4ufySNJZ25eIn9DLTJEPX5cmV7VCrA0
	3n6bCz4ILph7ByOY6TyqXWq5uU9DCeLKI1jRZEnXZzrJ5pGPdRKaOmDf9TdvF9WlBwsHTr6w+Q2
	MI26s
X-Gm-Gg: ATEYQzxDB9OAZhy+5T8kMlCugFwsWCLgx0Ij85S498m+XXbBAbtInYsZWDico2dQdHL
	HnNAY3y84OCw/NRPn8aMjE5WgfEnoYboUdtvW6WJp3ghDoKKQQx9pWjMCXG8gLIhJSexVo4UMa0
	oFuHSwgY1I9Rc4OJcIDY1WNqAm4/kyNkKB3NN8OLPhF5viLIAcvyz2wQ0SKKAqqh5g1dzS/5CQd
	fSLisAaMkGgeYSw/JLXfCRLI39O1n6zE2SqQZVdaGwqHazDyFrLSOSxLY9hFglcEsblzSh+72jz
	rT0D4Y/OkUb6n3lNjjwIs/PGD8RN87G8cNraKGmAJ3cQaj8Ff7dtVeyJFWWmF5hGmT/FuU/Us5t
	jRywn95a5Mnki8e8eN8cPmuxN+BdlZpu1DXogCyuaFVNAF3bxnhWDD47iUT/9YI09QVD7mpd9yL
	q6AUfv/0efB+xcLjc4iZ4tITv0s6vPMrTRZZ0=
X-Received: by 2002:a05:6000:1861:b0:43b:5003:e301 with SMTP id ffacd0b85a97d-43b88a8e928mr6496183f8f.42.1774475253888;
        Wed, 25 Mar 2026 14:47:33 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.163.154])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b919df85csm3440402f8f.28.2026.03.25.14.47.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2026 14:47:33 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Wed, 25 Mar 2026 21:47:58 +0000
Subject: [PATCH 2/4] phy: dphy: Add lane_polarities to DPHY config struct
MIME-Version: 1.0
Message-Id: <20260325-dphy-params-extension-v1-2-c6df5599284a@linaro.org>
References: <20260325-dphy-params-extension-v1-0-c6df5599284a@linaro.org>
In-Reply-To: <20260325-dphy-params-extension-v1-0-c6df5599284a@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Marco Felsch <m.felsch@pengutronix.de>, Maxime Ripard <mripard@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=945;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=TicNkvE+Lwh4LvqdBob75oxdEqSxVkNucZgbyPYOg8U=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpxFgOvu6zKbksQzXX1/UpLat135N79Gn/EaMdV
 AQup5LQ78KJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCacRYDgAKCRAicTuzoY3I
 On5ED/963T+WckaZI8mj+9ENKlXv6V964Z5377P/0LA5jUfMXQRdUhy+dEruIV0xfFZ+kwvtZql
 vkXaPGZj1LJM8qPZcASPfQQj/OnIAcvHNFbzWGHl7XTvZrmb8xOAFFIMbiOcKyktat5t7Mu28aP
 VsTZEY017XC9k3CazseBWuD7mJtHDkavefliAXD1ZirukYB+a8237Ji4Pc8VUPmZ9RzyCqNBT/h
 2FN0BpjDpa3AkB1cTeywj0zz/L8Xfx41SnCNL7vaKnKN9KS/buKJU7n/QtdqA2C56TtM6mbBO0n
 sp1eUPudTSH+MF0KZjuF8PPpUrV29URPMe+g8bdIKp4sJJXSqPcKKb+njVg5EV5mL8i9KaLRHJQ
 +mDs1UuZfLgTIMnvaY5f1skXPI7tJ784z4zY0DYoYrJf459Rxj6JwIgZRHcLULKWm9GdyM1phup
 EhYsxhshM04/J1PKP+6dCnAWO7Gff+kv3jvvZGT2lfekXDZceuR3PoJYlTLe/F52qVnxjgC8+X5
 xw26f3HHy00j5OD9HpLWGQENduuLjGlEeF1ZbE/HbtQNX5sWoYwSB23D1IpwlzAyZ/jeeAd3rtk
 /+7PuKPkiMrv5w5uhxDwQ60a541P18mF6nNoKU3glryBOLCzkDY8HXjFbSnXVhZMwnzjO950c5o
 zF2VA4loJcfdM/g==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_144736_471526_5BC54708 
X-CRM114-Status: UNSURE (   8.70  )
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

Pass an array of data-lane polarities from controller to PHY. A true value
means the lane polarity is inverted.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 include/linux/phy/phy-mipi-dphy.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/linux/phy/phy-mipi-dphy.h b/include/linux/phy/phy-mipi-dphy.h
index c7eb11c41d7ec..3e0333b5a1a71 100644
--- a/include/linux/phy/phy-mipi-dphy.h
+++ b/include/linux/phy/phy-mipi-dphy.h
@@ -284,6 +284,14 @@ struct phy_configure_opts_mipi_dphy {
 	 * Indexed by logical lane number.
 	 */
 	unsigned char		lane_positions[PHY_MIPI_DPHY_MAX_DATA_LANES];
+
+	/**
+	 * @lane_polarities:
+	 *
+	 * Array representing data-lane polarities. True means inverted.
+	 * Indexed by logical lane number.
+	 */
+	bool			lane_polarities[PHY_MIPI_DPHY_MAX_DATA_LANES];
 };
 
 int phy_mipi_dphy_get_default_config(unsigned long pixel_clock,

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

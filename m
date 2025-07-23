Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85E67C83F17
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 10:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJGC4rv+X/pdA0oqqH2GBpwvSBJeTcFpsr+ZA0ik4kE=; b=nT7yTpHXURdB7n
	Y3G1N0Ypz5Rx+zqUgaXKkY4mMCzUWNK87yfX+mwWnhsBfQp4VG5lU6L+5jnPtALldrwVe9W+37ogn
	uonyL2DQQs1HtwM8wwTy4XrJLlF10YZNRtcFCSw2xGShm7B7GlYt4upZjcEJ5ThpALdioMKJsMXvh
	vIEBt208cotMbK80FNvI7+JwjHMVaQKga9x1O0uHvBeGTlshkgWHukznMxbR0CyRNTLuKndrDCKVw
	3MFxq+EQjhtFj+EU2FYMBHB3JwkwyHsPv1tqmQEpV1fvCYrjnZ10UnJ1DkbHB4PVqkKHgizjLGzwk
	K0zFRIaVTr/WUZttrtHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWa1-00000004fDx-1Em3;
	Wed, 23 Jul 2025 10:20:09 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWIz-00000004bhr-3s5m
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 10:02:35 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E073DF06;
	Wed, 23 Jul 2025 12:01:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1753264914;
	bh=dVNC3ShRwc9rraYqV1NZd7Qv0LqdAYPie3YmmaCJa10=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=LwNk8W8/vE8k1ufkgq4T8LE0WquQYZBYxzEnaHEh0ukdbqh2IncvIs4jGy8fGLu/j
	 TWi3rz+gkG9VomX3/R/+FKqmvwfZ5FfctDS2lU+yAEBK8Kvbm7KlGPBsCAei3DYl0o
	 4bpDBAS2XJVgYpT46I2JzQ1p7MiEYWY0IpJK/KZQ=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 23 Jul 2025 13:01:28 +0300
Subject: [PATCH 1/2] phy: cdns-dphy: Store hs_clk_rate and return it
MIME-Version: 1.0
Message-Id: <20250723-cdns-dphy-hs-clk-rate-fix-v1-1-d4539d44cbe7@ideasonboard.com>
References: <20250723-cdns-dphy-hs-clk-rate-fix-v1-0-d4539d44cbe7@ideasonboard.com>
In-Reply-To: <20250723-cdns-dphy-hs-clk-rate-fix-v1-0-d4539d44cbe7@ideasonboard.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Parth Pancholi <parth.pancholi@toradex.com>, 
 Devarsh Thakkar <devarsht@ti.com>, Francesco Dolcini <francesco@dolcini.it>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Aradhya Bhatia <aradhya.bhatia@linux.dev>, 
 Jayesh Choudhary <j-choudhary@ti.com>
X-Mailer: b4 0.15-dev-c25d1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1463;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=dVNC3ShRwc9rraYqV1NZd7Qv0LqdAYPie3YmmaCJa10=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBogLM2ScIg+pul+KwrIVolm8pm4A+8750e3elZX
 p+uM4p6A7+JAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaICzNgAKCRD6PaqMvJYe
 9ZRAD/sG6tZeQJxjzmSEfufkletE6/L+9BXyM0XAKgiRFBVEVwAaVB29HqAAsgWIBCdIg5wNXog
 xl3gMmU1FwbeaAUr4Zww/NaVvWIOspQJrrZq0tvTiEGGvCgOfN2q6O3aI5LFdFj9OgEaPecblp1
 us8rgSqmYRYjkivlDzeXNTzfLesqs5/NOG4u3K/cyWr7z9uU1thjywADA2mCZCm32Y3CIZjVkxs
 7j3ZuuBI+VsCrVYyg2Ct54Pdos5qVlUIbS/ZhV7Jpfc0OJconlajYr5gYz/S87iKjfllkEXUoWD
 U8V8fS5yp055xxYAQxSugUv+zMfVv2oGZKUUk2IULoO8yp6gjnmK5LRIGkNPEZiZKCRVN8PvewV
 pxREnQQWd0gST319Cjv09703hYuDl3CAnE3HC1swQ5ao11ruDz+Bb7I3T9aWQYNkDXxdVcXE/aQ
 Pq551oFRsCGb6FaoPQlr9WizNiI6bcPJm3DtN+Zhl3inPX7XqoUMsNRpRjL18Q58yJgCeb+0KHz
 k6bU4toQTsBU3bd7ShVM7jm5TuM2Or6iEAY0GOj7hCJXD6YqxKJfXSByOTEg7jMaLDtF95867Pg
 HjSr2Oo2EaD46uGqWH/P+Eh0U/KnI9s+ifIrtrXzeFZlsY1C0LmiXdBe56tQ44dzCpmyS/RRIPq
 252Xho0K+r24fNg==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_030234_113996_0686EF62 
X-CRM114-Status: UNSURE (   8.40  )
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

The DPHY driver does not return the actual hs_clk_rate, so the DSI
driver has no idea what clock was actually achieved. Set the realized
hs_clk_rate to the opts struct, so that the DSI driver gets it back.

Reviewed-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>
Tested-by: Parth Pancholi <parth.pancholi@toradex.com>
Tested-by: Jayesh Choudhary <j-choudhary@ti.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
Reviewed-by: Devarsh Thakkar <devarsht@ti.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/phy/cadence/cdns-dphy.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
index ed87a3970f83..f79ec4fab409 100644
--- a/drivers/phy/cadence/cdns-dphy.c
+++ b/drivers/phy/cadence/cdns-dphy.c
@@ -79,6 +79,7 @@ struct cdns_dphy_cfg {
 	u8 pll_ipdiv;
 	u8 pll_opdiv;
 	u16 pll_fbdiv;
+	u32 hs_clk_rate;
 	unsigned int nlanes;
 };
 
@@ -154,6 +155,9 @@ static int cdns_dsi_get_dphy_pll_cfg(struct cdns_dphy *dphy,
 					  cfg->pll_ipdiv,
 					  pll_ref_hz);
 
+	cfg->hs_clk_rate = div_u64((u64)pll_ref_hz * cfg->pll_fbdiv,
+				   2 * cfg->pll_opdiv * cfg->pll_ipdiv);
+
 	return 0;
 }
 
@@ -297,6 +301,7 @@ static int cdns_dphy_config_from_opts(struct phy *phy,
 	if (ret)
 		return ret;
 
+	opts->hs_clk_rate = cfg->hs_clk_rate;
 	opts->wakeup = cdns_dphy_get_wakeup_time_ns(dphy) / 1000;
 
 	return 0;

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

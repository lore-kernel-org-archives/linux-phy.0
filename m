Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4388C7EE2D
	for <linux-phy@archiver.kernel.org>; Fri,  5 May 2023 11:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2xKHx7ro67tkYFGoHWNkcYs+f4j2iY4zeFhiVEzy2zQ=; b=MRN/OBMcAQrD+I
	M/vmKh6PLVtkdyKTaBIXCy8NIkh7FjRb9IUVfCZCpfNI+6vYDiMEDpYciK+ade9CqyaknI7oemVKE
	mAQh4Q5eyst+rLMltoNhI9R+xn72mXnb8SvAJ4LR88YtDh+z+3QWbDNXBftXmXwig400Wf+0/iEsn
	2VuewM7Rj1P48jfKvnc4hut1d045GGlTswjhk3Tu5shRkTbZEpwFMJyejmb+MBuhgvZdudWHvl65h
	X8xpeDrCOe1ljbPH4ZDCND22w3AgN1+Kacwec0shGE2bCaHAiJ+ga0RVKLLFKKO7D21CAygbiO8qL
	NlJ36BvFFpbR6baD5kzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1putbR-00Afyu-1W;
	Fri, 05 May 2023 11:27:57 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1putbO-00AfwY-31
	for linux-phy@lists.infradead.org;
	Fri, 05 May 2023 11:27:56 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 0401D32002E8;
	Fri,  5 May 2023 07:27:53 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Fri, 05 May 2023 07:27:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1683286073; x=1683372473; bh=5CUAMGeeTzIWuuVk4t26KKzEkAKHTDxwo/o
	9G4kl/cI=; b=vXJExDNLPJNyW1JP/sOOBgcAlCDkkZArdLsZr/TujDtxRYLqmGz
	ZkPBtV+NNPaAaNS0AO8FcCwkgU3i/V95E1k8kaATUg4msGbAa6/trT52YKCqfbuO
	0gXzH0XCpdPBV3YHaMHpNKTZzIy14pmA+KoXLFdFte342uPGqLnDZNM7CdzFc2QF
	e6h10oFO60ujIMmVnzICRGXAOyunI+acb+BlQpBtYN9BEBp/u410/36qUbzyfPQP
	/lbf4SnMLLqBVBiRCd8b3TH147XW03V58vbQFG52yI2Izgtdkx24igUtJ54MrxNi
	xjfVuVjJVy8td22fpCjiOubLA2BC5Hu6iEg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1683286073; x=1683372473; bh=5CUAMGeeTzIWuuVk4t26KKzEkAKHTDxwo/o
	9G4kl/cI=; b=XkTLPEZEyA6z9igXCS1g5xo8KrF9yTx3WINMrwt7ZRp2oL+QrID
	0aQntiIZaHGDLzl2R//oxScZSs4Pp541vdqlcX+ldT8w4issWhC6+VpnWhSTzlew
	AVfM40GeANxjE+Q05FDEZkO3LMsBNd9tXyr9L4tOI+zMpUBJ8+1yptmSy6JFtlG5
	SxDsOsCLzTXGbuV5N69WhlLzWfMGKdyHXF1U8VvBv6Pae3x9SKGbXBLnTNgPAd8j
	SbBgCpv42ki11zAkxF8uvc0Jske79LngzTwC7u1KcWHcwXYmDmg47lFm7XS7S+vz
	XIZbTyaCnHaOojlM1hF91UkDaYLTENNtMqw==
X-ME-Sender: <xms:OehUZClG559sSP-H_76nUF10kP4zfshXH2rJJxpQ1GyxuXO29AwqRg>
    <xme:OehUZJ3RQ2JMm84r-gX2u9TaoDQk2CP6C5VeF3wWDwPVnotH7yfyhcFQiTALpD0s_
    4Dfx5ezag02rPFgTmg>
X-ME-Received: <xmr:OehUZAqmTx9q2EKmRm3mjPXnUnYBVMgJC8VzzG4x-W4ua_TFJqrLcNPwEMAUfrB5YDO1ekaJnXXPXlXMgyrY8DR9FH5oKL0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeefvddggedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephfffufggtgfgkfhfjgfvvefosehtjeertdertdejnecuhfhrohhmpeforgig
    ihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrf
    grthhtvghrnhepvedvleeijeegvdekffehkeehieelhfeggfffheetkeeuledvtdeuffeh
    teeltdffnecuvehluhhsthgvrhfuihiivgepuddunecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:OehUZGkaMuafVdAt0lfZ0Q027ZxSb7fI8t89EeqTyFsd2k5myZGrHg>
    <xmx:OehUZA1ZH6oitlzm-nc98zTeusu1DXsJ3n5bimm9g6MTlZmWD9pn4Q>
    <xmx:OehUZNs0PXiruhd-DIrbPiUKs9F2EmmR-6fWnQCHj3Eh7_yCxaTycg>
    <xmx:OehUZE_Pm32qilAwtqDKvYMurtJ5nMzG5JXIzNhgCVYfiPkLaGFRmA>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 5 May 2023 07:27:52 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
Date: Fri, 05 May 2023 13:25:45 +0200
Subject: [PATCH v4 43/68] phy: ti: am654-serdes: Add a determine_rate hook
MIME-Version: 1.0
Message-Id: <20221018-clk-range-checks-fixes-v4-43-971d5077e7d2@cerno.tech>
References: <20221018-clk-range-checks-fixes-v4-0-971d5077e7d2@cerno.tech>
In-Reply-To: <20221018-clk-range-checks-fixes-v4-0-971d5077e7d2@cerno.tech>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 linux-phy@lists.infradead.org
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2182; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=lCm1MALWPWxNIyULtxAkhK6SzyYNNOjJbDNYvLb9WgA=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDCkhz5fk3g/canR0hWBX31Em5lWG9kVvdkg8mxilJibLyLD1
 9UHTjlIWBjEuBlkxRZYYYfMlcadmve5k45sHM4eVCWQIAxenAExE8yHDX5G+DVuvbH7zKfbl/y/b2I
 1Sfa4f5fW2Yvp7Q3/v9sX7Ni5mZFjSGLW9+5ne5dV6f6ZseHRk+cxv9bLno8483PFozYX7jF0sAA==
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_042755_010171_768B3BE3 
X-CRM114-Status: GOOD (  13.96  )
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

The TI AM654 SerDes clock implements a mux with a set_parent
hook, but doesn't provide a determine_rate implementation.

This is a bit odd, since set_parent() is there to, as its name implies,
change the parent of a clock. However, the most likely candidate to
trigger that parent change is a call to clk_set_rate(), with
determine_rate() figuring out which parent is the best suited for a
given rate.

The other trigger would be a call to clk_set_parent(), but it's far less
used, and it doesn't look like there's any obvious user for that clock.

So, the set_parent hook is effectively unused, possibly because of an
oversight. However, it could also be an explicit decision by the
original author to avoid any reparenting but through an explicit call to
clk_set_parent().

The latter case would be equivalent to setting the flag
CLK_SET_RATE_NO_REPARENT, together with setting our determine_rate hook
to __clk_mux_determine_rate(). Indeed, if no determine_rate
implementation is provided, clk_round_rate() (through
clk_core_round_rate_nolock()) will call itself on the parent if
CLK_SET_RATE_PARENT is set, and will not change the clock rate
otherwise.

And if it was an oversight, then we are at least explicit about our
behavior now and it can be further refined down the line.

Since the CLK_SET_RATE_NO_REPARENT flag was already set though, it seems
unlikely.

Cc: Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/phy/ti/phy-am654-serdes.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/ti/phy-am654-serdes.c b/drivers/phy/ti/phy-am654-serdes.c
index 4ed2d951d3df..3f1d43e8b7ad 100644
--- a/drivers/phy/ti/phy-am654-serdes.c
+++ b/drivers/phy/ti/phy-am654-serdes.c
@@ -634,6 +634,7 @@ static int serdes_am654_clk_mux_set_parent(struct clk_hw *hw, u8 index)
 }
 
 static const struct clk_ops serdes_am654_clk_mux_ops = {
+	.determine_rate = __clk_mux_determine_rate,
 	.set_parent = serdes_am654_clk_mux_set_parent,
 	.get_parent = serdes_am654_clk_mux_get_parent,
 };

-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90705C77B75
	for <linux-phy@archiver.kernel.org>; Fri,  5 May 2023 11:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=keZoUKL2pyoNA16cN2ujJ97gHc75sI5fcnckKpEu/HI=; b=Cbilf7BcQ1wXGs
	IMrUW9tpTQWz8RAH1Up5YA+E0DOsVGyMFAaepHwvM++VosfbTMI4DU8Qg6aBABq6+QIp4O1rKDCP6
	NOOPpfoQiJkVq8FQcEqc4Jk5a939t1cnz1EhxSdPp6FHKez+uK4n3WMuTaJgFmXUgqbS1NCYK0kxf
	DnFHJXIzM3qla3MYXu1hBBgJKGS3sZWf73dSDsyKtywFMycRnSz9jh3hOxHC53ZTizxKR2JvOGUj+
	1hgxL5r+hwcGmepNT1Nu9wPDa2KGg+7hfZS7TpcgtSr92A51uDh++XS2iExafgGejAys0H5smwp96
	H55jDzG5P+zRDaeIN8tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1putbV-00Ag24-0P;
	Fri, 05 May 2023 11:28:01 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1putbR-00Afz9-31
	for linux-phy@lists.infradead.org;
	Fri, 05 May 2023 11:27:59 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 020353200A56;
	Fri,  5 May 2023 07:27:56 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Fri, 05 May 2023 07:27:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1683286076; x=1683372476; bh=hcX/iFcq6QpU0coeawXJXTAFZwwC7duWDxv
	CCLDdHHU=; b=YNroDyk47W42j3EpMWZ8+tC+45bgZh8JjkwcdSNnCbdy6D40U97
	+51q9mpZNuvOK/fLqr2hwY0dPssBq/RtuBDk9JOyUshE4Dn9WG/9ZFHSC2tkNc1s
	TfsvA/YgL9vsAXwYSmPffMNP9pvZHKs0SM3IZbw86xflvEEA/0rudWssuobWtKlm
	nC7CBDj/C2W/Y9MHoH2IaPufWOSBjCD798J82AW1dN9b3aYBxGbjd7b+U9A8aaQr
	6oXUjRH7g/sH2KeSCt1yg/P59MUuJOJwHEMiMY2VTb/zeLcHWfQmLBg1FieMtGnc
	y5sXGv6aYe6ZAT4ohgs2XftPDG9nWIhf68g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1683286076; x=1683372476; bh=hcX/iFcq6QpU0coeawXJXTAFZwwC7duWDxv
	CCLDdHHU=; b=fjo7+fJEid96Uj8oIIUjbxOBc1P9DzuLGYsCc8UvSj2Uw/Rz1z/
	9lcBdWSYeVZSbxgfwHL/BoDxq4QxydxVDakaNdKbn4aVUvfhsT4y8UTH0a9Xoeqp
	VLp6sOIeVafCCSQhI57EQR45HeLvfKsbFvD7xfwin5uepSTgP6Z2Fme/QQ/ZGhxw
	6IccAwOt1ZElLP3+F6MjpCehatImNxn3lMKZrKsCbJ0e0xNpscb31bCVPjdUeLIJ
	ye7gsSadWnirrARO7fBBAC7MKP3eDFgXtVd1qBWIBfQy+e89sP/gZHJwzTWcn9vB
	zNjKDIHUmI3SA7fhRfeFKP6Lat9RmSkaKnw==
X-ME-Sender: <xms:POhUZGq2yhpO2tTfOX0QFv645ANwxBgXZTkq5U8np-L2MUnK0NDU5A>
    <xme:POhUZEoD4eUqaGfopUp_HgSt1iwZqrU6OI1ovBkX8y7tcPDbuLEovaYio6Cr0sTjH
    mdv51rL1i75BhzgpV4>
X-ME-Received: <xmr:POhUZLM6WzUbDUFqQD02e9vNAlbmZhqfo3W3i7FBM-5ASt90No_Td4_2ccpYgodYncWK1SbZYTGOMD9hyrfKMEdZcyep7fs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeefvddggedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephfffufggtgfgkfhfjgfvvefosehtjeertdertdejnecuhfhrohhmpeforgig
    ihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrf
    grthhtvghrnhepvedvleeijeegvdekffehkeehieelhfeggfffheetkeeuledvtdeuffeh
    teeltdffnecuvehluhhsthgvrhfuihiivgepuddvnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:POhUZF48fEpbL8nN2SiRC3Vn0ZxyYfhawxedbs42nWIHppMxnHelmQ>
    <xmx:POhUZF7sDbzIBPVhMjlCwdk0ToXE4RMxe7QkKg0gwJeMDcZXmo7jfQ>
    <xmx:POhUZFi02H9R9FyV2jbNg4WN1jOt2KnwjihaK7mHbPlTnEn2EMh8_g>
    <xmx:POhUZDRf-_APlg--AnABjYp485glEv1aHWZ9cWCOxs7k0YQOKiDfBw>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 5 May 2023 07:27:55 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
Date: Fri, 05 May 2023 13:25:46 +0200
Subject: [PATCH v4 44/68] phy: ti: j721e-wiz: Add a determine_rate hook
MIME-Version: 1.0
Message-Id: <20221018-clk-range-checks-fixes-v4-44-971d5077e7d2@cerno.tech>
References: <20221018-clk-range-checks-fixes-v4-0-971d5077e7d2@cerno.tech>
In-Reply-To: <20221018-clk-range-checks-fixes-v4-0-971d5077e7d2@cerno.tech>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 linux-phy@lists.infradead.org
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2128; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=8U3PuWGWX41u9oP5HxOpi/U4ljKCUsW/FeSVrq4njg0=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDCkhz5ckrpdVyBDvt374mb1ZMkX/ksNLv4dvPGV/7GIKnR/q
 tPxoRykLgxgXg6yYIkuMsPmSuFOzXney8c2DmcPKBDKEgYtTACZi9ojhF9POzH+bTS28F85g0d52de
 fvVZsOt+5U3L6R0SgvY9qi9OUM/wMSuSLuHH1evu2Yuzaf0e5FacbXJfgEVvXYuuw8fEnWlgMA
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_042758_007550_33D17B02 
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

The TI J721e Wiz clock implements a mux with a set_parent
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
 drivers/phy/ti/phy-j721e-wiz.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index d91923799df2..fc3cd98c60ff 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -801,6 +801,7 @@ static int wiz_clk_mux_set_parent(struct clk_hw *hw, u8 index)
 }
 
 static const struct clk_ops wiz_clk_mux_ops = {
+	.determine_rate = __clk_mux_determine_rate,
 	.set_parent = wiz_clk_mux_set_parent,
 	.get_parent = wiz_clk_mux_get_parent,
 };

-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

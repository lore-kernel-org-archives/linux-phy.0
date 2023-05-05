Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6E32C7EE2C
	for <linux-phy@archiver.kernel.org>; Fri,  5 May 2023 11:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EjAZkoTNG/k29qbdDUVF3jH8bw4vsmLoyVkNgosGlYQ=; b=n6KYpnf3R6p0QR
	9lQ+iVZ2zRyvdzxvJISkv9TmGFEZAkL4V6fTfyS1sZNU7ytWqjE8GsRIFf3ih04X1TuY758+ux5OY
	4YmfaOvY8sw4TBSaMsNQLS1KHkATk/iUKpWmmoK0JwR3WNRwH3n5nU1M1RnYjTOqRpI+VOqivUovb
	m8aqyezy36zYMlv220m/pm5HAm5Q4V4QxyTfRP2cX33rBd0BanYGlO7grgLTo88yH3uVjJMFQJeXe
	9qK2f1Z6aQw59ibpHw0fbpOfA7OO9W5GkL/jBEwI7CsNw3BtNusfL+J/w0QmxNI7Ldc7lOPKFNlD/
	SmBxsxz/u1w/XfGwtBng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1putco-00Agyx-0G;
	Fri, 05 May 2023 11:29:22 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1putcj-00Agvh-1f;
	Fri, 05 May 2023 11:29:19 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailnew.west.internal (Postfix) with ESMTP id 56BF22B067C5;
	Fri,  5 May 2023 07:29:12 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Fri, 05 May 2023 07:29:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1683286151; x=1683293351; bh=ndjQ7HVeSN4i8zABollHrDBZww9ExlgvMkp
	LIBiyWjo=; b=T9Lw9zwl1j4gAchlAqf868n+ONsa8T1Jma6Kie6SQqc1JsZ8+up
	UPSosBn8a0prhr7B3JBHHvepawk7SM4AB0S50m0Z9C02z7dPGSqRReKS+VLkOHOB
	FAPs4SpSsVmTF3+8Ghz1q2Rhj1RpmWNUSZpmMQysHLSIw8WXIZrtTh71obkbsjSH
	xXAPhzeznignXNTp9Fx4tbHnMbWbffu1MCr9w91lyQKR3FITe4l3bYl8bB6ARjRR
	SYOOAUEPGmML0VGXkaomNLjq0zGLu1gJAkaJYA0h1OsbGOMdL91WfJCQZRm/h3ow
	/QukAyMhsUluR/jKby4pprO+Hv1jfHBgwLw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1683286151; x=1683293351; bh=ndjQ7HVeSN4i8zABollHrDBZww9ExlgvMkp
	LIBiyWjo=; b=CF6WSKQYCI3E/jvMvy7zs1RZSdpsH0+IH+yaVCHNcUhncsNcedq
	cATqo/Attv11v0DdvvbcBfJ3OnGALuLFUIl3QgQ7iNo0D1vnIOfzTD0WF/GzKJlQ
	J5qxewihlTYG3fGiei38zNGWwMruRYaoRbBTPHykZEK2a2Si/2im4Msiwxme3Qdq
	A168MT4Bop8kBkgmRsV5K4u1vkuDErr6LrsCg/rdX6ubv2bTwsAPnRF0flo4awo5
	2E48YfpF4ZMmjNwZZklF/sc6h6g75NAtns98uYrlW965X5lN7wlZ3kcG7vD7VJ32
	L+dvZMF95jxVQTg9CV3DeNH0/bmh8wLKB1Q==
X-ME-Sender: <xms:h-hUZHkZbvPknp2uhhk8X9aGi9g2nwtaWY7fgCaXzPks-vfHbPaJXA>
    <xme:h-hUZK2qRUJ9AIN7EFOGhT9O5BPMFq1BXX5ZOalGfbC98TlXOpT9He__fzCru0SNx
    bVWR87jLDTODQ--9ng>
X-ME-Received: <xmr:h-hUZNpx3SN1tVrfCA1jJoyEqrUcIaDUXoJokh5g6QjG63oL9Jf2VjbenVoeey9CFNXkaHZkXPKN18AeqPY1qWzbvxn2xlw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeefvddggeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephfffufggtgfgkfhfjgfvvefosehtkeertdertdejnecuhfhrohhmpeforgig
    ihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrf
    grthhtvghrnhepudduudfhveejteefgedvffdvvedvjedugedukeejhedtlefhffevtefh
    jeeltdevnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    epmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:h-hUZPnBbn94NkQEKEvHbnG2dNEDSaWJ3HzWEz6UeZ3oi0Hr2f1wBw>
    <xmx:h-hUZF0RPsBudEBxx_2_QL7vcNG8U86RLpUqgDh4H-Jv8xu81dOidA>
    <xmx:h-hUZOuOqcak98u8Mk2jcNEfbau8KqAAexmRK7VnFIq5AZP85OXh5Q>
    <xmx:h-hUZG_LJv11B8ecbvnvjZu0iT3jsoKOqbg0CYomkb7L4J0dvgDMfjXr3iQ>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 5 May 2023 07:29:10 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
Date: Fri, 05 May 2023 13:26:10 +0200
Subject: [PATCH v4 68/68] clk: Forbid to register a mux without
 determine_rate
MIME-Version: 1.0
Message-Id: <20221018-clk-range-checks-fixes-v4-68-971d5077e7d2@cerno.tech>
References: <20221018-clk-range-checks-fixes-v4-0-971d5077e7d2@cerno.tech>
In-Reply-To: <20221018-clk-range-checks-fixes-v4-0-971d5077e7d2@cerno.tech>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>,
  Abel Vesa <abelvesa@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
  Alexandre Belloni <alexandre.belloni@bootlin.com>,
  Alexandre Torgue <alexandre.torgue@foss.st.com>,
  =?utf-8?q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
  AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
  Baolin Wang <baolin.wang@linux.alibaba.com>,
  Charles Keepax <ckeepax@opensource.cirrus.com>,
  Chen-Yu Tsai <wens@csie.org>, Chen-Yu Tsai <wenst@chromium.org>,
  Chunyan Zhang <zhang.lyra@gmail.com>,
  Claudiu Beznea <claudiu.beznea@microchip.com>,
  Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
  David Lechner <david@lechnology.com>, Dinh Nguyen <dinguyen@kernel.org>,
  Fabio Estevam <festevam@gmail.com>,
  Geert Uytterhoeven <geert+renesas@glider.be>,
  Jaroslav Kysela <perex@perex.cz>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
  Jonathan Hunter <jonathanh@nvidia.com>,
  Kishon Vijay Abraham I <kishon@kernel.org>,
  Liam Girdwood <lgirdwood@gmail.com>,
  Linus Walleij <linus.walleij@linaro.org>,
  Luca Ceresoli <luca.ceresoli@bootlin.com>,
  Manivannan Sadhasivam <mani@kernel.org>,
 Mark Brown <broonie@kernel.org>,
  Markus Schneider-Pargmann <msp@baylibre.com>,
  Max Filippov <jcmvbkbc@gmail.com>,
  Maxime Coquelin <mcoquelin.stm32@gmail.com>,
  Mikko Perttunen <mperttunen@nvidia.com>,
  Miles Chen <miles.chen@mediatek.com>,
  Nicolas Ferre <nicolas.ferre@microchip.com>,
  Orson Zhai <orsonzhai@gmail.com>, Paul Cercueil <paul@crapouillou.net>,
  Peng Fan <peng.fan@nxp.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
  Prashant Gaikwad <pgaikwad@nvidia.com>,
  Richard Fitzgerald <rf@opensource.cirrus.com>,
  Samuel Holland <samuel@sholland.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,  Sekhar Nori <nsekhar@ti.com>,
 Shawn Guo <shawnguo@kernel.org>,  Takashi Iwai <tiwai@suse.com>,
 Thierry Reding <thierry.reding@gmail.com>,
  Ulf Hansson <ulf.hansson@linaro.org>, Vinod Koul <vkoul@kernel.org>,
  dri-devel@lists.freedesktop.org, linux-actions@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
  linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org,
  linux-rtc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
  linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
  NXP Linux Team <linux-imx@nxp.com>, patches@opensource.cirrus.com,
  Pengutronix Kernel Team <kernel@pengutronix.de>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4464; i=maxime@cerno.tech;
 h=from:subject:message-id; bh=3adLcMXzLNtbtn3jDq9B/uPJX8+PAXTnVm0BAOsWqLs=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDCkhz5f++bpla/KjT+HVHNwH3ZZ43W04aiYltLwmTObeLs9b
 +dfrO0pZGMS4GGTFFFlihM2XxJ2a9bqTjW8ezBxWJpAhDFycAjARhmKG/8mm/ZL2RzblvZLa8tXGK5
 PzRLb6I/fSXxkpb5W8WG6VqDD8lRZM8Tofc+S4jfAN7mnZR1sD/rBeip/deyxP567/o2Z1XgA=
X-Developer-Key: i=maxime@cerno.tech; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_042917_584338_3B9E26D2 
X-CRM114-Status: GOOD (  19.98  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhlIGRldGVybWluZV9yYXRlIGhvb2sgYWxsb3dzIHRvIHNlbGVjdCB0aGUgcHJvcGVyIHBhcmVu
dCBhbmQgaXRzIHJhdGUKZm9yIGEgZ2l2ZW4gY2xvY2sgY29uZmlndXJhdGlvbi4gT24gYW5vdGhl
ciBoYW5kLCBzZXRfcGFyZW50IGlzIHRoZXJlIHRvCmNoYW5nZSB0aGUgcGFyZW50IG9mIGEgbXV4
LgoKU29tZSBjbG9ja3MgcHJvdmlkZSBhIHNldF9wYXJlbnQgaG9vayBidXQgZG9uJ3QgaW1wbGVt
ZW50CmRldGVybWluZV9yYXRlLiBJbiBzdWNoIGEgY2FzZSwgc2V0X3BhcmVudCBpcyBwcmV0dHkg
bXVjaCB1c2VsZXNzIHNpbmNlCnRoZSBjbG9jayBmcmFtZXdvcmsgd2lsbCBhbHdheXMgYXNzdW1l
IHRoZSBjdXJyZW50IHBhcmVudCBpcyB0byBiZSB1c2VkLAphbmQgd2Ugd2lsbCB0aHVzIG5ldmVy
IGNoYW5nZSBpdC4KClRoaXMgc2l0dWF0aW9uIGNhbiBiZSBzb2x2ZWQgaW4gdHdvIHdheXM6CiAg
LSBlaXRoZXIgd2UgZG9uJ3QgbmVlZCB0byBjaGFuZ2UgdGhlIHBhcmVudCwgYW5kIHdlIHRodXMg
c2hvdWxkbid0CiAgICBpbXBsZW1lbnQgc2V0X3BhcmVudDsKICAtIG9yIHdlIGRvbid0IHdhbnQg
dG8gY2hhbmdlIHRoZSBwYXJlbnQsIGluIHRoaXMgY2FzZSB3ZSBzaG91bGQgc2V0CiAgICBDTEtf
U0VUX1JBVEVfTk9fUkVQQVJFTlQ7CiAgLSBvciB3ZSdyZSBtaXNzaW5nIGEgZGV0ZXJtaW5lX3Jh
dGUgaW1wbGVtZW50YXRpb24uCgpUaGUgbGF0dGVyIGlzIHByb2JhYmx5IGp1c3QgYW4gb3ZlcnNp
Z2h0IGZyb20gdGhlIGRyaXZlcidzIGF1dGhvciwgYW5kCndlIHNob3VsZCB0aHVzIHJhaXNlIHRo
ZWlyIGF3YXJlbmVzcyBhYm91dCB0aGUgZmFjdCB0aGF0IHRoZSBjdXJyZW50CnN0YXRlIG9mIHRo
ZSBkcml2ZXIgaXMgY29uZnVzaW5nLgoKQWxsIHRoZSBkcml2ZXJzIGluLXRyZWUgaGF2ZSBiZWVu
IGNvbnZlcnRlZCBieSBub3csIHNvIGxldCdzIHByZXZlbnQgYW55CmNsb2NrIHdpdGggc2V0X3Bh
cmVudCBidXQgd2l0aG91dCBkZXRlcm1pbmVfcmF0ZSB0byByZWdpc3RlciBzbyB0aGF0IGl0CmNh
bid0IHNuZWFrIGluIGFnYWluIGluIHRoZSBmdXR1cmUuCgpDYzogQWJlbCBWZXNhIDxhYmVsdmVz
YUBrZXJuZWwub3JnPgpDYzogQWxlc3NhbmRybyBadW1tbyA8YS56dW1tb0B0b3dlcnRlY2guaXQ+
CkNjOiBBbGV4YW5kcmUgQmVsbG9uaSA8YWxleGFuZHJlLmJlbGxvbmlAYm9vdGxpbi5jb20+CkNj
OiBBbGV4YW5kcmUgVG9yZ3VlIDxhbGV4YW5kcmUudG9yZ3VlQGZvc3Muc3QuY29tPgpDYzogIkFu
ZHJlYXMgRsOkcmJlciIgPGFmYWVyYmVyQHN1c2UuZGU+CkNjOiBBbmdlbG9HaW9hY2NoaW5vIERl
bCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPgpDYzogQmFv
bGluIFdhbmcgPGJhb2xpbi53YW5nQGxpbnV4LmFsaWJhYmEuY29tPgpDYzogQ2hhcmxlcyBLZWVw
YXggPGNrZWVwYXhAb3BlbnNvdXJjZS5jaXJydXMuY29tPgpDYzogQ2hlbi1ZdSBUc2FpIDx3ZW5z
QGNzaWUub3JnPgpDYzogQ2hlbi1ZdSBUc2FpIDx3ZW5zdEBjaHJvbWl1bS5vcmc+CkNjOiBDaHVu
eWFuIFpoYW5nIDx6aGFuZy5seXJhQGdtYWlsLmNvbT4KQ2M6IENsYXVkaXUgQmV6bmVhIDxjbGF1
ZGl1LmJlem5lYUBtaWNyb2NoaXAuY29tPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xs
LmNoPgpDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4KQ2M6IERhdmlkIExlY2hu
ZXIgPGRhdmlkQGxlY2hub2xvZ3kuY29tPgpDYzogRGluaCBOZ3V5ZW4gPGRpbmd1eWVuQGtlcm5l
bC5vcmc+CkNjOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+CkNjOiBHZWVydCBV
eXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgpDYzogSmFyb3NsYXYgS3lzZWxh
IDxwZXJleEBwZXJleC5jej4KQ2M6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BnbWFp
bC5jb20+CkNjOiBKb25hdGhhbiBIdW50ZXIgPGpvbmF0aGFuaEBudmlkaWEuY29tPgpDYzogS2lz
aG9uIFZpamF5IEFicmFoYW0gSSA8a2lzaG9uQGtlcm5lbC5vcmc+CkNjOiBMaWFtIEdpcmR3b29k
IDxsZ2lyZHdvb2RAZ21haWwuY29tPgpDYzogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBs
aW5hcm8ub3JnPgpDYzogTHVjYSBDZXJlc29saSA8bHVjYS5jZXJlc29saUBib290bGluLmNvbT4K
Q2M6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaUBrZXJuZWwub3JnPgpDYzogTWFyayBCcm93
biA8YnJvb25pZUBrZXJuZWwub3JnPgpDYzogTWFya3VzIFNjaG5laWRlci1QYXJnbWFubiA8bXNw
QGJheWxpYnJlLmNvbT4KQ2M6IE1heCBGaWxpcHBvdiA8amNtdmJrYmNAZ21haWwuY29tPgpDYzog
TWF4aW1lIENvcXVlbGluIDxtY29xdWVsaW4uc3RtMzJAZ21haWwuY29tPgpDYzogTWlra28gUGVy
dHR1bmVuIDxtcGVydHR1bmVuQG52aWRpYS5jb20+CkNjOiBNaWxlcyBDaGVuIDxtaWxlcy5jaGVu
QG1lZGlhdGVrLmNvbT4KQ2M6IE5pY29sYXMgRmVycmUgPG5pY29sYXMuZmVycmVAbWljcm9jaGlw
LmNvbT4KQ2M6IE9yc29uIFpoYWkgPG9yc29uemhhaUBnbWFpbC5jb20+CkNjOiBQYXVsIENlcmN1
ZWlsIDxwYXVsQGNyYXBvdWlsbG91Lm5ldD4KQ2M6IFBlbmcgRmFuIDxwZW5nLmZhbkBueHAuY29t
PgpDYzogUGV0ZXIgRGUgU2NocmlqdmVyIDxwZGVzY2hyaWp2ZXJAbnZpZGlhLmNvbT4KQ2M6IFBy
YXNoYW50IEdhaWt3YWQgPHBnYWlrd2FkQG52aWRpYS5jb20+CkNjOiBSaWNoYXJkIEZpdHpnZXJh
bGQgPHJmQG9wZW5zb3VyY2UuY2lycnVzLmNvbT4KQ2M6IFNhbXVlbCBIb2xsYW5kIDxzYW11ZWxA
c2hvbGxhbmQub3JnPgpDYzogU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgpD
YzogU2VraGFyIE5vcmkgPG5zZWtoYXJAdGkuY29tPgpDYzogU2hhd24gR3VvIDxzaGF3bmd1b0Br
ZXJuZWwub3JnPgpDYzogVGFrYXNoaSBJd2FpIDx0aXdhaUBzdXNlLmNvbT4KQ2M6IFRoaWVycnkg
UmVkaW5nIDx0aGllcnJ5LnJlZGluZ0BnbWFpbC5jb20+CkNjOiBVbGYgSGFuc3NvbiA8dWxmLmhh
bnNzb25AbGluYXJvLm9yZz4KQ2M6IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+CkNjOiBk
cmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBsaW51eC1hY3Rpb25zQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpDYzog
bGludXgtbWlwc0B2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCkNjOiBsaW51eC1yZW5lc2FzLXNvY0B2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LXJ0Y0B2
Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LXN0bTMyQHN0LW1kLW1haWxtYW4uc3Rvcm1yZXBseS5j
b20KQ2M6IGxpbnV4LXN1bnhpQGxpc3RzLmxpbnV4LmRldgpDYzogbGludXgtdGVncmFAdmdlci5r
ZXJuZWwub3JnCkNjOiBOWFAgTGludXggVGVhbSA8bGludXgtaW14QG54cC5jb20+CkNjOiBwYXRj
aGVzQG9wZW5zb3VyY2UuY2lycnVzLmNvbQpDYzogUGVuZ3V0cm9uaXggS2VybmVsIFRlYW0gPGtl
cm5lbEBwZW5ndXRyb25peC5kZT4KUmV2aWV3ZWQtYnk6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+ClNpZ25lZC1vZmYt
Ynk6IE1heGltZSBSaXBhcmQgPG1heGltZUBjZXJuby50ZWNoPgotLS0KIGRyaXZlcnMvY2xrL2Ns
ay5jIHwgNyArKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9jbGsvY2xrLmMgYi9kcml2ZXJzL2Nsay9jbGsuYwppbmRleCBlNGExZDVm
OTY5NGMuLmM4ZjkyMjdjMjljOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvY2xrLmMKKysrIGIv
ZHJpdmVycy9jbGsvY2xrLmMKQEAgLTM3NzUsNiArMzc3NSwxMyBAQCBzdGF0aWMgaW50IF9fY2xr
X2NvcmVfaW5pdChzdHJ1Y3QgY2xrX2NvcmUgKmNvcmUpCiAJCWdvdG8gb3V0OwogCX0KIAorCWlm
IChjb3JlLT5vcHMtPnNldF9wYXJlbnQgJiYgIWNvcmUtPm9wcy0+ZGV0ZXJtaW5lX3JhdGUpIHsK
KwkJcHJfZXJyKCIlczogJXMgbXVzdCBpbXBsZW1lbnQgLnNldF9wYXJlbnQgJiAuZGV0ZXJtaW5l
X3JhdGVcbiIsCisJCQlfX2Z1bmNfXywgY29yZS0+bmFtZSk7CisJCXJldCA9IC1FSU5WQUw7CisJ
CWdvdG8gb3V0OworCX0KKwogCWlmIChjb3JlLT5udW1fcGFyZW50cyA+IDEgJiYgIWNvcmUtPm9w
cy0+Z2V0X3BhcmVudCkgewogCQlwcl9lcnIoIiVzOiAlcyBtdXN0IGltcGxlbWVudCAuZ2V0X3Bh
cmVudCBhcyBpdCBoYXMgbXVsdGkgcGFyZW50c1xuIiwKIAkJICAgICAgIF9fZnVuY19fLCBjb3Jl
LT5uYW1lKTsKCi0tIAoyLjQwLjAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK

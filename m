Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFB39C83F26
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 09:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5V87xGAhXb2oV+0kXZ+yQh4knu+nq79CJ5v6JUsdLFs=; b=yqqSmrko0LbpkB
	wTIH7px8X9Q8mSJm29oiuyrY1GKAzGxwJ1BoV02ZObshw/uDDUsioLGAotorM4CIscRAPvKkf+SDU
	4q1hubKtFdK4/0P5km8zfauxlsmuMQyU+3HqDx2wvcjydJZ0W3DvMb+XD0gFaRt0Kp2IJv41S9fqx
	mBenGzyz5ZFDkDxJLb4xHj86bIcVNkBos9nApB9Q6ZaXBmMTcIpginWEKe6DZz2gGX/1ZmDylsMAO
	PlRtf+nPSuLNcVFLZBCTHNS3pgj+Vf1AWrdbmA1u9lBlyUeDV4oOnO6k5D78IRVofPxZxUCvw8snO
	JRGzvo134o4Um9z2s2qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesZZ-000000076qQ-2Rt1;
	Thu, 24 Jul 2025 09:49:09 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uerUx-00000006tlc-33VF;
	Thu, 24 Jul 2025 08:40:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753346418;
	bh=79IiT01WqqfGJsxqr2zSZrjVmej26p1wmIClQAwKg7k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Uek58p7x8jLEyeo2jnJ+8e9UBpVPY7LMbqg1N87YQ74VZFDfiykXXXCWFllvOm0h9
	 3woqZmMZbU6v7UOr7sFCuY19kKGEPGCijp315UAnAf8XMSCFQ0G8M+lhsflr/CKeJH
	 Zv09E/giADuC5JgJIXWm3BNus8l9/bCYwi7tyqj6EQUY+ONrhK7YEnvzqE4vWtJHmZ
	 YmBhy3w1iqXv143Em/pBdoQosQWqs3sqDYu4nMdzhf25TqyIMXol3KF3zbG7TC9eSR
	 /7gp3CslJ4bGv9fU/AK7pW+uDsp94EA1JJ8joh5vg6MX+II+8lspQSqvYNiP334vE3
	 4vs82ThT+gSXw==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F28E117E1298;
	Thu, 24 Jul 2025 10:40:15 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: linux-mediatek@lists.infradead.org,
	robh@kernel.org
Cc: herbert@gondor.apana.org.au,
	davem@davemloft.net,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	jassisinghbrar@gmail.com,
	mchehab@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	chunfeng.yun@mediatek.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	sean.wang@kernel.org,
	linus.walleij@linaro.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	andersson@kernel.org,
	mathieu.poirier@linaro.org,
	daniel.lezcano@linaro.org,
	tglx@linutronix.de,
	atenart@kernel.org,
	jitao.shi@mediatek.com,
	ck.hu@mediatek.com,
	houlong.wei@mediatek.com,
	kyrie.wu@mediatek.corp-partner.google.com,
	andy.teng@mediatek.com,
	tinghan.shen@mediatek.com,
	jiaxin.yu@mediatek.com,
	shane.chien@mediatek.com,
	olivia.wen@mediatek.com,
	granquet@baylibre.com,
	eugen.hristev@linaro.org,
	arnd@arndb.de,
	sam.shih@mediatek.com,
	jieyy.yang@mediatek.com,
	frank-w@public-files.de,
	mwalle@kernel.org,
	fparent@baylibre.com,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-gpio@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	linux-sound@vger.kernel.org
Subject: [PATCH 20/38] arm64: dts: mediatek: mt6795-xperia-m5: Fix mmc0 latch-ck value
Date: Thu, 24 Jul 2025 10:38:56 +0200
Message-ID: <20250724083914.61351-21-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_014019_930136_DAD7CEB6 
X-CRM114-Status: GOOD (  10.42  )
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

Change the latch-ck value from 0x14 to 4: as only bits [0-3] are
actually used, the final value that gets written to the register
field for DAT_LATCH_CK_SEL is just 0x4.

This also fixes dtbs_check warnings.

Fixes: 5a65dcccf483 ("arm64: dts: mediatek: mt6795-xperia-m5: Add eMMC, MicroSD slot, SDIO")
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts b/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts
index 91de920c2245..03cc48321a3f 100644
--- a/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts
+++ b/arch/arm64/boot/dts/mediatek/mt6795-sony-xperia-m5.dts
@@ -212,7 +212,7 @@ proximity@48 {
 
 &mmc0 {
 	/* eMMC controller */
-	mediatek,latch-ck = <0x14>; /* hs400 */
+	mediatek,latch-ck = <4>; /* hs400 */
 	mediatek,hs200-cmd-int-delay = <1>;
 	mediatek,hs400-cmd-int-delay = <1>;
 	mediatek,hs400-ds-dly3 = <0x1a>;
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

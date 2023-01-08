Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0BFCC61DB3
	for <linux-phy@archiver.kernel.org>; Sun,  8 Jan 2023 19:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t/P3HLRGUAVHEIF3HKDFHDYqeN5GrtBrST5uxkWj1mE=; b=td0fIwAxp7rvjw
	zd8USUkPRTp/ylcVD5COAnTlLwQN296cj+YdecicPLvuaepuyhckiCIDXF9zvbz3GqXEkxwUoSQjt
	iP0QjnzWKst2vhpghKIawnnNLbnPgfZbc6g7o49vZVMdx62yXabpmA+A4AOgEU70eXvjXn9RAT6pL
	Cvs3dpfboTkaNhpOyw36DDgaKaULQaLh1Kp6KR3BGsQecyj5PMFuqbyAT7904Sr/ap3hCKrhG21yK
	UBRZDBDmI410ELozJLzTcVCT7jeputQgEFyzGdoWiOUpJO45HVuQIu3KRyvYYpUo02SGIMa5dl1SK
	nP4bt8IRlbPXT77Xd7LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEbkJ-00FXI3-9k; Sun, 08 Jan 2023 19:54:19 +0000
Received: from vmi888983.contaboserver.net ([149.102.157.145] helo=amity.mint.lgbt)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEbkF-00FXF1-MB
	for linux-phy@lists.infradead.org; Sun, 08 Jan 2023 19:54:17 +0000
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
	by amity.mint.lgbt (Postfix) with ESMTP id 4Nqnnx0PqMz1S59n
	for <linux-phy@lists.infradead.org>; Sun,  8 Jan 2023 14:53:57 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
	content-transfer-encoding:mime-version:x-mailer:message-id:date
	:subject:to:from; s=dkim; t=1673207636; x=1674071637; bh=9dsgbhg
	A9vnJIYjG6YuVbFl47O4RVEcVJHNR4rpiPy0=; b=pXks/KWScelK/lBld7jZJZo
	b4I5e0ozw49Dhv0+vcX9G5q9mK1iPpe8mpFMU0CC8M6Kv+qr27mPl1dnTQU6lEXn
	X95pVy3nMlpLa7nYkcGO0IJx7G5YRTKz603oydBk45+qj4AXQ7mmmPQKhVSfy9c2
	V+AhsGQAxhCzRwxGVFQf9QNisS0ves8+2wK1lvehW+8M1SXbaCXaYDxWymu/yJmo
	gBIgAZAqdt5ZNeeCIHlGfKwY8MlOXy7MfXW+5YvbfvpTxF9jyU/0EnzKgVBrG1QL
	6hBym9KB6RGEHx7N/+WodRy4aJZOOslAl8KJgJSWxcoqQGUaFSo6KlpT+tRUSfg=
	=
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
	by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id AIb-DVaWGF3g for <linux-phy@lists.infradead.org>;
	Sun,  8 Jan 2023 14:53:56 -0500 (EST)
Received: from dorothy.. (unknown [186.105.5.197])
	by amity.mint.lgbt (Postfix) with ESMTPSA id 4Nqnnj34NHz1S56d;
	Sun,  8 Jan 2023 14:53:45 -0500 (EST)
From: Lux Aliaga <they@mint.lgbt>
To: agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	keescook@chromium.org,
	tony.luck@intel.com,
	gpiccoli@igalia.com
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	phone-devel@vger.kernel.org,
	martin.botka@somainline.org,
	marijn.suijten@somainline.org
Subject: [PATCH v6 0/6] arm64: dts: qcom: sm6125: UFS and xiaomi-laurel-sprout support
Date: Sun,  8 Jan 2023 16:53:30 -0300
Message-Id: <20230108195336.388349-1-they@mint.lgbt>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_115415_909398_7376355A 
X-CRM114-Status: UNSURE (   4.64  )
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

Introduce Universal Flash Storage support on SM6125 and add support for the Xiaomi Mi A3 based on the former platform. Uses the name xiaomi-laurel-sprout instead of the official codename (laurel_sprout) due to naming limitations in the kernel.

Changes since v5:
- Drop "non-removable" property from ufs_mem_hc for sm6125 platform
- Drop "status" and "autorepeat" properties from gpio-keys node for xiaomi-laurel-sprout
- Rename "key-vol-up" node to "key-volume-up" for xiaomi-laurel-sprout
- Drop "gpio-key,wakeup" property from key-volume-up node for xiaomi-laurel-sprout
- Set "linux,input-type" and "wakeup-source" properties on key-volume-up node for xiaomi-laurel-sprout
- Change "key_vol_up" node name to "vol-up-n-state" and its label to "vol_up_n" in PM6125 GPIO node for xiaomi-laurel-sprout
- Use labels instead of node names for PM6125 ADC channels in xiaomi laurel-sprout
- Set "regulator-allow-set-load" properties on l4, l5, l10, l11, l18 and l24 regulators on xiaomi-laurel-sprout

v5: https://lore.kernel.org/linux-devicetree/20221231222420.75233-2-they@mint.lgbt/




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

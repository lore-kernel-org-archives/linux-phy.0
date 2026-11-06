Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30737606D837
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 18:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PYMbJr7w;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=J/k9mSlw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=l9sPuM+YYQBiiICfOCnhB9ccM4LBhqXScDbXSJAJ5Y4=; b=PYMbJr7wDBRqJmj4yq0tTPJ8X9
	zkERC+IZZTkDygt/74IOC9YK3fdwY620SkRMwY3IlcMelav+CVyi7m17KZ2aqJeLtmZcxz3kNwtzz
	OmJyhYv6sJB5wWd/YkZ9ch+xlEfkEBBN+cT5GTugwUC5+pgcnSIekHlmmwdahdJrLB2/cu7ABNf9d
	gEGuDHaiJxSjOI8NI0sYOwmjuI7Smn2IcoKKccdFwOx2oc99WEArESosEhAXIN91Cc6CQi8+jrkrZ
	tAvK4HRRGXPQkPHLa9ig67CdIAQ28FzyuZbKa6hOVryVZPLqSy7ZtYkH5q6UJCI0K0t3UZYnAOojY
	25RMLcQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPOnp-0000000DPaj-3RJI;
	Fri, 06 Nov 2026 18:36:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPOnn-0000000DPZ0-41E2
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 18:36:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4DA4B60215;
	Fri,  6 Nov 2026 18:36:39 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1793990199;
	b=tXBsJgY9QvEXjgC9mZ1oqGwSlI+y72oaom4PN/BJY/xOYFIx3cBeL5wZiTbYYYoma5Ra
	 xN0YlWae8kr4+1BQSqTKdjjjOi+Pzjqlx4wTffIN427D18yr5loDprYMfRCDCPm53YfVN
	 RjLg8NoWsmYbwOfIWW1j4osgfRwmewhGrpHcHAqbuouk1yaSEh/7qkdUFa6IYAll1e8SI
	 CHGihSSiwWPo8aSnHaj6wNVKKbv7B1gdNQNgQXanBquN01cECD10n59J0QPI08csz1aHX
	 l6ahw3Qt9i06hq10vlV5/fz00sXSfEycKc2cd74hV3KDZL+P0M5yjkg5kln8jN8eI8w==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1793990199;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=ctcEZ6a9ns7YHknubQjF7OevDKpWpr2m6oZDDAn2eh4=;
	b=vdGVdVJ5JTC6L9hs6m8zRhVLozeBRpbY5ALGEFAAd+tNjfQeq3phdzvW1b8/QhOdcU+0
	 OwJupksT1UO0BsioEZYHby0TOYNFtYrSxpPSlGP4yzV9IaXel7N4nRv5t4CjV+XX41I7Q
	 MnrLsHxKwRVDuWE+lJpmUdLSh5IGUNWqHwU4G0JfV+8Cjr2x5U0PsbX1j3dolwILnh1JH
	 qAuaeRZoOv7PNWjPDNho2AicfK/HttXs2tDOuggcjS1k4YWh2HOrMyKP7sy4gm0CP0PYH
	 xq7gSAg5CR4TTlVAU/99D5oH3m4Wmg2pgiWlhnINaBMH857BnwUQOW96LqNxThsGfMw==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id C727D1F008A4;
	Fri,  6 Nov 2026 18:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793990199;
	bh=ctcEZ6a9ns7YHknubQjF7OevDKpWpr2m6oZDDAn2eh4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=J/k9mSlwP4hSYZbvLzAP+h6oNoyZPOKWihxOytxj4qPc8doXB32kV94YgNNscClP2
	 3Kv5LZLxDCrO6A8svDNghrDcI2Dkga5+OiSBCp7XXfkgmdWL4GKaM/1wVCqAhtoCwY
	 Xq5JOIVptT28lnlgQSqMf3vDDREE20DCPdDrPOyB7hO1JcBkuYQbyFCKhWty/vXR7D
	 XsIXW8rIt2ddnG6aW7c7ikJXlqOnm2P1N5PfABGa42amsVio9zE1z21qYUoFegmQGZ
	 XF/fce3TWpUiJtGF4pHz016wG6qCh8nxcUl4kIj6KWwlM9/XT+qHIA5+hksjdeeLuQ
	 ug7RidFENmK1Q==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 4F5A94781D;
	Fri,  6 Nov 2026 18:36:37 +0000 (UTC)
From: Andrew Gigena via B4 Relay <devnull+mail.andrewgigena.dev@kernel.org>
Date: Fri, 06 Nov 2026 18:35:36 +0000
Subject: [PATCH v3 4/7] media: qcom: camss: Match VFE lite clocks by name
 prefix
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261106-sm8150-v7.4-rc1-camss-v3-4-0103e8a0bbcd@andrewgigena.dev>
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
In-Reply-To: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 Andi Shyti <andi.shyti@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
 Andrew Gigena <mail@andrewgigena.dev>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793990195; l=2177;
 i=mail@andrewgigena.dev; s=20261104; h=from:subject:message-id;
 bh=RKXBqJzp5jx1oO13mVy3JGt1LTgj4JwjvJ23lzdf2Vg=;
 b=pYp3wGGx24nx3RQs/uM68jjw91qjhA54KzVks5zInjKDvgsrjRK40Pq5jZGxUGXkWe0RqKT4s
 kFoiJZYWW+9DN1jzG0xNruH04CTSWPOBKwBxb5v1kw7COZqtwWWOPJE
X-Developer-Key: i=mail@andrewgigena.dev; a=ed25519;
 pk=OMhlYIBaOEC8g4mJ4JCKy7kbg+lrwRxuujieZF8Ne6U=
X-Endpoint-Received: by B4 Relay for mail@andrewgigena.dev/20261104 with
 auth_id=1402
X-Original-From: Andrew Gigena <mail@andrewgigena.dev>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: mail@andrewgigena.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Andrew Gigena <mail@andrewgigena.dev>

vfe_match_clock_names() builds the expected lite clock name from
vfe->id, but vfe->id is the index of the VFE in the resources array.
On SoCs where the lite VFEs come after the full VFEs, the generated
name is vfe_lite2, vfe_lite3, ... and never matches the actual
vfe_lite0/vfe_lite1 clocks, so their rates are never programmed.

Restrict the new prefix match to numbered "vfe_liteN" clocks (digit
check) to avoid matching aux clocks, leaving the pre-existing
vfe_lite_name and bare "vfe_lite" matches unchanged.

This affects SM8150, SC7280 and SC8280XP. On a Pixel 4 (SM8150),
streaming through VFE-lite0 left cam_cc_ife_lite_0_clk at 19.2 MHz and
failed with "VFE reset timeout".

Signed-off-by: Andrew Gigena <mail@andrewgigena.dev>
---
 drivers/media/platform/qcom/camss/camss-vfe.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
index 2680a9914765..29e04d097116 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe.c
+++ b/drivers/media/platform/qcom/camss/camss-vfe.c
@@ -9,6 +9,7 @@
  */
 #include <linux/clk.h>
 #include <linux/completion.h>
+#include <linux/ctype.h>
 #include <linux/interrupt.h>
 #include <linux/iommu.h>
 #include <linux/mutex.h>
@@ -346,6 +347,7 @@ static u32 vfe_src_pad_code(struct vfe_line *line, u32 sink_code,
 	case CAMSS_6350:
 	case CAMSS_7280:
 	case CAMSS_8x96:
+	case CAMSS_8150:
 	case CAMSS_8250:
 	case CAMSS_8280XP:
 	case CAMSS_8300:
@@ -914,6 +916,9 @@ static int vfe_match_clock_names(struct vfe_device *vfe,
 	return (!strcmp(clock->name, vfe_name) ||
 		!strcmp(clock->name, vfe_lite_name) ||
 		!strcmp(clock->name, "vfe_lite") ||
+		(vfe->res->is_lite &&
+		 !strncmp(clock->name, "vfe_lite", 8) &&
+		 isdigit((unsigned char)clock->name[8])) ||
 		!strcmp(clock->name, "camnoc_axi") ||
 		!strcmp(clock->name, "camnoc_rt_axi"));
 }
@@ -2006,6 +2011,7 @@ static int vfe_bpl_align_rdi(struct vfe_device *vfe)
 	case CAMSS_6150:
 	case CAMSS_6350:
 	case CAMSS_7280:
+	case CAMSS_8150:
 	case CAMSS_8250:
 	case CAMSS_8280XP:
 	case CAMSS_8300:

-- 
2.56.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

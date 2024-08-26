Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30434C54734
	for <linux-phy@archiver.kernel.org>; Mon, 26 Aug 2024 10:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zqTLl4O2wCojKrxOOu0BUcN1BmH0QTkPsHiUbQnXPVs=; b=AtJYV+mLnu9Y/c
	1ex13G8j01m8ixcGhqdHI5CDg4WXOy5AQhxYq3aht/VEFEO5PUgUthHrsCbnGgR+yc3IVCtG1+Bqs
	uronvtj2vay9faLazAfGX9bkPYPxfxDpyT6vSwBIVTgkDsx94DV9kWjdYKG6kKhOlLjxQWm1r0WID
	g6Wcyw/q859QFCROXatJOm2ot4MJ3HH4K6JWlGPVqM2YqI81csdZKSq7FFxdzHssO9xWNdRNivzal
	TxP/nO75UVSuN+HsKGRxH3gxwPlh2GBmJMoMIltBFWh674TAwGKm3DtM/T7vsV7EPyn0X8ScG1oim
	nxzJaKEkOA6KucDXWcxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siWkR-00000006saQ-3c7h;
	Mon, 26 Aug 2024 10:14:55 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siWdb-00000006qj9-1Vvx
	for linux-phy@lists.infradead.org;
	Mon, 26 Aug 2024 10:07:52 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-42808a69a93so6291185e9.3
        for <linux-phy@lists.infradead.org>; Mon, 26 Aug 2024 03:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724666869; x=1725271669; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wKZlzL2NZbeJxSHQJB09JnhRjfM+R/bIijlH4cu5cME=;
        b=aohZYMsn/HDlhvs8xBRlzv0GcR/Cp7MUJkJtvoArevol4ePbIpGJq6i2bL6N88x+tg
         B8BAsSFeqozrLqma4+3GcmT3Tsm4aS5fKX5urc8/EJs1QJUAxi0kNoyQ2KupDW9QrFrn
         A1EPKN9UYSW6Oq+45oUaUacC6T7VYCP07hpO5U+OtHO5zmqPdbAe8vFtJbAG5D4O3Zjo
         uNLmFeN4/SE3RhrIVFts2WPz3GLAvXFbGk4PbfQkO5fXrf9srYBK3RytVLoq3UT4JdGo
         vUeKXpBHsGve4XeyBoIpb8zI/NdJlbKaK3vgtNNNsKLl+hKyd2WUx1s9SjMrCfRlURhg
         ItDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724666869; x=1725271669;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wKZlzL2NZbeJxSHQJB09JnhRjfM+R/bIijlH4cu5cME=;
        b=u/v3TRLCNgBej0mxTxe5SGoq9GTOMOVew/b69Iahr/jMs0h+uml6ZSacPa3msllRL6
         D+dzlEWcVeKyTQStbrY4pVziE7W8277Eah/VNMimLzqlLf4zSdKZTTOpMWOdSRjCzCkI
         eu5zBGzjzIxkZvYaz4FrFTQYXRNXSW/wZgRUOAyZJWB3v4ZE9ZXtE58T0oDO/Uhqu6SW
         R+hCrLEps9hHwpp5vRiRayNj/Z1YCVmZGq+UfakM7OWGkN0+a1dF+UsPRTdvk33uVVM/
         7JXSQbUDksJAa+eUUyplEYUtxILK/e6YZ53+e5DfiMBDSd9IRIpAdlNKvpNZX6OanhQH
         raFg==
X-Gm-Message-State: AOJu0YzRlSCrGmWjQnGoGuiY65Ua9/FKqTaYjfPutFnb95kZ42loJE5c
	LG2Mt7pXWCVZVpFyuOi5NhxaKvNvr1LqZpzEDCjWQ0AkXsNDBZG1kOxjIaj7xyA=
X-Google-Smtp-Source: AGHT+IHpsbxr2jatXOo5ggzUHc4AhIIKQUY/zOn1ZCBV5PQBOfgESp9ARtTvX8s+q9//U0p353spAQ==
X-Received: by 2002:a5d:6481:0:b0:360:872b:7e03 with SMTP id ffacd0b85a97d-373117ba829mr3896712f8f.0.1724666868800;
        Mon, 26 Aug 2024 03:07:48 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37308110009sm10324821f8f.18.2024.08.26.03.07.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2024 03:07:48 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 26 Aug 2024 12:07:27 +0200
Subject: [PATCH 11/11] phy: ti: j721e-wiz: Simplify with scoped for each OF
 child loop
MIME-Version: 1.0
Message-Id: <20240826-phy-of-node-scope-v1-11-5b4d82582644@linaro.org>
References: <20240826-phy-of-node-scope-v1-0-5b4d82582644@linaro.org>
In-Reply-To: <20240826-phy-of-node-scope-v1-0-5b4d82582644@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Ray Jui <rjui@broadcom.com>, 
 Scott Branden <sbranden@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1369;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=w0e0ayjuNxyXuvAWm5UI9oSMx8HCNPzhkU4MAGzlhMQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmzFPiG/KFFJ/l+/AwfobhDy9BkMVA4hidPlmBJ
 BxVdEXyoG+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZsxT4gAKCRDBN2bmhouD
 14gOD/4gnPbwGuH5BNBzq+9rK8+/r4dwG7A1IcyXYdYsWfau5R0tw2zv23PLPhzCYNA50n6txqT
 C4oU6FGzQV4QlgWI1kYnfzSqQc7rg4Nbfz7nqCcF3C/fDdThpmB+v3jVhkB1y9gGVsyYA0zOBYt
 iVU9WqZPPrtIfMWHBnMxl0/Sh26CUVyzVG5ZPow20y9RExDuAPrlJvqePRWEBPx+vPRvAccLzHB
 BeEfmlJPUx/fowwJgvDdGBVWbEUexJJ7JqOr2GM870FVsgCuH4/gkQrmcL5XT5FvZt+i8/yDGVn
 P3MN2mJLs7+gzgLsOGkre8R6zBEO5q95XUix1+S2pQyAp9oDk618h2nK06X87jmXPfm0c8Wsg4Y
 iRQ9GqsZh45L3QI4hsGT2nIlOYshaS1/9UQ3n2dnRVUaLgV5PG1IzZA2itCWcC+HFgvqaqIrYBI
 rlAS4yWLacWX1JmJ7AKfX4zwwkeZDvspdoqTZ5NS7anNEMA9TSw5PHj0iNvRr/ardFTQx/kt9Rt
 Uy1Yfn/QQWQCIZWYwWVopcjVmB01bpBhRV9iVoBnAWXao7pnQa4SmaZeNNupsIO/Z1wFPV7Bqjb
 PqeKkzw1ByOii2k+UDDiHn+jkwVSkOC/G+itzuyQ/ojBpWAgMS7kpNDOS/AeogFPFk9jrG9p/CG
 8Y6+jVZpDl7Mm8w==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_030751_442852_C2414A4F 
X-CRM114-Status: GOOD (  10.29  )
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

Use scoped for_each_child_of_node_scoped() when iterating over device
nodes to make code a bit simpler.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/phy/ti/phy-j721e-wiz.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index d0f3ead3fc80..a6c0c5607ffd 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -1404,7 +1404,7 @@ MODULE_DEVICE_TABLE(of, wiz_id_table);
 
 static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
 {
-	struct device_node *serdes, *subnode;
+	struct device_node *serdes;
 
 	serdes = of_get_child_by_name(dev->of_node, "serdes");
 	if (!serdes) {
@@ -1412,7 +1412,7 @@ static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
 		return -EINVAL;
 	}
 
-	for_each_child_of_node(serdes, subnode) {
+	for_each_child_of_node_scoped(serdes, subnode) {
 		u32 reg, num_lanes = 1, phy_type = PHY_NONE;
 		int ret, i;
 
@@ -1422,7 +1422,6 @@ static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
 
 		ret = of_property_read_u32(subnode, "reg", &reg);
 		if (ret) {
-			of_node_put(subnode);
 			dev_err(dev,
 				"%s: Reading \"reg\" from \"%s\" failed: %d\n",
 				__func__, subnode->name, ret);

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

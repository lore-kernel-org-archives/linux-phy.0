Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6B23E7544B
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 12:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fI1R76um4B3Uiuvmb4yRxdCYrMYr3xAzYFaCnDHT3GA=; b=R5oqRtPmS0K3wz
	rq2N0+XBhub2Rgkx0NA8cmGH8UuAoEQsZ4nMT/v4R9vakhJ9VlswONG2prCNoOgbSQIRjP68RotyW
	isPR2V9TUprb4AYw88tRvSoFDaMKBDGN/y0sSbdsS4klMsqkH0yCK3BC9vmw3Y4uVDPxdp3+fqDfo
	Yv+FMvF131trbpE6oAOdS3p4+X/zZ5Hx/rKXRViV28Xe/PCojTtH0Z/9Q+YM3SX91k3sRPSCnZtI7
	2Jy+GK7T8n7tVBZtG1evWxAVVwg6VTZaVpbQ99oe3HzaHASbr5hosJMkMwfv6vFD/bH16IYCdp9uD
	usEu5TnqMvG0c1oCf+oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYOE7-0000000GnjR-2HaS;
	Wed, 24 Dec 2025 12:44:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYOE0-0000000Gnf4-4BzU
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 12:44:22 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO8p5LZ1206442
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 12:44:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=azY5C4oBdnP
	1B1v82RYPMBeCpPnrWdWx0XpbhbORP4E=; b=eFQ7FXKN8gOwxG+pKIgb4O/tVCS
	1B3QTti3COyknGSdoiPYrUEzTIetsdWH1yFaTavOnFELOTarbubR2+fNs0giEIKK
	zxI6yioyjC3wJ2GhaIIu50QTGtsfX6qPAFIR1kll7HMhFMujMWYMpzUBB790htEI
	6j/TBwOZmOoIFXGm1LbMZN9r2zTJKtY5unmmpbq/cgQalT7fOEzFKqqZxA0HRSVt
	eMGBq+m0AcYSByK6kYCdGyRyaMoTRt7UPwABk5rKR1d5K+cN+j24oLJLL8JXWzcT
	dh/aLhyekkGIrKtlBvd6wnxW6TG1T1o1irR3U4muor65SGsmPqRZNekctaA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b827r24cd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 12:44:20 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee1b7293e7so205222211cf.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 04:44:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766580259; x=1767185059; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=azY5C4oBdnP1B1v82RYPMBeCpPnrWdWx0XpbhbORP4E=;
        b=Lqj7I0Fz8jvC7JEcjCrY8Y+nEhz6RonyqHifUJgWqqD20LXbCfjxpRr/JzhAwG3Bol
         diWth5o6TuSfwkYnJsEWjqQbd+82L+eJQIsxULm+3pZoJBc9fxGzdvqyx+Mp7YSE3OOw
         R+iT5W27Y/KjiKPzax1z7s2PSs16C95DVTye+oIYd7HEiD7vGVBxClaids0RTQez8DDr
         NtggIKFtcxGLhoyVEDPq5P0Xu3nUzexEY1lE7SNSpwyZ365L4X0HBkVBYGni8DO4x8En
         PLWXZPAnNhFd8z2yHqA5PEjnhD1RgoMRzMv9XuRpzPdL4hPE2+dZVer1GJpENwREeGxs
         VFaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766580259; x=1767185059;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=azY5C4oBdnP1B1v82RYPMBeCpPnrWdWx0XpbhbORP4E=;
        b=dGZBVoQJKmJrQ/nGBVy2G0MVYXk0fVxoztyQOZ7pwhUK/34navxnFhs38CU9Xq+lCk
         1q2fX5UH/uHjFVB1Kt2gHAW3bqQGGFhaIsojJzF43uBx2A/JBC0n2+PKAvmxCTaliTcB
         BTSuFBjTbXDQvP3JJ1DV/iDvP+ZUhXxngdc1q4yyWsj7Qa/BMHCAJBzUTBXpzUKKsrKg
         C+Br5pJO5vqfaGG/Xv/4KAYDPHnY1/AwtKQJWQSQsUaIKWDtKi8cZyP8XUBiIXxf//CM
         +1LQc/vRP8Zc5FNMWoESd3X1dbbzANUapSAA6kg3nblgzrlNiJVhyFPLDoLqbEpNkiea
         fqUw==
X-Forwarded-Encrypted: i=1; AJvYcCUqPUwAxmS/qu9mS64NA1UeHN0BZzitrfzhc7XrqD8JqNEGwW/0e1ktLEZOx/ZykptuUirncF0Zvaw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzqm8E2yZxLb97WrFpNRhiVo3JqKqazfaxMAxhwyThdofecqxWt
	Zi6gAmF41bcgw1bglBt2mBG/8jT1l1pbFOhb7wPS3MmzMD/f5czu7ydTC8z6LIHPOeAXdFQt6Tv
	IfGWClTTgwiwPZ0piXi2nes4aURhyvm/AzkUI9K3mMqDynLf9pgq6jVvoFOlXtxq1XF/P
X-Gm-Gg: AY/fxX6BN+LaUwaiyZQ27THeOafFwV6kB68EeMDyFpiar5VR/H+jnNcA0tusdDjj8md
	HDvQqjG+leufbJWE1oupED+Pz20RAwSSAeAGC4L6TxIwGQk+eFNhWsZgreQPU+pnyijKlA2E8do
	UgyV3Mn4WlqHqjZtQ23I1naV1CB5Smljb3zwwccDtxY9yBS7wabqh1UNCzNSKumUnqAHF2A38Bl
	dBh71SZdtv2wR352QOhC+GrwkRZ3mayHhb9vKBP+vv/SFtsyV/d93W3sB32klgEIUX9j8qLGlO9
	Xh/r/y/pgfALNh7O2ogYAy/LluvzQ92Aywsy5gTqeBZ2gVGrkRCsComukl4BynNUkPpdKbdoW4N
	l8yeCGLHgiiTdxticQnb+FTy2K09LTG3PFbw1aGeKut6nHmYuuoWxXo2DSxdUsYK0paGq1Q==
X-Received: by 2002:a05:622a:1b9f:b0:4ed:b441:d866 with SMTP id d75a77b69052e-4f4abd9e674mr262006051cf.65.1766580259489;
        Wed, 24 Dec 2025 04:44:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGLezKdfVehEinuiLItKphYasBvJ0uhf05rwxwHyj1QbiVPaJ5DMuafVZF4czaet64zEyCUqQ==
X-Received: by 2002:a05:622a:1b9f:b0:4ed:b441:d866 with SMTP id d75a77b69052e-4f4abd9e674mr262005621cf.65.1766580258864;
        Wed, 24 Dec 2025 04:44:18 -0800 (PST)
Received: from quoll.home (83.5.187.232.ipv4.supernova.orange.pl. [83.5.187.232])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916b66e2sm17049203a12.34.2025.12.24.04.44.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 04:44:17 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 3/3] phy: renesas: rcar-gen2: Simplify with scoped for each OF child loop
Date: Wed, 24 Dec 2025 13:44:10 +0100
Message-ID: <20251224124407.208354-6-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251224124407.208354-4-krzysztof.kozlowski@oss.qualcomm.com>
References: <20251224124407.208354-4-krzysztof.kozlowski@oss.qualcomm.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1466; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=pDAiDD6QCU8V5xqDxrCJ7LAU7tCZMZYYdnGT2r07mRs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpS+AZ297uPNgzd6jPPGJtD+Lw2vcBh/MOmOaju
 7pE0l3/1z6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUvgGQAKCRDBN2bmhouD
 11QXD/4pnYhtNHZrR2mRmfMCm8dcj2ocX7T6hAPvs/C+2xZXRl/JiUg/R72awTn+Ifoz0YNZs6F
 Ocu4CUaW3DDrOUGCoWdkgZupfrDNTogTOeo6/2B9kpNGNTPtDW12pgblPJIDPYrxoGv9liUw+Y7
 5hYM6el4dyotsKdgDmGfMRx2L5bRwfVaSCEfb+pLyQbaVGf7Sf8uJtK9MUcJbB8InKFAQ/cjiWb
 bZFhDPW9Uj6N3cQUIKk9gpEitmh/d4DW9+6uxVzg04SzmBYoYb0BI+6nwRP2APOwu83SkSPql5M
 Ms5kpg8aw/E6/WSYi2tmBsTBrH+Xuhy3xOhmO5shHPJiwLEXLW5cQ629+oq5xGWXFCtjlyKZhdO
 Xg3K+1NQrNjrsXCQ3K+0HW+x+wiT3D4g9q6HRZIfWzhnqrP5pruhuBiV6EB9k7rW7lhqeb/Be+X
 l1cfY9RBstT9AZyMIkeuS77NBC4ZM6NBeS0ByMrUf3CYO1Z662jFP4YWOdaim/AXcwgkjqw7Tj9
 CVtjapZH6qTMDRKJDtiAxujkSH/TiPn5wHcjRqV0oUuG0BoPKzqHL6Z9/zsoEBxEj06xxWo26CH
 z9cR9GorgCCKygQc4ffhtNvDwSEfB9/b2WIAe+Y+ppXU1E4/uZL5wWsnBQqnho0GrlTv3rKvHwD E3VFXoXwdE47UHg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: RuUwx1bQAbcGfwrD7TVt5YxTOYC16C-l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDExMCBTYWx0ZWRfX1rOApLLPBhQ4
 Au83BxGjKvHPzgeLhzZqYKO5xe5N6pGnIXgnwIsiNzKqIajgPCOOp2VzZp5V7l/R3bloJ9mEYnp
 mGkYmCUtoE1CL468Y2V8vLkmgiQMj+eVPOXuCvT74Fc3LlgbzLd1vWH3A86rgWWXoIAugP2WpTV
 orwr+7u0v3OJ4dHXecdwJMpoLG6HpiwN+yUteQ8xIbz/287R/M0Fpj2tY19Ys1daTSXfQq/g3PV
 sTHg0L4KK9qiSe+ADnWzrjebtHacTW6g2ORdW1U5Vf57kOme4gZrxEWdHI/TTLE3EnLdqYM+/QX
 rl3DZtNL5Txt9I3T+4undV30slK/16iEtOM5z8XfBzhjLYnRUsGNXlmG+IV8seaqnYsHCYUpTof
 WanAHDqPiDLE8+u91wBpe6RBCOwxohHIKNE7pXG48RXdzR3AWE8nRqRRvUKy+ey/Ktsxyc76sIB
 PF7XidxA7XyQsUEFbIA==
X-Proofpoint-GUID: RuUwx1bQAbcGfwrD7TVt5YxTOYC16C-l
X-Authority-Analysis: v=2.4 cv=RbSdyltv c=1 sm=1 tr=0 ts=694be024 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=urQ9wjG1USoGuMoDBEOPbA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=IfAgvU64P-rbEeZQN3QA:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_044421_151597_0004DEF4 
X-CRM114-Status: GOOD (  14.37  )
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

Use scoped for-each loop when iterating over device nodes to make code a
bit simpler.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/phy/renesas/phy-rcar-gen2.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen2.c b/drivers/phy/renesas/phy-rcar-gen2.c
index c0221e7258c0..89454ea270d3 100644
--- a/drivers/phy/renesas/phy-rcar-gen2.c
+++ b/drivers/phy/renesas/phy-rcar-gen2.c
@@ -337,7 +337,6 @@ static int rcar_gen2_phy_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct rcar_gen2_phy_driver *drv;
 	struct phy_provider *provider;
-	struct device_node *np;
 	void __iomem *base;
 	struct clk *clk;
 	const struct rcar_gen2_phy_data *data;
@@ -379,7 +378,7 @@ static int rcar_gen2_phy_probe(struct platform_device *pdev)
 	if (!drv->channels)
 		return -ENOMEM;
 
-	for_each_child_of_node(dev->of_node, np) {
+	for_each_child_of_node_scoped(dev->of_node, np) {
 		struct rcar_gen2_channel *channel = drv->channels + i;
 		u32 channel_num;
 		int error, n;
@@ -391,7 +390,6 @@ static int rcar_gen2_phy_probe(struct platform_device *pdev)
 		error = of_property_read_u32(np, "reg", &channel_num);
 		if (error || channel_num >= data->num_channels) {
 			dev_err(dev, "Invalid \"reg\" property\n");
-			of_node_put(np);
 			return error;
 		}
 		channel->select_mask = select_mask[channel_num];
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

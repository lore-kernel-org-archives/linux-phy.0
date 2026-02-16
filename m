Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F2F5E7BD91
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 11:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ao993VCOwZA39Nb1VxzQPHMSYmhA3ET88Oqdv/zmRPs=; b=QWhxwiUVHeo+e3
	IXvdRdniNs3QOyoacriuJcM1NuYR/iFpgskzAjkAHKyc3086Xbk1t8sqLB0lebFnOxx535ifqSCoq
	N565OGopYPeBQWpW6kZgQeK+aD77JMOEaEkSv58rlJdYec4qC7hi3upVKAjLEihLrifQ5xP3eKQWI
	Ip0FNLTKfO/DDAOJYk44qhL3Ndz++S8WVkc7kjzb00aX653VyQvuhfiG9+W/yUeJ+mr3byrg1ou+T
	+cL0GpKRd82k2YpS2W8MQdIJ69uRfW0JTf2crEATOIW6TgNJuSjEKUagLKKqCB8MTHOrvnpMNz5hN
	0/EMoix+zcq46oG8Y2Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrwOx-00000006PEw-3ZV6;
	Mon, 16 Feb 2026 11:04:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrwOv-00000006PD4-2Td3
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 11:04:26 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GA1KCR2892740
	for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 11:04:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=F01WUNnfmnb
	R0yYPB7Kz02Ieycgpy7j4Qjt4QDWos+A=; b=Hjcr/oW07ut7NbClc0omdQp/L9M
	wkcrxXS4KA1jfTn7aDyR8+ZvemvjvRWppcZN767DfNyIDpN2bWzk2zlBhe05fArT
	pKICy9l09DPeiGncJBsvECtauhYLojMGsSh6rfxrtIKP3dqz1dsBGke509mNO3Cs
	XVzJJN16vR1ThcXbbH9EmpHsRW6STCQWxszl1AEBr4NlUnMOyz1YFxUHui9IzlsC
	hnl6YRr0ArVfxfcRcgeIoo91YJANHB8C4RCEsOK5TKozVXC0qDbzFkX14ni7BDF2
	E/uSGcJvVeV0LkJ5ZFTwkrYtI935CcOVt5UKEeg+bTp503ltAcm3NPCwFWQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4caj7jc4t6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 11:04:25 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb0595def4so2045705585a.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 03:04:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771239864; x=1771844664; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F01WUNnfmnbR0yYPB7Kz02Ieycgpy7j4Qjt4QDWos+A=;
        b=P4wlPJvZTr8k+WVE6lpaSJyjxc8Fc1Eudty9Gv84j+Au4M53n0Ohm65KqfuN/y/qFA
         JPxit6FmDvSNw61/0wnx8Y2UFFnF6b7khWm0brHwyr55oocbP4Sa+lHubQ3freWBhIb3
         DvSwqS9J19pd21EOpP9EjKg8oRanHMEHAGeGfhttMi01DUx1xaKrtaWVaIXAINXKmjdU
         OMO6tWkhG5Dm6poe+Zj0dYmUhUsDGAzRtfB2y4WsrAcJtYh5gmWM54yKphM71ur0iQOo
         uoMPv3CwPnXdEyh9OkCWpm8o/ZmrE4f16ES5X7hu6ubklbj7Sn9NeT+W7zNYppWi7hiY
         3M4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771239864; x=1771844664;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=F01WUNnfmnbR0yYPB7Kz02Ieycgpy7j4Qjt4QDWos+A=;
        b=b7I+r0I55zJq3lHdLQGHpmtShPVrmmoCHP8t4fvJTWuwBl6Na/8+KPP4+lodivJR9d
         8krS+PSYa/6E+Od1N1IgBLvWEdID0wHNqq7fAXJAAQkJA0PtjPj0F07jaz/OKEaoW75E
         KYhns6PBK+lWBYP2DPe3UNBvPAGrroxOPkh1VGKqVvSXstjL2dW8CHKIvREJ5jV2J1q0
         +3wYgfIxfwk/ywvU1m4NITaW74NtMyhvx1NF9vtoj2Dz7PpYaEOqlM9fb/83IYyWimhM
         wHMBlqhfdVTmD7wb9CtRbHqWBZ/7TpnOXpW3DzdLlMQfMMLikvkgAV8QO72XyEjCslzk
         JW3w==
X-Forwarded-Encrypted: i=1; AJvYcCVKmYG827fgKjuug0Uzf7nnS/Nm15hC6aZsKK2JWnBOMNgP0t/ozeMt9KZYl0gWl5xCon+Ajpn7QnY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5lptawTILKQj2laga/VuXrg1l1NyXH6Fu86dDHv40RL5ZthIW
	sTFZYQiw+NWkZLoagl0dEk+r9w847+0XCj0LuT995M8o3ermrhYZ7fhPSL96xY23gLp4wESvYKh
	uVfOVwO1+SEi4S2+LphXGxwJEfQpZvH9Ff8K3ypahXCNoqlv0aWnM5L6w11W+xB5FqjBA
X-Gm-Gg: AZuq6aJXM2ZVXuwtFCLdzEpSgzYgsduAFStM3oqdWIStCRAbtIZ5vY4AYL1bBntmj9Q
	oml/Q/ai4mx45jl+TspPvOcnRwHU6sjxnQUkibvhIgr46R8q0thlKWXAoEpxHh3ExId0TaP5qGX
	+LGxaUru58L52JOXz87Ui4NSm9uL38EbfcAjfH7rgGEN3vkKv5y6KrHs8ymbT16xB6O48I6JPL0
	nOBZg+lLcVc2qowL7tSVoXvD9Hisoeep99GL/xAvYWEIiwJ8FmHz89uDNQ4pYScBsruzajDXK/u
	8v63AwVqAYAXZL2LHpMhCryOu0GMwg95KlH29WRHzPCJFyf8Ab8mMeJ5PSXyYm+XWmrbJaCGX5s
	ooTkqPi6CleyMI0c3AM96+6YYqOLsIUfmlusvwQ==
X-Received: by 2002:a05:620a:7014:b0:8c7:3ff0:d472 with SMTP id af79cd13be357-8cb4ac01da8mr888184285a.15.1771239864140;
        Mon, 16 Feb 2026 03:04:24 -0800 (PST)
X-Received: by 2002:a05:620a:7014:b0:8c7:3ff0:d472 with SMTP id af79cd13be357-8cb4ac01da8mr888181985a.15.1771239863711;
        Mon, 16 Feb 2026 03:04:23 -0800 (PST)
Received: from quoll ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835d99497asm589572745e9.6.2026.02.16.03.04.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 03:04:23 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>,
        Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, asahi@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 2/3] phy: marvell: mmp3-hsic: Avoid re-casting __iomem
Date: Mon, 16 Feb 2026 12:04:15 +0100
Message-ID: <20260216110413.159994-5-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260216110413.159994-4-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260216110413.159994-4-krzysztof.kozlowski@oss.qualcomm.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2660; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=5x7EKhBU5ewPua8ICjoklEgJzewBTCgQsGAMmItM3TY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpkvmuGumLqCgJtNAvdAK3FxSfjsCCVupiMB6DO
 aRRH/Dds5yJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaZL5rgAKCRDBN2bmhouD
 1xyPD/0doaU541CGXdyo+TDlx4q5IRHmoaKkM/nJvV55NxJGn9KWOqxb2jB4u1YpsFd/XOEh4vM
 EiQ1f5MP8+ovGUSJ8B7Gl9BUvMNfLKKjhLYGGMUYAnhsPY8dM9d/ru6RLrYFaWQFhR5Goqvo/jq
 Pd6vn+deb8KAswMtnQA4NMGggINzxnr560ONASrJReEYPcaKDxs0WHJj0IWaClC258cRFtCNXgr
 sheBqKuiTpsPGhqXhvL4Eq6Xm62PpCb7FYcBNlD2P7U93R+Idbllc7uetzQbpi/qgipDWRvJd5i
 eEptl9HfzgHd4lQpleW1Y8G6i24pm0xvCARUgZ8oNimjEjKrnLHBOqr6kmpPY8MeuQQHLjNYgPM
 3r0bfai9ZsT74ygiraFpBz9/7uY8MCJ5863aMTfGaVOBJcyyR35IIoK2k147wjv/tNyz4mYieKs
 LMK9NB6FG0U0hn3kQ3iktoZCgwvwOBmX6WD6PmMdbaKsOREUlcfLLDDaBE7fISuRFpG9UXTB/Dy
 swSzMRK95Lxq0t1E3a4ZScx/5Px3CquXsdvJI8ezpzYrrSE2VZNyeBc9tpzUjNRtsr5OASc1Y+2
 xhd1UGwAgsB8tnlVWXFpCYKHi0zqKtR8JEhicIg/aHZDe6UYjiqLfCPNxF7UT2ZZg6kakhCQT4F pOuqDl66BwCcHsA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=dIurWeZb c=1 sm=1 tr=0 ts=6992f9b9 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=SkZ1eIaMs6HdBQsGQEkA:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDA5MyBTYWx0ZWRfX2Dxojme6aEO8
 qq6pfNKflItl+ziv4lNX01+0832wclJpmQAVzayNernq3FUYABe373IUxQ2khJQZLxe+8ehewKd
 MJ6NS1SgJT0fsK776U9d79DcDH/Ap9t7gzTMhxJUYbBQE/Hai8bQqcwCLchusHiDbarmuQSTaUL
 3KylvZb/zhDNZ9BiRAOUlIQTdajNtcks5KTyquBP0Fqc2K3jFgKwJ/ISGM8O9giPSuwsF8lS/zE
 EQgDt0doN/tsE/y1bEDPe9qAlKLjZRRzlxWe3ZLee0uQcSdK/5wCCAyKxPoXPCGItVPPnJqJs5m
 3lj2U0uk4m6khehvTk7Xj3sa80y16WmfaH8h3f7HIb192Dbhu/iS2QlXUwudwFVEB4TmcCI3AjD
 RP4FYe5GGptLetrsZ5fCuTtlafX94sB80NY+iRlA7Hu3tYN6/nriuR09Rq4HyT2HCt4hFlaw7Q4
 03Yaoli3SSIMBUPodEw==
X-Proofpoint-GUID: u65UYdbICy88x__0zbmAQeG-USZfYSdD
X-Proofpoint-ORIG-GUID: u65UYdbICy88x__0zbmAQeG-USZfYSdD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 phishscore=0 suspectscore=0 impostorscore=0 spamscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602160093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_030425_643701_082FBB4D 
X-CRM114-Status: GOOD (  17.59  )
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

__iomem annotated memory must be accessed via dedicated accessors, even
if actual code is correct (accessing the driver data in
mmp3_hsic_phy_init() brings back the __iomem cast), but dropping its
cast (with or without __force) when storing as driver data seems like
less readable code for any future changes.  Instead, add a dedicated
wrapping structure just to hold the pointer without changing the __iomem
cast.  This makes the code explicit, obvious and solves the sparse
warning:

  phy-mmp3-hsic.c:58:31: warning: cast removes address space '__iomem' of expression

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/phy/marvell/phy-mmp3-hsic.c | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/marvell/phy-mmp3-hsic.c b/drivers/phy/marvell/phy-mmp3-hsic.c
index 271f1a2258ef..72ab6da0ebc3 100644
--- a/drivers/phy/marvell/phy-mmp3-hsic.c
+++ b/drivers/phy/marvell/phy-mmp3-hsic.c
@@ -14,15 +14,19 @@
 #define HSIC_ENABLE	BIT(7)
 #define PLL_BYPASS	BIT(4)
 
+struct mmp3_hsic_data {
+	void __iomem *base;
+};
+
 static int mmp3_hsic_phy_init(struct phy *phy)
 {
-	void __iomem *base = (void __iomem *)phy_get_drvdata(phy);
+	struct mmp3_hsic_data *mmp3 = phy_get_drvdata(phy);
 	u32 hsic_ctrl;
 
-	hsic_ctrl = readl_relaxed(base + HSIC_CTRL);
+	hsic_ctrl = readl_relaxed(mmp3->base + HSIC_CTRL);
 	hsic_ctrl |= HSIC_ENABLE;
 	hsic_ctrl |= PLL_BYPASS;
-	writel_relaxed(hsic_ctrl, base + HSIC_CTRL);
+	writel_relaxed(hsic_ctrl, mmp3->base + HSIC_CTRL);
 
 	return 0;
 }
@@ -41,13 +45,17 @@ MODULE_DEVICE_TABLE(of, mmp3_hsic_phy_of_match);
 static int mmp3_hsic_phy_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
+	struct mmp3_hsic_data *mmp3;
 	struct phy_provider *provider;
-	void __iomem *base;
 	struct phy *phy;
 
-	base = devm_platform_get_and_ioremap_resource(pdev, 0, NULL);
-	if (IS_ERR(base))
-		return PTR_ERR(base);
+	mmp3 = devm_kzalloc(dev, sizeof(*mmp3), GFP_KERNEL);
+	if (!mmp3)
+		return -ENOMEM;
+
+	mmp3->base = devm_platform_get_and_ioremap_resource(pdev, 0, NULL);
+	if (IS_ERR(mmp3->base))
+		return PTR_ERR(mmp3->base);
 
 	phy = devm_phy_create(dev, NULL, &mmp3_hsic_phy_ops);
 	if (IS_ERR(phy)) {
@@ -55,7 +63,7 @@ static int mmp3_hsic_phy_probe(struct platform_device *pdev)
 		return PTR_ERR(phy);
 	}
 
-	phy_set_drvdata(phy, (void *)base);
+	phy_set_drvdata(phy, mmp3);
 	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 	if (IS_ERR(provider)) {
 		dev_err(dev, "failed to register PHY provider\n");
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

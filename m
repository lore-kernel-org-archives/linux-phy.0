Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85652E7BD8A
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 11:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ij4yrZi0zZIm0AxiQOLc+OQHI4kLsj5C0vU5M1KOjj8=; b=qQ6cI0f/A9hW4J
	XU2TqnQx1tEQTtiaW5RFMa6fR65lRZch8m4U9eKQhxTMwfspA7foOa2qEAgiYV6XyQbxeKWBksphl
	56tmX9SLCh3Dn9SmUenqXupFDb1sLaEXwqycYECqOFDrQBBkKJlpKyv3OnVLw+BeTybqy34EZfcRd
	xPZrETCwLifQb+8Z+mKnsk6ihIbKN92t2pIGXFqSFphgy9plqG80/IXysSQMu+rLWQO5GScJxlGDS
	oLkE3/t8wrLUBq4q66nIwrQIckalGMrmmI/pHNFNO30xV72EE9CNL6ZNfDYczgVweZgPgCjnxF1Li
	eJYSnVRScNF7nn7M7PnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrwP1-00000006PHr-14tt;
	Mon, 16 Feb 2026 11:04:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrwOx-00000006PET-3iFB
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 11:04:29 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61G0sOuw2617484
	for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 11:04:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+4UOtGqik+Q
	vwJz2/TB0+lT+eV9naglo3mkbHB9AkQc=; b=cmxjZIKmo5SdpDShUOOsFDSR6fr
	TUYz2J13IMDwq3zI7dsLgcYWmcmym3kTYr4CvzAIC4xXQd0zhlJG6h/YZeMJE0El
	DvkLNSf3I9TpEyL81oz/TdNtZh5q1nBOanEy1YZ+QCpueYkf42gv4s30q/Z14JNV
	/XKMVFgAwdSZwdhwARVG4UetRhbTYTeiJSzmSJFTodBEFGm9OSFaKoPtfT7PLyPM
	/+cA1o9zVKYr1SPObSwHcAIdj0kAW/fiCeb1iOagBeTvowndnviMyuUpmaFs3wnB
	vPR+HOY/9v9cTH+cBzGH27Y2YUOAmta7mzdXKYanzXpnFJcZpEDJnnFsUgA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cahe648rb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 11:04:26 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-506afabb8d3so222528101cf.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 03:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771239866; x=1771844666; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+4UOtGqik+QvwJz2/TB0+lT+eV9naglo3mkbHB9AkQc=;
        b=KRi6IBf5kUWj1DLKr0WhA1X32NLGKjzi6hNalUc7LehK1Np+aLnPS28PK+MxIqMKVk
         j+i8bOViiiPXxxcCKUIpl8QOHApwLqNnVN3xxTFqIz6xI4p+STj07cBB/BjBm6ejfc92
         l16JW1qrDKKu3IVQU8llZfRR8nC24QTF19ijISH2H1SackQWCpH9n2dsDCZ7q3aCxxbb
         6YocKy30WDivGo4EGTZVlxHfboQ9KRNIf83YH/lKHU/eSM8Z0WvFclG6uCZMbaoBhMqo
         urqNCGer5O5mPJOL1IG9tWSSnPlhkZA0V1TlKz0Csr9lbMPw6bPNn8e94R0KIYmg5mwT
         u3Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771239866; x=1771844666;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+4UOtGqik+QvwJz2/TB0+lT+eV9naglo3mkbHB9AkQc=;
        b=gbCRgKWedgMU37SbexWuZRkMllLnzm9fynrjS0eQhfTci4n3qIf+PkqZMQ2ZUxzS8u
         vdSdqtrkHvQgncBJ8x3dl7JNqHjR+blfwL9wQ35xqh4UXyaDjSMSwucue+EC20PB5Kco
         HVTpZPD5wPgzk9wNk+c0A0hcMsH6Qrv6/baLAfxSMRK0PfJtEUA84WdFdbDUgjt6SWXV
         5hdREHyJfmyTmOOK88amovqMyhgIO0+V1ZPWQZt4smtYFwDAPruHQzKusRxwEcsX1+ij
         JwqYy85I+AlgR2SLsKHS92tM74idd6Ywr6KscfGLwirb1OVkYVJjQxozPvOvQNv/Xg1k
         BO7A==
X-Forwarded-Encrypted: i=1; AJvYcCVins9aZxGG839E0j+gLx1sU2PfxwFVBbgBftAp99/lV0gngd8x13Y4KZniAmOc24HFoNPT7u5T2cY=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywg8Im8/rvaC0abk55jdkEJ9tgJ1E+PYHSpuVGTvl0/XzDdpOEa
	V3Zyn0rUCB0U/E0RcLXp1I5hM6SPmeIkRfKGoUcct3nDSgy6koO8KG0YGLHY48t3Rf2TFq2ycOz
	bHhgCiS9hPfy3P+zRg5GxetzDciqto59V9s1oOUDQ1SpNnGHZ5Ek7LR3t+ljZiU6E5NIHqcO8ku
	qn
X-Gm-Gg: AZuq6aL6UzRpBpzsE3MyZMV7wYvPJeC4+LGgKyi+EQWjX7iVDX7tYO9NNjEHKwoa5xv
	MbD6BlGU1UYpFmBjzuDo7QFSWru8jIdmUe2Rz7B23Z1JLY9UYuJsXYUTkXAAM7izvVsivh16meG
	5EMz5wyFghe4NKtx3VI0siZpWdaasOOEZP1ImX02LoKrV12cEmj2XCfokqYcRXXG97Z53bzYDdV
	LMO9yWA+Sfp+s+XL3MR68a9oK3zsz6KGglhppo638NyVr/gx5dBVcKVsQq4viT3o98CbHaUYTqQ
	T937PkzF80E0oKf+7WP2Va+PnW2GZUwoRVbF/RxOZTp03gxYy4ztLwh8ZZLWD7Y1LDmygADF+UR
	1K4bKeRWUjO05pDiQKSAfYRq6yJcdy8jvCDeHfg==
X-Received: by 2002:a05:620a:46a8:b0:8b2:e3c1:24b7 with SMTP id af79cd13be357-8cb4ac7d40bmr980229685a.29.1771239865773;
        Mon, 16 Feb 2026 03:04:25 -0800 (PST)
X-Received: by 2002:a05:620a:46a8:b0:8b2:e3c1:24b7 with SMTP id af79cd13be357-8cb4ac7d40bmr980227885a.29.1771239865393;
        Mon, 16 Feb 2026 03:04:25 -0800 (PST)
Received: from quoll ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835d99497asm589572745e9.6.2026.02.16.03.04.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 03:04:24 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>,
        Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, asahi@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 3/3] phy: qcom: qmp-usbc: Simplify check for non-NULL pointer
Date: Mon, 16 Feb 2026 12:04:16 +0100
Message-ID: <20260216110413.159994-6-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260216110413.159994-4-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260216110413.159994-4-krzysztof.kozlowski@oss.qualcomm.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1484; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=PuKi//RWjSJoYL/Th2Gud7CekjaZAZonzL+Z2LBjfj4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpkvmvJCfKJ0aoPYfKrLswzpxol6BGDAX4YsmZO
 Bl4p9IrvUyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaZL5rwAKCRDBN2bmhouD
 15cAEACRnZMiu1htoX9cxB1Vwj+aBvwUSP7uhENSAuxz8GHr6mSXXOdQgpL68JJbK6ezXC2Bw3Q
 eNAW2+4p4Hb8KznZpMYdQMLp9ojUjnYWOiPwGhn4aY9Ql+a5pgyy829zOmRFLRmvzgZGVpV/85s
 RpKdcLEPNMQqJKWtxG60h2QehNJ/G98WeKyYv6wLxdLiDtPOzLIkGcMzGHzZq2Mo0vDGY7zLfvq
 NLM36XwkuC72+xoSD+ZXu2ThHwNlQPnd0Y2LgQxeVJjQifxGpWl57sjCjDJELia4kONzGcD12Un
 0kOGlJ+M2IBJud1IZsh8tvXCbrW5xgUSw4TaUtcoh2aQEuZvYngOp1zz9scq7neibqfkjB9v6dq
 4AHVDf+JMyxSu8M82ni+fqzZhe/sfQFxHgeVDU2bmRq+mGG0gjUDbTHJLopusUvR+D+MzZBS0yr
 rmgRl2wv5GmV2+rI/c9Uy5PCC2Ru+3ulCJlgUXP1n3potgdWQaq4lDJpsdH+BXbRAX6hN1rROwq
 ZBewIiYOb5xvlrCU1fxeNxus8gtpAGFQK5fS+686iQFzKeccogPVZql9U6nDmvMpP3FMwY3PSlD
 vbdyXChRug25nxLQLErXNk0wwmsFJd2Tn/Myi3k39XKAXm5ylBjNQR3YhFP2AAZJoLD3ikvaX1F vpaEdpXC8IZvJGQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=c5WmgB9l c=1 sm=1 tr=0 ts=6992f9ba cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=RGc8Xe-UuCxs7xLLDosA:9 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: 5CSFS8eUiXOKqiOdwEnGJz9it5Pj5ZHa
X-Proofpoint-ORIG-GUID: 5CSFS8eUiXOKqiOdwEnGJz9it5Pj5ZHa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDA5MyBTYWx0ZWRfX/v8I+QAMI7fw
 P2p+0XhAZXSwVYuGYx/0KQVv8U/rqvR9zuHkS8hCv575OvPuQ3obcKsLY3vdhUU4pJ9IPjiTkyP
 ibzUb55HZCdufuVp3Ap43qlviq0tcEXATb/wFvSMB00THuV5ee/zXd6DD03nFu19N8ndpX5qKqq
 WertFp1vbdTuQu96RnhtgUUJ2xeoyqV3L9qQMnGL9Y9wqNoPrP8XmD8ZFnI6/fipC1PXUfJjJud
 jQMYLOCNzrWvKVHAX6ik9KT8SOUCnXL1rHdQ1ho3erWYe40DFiTG7o9Xon3F1alV5FRTZ0sc2KT
 GQS/YlCiY+BBo99SKbYtGxroIioreQ7LjMLJuJIomtb10QwjxicEK3IrHT25uPup3J+KAzU+iTq
 NfQFFtgk21xtv+ZaIELtAMpGUE7o52CksDjil8lrGIPbftVzImXtEJhMe+zE+PMRTT1kibzf76D
 xRBj8NvOGjru7mLIAJA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 clxscore=1015 malwarescore=0
 bulkscore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_030428_039045_02894463 
X-CRM114-Status: GOOD (  13.48  )
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

Pointers should not use explicit '0' comparison, so just use standard
evaluation as non-NULL:

  phy-qcom-qmp-usbc.c:1682:31: warning: Using plain integer as NULL pointer

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 14feb77789b3..c342479a3798 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -1679,7 +1679,7 @@ static int qmp_usbc_register_clocks(struct qmp_usbc *qmp, struct device_node *np
 	if (ret)
 		return ret;
 
-	if (qmp->dp_serdes != 0) {
+	if (qmp->dp_serdes) {
 		ret = phy_dp_clks_register(qmp, np);
 		if (ret)
 			return ret;
@@ -1833,7 +1833,7 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-	if (offs->dp_serdes != 0) {
+	if (offs->dp_serdes) {
 		qmp->dp_serdes = base + offs->dp_serdes;
 		qmp->dp_tx = base + offs->dp_txa;
 		qmp->dp_tx2 = base + offs->dp_txb;
@@ -1982,7 +1982,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 
 	phy_set_drvdata(qmp->usb_phy, qmp);
 
-	if (qmp->dp_serdes != 0) {
+	if (qmp->dp_serdes) {
 		qmp->dp_phy = devm_phy_create(dev, np, &qmp_usbc_dp_phy_ops);
 		if (IS_ERR(qmp->dp_phy)) {
 			ret = PTR_ERR(qmp->dp_phy);
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ECA1C982D6
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 11:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NN/tVTZSsFwU7LkXVj2/ElbM4nVoTS+Q/c7sxdXidW8=; b=u0zU1n+B1jrDX2
	Qpq7BQZObT89/xTm15Cy871Aw7uAlpxuLO7OyTj5PuH7ArQfEgdb41HOzcWPvGb6i9bQttUAMxLjp
	Ivj29Q9uesCA5XMRzjGVoqimq1kIHdLwSZzFsNHZnkL0t9JVHk3W7JJhIoPguCNG5U/ZSN5BonC7W
	diNQUOWqw8T8tsesJYbbbVU7YplfuZ/DC8caEWdkz2hp0QvKBF6IoiWSXEI/XV3D/hn6y4YahglO5
	DYNZPIxR2S6FMqv9FcYAZZH5wYsd+MvLFfom2P8YwT1f3dDzD4JaDCfJS9H9BMiuhvfTN+WZAXKL0
	Ya0Ie2ub4rSOL27h06wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7WLW-0000000EAgP-1Y7A;
	Fri, 18 Sep 2026 11:01:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7WLU-0000000EAfw-2eux
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 11:01:33 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68I9ddtA3801896
	for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 11:01:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=lWswSoekF7IT3Yxcc40Z7y8MoP4qOcIdr70
	QbS4iBZQ=; b=Sbw5he4UvXM3m6BznJWgw1QUL7ZOMlWCmO9ORrPOowV7n+hxyiO
	AkZLqUASsKF8oOAKXgTTle6uGX2xMJiesScLKzyuon3GBqsvq/66P5RZDzCZw+i4
	pNesVP9YvmtnpfPtUPrmYcLEcb9SglgWIaZ+swnW4UNkioKBBbvKNLfglZahS4bu
	TPBcrtYCHtLO/u+I4Cenn7za6PZTMR36KvZ6MsI8MITarrOogfqRRfLupPAaZVHp
	9nRY4z9ebwQTgWMosRyD+n48OGe0SyFFDRGidcUCvUi6Hjt0NuDEZnTl9ZA0ESn8
	R45UruT7LTsBrGUfRp4E7BHX0rNTDaTmN/g==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4grq2ku784-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 11:01:28 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5c683ca769dso136217e0c.2
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 04:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789729288; x=1790334088; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=lWswSoekF7IT3Yxcc40Z7y8MoP4qOcIdr70QbS4iBZQ=;
        b=eIvz93788QtufQxpYTYHCgOKJlb+SC+4w+Lpn/A5JbyoSuDiYZTt926vav8sGMuq66
         IFOwvjWDXUh3Mmt7Jdcnu+Kp//d1hsRJbdhoG247y0WThLET4C1i6LBIaBHF3ijYDiy0
         b6+5i6Dj4pi+0IaX6sICVdNlm53PyOcoL/ygBwLm7rgRq/4U/yHYffxCPnfA+CbOKNks
         V5ajY5wwsvzCFiUY8BgbIqGLSu6WIkK2RFFV5KC1Q+7bxZJvjqPYtNUb/aZrwn3n3jA3
         hnRCAyc/Uf1grKq7kFzANEyUTq5S2kzI6lPuxvnGkR0OCWFgfN/pVihtDCiiwdmLQCtI
         HYnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789729288; x=1790334088;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=lWswSoekF7IT3Yxcc40Z7y8MoP4qOcIdr70QbS4iBZQ=;
        b=TGPT3WRnE2QSbrIc82coAGKVCA+TskIwdj+rm9LFK/9hpLx7MmtlaaKUfRvmAdzHhW
         9pCgPee9ITsJMmaTZJ0mghU/whQR9wLfDUWkhDfRvAa92qZMbdKKUDr5MoI1p+/hn5vP
         DPMKdNDL1dscJESyOwaNGiIxkVGS03OOY4rCcP5kN0SrFNGdW2b6HHRi7r48Wo0YLwBH
         LRj4HCfs2gLe5SmrCjw02tRVemf8WJXyNSWABwI2f//f/Kx4wj+Bc7GFwEeQX5FduRHq
         6bJuDAEdQXuY07bvry5iRgUGUfgxz5i0xAML5ffG2fdp0Th6O7W/IjOk1PbPBfK4BmmU
         jGBQ==
X-Forwarded-Encrypted: i=1; AKwUvBwo64ljYnyTfoyGBwQ4tSv4gKfpb/d/9aqnoyIGzcc9rTt9KksGkoFcAYME/LfrK/veie2HYGwPrq8=@lists.infradead.org
X-Gm-Message-State: AFuF++lUBMyZ+aNTbBVdWaBFgkvV5OCNP07fPmHWXkXKg3pZYCErwsgp
	YJXLqBbbbXxKk5ShMlWruqpyEaRy2zXy1JXD9R25LqliSYz7/0YmoJftZZsOt8y8iO904hrij2c
	bovA7Fldov+fg9/ztZ4M0Y8PPY1t823jDtLMy9CYmK+GjkmaiOgCIR3jVVmXTu3VuqX5O
X-Gm-Gg: AYBFou23f6lJ+g4+7xD2eUqaxjLQzTQxrgC8Y2T0HMWa48L1Ie5Cc1sCSHoXfm9q8z5
	QQKff2v0gORRa4RI7lf/kIFs9Xix52MPA8WXO9a5Y6xjF14+0qLUeDUVv2JiVWWT1ortzyu0srJ
	KoYISQzoENfk8jZxH/KI5La9qhPNlzm7eP9DG7+QkaQql8M9ofBOmCQ6aNckFzFSGnvhJm3F0hr
	ZFWzANsG+IG31PDwLVgDAV6AzSBGDrNcZwdS6QH94TD0mQw5izVB3QLH436fvFx3uX5+42iwkkF
	qmLu9mydD31G1wCc512hll4kfqSo6IygqcHvETz124z+stirQvrKLKYuPX5rZSDAadCS2gCdNaK
	UqsnkDrwXuaACEE8=
X-Received: by 2002:a05:6102:41aa:b0:7a1:f951:f2fd with SMTP id ada2fe7eead31-7a55c8841d8mr694332137.16.1789729286876;
        Fri, 18 Sep 2026 04:01:26 -0700 (PDT)
X-Received: by 2002:a05:6102:41aa:b0:7a1:f951:f2fd with SMTP id ada2fe7eead31-7a55c8841d8mr694082137.16.1789729284751;
        Fri, 18 Sep 2026 04:01:24 -0700 (PDT)
Received: from quoll ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fc56eff84sm41962245e9.1.2026.09.18.04.01.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2026 04:01:23 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
        Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Aswath Govindraju <a-govindraju@ti.com>, linux-can@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] dt-bindings: phy: ti,tcan104x-can: Fixup unapplied constraint to ti,tcan1042 family
Date: Fri, 18 Sep 2026 13:01:17 +0200
Message-ID: <20260918110116.94024-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1149; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=pHbBz+S8xEejNMUWSAFZbzLNSweTHGPtXBRxivMnMf8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqrRn9JeRDJ+Cu211xd7NxyDHXSpUbSvXvI6xDR
 z8uWbYaj7SJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaq0Z/QAKCRDBN2bmhouD
 11vpD/9F4q+9DXtX1IBVN3COr3L72i22jCFz+K/j0McOx/eFWpncTlBQJWqmdFeUfcR1a+/B0ww
 eTpexVvJU0qKOFzn89HChWOcZdgzBV53hTGXo9ert9DTKQOSTuhoLn0rJdGKCLrf2ZRImYBxpjY
 YIIfgtQHUeaPX+zPdbPlaUP1oJI8PgVhQSBXlHQDru0t/4YE8NEn38vjsVXWRJ3SB6gV6XaenK1
 EiCVSDqB46QGt2CEwzIRDE41sR1/krWJMDVoc25b9gEplzxoJYnoMDRju8+kiLwWA1carL0qAaU
 Q6LtSvDWnQd94eIE1PBjVfx/+B8y5rNTg77CwkYVpjDgfYKgDysaSEQYp3jQa/fRhHbuWvS74sE
 qbSLt8WR8rjRG0wekHCVLa+swed9nnogq8+XDyjro5sXTymfXWk7jN355lcTmbQbw9JIFbV4oOX
 4KJSgPuSRcWBpwJSXBBt542PrZJNCD7egyS8smaKekVmEPExXew5teimguv1GKTXVz9NBfBPhzC
 pqMFEJLQd8oEPER/+82J3XbOFrg94LnL1fjH3xULv/HpvlBPUMHqaXRW0bmDopo/ujLXKKFjNPp
 AHEh2E+daWDu5e799/dqCNIj9fKA4xc7SZsK3Nx+eMk1tvzkoc2QD4stlQwQIM6eSSWp5F2ZIf0 /G1G6ZNrVpYEk/A==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE4MDE1NCBTYWx0ZWRfXzxaLLjky4VWs
 1QV+MRc38Y3XXvA83sebRoLSIaDSnUYEev74DTAhrndBdQ2YsmQcUXLw7T3qzqGrEtUpykFLshx
 cv/b0U/rKE+lU2j1BQm09MGu0icjrPJA4QQW8V+PPJdRVY+khuUkcTzvktwmR4rJk/uOv/4d3Zd
 lRFpAWNkV9J3CXUrFohWHB65Ej9mfYsqf1m67rsOFePK0Hc+omr8daBBXi9vjG+sHhuRNWn6P5I
 dhUINh5YVP/YHRDkYrjkm38YrxDTMN12poUVXmtydlBTKnulF+8aMGn0FiiUlW39Cngmr53eH/w
 9ytt+G56o7nI3SPgPtn4Zlgl3isNP9jAIkwujXCkWs6pGWmSBMJ9Hzbj5lOfof9dJ22Cl9OYzUj
 rkjZ9kSeuI1O72Lxq6gt8ZcG9XPAjrfo7fpKcSy2ujYvJZ3t7V410H90LsvKi6aCB0L6yqT5tHH
 8rywnu9tV+labV1Be+A==
X-Proofpoint-GUID: HbRuCJWc1hInsY1NNYq910CqLWjyRhpk
X-Authority-Analysis: v=2.4 cv=bcD+w+PB c=1 sm=1 tr=0 ts=6aad1a08 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=aAtEoCzvOngrQmLLZK8A:9 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE4MDE1NCBTYWx0ZWRfXzO2jHF1oxbUm
 QAl73QMoFJ/0cXxNw8bjYSIt8+gRtTAz39UfRAH9u+H/7Nu3c382WoGPyjd8bRdGSb/7K9Yamac
 +eCI79nL/stw9pl9iP6VQ6V1lzmGKmU=
X-Proofpoint-ORIG-GUID: HbRuCJWc1hInsY1NNYq910CqLWjyRhpk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-18_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 adultscore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609180154
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_040132_808488_C9AF192C 
X-CRM114-Status: GOOD (  12.05  )
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

ti,tcan1042 is also used as fallback for a few devices, thus the check
in "if:" conditional should use "contains" to properly validate these
other devices.  The other compatibles used in the changed enum are used
alone, so it does not affect them.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/ti,tcan104x-can.yaml         | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
index 9f5c37ca6496..0cf5fa21106b 100644
--- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
@@ -71,10 +71,11 @@ allOf:
   - if:
       properties:
         compatible:
-          enum:
-            - nxp,tjr1443
-            - ti,tcan1042
-            - ti,tcan1043
+          contains:
+            enum:
+              - nxp,tjr1443
+              - ti,tcan1042
+              - ti,tcan1043
     then:
       properties:
         '#phy-cells':
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

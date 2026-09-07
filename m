Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38578C79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 08:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5+wtJ19UdC0B2IFqiIVZChVfpB0gQPPwH9xj7XaK2vE=; b=eNH1IYyrycPDCd
	H1DIaoEryXsax48M15t9Ot0Zv3aOYixHyB+YdlQhHaSVqlJ0Mk/8sxqkByy9A/Q/Wa5juUMET9V0O
	kdO23ciXFCG4WcQTGCy0enWgki2239b2JAeaEW3MkrZC452+o2V4wr23/c3iFTjGbtdrCDzBnYC0v
	gOKl2g82ulALASa1hQvKwu2oVum9Ku/r+hxJPVNgRXf9XlhXpgTmEqa+JnqHV7zC5qKRoVqidwDSZ
	56b1CbdU5nozKlMYXYWlXLOxXC2UqlpSqXlcK+K7qqeJzE7PtPvo+0N9auQm4b+CYSfS3IayKlZmI
	55On4gYuoM+jFYTGeSJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3UUf-00000006ErO-3ixt;
	Mon, 07 Sep 2026 08:14:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3UUd-00000006EqD-0clb
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 08:14:20 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6877p3U23657591
	for <linux-phy@lists.infradead.org>; Mon, 7 Sep 2026 08:14:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lCLU3kxIzq8/MCTjl1p5xKWJJRKm1j+qJos/WCdQA8g=; b=lPdRNTV+dWlRj+5N
	PGrIJWBpuEKNamXlcieEIhfWBV3zGwuviEhN0QhTZY515MD8Fkbgdgz94dh5zDzL
	cRVJQrVWPKFtV/9ns9YnUropcpZ62zTNF7eyb4YglxEgErJ8xJSD5gEOPG/1Dkzn
	CZsQ0m6jfsF4sqpC854WExdy/AhkFipPF43se0zxUfZsgJ2mFGJI+n2rTJ0Z7Qko
	ud7NSNOeWluQftmVPXlB+N8SX8/4PQ2lh0NNRECUWhDX4jigcwDRbY7HzUU5vMkB
	zu5L1h4cjbwzOL2rdbGP5Wc35jUDtXLOaWUgaLGXu05lA+q2U1rVpzKDzIhn+Qtg
	xQLAEA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ghs86r387-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 08:14:18 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-38dbf293831so7049078a91.3
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 01:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788768857; x=1789373657; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=lCLU3kxIzq8/MCTjl1p5xKWJJRKm1j+qJos/WCdQA8g=;
        b=Cx8GM8IeIjosnmnJh5tOnfui1Z04bc/Q8652bqpkrAO3DxdfhFB0BvNKKkQufQ3eOd
         1OkVKituBwwrTMB5YgOg8a8IbOQMe3gWaJZBLYD7OE3F/cg+6a3A3OCKRBVxw3DXPGxG
         AJyCJvTap7ptClMxi/WSeS8FyUjEbsYgb0MwE24sgJKwL3T4UJYJeIdh97N9hya30gmd
         SVoIyHHNIg367NDHCV8wQ6if3heLgSzJJuITXUmd46rLFUEYoJKD8y2p8s8Q3jWeFflr
         7n3/c1DMhWMiSAga5lA/h90UMAxuOdK4uoE3YRhheYnIXYDViuJH26GqsF81AONDhmxq
         AJtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788768857; x=1789373657;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lCLU3kxIzq8/MCTjl1p5xKWJJRKm1j+qJos/WCdQA8g=;
        b=nHkQnOmS+8iEpKH7L4QMcE/ItZVuEyZbSo2zquP1g7Z9IYYJHVY3lmR12DGz3Y40Gi
         VXorrgS5spAIsaDzcqcj0Dh++PSskI8SFcR4aBnL6mZIYPn/p3xYaEUFILaxqD/QhL64
         z2OPXcW5mHj6i0MZeIql+5NUdHQPuJPiTezhakwUUxjSlLodpAzdj0+yFGdE5VlHSt2v
         +SXmx59ALTQQRvGsZST+I+u9JG4asmD2hYBG6K9x+8u6dosJWjemTrhsD+Rv3onJfCBH
         ynPMHHveDOWablF6apBZ8LVSV1wlYJolinaCv+L3WFD4Vb5gDdhPT4SkfZrpD+GTIy9e
         t6Mw==
X-Forwarded-Encrypted: i=1; AKwUvByeFfC3e47KsypgW9kgPK9agv9xLed7c3ncanucZmCu0MJq+0SWGQr3jmBmycDkF4I2/ezZyYOpXyc=@lists.infradead.org
X-Gm-Message-State: AFuF++nemrCFNA57iXmc5U0mUMytSAZsfawqzSOCPq6MRCJ9n2cYM2yD
	Hfg+z8UN6kPm58MRWmMYQVsvf53Z5wigH8+X9MWrio0DXQe5UYUDLgr0gku6jfGK4nSJTTwn43K
	Em5W5vkF1INWsVnEanc+owKcWn484NDx1rLtTZ91mweul3VN2ycXJdAyNnrouyj4LvfY/
X-Gm-Gg: AYBFou23oJHcscizhN5hkxQCkY5cwqGMkxZ9PKj/mjVMXMb5Fte7qsMJNjqLgX9obCc
	oEq9OnjQo/Ah9DMwsEDwxjebWT3QOALWntOvr/naK5Krefkwo1mN+mmt2sN/nbrsfwDNGpLb/yC
	FuIHjFx4Z81C1oBE3fOaGDWtaIx7JOy4bXSU/RSLL+QXrs7pn7JdBHgbjwF736xccbMhumgDFEw
	zDlFfC2HQfcCIJn0aCICjfn44D5APnWmY4AogfWR8EnX5ul0B08xSsw0ZsI1wm9qKMQ/YRsJJtA
	7u9yxtnsBM3O3Iw7yrTJx6s57UJOGsWBTDJ1qCvYxOBnmZmr0/YISjjp1WAqRoTDrzpsv2I34C3
	kylxm7B5nThpopC4lRSLvxRoIYS3SNQs=
X-Received: by 2002:a17:90a:c106:b0:398:e1f4:bda1 with SMTP id 98e67ed59e1d1-39b2624cf3fmr34120689a91.21.1788768857254;
        Mon, 07 Sep 2026 01:14:17 -0700 (PDT)
X-Received: by 2002:a17:90a:c106:b0:398:e1f4:bda1 with SMTP id 98e67ed59e1d1-39b2624cf3fmr34120623a91.21.1788768856764;
        Mon, 07 Sep 2026 01:14:16 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-143243767e1sm21724220c88.6.2026.09.07.01.14.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 01:14:16 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Mon, 07 Sep 2026 13:43:39 +0530
Subject: [PATCH v2 3/6] dt-bindings: mfd: pm8008: Add PM8010 I2C support
MIME-Version: 1.0
Message-Id: <20260907-glymur_camss-v2-3-75f7982dc983@oss.qualcomm.com>
References: <20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com>
In-Reply-To: <20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>, Lee Jones <lee@kernel.org>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mfd@lists.linux.dev,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Dhruvin Rajpura <drajpura@qti.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788768826; l=1891;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=AoJ46bykjinzi5CHRfxJnkzB4gRLtxmI2zMTEfoIMCg=;
 b=L9u/5sqhOByy8TAubk9xjK7ku91RoQuKj7maUFkahZ+hPZWBHmj6uxWnCX4BR8irYpKvnI2tW
 7np6GjGCQ73ADe2IFtIdJHFBzQAKZKAxGYoUhcH5OYwQF8f3Sesrax6
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-GUID: 0JmGIh7p6E02_f03xzxLBajU8srrSV15
X-Proofpoint-ORIG-GUID: 0JmGIh7p6E02_f03xzxLBajU8srrSV15
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA3MDA4OCBTYWx0ZWRfX9YWpqAuL6CpS
 mlLIgwQ3z8mqy9gGZ38ZXS0yFcipfMQYLvony1DWyeuRJ2l7YsY+nBcrxVIX051TaToHeoubuN7
 ylZS2cB3yrlcUf4iSat20p03rNjkepE=
X-Authority-Analysis: v=2.4 cv=LseiDHdc c=1 sm=1 tr=0 ts=6a9e725a cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=5mci5dHc59FVrb-tom8A:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA3MDA4OCBTYWx0ZWRfX/qB3RvC98Cc6
 C2RMQPXs8I3TEQBcqFWkduLfMt6uJ4M6eiZgnTYWZT0bSTPTVB8AtYA0PSks5ijqFMiHIG655t9
 o3BYmoaLue86MWQrNRC0FL0t6iLwurakqui6We3k6jdsqfX8LOa2X24rzhVjVl+MUYdOf0P4pR/
 7eRYosAMg2zPDEBQc2DigbpY9wTJOdqI4su/JLaxAKQU7I1OcEXmOFgXMw8EPG5IDu+C76qn6pf
 r1Kew07Iem/62I9ZmmBftGPxbd6nCdu4ZPVYj6iesvbIpnjyqXTvX6+SD9VnUlEvxKlq96ZNT4t
 XNGa1nfIJdRi+GurRTSfugfWkiEDUYWP+PWfY8xXjs5OSxpUTcg1zAExLBpC8/eHiU1toh7tf7k
 MUQF34YimDr/OucDhCBLisfRC3PESZBk1n9va2vQLkFbtxMOsQpxScvGLNDkU+efU1DUvrWkLkj
 UxSxmw8hLS7vsQnKZjA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-07_02,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 adultscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609070088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_011419_338513_43781F2C 
X-CRM114-Status: GOOD (  12.97  )
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

From: Dhruvin Rajpura <drajpura@qti.qualcomm.com>

Some designs integrate the PM8008/PM8010 with the interrupt pin left
unconnected, deliberately. That compromises some functionality, but
the core function of programming the voltage regulators remains
available, so make interrupts (and the interrupt-controller
properties that depend on it) optional.

PM8010 can communicate over either SPMI or I2C, depending on whether
GPIO1 is pulled high or low. Since qcom,pm8010 is already used by the
SPMI PMIC bindings, whose properties are tailored to SPMI, add a
separate qcom,pm8010-i2c compatible for the I2C case.

Signed-off-by: Dhruvin Rajpura <drajpura@qti.qualcomm.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/mfd/qcom,pm8008.yaml | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,pm8008.yaml b/Documentation/devicetree/bindings/mfd/qcom,pm8008.yaml
index 0c6e1870db1dc571af668c37655017cefe82e139..2f439ff9805d253bdd815bc85ac206ed1be964b6 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,pm8008.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,pm8008.yaml
@@ -16,7 +16,9 @@ description: |
 
 properties:
   compatible:
-    const: qcom,pm8008
+    enum:
+      - qcom,pm8008
+      - qcom,pm8010-i2c
 
   reg:
     maxItems: 1
@@ -88,18 +90,14 @@ properties:
 required:
   - compatible
   - reg
-  - interrupts
   - vdd-l1-l2-supply
   - vdd-l3-l4-supply
   - vdd-l5-supply
   - vdd-l6-supply
   - vdd-l7-supply
-  - gpio-controller
-  - "#gpio-cells"
-  - gpio-ranges
-  - interrupt-controller
-  - "#interrupt-cells"
-  - "#thermal-sensor-cells"
+
+dependencies:
+  interrupt-controller: [ interrupts, "#interrupt-cells" ]
 
 additionalProperties: false
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

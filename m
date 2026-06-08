Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E58C1CD8C9F
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 10:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTReON3lsJ1PGrJj9wPgAi8l/idDfmhM+YQliEHOEgM=; b=h66HKqOLONegGf
	x093QnAmmY50uw7ee/DpZLPG+x8tMDdOSAthEaNSHBkIRpVLJ/iu6DJD97lzkLOT9ZqZ8+thoG5LU
	IGb5U0FY88vQZzvinTilViRrd1ijtp8w730es9mTIYcorAG29joCPrafJnEHxeLwSD/wqd3LPFDBY
	OhNWVYq6I26Pw8ohJoicgjbYMAV5ehSnEj6lYN2u/X4uYCA84vkaTHuj30WA6OUmBZhPiV8BTrA1e
	+wYQ3au1fE0okPcLnpwsLHPjVbP+C9noWO+UtFJGLiMEEjRKrW5V6tAgCL+iuX408p3lfx07L9cvH
	8NgM7MAqhm+JfT4WHwww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWXIt-00000003LL9-2Y59;
	Mon, 08 Jun 2026 10:33:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWXIr-00000003LKO-2fUl
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 10:33:58 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 658A30PF2882032
	for <linux-phy@lists.infradead.org>; Mon, 8 Jun 2026 10:33:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=5kZFXrYXkFu
	MwRonPUnIHxpnv8Am/3Jb5Xkdegig3qg=; b=gp1vqFtegVxv+mGdJo+NWdUIQUI
	yrYNxHxtvGZC/FDMXsTxhoDMSc+B5bwZNT5yfkwqoajmAubIncHT8MjwQ8CzYqmh
	JgiK44XkM8MfBpqqjiU3ub8eRpj/HVeD9GfWqlUIMT4yKjdpYbvR+8cxvyGxhGMh
	vDkIo/wVWSHzbEnLZljFNeqfxoEXlNO3Hm1l2zN6x5jOB6EEagvbEj/Kimx1po1B
	uqG8Id2EwDIyZl+LYqPnHh4H3EjQliMTRq8FMpjcifTjdpt8hu8sIvryVZtj/AsU
	hRqbrsyQ4ScFZb4LFxc0VFaHbtMmnG4idmUCW40CSne5yPbsRDCsGGAYRdQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4enun404f6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 10:33:57 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8423f1fe39eso4617081b3a.1
        for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 03:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780914836; x=1781519636; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5kZFXrYXkFuMwRonPUnIHxpnv8Am/3Jb5Xkdegig3qg=;
        b=YGxp/ROVuPucp86nTTOirh2R2sto34Dj1BwOm2afKxd+fyDBOdlJg6swfe6xm4fsCU
         903mZXc8ARRIzBkMAQEsCMv2IY0p5RtS8+e408ZoJAYgBuutPYoQrQyOJSdOJAG5pLDU
         qF5MntATIqBTIYd6q7et7XzT0MA5gH1yhBCZfWGqsC1RYUFPCsyZn7Bx8OSifHk3vVHd
         FejVwV2x94Pmw6GPLRkILzDMSKuc2c7DqtyObgUswy2A17EaYqf6+IMt+pixbcDAHTj8
         NQSpgVqM5IgB1AR6KFldq21iAsbn0yUK/QSP2Jd4kNr+e4iK12OUqN7tjOxn/N/FB8St
         neOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780914836; x=1781519636;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5kZFXrYXkFuMwRonPUnIHxpnv8Am/3Jb5Xkdegig3qg=;
        b=YlV//7hMsm5tE3vogow8a64TtRdEyNEza0RChrkC0G2D9+lWcN1Mnhxag3QAtWBS6o
         I3AfRxRtvLQrIla9ok9MnOBUvQtB/fD7L8Td5obj2nO2mBDBy3AQUv2d/CSfoj5s7y/k
         vtpAALi9Kn+II6eM1uJBGjmRgVS7q/HR5fTBm1AnGJfzlP1PY1VvFaf+t6q11EdkNI1u
         xvlJUDRFeBjhk8IxlgQCTaJlWQBlIJ6p7ghCnK4WzVm2OVQ4QvV6E1oH/uhPDG2BkYCd
         nki9I2wScG2zk/jygf9XoMqHTV6YdrRAy5qfG+IPA1GS5raOGWkgtZXzBQSvSAOfYOGS
         4Kdg==
X-Forwarded-Encrypted: i=1; AFNElJ+9AEtjJUVKeRPQNMAC9/zR8THRt4XWiBfxobD5JIJhB1TNs8k8FfJOTgUR3eZH/tdgha1cgsnJEMw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyhunyqlj6Ue7NGXTeWBZ2l3VJELhFmqgzHNiqoKsPtzfnBOGut
	zFqGMxFGs3AF2pmhkPSSX1GUcQ+woZkaIpkblQcgdSybwigYkoMWFKY7EibhjzMcrXFiO0w59Yx
	h0qKwYXaNw6s31h/rv+MF67H6RMV4d66lEJaZu2nLyCfFEHCQll7XUvHNu3ZNk4dauoa2
X-Gm-Gg: Acq92OHtvwr56hUxwKG+OxedFK0HRkxE42A1xfpcMuDaRWRYdX26g8Yc/FRkvBG/PES
	7BSxJwuifJiD6j5bxaWHgz0VcUu67RcRQpL0bnyM/AI08wzVsaTUdUDpS5Dm9ynS8cYrXA3LyIa
	hsDzesELJtctx8sCsGu2xGNbHCnVfAGby60VpqnGdO+/YMpLox233VP38/AuyhErpj5000YxNNm
	QhLb2zOBKw3zHGazOAyhjnMWUiNFNmZlIAHyahw3724vSW6jD8wOUQxWMXzYDw7DaX2+ckWHh+S
	nXm/1rGj855T6hredQ7R8vmidxKs7NLZc0OukUCDnVjfuRPBGpvfOrzKpPqQD7uzWanYe7f0GW+
	McjWLqKx0U+apDvkry8PhbJSHXcwQoDkAURFbIz+kKL8BI5R1H+Zlmyp0rN/tmb6E9OvD6jpwzo
	53wLG4u7iuYkhf337Soiti6m9DTByaIrFYDL572JFC57VmBK6kgcsE2quduVd79Q==
X-Received: by 2002:a05:6a00:2ea9:b0:841:d7f6:7297 with SMTP id d2e1a72fcca58-842b0f0994bmr15341788b3a.40.1780914836365;
        Mon, 08 Jun 2026 03:33:56 -0700 (PDT)
X-Received: by 2002:a05:6a00:2ea9:b0:841:d7f6:7297 with SMTP id d2e1a72fcca58-842b0f0994bmr15341757b3a.40.1780914835851;
        Mon, 08 Jun 2026 03:33:55 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-842824a2600sm18571570b3a.27.2026.06.08.03.33.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 03:33:55 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_wcheng@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,qusb2: Document IPQ5210 compatible
Date: Mon,  8 Jun 2026 16:03:43 +0530
Message-Id: <20260608103344.2740174-2-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260608103344.2740174-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260608103344.2740174-1-varadarajan.narayanan@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDA5OSBTYWx0ZWRfX0ZQU+p3sfP2I
 14uDPyIEhzWyCrxM/jerJ0QduvO1AX/b5E4O4ydeoFf0sMXFVH7OTUdAUzd89i7tzFi8mWmDIgG
 19WnUuMH64MGfsLHlr5Kwwrz/Tbpwv7mNPcHjuArHPBz4boIQ6MhNC/IEu+hDZZg1Fru/5IlDef
 XaVXt6dp2jqxKqGuxnr0MuOiSPTWPV0JJPS1T1wsYJb3DEu9462ZOrfz+S9nnB8QyquqkruET/6
 M76ssu2b2MSqfGZCovDQMTCJhMtkWKfwbMWt3C3zUuDzSydv+x03zf0i3UIFYKQA7vSFqkMGpK0
 u8ADs7O15iKio3+vh4nf+DMWBY/r8Cx4WqiIPBjau/ynaWt1BdvRLePytNOiUyz6AfEqSOHC6BY
 MuBnLfkV3VArJWHjg0lvucxQj0jMEfdCk8eGaAG92Y2eb6orEbxgLC3lxPS6OvX0VWJ8o3GnhK6
 8xjO88cSc/d5unm25vA==
X-Proofpoint-ORIG-GUID: rszpbuElXfGUUiPt1iPWYWvUgWXMD_gy
X-Authority-Analysis: v=2.4 cv=ZY4t8MVA c=1 sm=1 tr=0 ts=6a269a95 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=_sJFZoy4csN85dw_wmcA:9 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: rszpbuElXfGUUiPt1iPWYWvUgWXMD_gy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_02,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 spamscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606080099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_033357_679760_89F93334 
X-CRM114-Status: GOOD (  10.78  )
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

Document the QUSB2 PHY compatible for the IPQ5210 SoC. The IPQ5210 PHY is
compatible with the IPQ6018 QUSB2 PHY, so allow it to use
qcom,ipq6018-qusb2-phy as the fallback compatible.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 39851ba9de43..449c2a7e5fec 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -30,6 +30,10 @@ properties:
               - qcom,sdm660-qusb2-phy
               - qcom,sm4250-qusb2-phy
               - qcom,sm6115-qusb2-phy
+      - items:
+          - enum:
+              - qcom,ipq5210-qusb2-phy
+          - const: qcom,ipq6018-qusb2-phy
       - items:
           - enum:
               - qcom,sc7180-qusb2-phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF00606D825
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 06:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Dlit6UGG;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Pllk6hPC;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=bexM9Zxg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jzFQaPPeRZJ0LSRqI7YyokUiQIzCkUNVclu+icvJdM0=; b=Dlit6UGG7BlcYsmDcuDASIZhIU
	/P9dAEG2dMBDVW+XNkie5DN6KC52LxzcXbz3ZL63Pk8Z6lBmgqV/pPuvtdrz7Ew1CAgqtJpuwopkC
	kAIrDrd7Zsou40V2EfRT5Lf+wPjYrwrsKRRXZ2gExF1smskazeKw6qWoaN/R5c0hnpd2VFryV0lv3
	zGwaUJeH1syvR5dTrxEJBZoCN/ApLTeSlLzReMmaFY1gCOM0suxtmpAIBB/Cg9iwuWbMJ9Tdq7upR
	bKJnlBw382z6xNzCuapliOkv2U5/UlIvAIwYWU4BPTPX3XuIq6a9LbfXLHBIuEGy7US9JoQSVOTt7
	Th2GcgkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPDn4-0000000BNZt-3Vzt;
	Fri, 06 Nov 2026 06:51:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPDn3-0000000BNZW-06GG
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 06:51:10 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A6408Ti2834067
	for <linux-phy@lists.infradead.org>; Fri, 6 Nov 2026 06:51:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JQZcWnzFgAmmFYA/sHLwHEakiYPJA+ODTFEZ0NO5CyE=; b=Pllk6hPCzbgjTS4L
	Lb3qhY1U4RExnpmitgxHB4Acq9kf+EW1lSTEYMFPkm31u77F7GgpkWshZJnUDL4k
	DrfKbBkj4uoVQBY+6JissiFCgAxJjdLtIVEmPaH5+HUZ5mUOp/upOiN+sPHLxmt9
	EPdf+bdPg0zUfYMc383hHEps9/5lZnYvXzXi6MpIPs0CwAVv3kjr6ckwM0nK5NtA
	SaQ9pdftVfLPd+oKZCPdCuhW7oCVdL3k3UxNvhaHy4W7ERyyaiX8uz1/ZUcXQUOn
	JgDs/sVMpkjF3dhVG2WjiyXW4eik8Mugx7LpxdceZQ6kUH7vdhbFd4Mx6uZuvjXt
	mvlm3g==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hs3pa1gan-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 06:51:07 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3ada6ccd402so334982a91.2
        for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 22:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793947867; x=1794552667; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JQZcWnzFgAmmFYA/sHLwHEakiYPJA+ODTFEZ0NO5CyE=;
        b=bexM9ZxgcOtjL0KSvgCv5NBMaWjgI8yqtUcmRzpvVwQMZU7BxpytPij+WafJUPcMq4
         k/kbdTge+K9rgKSS2+T+Qe/qvW+BnUx69ndgEyhGMonCpNzs+8PYXBu+23jPgeNQ3WYk
         zmC9veUnFsVap8T8IjCgBA4kR2FkMkNbmgQMiLd7uFhVPPETo46pP3b/nfTYwpcISDaK
         7ajIklNM0rPSjzORaN64yM9nztx0dj2BeIAHCY+XsmbcqOqXoicMnChWOh3YS+tFn6Oz
         10j3GIthWohyuVAhRzVXqMP00083Vk54v0aPCqQYrfmWyV5RJ4MYaN0u1DNQjBRprIeE
         /kog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793947867; x=1794552667;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JQZcWnzFgAmmFYA/sHLwHEakiYPJA+ODTFEZ0NO5CyE=;
        b=KOOWWdoetGvIfRjElOD5f5qkRjQlHMMUGFSIIfU5UIeByclBR2Xge+a57RdnW49aGQ
         XTL80UYmDusINnnovnbR/jNYuZ+ElzniGkmi25PyO98awYoFFAi75YGi9icDIl9l9ETt
         VVJOxCPn4eoNHYDdZnuAeM3PWSQBmLqB/JRwTpw+x7pq1IH82B1xRAs7V3pfq8J6UpcF
         Z+dqNXN46QiWDzd/cysAf/C923Wgzt7f6T18KYcki60fJFz8ssEBNk6w21dOxuJmoswv
         tm+t+GBBnKuLlSwmOCG8hIAZQfcgo7osrGrRHHrhAow3AjN5GRQDzsFLTnXTbiWx9vtE
         lGAQ==
X-Forwarded-Encrypted: i=1; AL+hErHR/DhrexsoVHM4IElSKnUzQGywrvbDXXgZkDfDXnoPwb4qJj3CM6IUjMfgiTCWMzvvNavt6kZ7IVg=@lists.infradead.org
X-Gm-Message-State: APuU4Z+sDG2MSa+gC40FKMzCAsAlk2ZszVqujCMZu+prC3YSE0rYLLZV
	7ilS/r6sdnmAYxZzmEIqkP4kLupvk4OLOeCkrw5bHbZXymQA3NaekLUMxDMoNtYqtmZ9EfXwehu
	oyLrLoaEtGNrT6mOt1ObhJK+aEMHEAsASMGzzDAkuZvEr8ahv7EI0iXGPvY6DEZYUHfD8
X-Gm-Gg: AYBFou0hj02UHEKTovBtiv2VNsfEKg64FueCD0AjiMP0JaRCV9NSjR0ApVqYZ1xIq43
	GErdXyOUSs8eeQECrQBRzTQ1MmDv5sOzn9KjA9fKdGVXahpSqOxDgBknSLPS/vwol7txbl7YGq1
	6MSzWbQPYMzzDwu2RWbV1SRs3tN4KTpPg8u6TIf/PzqLBt/ok68m28xl4hPCdvfpSsQRlZIzOOj
	vwXgj5fTs4ukvOYSZapgL/9QU6DTuFTRbee4LD1wVT2/a3xvGL8BHdYU+JNOeWa8HJA9GBDVA6q
	3LGaX7whjmbkM7eCDTFg9fWrSOK+dGy8+NiyJfqaO3kkTAlzRBGSXErpWdvxsMlrbWTCx3d34t2
	Zn5nzdn+1ht4QMHQa0NqDDW5Opr+v7OCaTCwPU4VOLX/786Pe0EmHzGSFERppdHYgxQ8elurCpj
	v7ADrt
X-Received: by 2002:a17:90b:4c4d:b0:3ac:8ee5:e007 with SMTP id 98e67ed59e1d1-3b0db6ee69fmr1388257a91.20.1793947866844;
        Thu, 05 Nov 2026 22:51:06 -0800 (PST)
X-Received: by 2002:a17:90b:4c4d:b0:3ac:8ee5:e007 with SMTP id 98e67ed59e1d1-3b0db6ee69fmr1388239a91.20.1793947866358;
        Thu, 05 Nov 2026 22:51:06 -0800 (PST)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b0b313c0dcsm6597274a91.1.2026.11.05.22.50.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 22:51:06 -0800 (PST)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Fri, 06 Nov 2026 12:20:43 +0530
Subject: [PATCH v4 2/6] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Hawi
 and Maili compatibles
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261106-hawi-maili-camss-v4-2-d528c7a797b4@oss.qualcomm.com>
References: <20261106-hawi-maili-camss-v4-0-d528c7a797b4@oss.qualcomm.com>
In-Reply-To: <20261106-hawi-maili-camss-v4-0-d528c7a797b4@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793947844; l=1461;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=O6JOHgjWCf6k0+eXloLMxj3S4Nm7SEUIMrYIjwRLIus=;
 b=0J78F37O0f9bKC6fbPmKMswzabA2px9rj+Plc3qcxMWcxeMS/pTc9HKNtYs+5MrbeLGZVuuNx
 8WyPRjLiTw9D3UZX5eeVL7ax7VaLBS58JgE1DW4/yo7qd9ebMIaIoQ6
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA2MDAyNyBTYWx0ZWRfXxK2gYtpHPLsI
 6UeLBffOIndBJ6kiI7ZbUJdyl+PMl+L+NAPD1X0CNMYhmkWurXX1nqcgkIaa5iHFgQr8IjFM+Xs
 TdHxQtzn8hPtHsu+CGbAmoy1wqQDlRx+XlPmIxLdT7Luc/bbBRzZfqHdMZUSn/5stH6XkCJkJTe
 n/mJcltVMkir4Fvlm0jFbeNhSPSddWoTjunoygzVIsFpZqMDC10BfjiqiQfvaEeph8rtdLbxmca
 jDdniwqDU6XJ8B7T13tim8UM2k9pp/dyjHy7OANabrYBs3sOsVInCgEbXqINh3s3G0LgjSF/rUO
 Pj147q2q4FDNGoX4EO9fhTtXjQXNOwJdT+PF7m0DDqghS8MKEc5LhGhgLyJQ4auVpvqQp6SlAh4
 7/KmgeBUEHOL0021+aSYVo94G5og3/Zx1eMFlkhmD0dkTYLHVXyxX2WUJzrPqSaI1XReLq5LDVT
 lZZ+JoT/sk0ZnDnn+vA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA2MDAyNyBTYWx0ZWRfX0bsy8b6Lu9cc
 64XbHj6VFwIhXuroi0syMpGSBTkbFflCPG4b9krzhA2rSbPlQXtuoOTDx2t54k7a2FszHQ/pGUw
 kVWAJcca57nyVn7Ynlz2N+Tq2mrkgtI=
X-Proofpoint-ORIG-GUID: d7ZTNL5AaaYImcoZ243VyPj9rc9Pov-n
X-Authority-Analysis: v=2.4 cv=GpzXaU1C c=1 sm=1 tr=0 ts=6aed78db cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Qbo-v1IXpRF52dvEqNcA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: d7ZTNL5AaaYImcoZ243VyPj9rc9Pov-n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-06_01,2026-11-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0 malwarescore=0
 priorityscore=1501 phishscore=0 bulkscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611060027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_225109_208265_672BBA01 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hawi and Maili integrate the same CSIPHY IP as Kaanapali with an
identical register interface. Add qcom,hawi-csi2-phy and
qcom,maili-csi2-phy falling back to qcom,hawi-csi2-phy.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Co-developed-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index 6e9eb8e265df93b631101ae13f31f6365b6239b6..627aebc7cd9b7ca313457d3f70f72796e9671e8a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -18,11 +18,16 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,hawi-csi2-phy
           - qcom,kaanapali-csi2-phy
           - qcom,x1e80100-csi2-phy
       - items:
           - const: qcom,glymur-csi2-phy
           - const: qcom,x1e80100-csi2-phy
+      - items:
+          - enum:
+              - qcom,maili-csi2-phy
+          - const: qcom,hawi-csi2-phy
 
   reg:
     maxItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

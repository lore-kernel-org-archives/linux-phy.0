Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C6EDC79F9F
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jan 2026 14:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H00jiD3dGknzA2dsOp715NQlRDNYpnG7WHEzkqmRwr4=; b=OIsTc9kxpPFqst
	LLeAZS9AMKaCdrezPGo19A8iRx451RVzdN+L9bX8ZPwpRXNJD6JJWGnqS0wX1AhkjRy2hWSxKSgXK
	WoYYeFMk+vs/ZBz+PnVRDCVaYc4C2Frn4x/y25sGYf10ptTdtlf3jLu8Y4QJly7jYM0iDMw27f2e/
	R8/biLKvdCAh0UJc7kWRUzgjncGeVwM4mUAocCAsi9ffKqhpHuAhd4bNt1lX18h3IRORdTv8wq/k9
	bmLSzalqGWo9KVNW/frNrekSVrwkZJSf+2If3D3+RwVZslj8bT3lhfcsowHQBF/2mXx9Vj52sCP0l
	b16K1XELwgqQByyJW8Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vclrP-0000000BZBg-3K6X;
	Mon, 05 Jan 2026 14:47:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vclrN-0000000BZAQ-034L
	for linux-phy@lists.infradead.org;
	Mon, 05 Jan 2026 14:47:06 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6058KIrF1206487
	for <linux-phy@lists.infradead.org>; Mon, 5 Jan 2026 14:47:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=JhBKVlQJz49
	+u6EBIZsBHwU82kPiFaw4dCGsqDxkSPM=; b=Ai0FGE58MpUcrqs8vOV2GOuMKxc
	szUJlwEjGUoH0ctemgjsogNFWidmd8+xghDuDAjWPMELWwhBkeK+wLYfF3bcqslo
	e8Rluf6FETVTGKkkmz4kp6DrLb3J5uuZqLbFQbOrTkl4Z9/3H0/imgfnFIwPlseY
	wJcE4tRibZwlUIAIFiXNgKkcl7Eo7kWAeqIRY9TxeajF4vAIQ6Dwqv9XvEBS4gWd
	foEtqh9pkdris/MK99VKJW8FTAlqrMLc2R/qGWdMkReq1P5xRLg7Yc9zWkH4y15g
	y5cLGSg66FRpYxPD0tK6bcJyXuVntQ0zbmbXm4licw7Q4ja7Woc3UOI+R4Q==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bev9hcraw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 14:47:04 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34c38781efcso20083a91.2
        for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 06:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767624424; x=1768229224; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JhBKVlQJz49+u6EBIZsBHwU82kPiFaw4dCGsqDxkSPM=;
        b=apsn6ieSgNjhYG8XUm4qr1JUZFmYRchaJC4h6kDfhLdW67BPbGFGLN9st1FdTu8RdM
         FcppNmrDbK8+0LZg3ZLd5jpu1Pzmbep49fluI7cHuxS2XCnoVIEkju12/vLgJkzQPSeH
         Lo8mN6EEeUCYeBhJoMNz2z7tvsdeYpr91HgVHxEU6/hRJPo8CdYTHoZvzP8AalhqhyOT
         bqCgcn0EYh3huxWCiUwHkSJJ9IstvQPwG3ZYczHxuBdZ+s2VkDV8D+Ed8sZ7rgpU28pM
         Qmj1y3RI3E9sRU8Q4mz0FyXsH0rQnovguDdf3uESHoI1tXxAFY0WQxDSBTmDYtlDA8Yp
         mAGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767624424; x=1768229224;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JhBKVlQJz49+u6EBIZsBHwU82kPiFaw4dCGsqDxkSPM=;
        b=qRyGMX/GJEEc5prtrougf/kvz4h3nwHmYVJ6PVXKkou1PEx6WQa1Er5FRibAmNN9l5
         55EvOBe0FK0w3HH43R3Nhpn67Jy5xA9FqYo8MNzkpxXSlCEeTiqaUmd1RDNvziKlgZZz
         LyiACKtnAuh3C4ViH2T6FMovV+efq0ohWqAc/4+29rM6htniueDvA/LFLB9RMKpG67b7
         f9yTU9SOYyiDyGfxB1RJcT+c0G9jQnptEB3Cb633NyGoeyIhF4tcBoGfQlPaZlzkBMS0
         6oEBat1NVwTNFEFDtAIJF9/1vnR0Y6r9F5Z8Deo4ofDP+2cVHBm6gxIv3VZuyha+8v+s
         RWHw==
X-Forwarded-Encrypted: i=1; AJvYcCVrLGt6s5jxLOskuTx9jkYUnyZEgzNNW9+R6bxJHKCanb9tgaby7g60Pn1dZ4Ee9RM3IPI5eRbA41I=@lists.infradead.org
X-Gm-Message-State: AOJu0YxIOxCXym2WxaZi1Sng+JjBA/GD2CaDEMAjaGm+LQh6RjjlH7Pw
	UDZB+hVkSmutaSgqcAvFXiGX4tx4aj1WpZsN8mT2Lvh30o0V70kPEzOGXfDQS+cWdAtz/UBVqif
	sTBEU8GmSlSZa2IpJuYtXRWXk9ZD4J0/m03nwa4lBOwMCLHNwa7kxVegDNIpceRFXp0kp
X-Gm-Gg: AY/fxX6zw7XAcJoA0LsdpfsZFwz5tpZkBP1W1Zw7XuiS6nEx1UnTTIQQkSsjWs52a6R
	1DcwgUsGcummQDqUcnRXZxKCK/avE0aYHYvmGXmKk0EHrNAHcRm1MhII2eqtYiA2ahs+iysXyyw
	ZIma3yQW7B2t7q4gKLeK4gX0Fwm7QnPzhJwCpG6J4InNuL91DHLtTBspdWPXktwIVMHL8MNAHOC
	MwbSUmL+1Z2qat2fou0etiITC+DcE4+BOUuHA913umgDt/pARLvZ+GNtV6qTjM/OzV62FMsLtj6
	jUrzkdpXImjcZgNkCyltG7gEuUvfAsi/brJN2zTJQZKnt+kCCelVDiF0UycAkoOJZgshdYzehXV
	INiJtpgaN4i5IM5VBEw7n32d3SoG4x53BjSBQA34HgU+HOEPhPoCK
X-Received: by 2002:a17:90b:298:b0:34c:7183:e290 with SMTP id 98e67ed59e1d1-34e921eaf5dmr29670295a91.31.1767624423792;
        Mon, 05 Jan 2026 06:47:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGSOJMt9LPpStimWUWAc3THDarK/RDjttBLCdC3rkMFxijAsvfUDvaknO3V83tRQ9PNeE5XzA==
X-Received: by 2002:a17:90b:298:b0:34c:7183:e290 with SMTP id 98e67ed59e1d1-34e921eaf5dmr29670272a91.31.1767624423306;
        Mon, 05 Jan 2026 06:47:03 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f476ec311sm6634868a91.4.2026.01.05.06.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 06:47:02 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V3 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP UFS PHY compatible
Date: Mon,  5 Jan 2026 20:16:40 +0530
Message-Id: <20260105144643.669344-2-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDEyOSBTYWx0ZWRfX/HunU3U9ukYz
 UU+W67qBRm2OktNjn/Ombxl9vqqJDSSisecatBrx01Tb6S9ah3pcLdj0LaWfQ5JV4QdOBqSXAMb
 dvk/OVDqiJxezyilqWnfTEZU/AvXkaGq3iXv3Nw8cwbGRoChu7uSo7NxIpQPKpObsENT7+Y3QAw
 hpNXJwG2MNSAEEm7vVYzbz7bie2gsHC8nW3NrCqV80sur3tJsoP+btnOts4+Z8IXuGWA3SPb9ny
 jbMoBdqKi0u/rPO4DVHE4aiaE/e7imlIFSyyi2I7RoNTSZHVqJlNwu4hfMU1hvJyoPj/tza5Y2K
 /7VH6mzo8MWbg9+w3ZcZYplgynSQX4SDNA5IpepTkPE/RtQCi7OGhXFUBbw9cW//c9GLGXQM1Xg
 M3wXHFu74YhfgjIEPnckLt1GyVUWhw7Q0E8HQtj5sf0biba3K2j+pSpjCItR58o57nE1yfvDaIq
 2VkjY7eAZ1W26aXFlnQ==
X-Proofpoint-GUID: E08nNOh8vkZPunXYeBgeg9zmHcPtmt41
X-Authority-Analysis: v=2.4 cv=RrbI7SmK c=1 sm=1 tr=0 ts=695bcee8 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=0Nzjj2pCF3-L_PL3nR0A:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: E08nNOh8vkZPunXYeBgeg9zmHcPtmt41
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 spamscore=0 impostorscore=0 malwarescore=0
 suspectscore=0 adultscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_064705_054601_2DBEBFB8 
X-CRM114-Status: GOOD (  10.23  )
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

Document QMP UFS PHY compatible for x1e80100 SoC. Use SM8550 as a
fallback since x1e80100 is fully compatible with it.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index fba7b2549dde..166e3787db58 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -20,6 +20,10 @@ properties:
           - enum:
               - qcom,qcs615-qmp-ufs-phy
           - const: qcom,sm6115-qmp-ufs-phy
+      - items:
+          - enum:
+              - qcom,x1e80100-qmp-ufs-phy
+          - const: qcom,sm8550-qmp-ufs-phy
       - items:
           - enum:
               - qcom,qcs8300-qmp-ufs-phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

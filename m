Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E12BACD8C9D
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 10:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pEnwM3bZm42ncS4WQW1D6QEwuQ565LXNOFlQkJLkRDM=; b=PyKZLyjmOnMWPU
	aeVQ98SnyHJ9p5Tti41pHaRzF3gwzlap1WJIYSmbQZ/nI91jn21KhHS0Abgi5lSBBueFXDVizua3W
	ZFPWRER7oo5MIti/owbQmu8S8sTIjeHBBVTcs3tvi4Jo6lUNlYid/F4wXB6hkdAutrfSGknb3mP3X
	LcUHprDpr7FUgl7YdWqOnpsFxNiubuQoif6LPHX7AsWylnyf6lDXzAJf7bJpCOLfCjXhrFJeMfCDA
	W2vgTIgBa+J6QbXSfb/2lC2M+sNoeTGnqH//L2mlnfPbXdAHJ99OIjcWfNW8bsCl/esWAnbM5IQGH
	Ou+CglsFT4eUCxv2H1kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWXIy-00000003LMM-2oZa;
	Mon, 08 Jun 2026 10:34:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWXIw-00000003LLr-0g3K
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 10:34:03 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6586OrH22274537
	for <linux-phy@lists.infradead.org>; Mon, 8 Jun 2026 10:34:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=pzJyfsYOmcL
	jIQqyBfcVMuHq0RGrLlrmlr/KgSBSmDs=; b=ULKQ0cWN9grF5IatkvqlbABUwG5
	VjgMWChm6i4G7c5OdHP9vfzHhwDRCirsPhcYwrgjyNArE77Qq0OC1gI8IP5s1X6e
	/T7BlqKOl8tSz6sqE/Ux4sv4Jt25iDcx+q7CzXb7PORyVixAyfFwM9f1HHqUOTB/
	NX9NfLdSw/IurshDZ+p9b2HGg9MmtIOxIQjrE/0rl4m3J45ne91bTGKtcHNwR3TB
	XfdzcHmSrB+I65Pb2f14HlgBIMuLHtTGEQVvgVgHY+XWoFADtmyzMIbtSO0OzuLt
	4JlovDUvKTNaQPQAW5QFqie7xcDBVF0PzkJ1RINAxY1sUodKts+Da/Gi/EQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4emcqgy3mj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 10:34:01 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8423f24dcedso5269348b3a.1
        for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 03:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780914841; x=1781519641; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pzJyfsYOmcLjIQqyBfcVMuHq0RGrLlrmlr/KgSBSmDs=;
        b=cWPi2LGYMj8y/66GFhRRT7jnRk6XTsNbBnjdoekWFfLW+J71+OQMx+6Bm2OY8Uvwcl
         UKdECjuBP3h8MpV/f53aQ8gEm/UPsorqNq3A5kO5yBB26HPa4JrS6+hWxqpY/M8wxGB5
         +UNh6TO3W2Tv51BYCEPMuShM5ZePIChNx4+9qrE4X/tnvsNis1PE+CdR/pYU+NiGPj46
         /8LmaoRT3uuBvylb9rgivZDL3OafnEpwHQ+Kx9V9mbyX0qFUbp620yWcBXysxDXyBa3a
         m+kQNhbRZMeK66xn5zlFp1abHw07RrK+qpYGhQ7HmWcSOR1b7Ab6yfbGpcelXEciNuOk
         wfug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780914841; x=1781519641;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pzJyfsYOmcLjIQqyBfcVMuHq0RGrLlrmlr/KgSBSmDs=;
        b=G3BYaSabtWP/yN6NeAFK2Pe0JGTmbpzwOCDX67IEUjpaxxEawavMtbjaYFcbuvUzVK
         SFyA/U3QGgBUqfCHFB18QJVI9TiBf2J3Calfi6K5tJGZvhulf5uroCQUViNfaWPRnWYj
         c4XMjR0Hp810vt4SvftvMv/cPiIT2szgJ64E6+i5kAQnna2RJ4LdfdeN+j840wAe5Fz7
         rvCiVW/puf09gODflf1jeYnlhSCeWMWal1AYzzMCmgRPUrvaahvSwQ4ftfKle9w7mmnX
         fh08Vc2G/UtdI6asoh/VafFJwYd3jYYck4jONvJXktYol+tWhaVCuM5pG1hcK9v5Iu4o
         Uugg==
X-Forwarded-Encrypted: i=1; AFNElJ9rQPtPUh5/KbdYJQf9yuDhqnfOI0n46k4HXQL3oVWikMEi7H0AehOPFLC7kluAb4eTaVJyjzn64Mg=@lists.infradead.org
X-Gm-Message-State: AOJu0YykUp4tExYGoMALnhNXwqfzFJXZY5/Uu70WP8BxwFBLmts2NN9Q
	4rwAzdWnNxB9ZY2pKGXCczieufidjfO1b6t8lU7sBQnlsMNFFbTekV5Dwkcbxwqw6XXIo934QhL
	jcfCFq58N+ZVUxSbVpswtGE1Z+dXqpn3DDnmck0Y97xzI3QGliAHWywWx179UcBboOLHe
X-Gm-Gg: Acq92OF2mFYHIu0yrROUlIm0d+laILWGZGOqDH0LcefhBYnQ3eein0NLGmZacL+mJXX
	fJ6ozOHl6jXgLG1yxrjH/Ka6TsLXjtKCiU+itxoVNP2teIY3+eM4TztasXQrQe5axXXawBEe//l
	WqwYCf6NWLCgJvBUJfEgptQP4DK97FhVt06yr1nIXcZ9Fo9hn909S2P7UjQMWcxX9QjlkToADjf
	8hNRASPsJ1K42u7unhAdtefdmmR91Qtgrtt0mC2GGacJyk+h08p1KvMFrC2v4awOQDsllP0Ltky
	W0u3sR+RVjFTJyB/NopxdD8M+1zjovFeA1jBCJjWZpunA8ejCGDVZ13q+CvYSJwd0WOhPkcbTZx
	QkKK/UHufWE0womF2ITgQknyrrSJK29Y/WM0QZY3KdGO3COqE1XHjm7OW20NvQg6xYakBiTP5J6
	2EUd6MXoSJ8pfs2fuQXOXC/tE8F6NDz9Dsz9KRJzawL1Xo64HB4YrEEpPn6XOwYA==
X-Received: by 2002:a05:6a00:a224:b0:842:670d:f6dc with SMTP id d2e1a72fcca58-842b0e3d2c7mr14941351b3a.27.1780914841072;
        Mon, 08 Jun 2026 03:34:01 -0700 (PDT)
X-Received: by 2002:a05:6a00:a224:b0:842:670d:f6dc with SMTP id d2e1a72fcca58-842b0e3d2c7mr14941268b3a.27.1780914839843;
        Mon, 08 Jun 2026 03:33:59 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-842824a2600sm18571570b3a.27.2026.06.08.03.33.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 03:33:59 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_wcheng@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v2 2/2] dt-bindings: phy: qcom,qmp-usb: Add ipq5210 USB3 PHY
Date: Mon,  8 Jun 2026 16:03:44 +0530
Message-Id: <20260608103344.2740174-3-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260608103344.2740174-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260608103344.2740174-1-varadarajan.narayanan@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=dJGWXuZb c=1 sm=1 tr=0 ts=6a269a99 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=WI5TtnT-L6ZHCY-PEAAA:9 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: P3Q5Of-XlAHBnzRBSIHEzkO-k9U34dU9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDA5OSBTYWx0ZWRfX1kM2PvUsCQEm
 18INp4r5MREMsWO7X9YMxkL+0xy09wCAs9Q6MxvCErp0w8xypwfV/CuL0vSoiACx6+4jkJWg3CR
 Q5mmpwTcXyUXYsoutY4w4r1ZiAD3ukwvw8EX95sQSLQmZ9KDBUaNWHx3KBQCdPUP24KBDZgYm8J
 +2bmvFC8s1rtzNfhNm5BNqA+6rIHTBOaA5d5ND/tYx5yfsuZny5ncEDpcCvJqmfdeX/L7t6UWCF
 vmHoAto7oZQB3OQ4ktyjHJUoxoPs56vWui7d5Am6GU6iH7l3UtvIoASC65alzbrI+mJ/93B+V2/
 q+cf4ODZXQgbHGPQU7XO6JpyT0BsUtXpt8N4mv2OFvHUS77v9/ol0zhl3iaHrM2IT1XHirek9Q8
 RIN9yhKRjBm9Nnxz2YgFU66EmebYIuEI7TQzo5jBwHFGwUy9sl1csrP13MkWZAoMLt4N1SXlfnr
 c411NaZxwwaTZoGhhkQ==
X-Proofpoint-ORIG-GUID: P3Q5Of-XlAHBnzRBSIHEzkO-k9U34dU9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_02,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 adultscore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606080099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_033402_205231_997089B8 
X-CRM114-Status: GOOD (  12.03  )
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

Add dt-bindings for the USB3 QMP PHY found on the Qualcomm IPQ5210 SoC. The
IPQ5210 PHY is compatible with the IPQ9574 PHY, so add it as a fallback-
compatible entry using a oneOf construct rather than a plain enum entry.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 46 +++++++++++--------
 1 file changed, 26 insertions(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 623c2f8c7d22..01342823e57f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -15,26 +15,32 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,glymur-qmp-usb3-uni-phy
-      - qcom,ipq5424-qmp-usb3-phy
-      - qcom,ipq6018-qmp-usb3-phy
-      - qcom,ipq8074-qmp-usb3-phy
-      - qcom,ipq9574-qmp-usb3-phy
-      - qcom,msm8996-qmp-usb3-phy
-      - qcom,qcs8300-qmp-usb3-uni-phy
-      - qcom,qdu1000-qmp-usb3-uni-phy
-      - qcom,sa8775p-qmp-usb3-uni-phy
-      - qcom,sc8180x-qmp-usb3-uni-phy
-      - qcom,sc8280xp-qmp-usb3-uni-phy
-      - qcom,sdm845-qmp-usb3-uni-phy
-      - qcom,sdx55-qmp-usb3-uni-phy
-      - qcom,sdx65-qmp-usb3-uni-phy
-      - qcom,sdx75-qmp-usb3-uni-phy
-      - qcom,sm8150-qmp-usb3-uni-phy
-      - qcom,sm8250-qmp-usb3-uni-phy
-      - qcom,sm8350-qmp-usb3-uni-phy
-      - qcom,x1e80100-qmp-usb3-uni-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,glymur-qmp-usb3-uni-phy
+              - qcom,ipq5424-qmp-usb3-phy
+              - qcom,ipq6018-qmp-usb3-phy
+              - qcom,ipq8074-qmp-usb3-phy
+              - qcom,ipq9574-qmp-usb3-phy
+              - qcom,msm8996-qmp-usb3-phy
+              - qcom,qcs8300-qmp-usb3-uni-phy
+              - qcom,qdu1000-qmp-usb3-uni-phy
+              - qcom,sa8775p-qmp-usb3-uni-phy
+              - qcom,sc8180x-qmp-usb3-uni-phy
+              - qcom,sc8280xp-qmp-usb3-uni-phy
+              - qcom,sdm845-qmp-usb3-uni-phy
+              - qcom,sdx55-qmp-usb3-uni-phy
+              - qcom,sdx65-qmp-usb3-uni-phy
+              - qcom,sdx75-qmp-usb3-uni-phy
+              - qcom,sm8150-qmp-usb3-uni-phy
+              - qcom,sm8250-qmp-usb3-uni-phy
+              - qcom,sm8350-qmp-usb3-uni-phy
+              - qcom,x1e80100-qmp-usb3-uni-phy
+      - items:
+          - enum:
+              - qcom,ipq5210-qmp-usb3-phy
+          - const: qcom,ipq9574-qmp-usb3-phy
 
   reg:
     maxItems: 1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

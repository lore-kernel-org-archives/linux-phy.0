Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477ED606A331
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 06:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LUmkXemD;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=MpZ7ykoS;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=N/Z0leJj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qByS6Sh41u1tcGX/FSn5svZD3ziQFEUGQK9Kkv3Nzyk=; b=LUmkXemDF3+OiDxkk6I3z+Ws1V
	AsNOO2l7oL/Ydctaw32eoYoDGJ5emw9zFKarcXLp9frvcH/j6GwiytAZ7Iu8WM2BjATLAulZZwGA6
	Dywvkxs15uuyvxTKiLBDxTAk6ZklTSFweZe5Ioh/9moBkVC2frqR3kYktCcEu7fQdm97F/q2qv2Wq
	To0v2AWLmjE7bxK0CpWCwYKKpTo1bC22B5ADz489M3BvG1DTpb2tUV4sVIubpKTltHJ0xkHK6OBLz
	cQ+a0ngwttNc3MLtmKNGj3OHCxuPYBtBIzt7xNbXoZV9caDck4VnmdjY2wMtMzW2a4pcdIG6D2Zvo
	biX+5lRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW6S9-00000008fNo-07r2;
	Wed, 25 Nov 2026 06:26:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW6S6-00000008fN6-1OdW
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 06:26:00 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AP68imH1617350
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 06:25:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pmawXRSR283Ucc1PSnIiqX8eAjPfNtrwEJ7cQLdMyUA=; b=MpZ7ykoSA7/sjKor
	fhs3LtxAA4aCOH/GysYC2AxowpPRmlTm5zMFGhEF1UsE1+LDAJ4cPAaORCe8hTTj
	3jLRSUFAT8A0WYN4NrBTqGkq3XQdsAXSpb5NcWzWc+kkVB3FcyW4JHNsP/J26k88
	LwbhHlCylKB2n0njRhvHioNEN5TvPfxe9MsTy++GkI0PUXJaP2MnKrwzMedg23mS
	pniWcsd7+8+Ox0/sgvARTLo70rR/5gVoy3epBzj5Q4kEboPai8vuJC0kbBCQfUJK
	rQ7+fWYJmu3Xi3MPf0DRx2Du9gBCbRSe7H4PhkyABjiZny23Xpzxlyl2XFDlw2AP
	auk/tA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j5efftt26-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 06:25:57 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8b7614e9762so3919494b3a.2
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 22:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795587956; x=1796192756; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pmawXRSR283Ucc1PSnIiqX8eAjPfNtrwEJ7cQLdMyUA=;
        b=N/Z0leJja5ul900K/i8SluCvhQ2iUCSCzxN8m/LXODdSjFS4bRnf46GxKonQW/lLiM
         PCUulCtkf7pnsl+swHf9AfntpvO28jhuQsim8Du1ZN7JFgISk8+E5hgaGVd2aXTS6wir
         iogCEA6l96FZNNT8g/a7WaJUu7NIyXy2G19zR3CPKksezamqmUDQ7VdEeoW2tL+k8p4/
         Jfd6soim9ND2538Yfj1bFJPoUPqADH7tjgo2clU8ETrwlmRqMgEXoK6wdAa9g4NIcChr
         Cyf0plqiG9e0YPzpOdJGj15H07i/S4SIExAEESMC6gN/7jU7DfNEe9hkoylhikDke9c9
         mKqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795587956; x=1796192756;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pmawXRSR283Ucc1PSnIiqX8eAjPfNtrwEJ7cQLdMyUA=;
        b=xIYWL7VHUmj03TsN966B/e/ZB/8wEa2G98WPU7RwAHIuHVycEvQ4sVzaQjCpvmIXLz
         908GfoAFbx9R5QmgsXJqwQE94WVYVaaIQMBVOnLTizhov1N75gNP22iDw3kglO4u89N3
         LYsocoPfRtjOw8bGM+CPtkrIFWraIz51YVnwRTtmLfe7JdSDJvOdIc2HU3xA/Bp8iSCc
         Q9Q0qclN5Dc90BfzkSACBpW42HTWrkAF+NYChvL9BT0Tzq2P24zhqs4TnkOj4n39RWmh
         GxFNlB9pqsGYTAkWj8rvTivPCd86UCo1To+T/9btdHth2SNxiRnxwtGaEInzp9XxMWUr
         wsGA==
X-Forwarded-Encrypted: i=1; AL+hErHhDp5WurAyevVfGUJo7pqXQjxdNnhMPEo2TYxghODAK10uHwK8DsalSIB7d0mNr9EYxw2TmYx3bI0=@lists.infradead.org
X-Gm-Message-State: APuU4Z/i2LzQXqYznkRyoww8PtXgblwENcY7aAhc4v//K3oTAWp9sGw3
	E8zKXOdvD329hHGQpcIzmlhrE8NTCw5qrfgkMKRVJltNPX+dfy/dy5ghPcbGiUCLV7naZnAV5kL
	2ITYyv9fJHls4qszvv07WEtolh6s0HWlKK9hx93Qc4eIyXd2OS64vXhrnttLIf6eaI59z
X-Gm-Gg: AZFdTZe6cXaUtKMkOTXeFDea6Za3BrTbYDb+JXvIm7li2t++5xrTQUbls+T9l3zTGxE
	im1I1bCrDy1q59lC3c0DYXQcWot1D/xXZaCgBj2pW9Rz+mdlPoRDIK+CwmADop+krVWneUbPcS/
	P8jAe4xRN1R1nZw3bqO3D9dqEm2b4RjVJSIIB65agv9/RsUj2mFrNVl1Upj+cothGfmzKOtBIjk
	OzTv55qN2XdhMt/EiLHt0Eyq7Q9mJBl4l8ILxRtHPLHpusOr8w2ps/k9x7RFhohr+WtC+q5aWTp
	B2snsb0YnXIbYyKPJHZGO003w4n19cj8GBQz26Pq7wVcQ8loj+aRqyWhg4QDP9z6w3maoMy+8YU
	fXYtupWKllSTT+N0xS9sQLKB+UvECC/eeTKoMyefJofALDxtmEgcM8Ym1vw50A9PHy4LvBbAdgq
	5Ngfra
X-Received: by 2002:a05:6a00:94f4:b0:89f:c441:580a with SMTP id d2e1a72fcca58-8c87ca522a0mr14601710b3a.36.1795587956354;
        Tue, 24 Nov 2026 22:25:56 -0800 (PST)
X-Received: by 2002:a05:6a00:94f4:b0:89f:c441:580a with SMTP id d2e1a72fcca58-8c87ca522a0mr14601682b3a.36.1795587955918;
        Tue, 24 Nov 2026 22:25:55 -0800 (PST)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c87077944bsm8385066b3a.2.2026.11.24.22.25.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 22:25:55 -0800 (PST)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Wed, 25 Nov 2026 11:55:41 +0530
Subject: [PATCH v5 1/3] dt-bindings: i2c: qcom,i2c-cci: Add Hawi compatible
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261125-hawi-maili-camss-v5-1-1483b7f68dce@oss.qualcomm.com>
References: <20261125-hawi-maili-camss-v5-0-1483b7f68dce@oss.qualcomm.com>
In-Reply-To: <20261125-hawi-maili-camss-v5-0-1483b7f68dce@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795587942; l=1476;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=BTDhy4Hj9RCXelLYOtQYezLS7KR1Rsj0YchhEiP5678=;
 b=JJ7++Y37/ybPg6xYkSO8GXSgnBGrAyv+rXXF2osM/rznJEoenCuk1M+2TlUaPQdogEIt3/ino
 hdkz2L+nvH6CnKCXfVEbGONlEbDBOzbv3PQo0TSb82cLrdMDuKHn3vP
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Authority-Analysis: v=2.4 cv=eo5KXYpX c=1 sm=1 tr=0 ts=6b067f75 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=LDBv8-xUAAAA:8 a=AartCDbB9JJyHY4DVtoA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=DZeXCJrVpAJBw65Qk4Ds:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI1MDAyNSBTYWx0ZWRfX2yNx8TMLsA40
 66tUFwcXgUpiziSaFCVU/MBtwLjOtyXYzX3ghfJubnnD7nh8/J/heuduNwd4MTz8b1eC6juPuBB
 BnJo/GZYon/pTCjKKM+L1t/w1LcSew30NWarrezoApuay6w1qiaItlCf2/lQJc50HmmcviCJXXa
 VGzY6OIH1mT3oT2QLCjCKWk5+Xbe2z9agvXpN4XlEI2d4BvAjuA4/J54pQrpZDGsGjg43nK48Rc
 Bh8w9YFzJu7Co6PJRkI2RSwnLvhgll72hDeD8cZKrYC6RULs7SdY5YKXA+SuUJ13ZAweAadIiXW
 4aATGmqQxeBN05V/gQuOCV0TfwpSrk0Ss3JKj7FyVQUwA5idaG7bUFDVCHr/H0pUciESwiT0s0E
 q6wJ0YRm7J0mV8pOOQUiDu+9oULZqOtsY/7feqv9+jiXWn9Bc8wEOXUGpbtcmD2wr2q8laKhyxE
 vM6LAOcE10XSjw1RoWQ==
X-Proofpoint-GUID: izoruFU4nvD0wxDCy2X4B4KYzybgaZz-
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI1MDAyNSBTYWx0ZWRfX+O3CfNPYFgS4
 wWBmGlNHuQMlrLU8fo+s+iUUBoHqT3ECaLwims2kYCY6bCOGTcRj39+UMuXItHkVCxDIprEmmGn
 s47W97GCu6GBYb48kKL3q7QPBlTMMTQ=
X-Proofpoint-ORIG-GUID: izoruFU4nvD0wxDCy2X4B4KYzybgaZz-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-25_02,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 phishscore=0 impostorscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611250025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_222558_517176_96C5D692 
X-CRM114-Status: GOOD (  11.37  )
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

From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Document the Camera Control Interface (CCI) compatible for the Qualcomm
Hawi platform. Like other recent platforms it requires two clocks, so
add it to the corresponding clocks constraint as well.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index 1e8def25ec0ec1ef6b34859709d10a2a36fe36f5..b2b4d4bcf780792515ec153c873bace1764fb3e3 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -27,6 +27,7 @@ properties:
       - items:
           - enum:
               - qcom,glymur-cci
+              - qcom,hawi-cci
               - qcom,kaanapali-cci
               - qcom,milos-cci
               - qcom,qcm2290-cci
@@ -137,6 +138,7 @@ allOf:
           contains:
             enum:
               - qcom,glymur-cci
+              - qcom,hawi-cci
               - qcom,kaanapali-cci
               - qcom,qcm2290-cci
               - qcom,qcs8300-cci

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

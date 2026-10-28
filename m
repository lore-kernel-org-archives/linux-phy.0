Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89888606A323
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 12:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gp8OPHqT;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=iz2BlZf8;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=bFhurAk4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=q8qTewcjnVNJrtM+l7utkyDP/WGa1LN2KUicrGVEklQ=; b=gp8OPHqTmHwRD+iwvIzZMIpzkw
	DNDGf9mv5jGXapdD2j5WX2+GgqZVWk7NMx6TYNBeTaPLJ6ux3TQeTRRZuXC6GFXBFjilslPeUnBNk
	pCQmTp5fG3q0lZVndKoR/RiMVpEzl23ImuRfsZx4vaFzDLG4pRQKrvMpMVmsH1mwIud513FYQf7dJ
	86+3EJZIEiFmG5j7ABH8m2nPbmRCoAn4Vl2/OppoAgDPafsN0gmngjO3g1DwCZrZDBstWRzDohEQ+
	ig0aCC7B9tl1nnlwTX/1E+mASdhdD8QxPjcEUQebXpYBNYzxHwoIXJ04LBdQ/ZjfanKdOteeF/wgB
	NFjjJstg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM2is-00000006xAm-1Cv7;
	Wed, 28 Oct 2026 12:25:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM2ip-00000006xAR-13CT
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 12:25:40 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SBeB991606967
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 12:25:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IE7TTEPp+mYjYOJnw2S5JdN9e/VGEB2SwjVCAm8BKAQ=; b=iz2BlZf8W0+7zF8k
	YVFXLVXVXs+KbPcx0z96X3Maa38IR0tPPEcphuCMRQrxA10L5Bk34Qh93o+5c4jl
	mr23IQ64YsoKgth3gFJx+bSx8yinUqjz8luZA6HdsyUf0w8F9ZHeX7CSsOHCiFio
	M22diJ5ZGF7LY/bFN6Q0LI7CFFGKBKZEwGWUhf8AvAWiXgvlbmaFhsszv3CYY4Gc
	ThsqEllfEy4/sahrUG4DW2LqLyntN9F1c0xXf1pJuznNqpajbbhmVRnD2kgQdi3G
	Fwz2bCRFTQ/4dyqs61p4GZzzIFVdukKdCiAHfD5hLvu+o7JjsH0XSAfHRJ5qFI2c
	18ZUXw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hk7g7j4n9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 12:25:38 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3ac6795617aso944785a91.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 05:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793190337; x=1793795137; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IE7TTEPp+mYjYOJnw2S5JdN9e/VGEB2SwjVCAm8BKAQ=;
        b=bFhurAk4aTBXa7rm0Ae91vfZC/F7k+blveAaeeDegsR7qWSg5Q850k9EOxFC8T53HM
         DggvZETiA+DJ9lAd5dtypDHiTziHktrXPm57owOMbhjnR82t2+HZ7vkG1wOtlz42cXAH
         4+ZPJfXS3/Y98SFcI85b2fvJuufbnjolVSsbe4cxfAu5OqBFjtsDM4NELSFF7rkQUzox
         DJEXqbEpda8X0dsxWxf/CgwmGdPeAzkoJgA+y0NVMUVghGqpOn4c6e/wLQOe5hwUZDhE
         R0O1pGcHaGiVoQaHNeJPMaKh+7NcLF2Ef+bsY75pekBagZCGnCRLqMB6ZI1EuBnJ2swk
         2/Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793190337; x=1793795137;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IE7TTEPp+mYjYOJnw2S5JdN9e/VGEB2SwjVCAm8BKAQ=;
        b=U+8i9ott0DH5faS+LHbyrG3QPDhgUtZ6MRIpUUIcIora5DfR1aFCSJZfmW7V45bmcZ
         7eB6ruOq7LwZCTy5uvvQ3jx/tzNhfTqyXO6lN4ntsgvG/WPsyMe9BuKh9OTp4mGGN79H
         2q9SpTskF7Es3CTRpUZDGMbWZ5+7DrM8xtzEoe4sOB6FerL+c000/kzfJDlCslL6VhuQ
         tLu/Ezu1jFzuqgqRZ7q7qWWsgaAcHJxinJHT2ADeqaVweqazbZ/Iuuotoi83NyE0smtT
         HqGFrcQCbjZ09BMVNPCGWzlSSf4P/mkoB8Z5FpcPbjtGQp7DpTG7DdYxXu5uqm4vBfIV
         2yBg==
X-Forwarded-Encrypted: i=1; AKwUvBxZWDHYo10pb9uUWC3473cSzdB26vmF89v0IOCVfPM4bCPN+QqyXYvb7au+YHFEkCT5Wvemq2wcClE=@lists.infradead.org
X-Gm-Message-State: AFq9FYIz2X1hSY6aVAJFuiwdp4bqKkpoQciSDehpzOMvqMWKotm7kaTC
	MSH0x4fx9lI8LK3chlaIwEgqQpaHpqkaPbxAxnAE7HXfV+sYEhYzylWUYghG8/CrPZLbPmGKR/g
	x8UF4BEx+1GWZyIdoq/Vbgmj2qtEvasp0s7ROESGD8PTIWGNn14nJu9qQtTklNVqYy2EO
X-Gm-Gg: AYBFou1pD8QZ7JUI/8MYgGkoiVHDjycM2QiU/UrMFViMO+3te/qR0a2IQxs4ma1eE6g
	yXTFu/Tlr7iHBDEvJSeDuArtyr/9pPSZiyFhBlO+f2Vb5R3aEwLQYA6NDi1lC6ZzQdpsyFX4qQJ
	aMF3IBMZnYJXGM5M8E1kBwhtGBYV5xV0o8lVKShfc7MmveJNz2Ngymk1LC9BCaYxgl2M7b6CjCo
	fk82s7lC/r2IQwc/78wDcvV74gUesuQ7hc5d+w0qyoIGJf5WzemntLrI8wQMxmv5xki+8OPs56e
	qi/kicUaLXkOvdZUwqPFN70aopOTVBY3zkJnVRBAmkeR1/tkIqz93oDxgJmxF1Pluq06eAggOFW
	KlAEWe0lTqDc6ldGCFjXE223+HxWG9ZW5PgbWC57QDgBiUnIlh84CbN0w8yV+OW/d5KXv3Omhl7
	E=
X-Received: by 2002:a17:90b:1f8b:b0:3ac:80dc:f40c with SMTP id 98e67ed59e1d1-3ae57f9afe3mr1579918a91.14.1793190337291;
        Wed, 28 Oct 2026 05:25:37 -0700 (PDT)
X-Received: by 2002:a17:90b:1f8b:b0:3ac:80dc:f40c with SMTP id 98e67ed59e1d1-3ae57f9afe3mr1579906a91.14.1793190336827;
        Wed, 28 Oct 2026 05:25:36 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ae5a9f287fsm2995819a91.16.2026.10.28.05.25.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 05:25:35 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 17:54:47 +0530
Subject: [PATCH v5 2/3] arm64: dts: qcom: glymur-qcb: Enable UFS
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-glymur_ufs_qcb_enablement-v5-2-09cda5e3bab3@oss.qualcomm.com>
References: <20261028-glymur_ufs_qcb_enablement-v5-0-09cda5e3bab3@oss.qualcomm.com>
In-Reply-To: <20261028-glymur_ufs_qcb_enablement-v5-0-09cda5e3bab3@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793190309; l=1034;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=qZOq97SsVPti3oQZnFWkZh3c728gDdolT+V4/jasJQk=;
 b=32awDFy7e9HmWnP/20AX4LOq2FVNW52SoyFahYvtOVEkfvhPnZE7dbpNNlkhNLILqGfEZDoro
 gALGuqVM6y/C6OqU8Q6Ccqgwz3pNh/45gLJSlrhnP7l7B6Tg8Jb/iPS
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA0OSBTYWx0ZWRfX8w1YDzRRv5jn
 BkKG6OAYAMATzWDmKw/B6AsB8Hc1Qg1lWANYKBf+BuyV248V+X+X+mepRv+kIpX3vLBSCmbeIV7
 Ezf/LNuqOQKqL1vFohtdMq/LiFt2ny4=
X-Authority-Analysis: v=2.4 cv=SoIFe/O0 c=1 sm=1 tr=0 ts=6ae1e9c2 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=cMKPt8sKVRzp0kMMbBYA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: 7g8MQ9DEkxuBLTpdBDVLtmKU9HK_jJ7a
X-Proofpoint-ORIG-GUID: 7g8MQ9DEkxuBLTpdBDVLtmKU9HK_jJ7a
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA0OSBTYWx0ZWRfX6Tzf4mV1weZc
 NUwJQZN/p4GfqVFgagGCL2FS/oOnulBgL2HJZZJzb1/VdH+OxsL+2Tpm3iwgvg2bxTMu/spKReN
 tWRzojqrIsLTMkdQBYmk0pGrhtvip9OU6x5lbWSH36b4xWGWDInIXUBbh4ZUpOK6AQBPMSdv+K0
 LlI3h6/RVkG+ouprDIgrERKhOZKZ43cH4NxfvuQfQ/oP/6q8M+nfURvOwsQ9g5njt/+sfeskH2F
 7ixPUcHykUCAIMg1+Pl9HTs0A/2S7Y8lu6pyyLk/rLLI/F17H5/u9IyDuZyHM0pcp7/rnGixopi
 gVnmHUH3EqHLNscib0YYYyj83bSIgaLmq+eeMMgYU2vxHX2SOM3yDdzpQwuOkjB3VtY9bD8th3E
 4JHlXPH/KGUpv+yDTVlXnZX/hvq8Gd9YtHDqRkYuilVLcyt9uRPk7E+z9cAHCd88sT+HcZFVkdS
 UhpgXuSW3vQ5eKcPCqg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_052539_544743_B0097570 
X-CRM114-Status: GOOD (  10.29  )
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

Enable UFS for glymur-qcb board.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-qcb.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-qcb.dts b/arch/arm64/boot/dts/qcom/glymur-qcb.dts
index 17d8ff3aed23..f17181bfeadb 100644
--- a/arch/arm64/boot/dts/qcom/glymur-qcb.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-qcb.dts
@@ -697,3 +697,21 @@ bluetooth {
 		vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
 	};
 };
+
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 250 GPIO_ACTIVE_LOW>;
+
+	vcc-supply = <&vreg_l17b_e0_2p4>;
+	vcc-max-microamp = <1200000>;
+	vccq-supply = <&vreg_l12b_e0_1p14>;
+	vccq-max-microamp = <1200000>;
+
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l1c_e1_0p82>;
+	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
+
+	status = "okay";
+};

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

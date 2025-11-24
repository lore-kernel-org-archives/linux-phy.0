Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC9CDCFD31C
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 09:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GT98IXpXE2n3KqkAP7iljoLxEWS3edCW/vu+r8Knxx4=; b=OKUORko9X7f6Wg
	e6PpotOmLQR9RLhJmmA9IibvP9e0MH2W8HRLmpZyN9JHiMtCSTo8i1jXMdu3RP2DXBxjraNVdCYtS
	jRN4+sRS/SM5FJ4uYdaykBqkKsbEf0c9Lq4BCnWCzNxEfGBEOu6v84Fbjg8RyJOnd3ehaISXX4gUW
	UtFJ5xGMLE7EcU8bRNbR8SGgKmbtE3p9DzL7BuaUd5rmNnPLC7dl7Sa3x0gF2thqg4cDyNPCZ/Aji
	neQwNpKq/Vmm2sljR4cvkAH1AMd4Nxe4nwI7dIYyFWWeZdP0EZKXORFeZS49tO+M29pp6cFKh/Nbz
	j/QNGsvcsIRTVlGIMvzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNSqt-0000000BLOR-1qQq;
	Mon, 24 Nov 2025 09:27:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNSpi-0000000BLDi-3NA7
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 09:26:08 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO8bqBN2897562
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 09:26:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fc72aMPe1pxy+zOo3oPtGgyEEAaW+XipnNwxwb3E7WA=; b=TFS7pZLfhWi9m4OP
	qPxPiDC9CM9hvurraN+kFg8sAnyfZk4J2SbXDfBiT/qy34PCPt1UkahJUD9JwPo2
	jBKSBLAp41Rdl86s8TW3i6yLNeP0zDKk4ueAlv7jwqHjm1rb/pH+xb+3R5ShlM/s
	mDYX7YEo5bmEncV4siUd3yfm8dqTpsCvoF1c42fZ1fmPib1dBSWSU2BuME2JIcdh
	y7zi43DiTB+OqY7/WfOWp4+5Ew7BrbhPDnl6O9WaweYfVgfq80/3S7c9JHeSV6sE
	pn/OsIcogRGgDTt1BSo5/cKyAblOOq2nMSZXPXDw4t19rkyuGuoUvqR7AJle3JeW
	0WoE2Q==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak6ffcej7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 09:26:05 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2982dec5ccbso93011925ad.3
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 01:26:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763976365; x=1764581165; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fc72aMPe1pxy+zOo3oPtGgyEEAaW+XipnNwxwb3E7WA=;
        b=hK2/fWZBtjx4ROnzuBvBNgb9WhEcNl4Tls8iD6uuf1TPLRw2Kb5/oNdO1KY6NiaY2z
         KV4adP6iDEMbMtGUvbaVfeG8GSd3HN9oXVRAcevuGeQrMQWPOIPvBJONpE9UgqIHv+Tx
         wtRbfJMcB7nahFNaGwhcSHqds1B2D7r3PbrSeek3U5yFiVTyjqcuMNTL+TPWzntH3WIv
         vcC9u3HDhDHNnmO0wiGbMUk8sB0jA+6m8oHenNwGm1EPa0QGc4+AJa9dlEasEcNfRlZY
         x2ak7i/gbM5uBce/gjXxLJo6YtqfgzKP/SsuMk3UnKIczYH2v95Wit0A84UCasx40tuO
         mIFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763976365; x=1764581165;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fc72aMPe1pxy+zOo3oPtGgyEEAaW+XipnNwxwb3E7WA=;
        b=j0aRG7dugDP/dSzP0BxJQOXrXobKRDUCaEutdsCTcm0b+fAbezMTER4TQJFfARE8kO
         CrRxuIoLq/d2kAJ8EWzaH6cmsob8TE2cJkoyG2qXHItmAsYmKJxiX8vrK0yzNWZ3dP6R
         5uLLF4HK0cGlUvZ6wzyp4HDh7Q9LDv5ilGCpIGoFzo4w7Y4AWoAIEZSp7DuvU3vWnXKU
         /sf8jppeXH6vGH3+Wxs0Afl8NyeX5PO+S3jVYEFFe+hZjKLcitOpyL0FD3lH+E6+lB1p
         A0TGJSXmvs8q1O1EjFJJ6GbBG62aukf8UAyZpUICyW/ETMJoZOLVLl54DuDCvj7j3KRR
         L0Qg==
X-Forwarded-Encrypted: i=1; AJvYcCV5XEZ5W8DlJkx/ZlRPCyviXHi4mQI/3Mp2fBGXl2mxvMbHQ44d/yqXttvfe5sE0M0UPhNCdQhYaFk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzyvyvDQuX7+sfniC4zXsr6M/ytZfrKMqI2hFM7VpNOMA+Xrg97
	ztPsmCsXQbWV98Xh/o5pdNuQtCJmP6z8NIiKdxsm7O9p6s2CNReggr664BiAItMyh8LN/13202U
	RQjXvWLqiA/VDHpMs+ByNLX3aEJQaHYho6s8TxIMARTIKEm3/ZBmJNZp4k6xE1rlmqfMV3RNSw1
	Eb
X-Gm-Gg: ASbGncsabgiEl/Ez8hHqeWvac8Q4bFsUaHZmWVJkODGCaxC6QKdSMMFtTnOB/W7G6mR
	UpAAsVClDjg8/uTLuODBhuM9cdF+/VBBlVQ2XtcVG24Qiu59vz5y5jiIeD3QFKVRDoAWPWUfOrY
	mj+wceqdla9cSFqZPjLaH2I7WDMszuDOQ2u+fI1PRHc2MXNz1OgyNqS+98qs3h7TTjlSsM+AfL9
	xH9KneLV5xtK6L3JcM2hoB52u7eAxiday/fpaG78C8OcXhIPokPbCrWxED7EBq8tAbQ6x53misj
	Nf61sdGL7bmO4mEXqPaKWDMYFJhYmBdG/NCnHkIiz1+1uZoOkJfzeeVgyfqVhEDwN7cF0rX09dM
	RnTB7StIVI9ztXO0OihNtFjhR+QlqR81+EPkJtJA=
X-Received: by 2002:a17:903:3846:b0:297:e3c4:b2b0 with SMTP id d9443c01a7336-29b6c6cf858mr142118225ad.54.1763976364464;
        Mon, 24 Nov 2025 01:26:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHbgvv8hzybcga9wXoqKjj6h2p4mJQqNVWnriumOikqTQS2SJlOkP51W9klkaoWO62j7hIudA==
X-Received: by 2002:a17:903:3846:b0:297:e3c4:b2b0 with SMTP id d9443c01a7336-29b6c6cf858mr142117855ad.54.1763976363980;
        Mon, 24 Nov 2025 01:26:03 -0800 (PST)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b29b1c2sm128444675ad.81.2025.11.24.01.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 01:26:03 -0800 (PST)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 14:55:18 +0530
Subject: [PATCH 2/6] arm64: dts: qcom: lemans-evk: add additional SerDes
 PHY regulator
MIME-Version: 1.0
Message-Id: <20251124-sgmiieth_serdes_regulator-v1-2-73ae8f9cbe2a@oss.qualcomm.com>
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763976350; l=741;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=KIt7cKlQquEmvY5GS2dgaXPwRrPEqcNU02JL+ydYRg0=;
 b=yP1lab+7XgMxoStk7b6HB0mteD3ztBJY357LBXaWxzb7WSzWw/ckisd8NHgcsqyT+79YU2QIT
 W/AQ+vidgArCEsew6C95kx9zrErnbgpHYml4BteIhRVx5Xwud0NP1q9
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Proofpoint-GUID: fSwGEinszFzO4miFxtG79JqCi3NOLSuG
X-Proofpoint-ORIG-GUID: fSwGEinszFzO4miFxtG79JqCi3NOLSuG
X-Authority-Analysis: v=2.4 cv=OsxCCi/t c=1 sm=1 tr=0 ts=692424ad cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=pcfEnxZvWeWI-8Hz2sgA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA4MiBTYWx0ZWRfXyPCOy7l9qkU3
 p0cX/chhNUZfRPCYL5llYs56k0Uua35jp/dVx/xf82DrkP2RyNhXbWeefFYhE3ykDa24JCIqy7Q
 1KUdBYIe0FVCb23RafSYjbsCjPlX6Eanwv9Ar+G9j/uzzVHDnGOdJRBLiM76gv2DJaG+HJlIgU1
 CvMZEbRfmnfr4ESyAm969L7wGc3NGlSoIR2MRkWO6aF1kU13vr984yG9LwT7L43jm62Q8VkSgDU
 HjnjHrLtjqmuVindrYNrd7wCrQvSB92POIJeUCPKvNGTsLaJApjW8Vty3aFmLSJnTOBQgw5PbEg
 zygvXEXg75LQv9rSKxDoG/XZIBmihpafiJkAoN3bkL6E4uyX98vICLN4hH9vE/CsYpHSt6MOAl+
 44Ox16CeQZu0D3NIoBb9BeKTYSzR8Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 adultscore=0 bulkscore=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_012606_989749_122D6A73 
X-CRM114-Status: GOOD (  11.33  )
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

Add the additional 0.9V regulator for the Qualcomm SerDes PHY.

Fixes: 71ee90ed1756 ("arm64: dts: qcom: lemans-evk: Enable 2.5G Ethernet interface")
Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index b40fa203e4a2f080f501140fd1c68b72d797fd00..7e5069101f093d077eed867f8431ba0d01797f4e 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -675,6 +675,7 @@ &sdhc {
 
 &serdes0 {
 	phy-supply = <&vreg_l5a>;
+	vdda-0p9-supply = <&vreg_l4a>;
 
 	status = "okay";
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B1A2C369AB
	for <linux-phy@archiver.kernel.org>; Mon, 21 Apr 2025 22:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/0fbOzisjrfnaIpvasnyAk4EkCBH3xJTyghE/jEOq8=; b=GWURMgi5sckxJ9
	McxK7ugwF5GEb54a+j2ZMQjAQgsPHpjaAEM+cWOjmXh/Y6kSmeAfEUZ1VYLZ9cEMu/hRF/7g59mML
	U96a20hQ3MSm9zPudttA+BZDpy4SRoZdv2bUgM+I0hDVwP41cWlPIj2mJWS2U5zh1F6c8WIsW6Dp0
	55fi45XdKrr1nLRmFddV0tmLHspkVXwGcOHB2Beoe8GIMwG0+ddEMDj6NcKMARlPoiWfKXQIDlg63
	OxEJ+qUuGsPMuGuys2redqSEHgJ9ClyCYTDDsBJ7h6eGuNv+boIh+PHMkhi7Q97lWL8e9wC8VMpgA
	XSz+0gf+T5U0EQjvFOIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6zOo-00000005Ig3-3oje;
	Mon, 21 Apr 2025 22:13:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6zBt-00000005GZ7-2EPq
	for linux-phy@lists.infradead.org;
	Mon, 21 Apr 2025 22:00:38 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53LK4PcO024513
	for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 22:00:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	63TelnMaZLywwjt0ZE9rQRxentiOmbDDz3cY3YJGWYQ=; b=nq1x+XVipYtvqB3h
	gZ27ZxD3jPt40Swy7B2SBpIwfKJTLNJh4YSg8dUCt63Hv+BkWpq+9FGVqxB+uvvI
	HC4H6B/vNKDOazTkgko0uXWTKiXfALHq19cEhhhVss8FlJKcxCxoH1LB77zf/l48
	7YUD34nf9uQyupf5k5HjfP0+B4UbtFONYLvasdl8Bd2rxzbbNL936+nTUZp2leeK
	jX2MwH0PEj+Y/AtUy0UQMMMjTh5s75UB6ZqSWccgsBHQprnTZD2daAIteVqQ1d6L
	5UjUlFfezrpUnHvlRA8eozGrYUw/ZvORaDSsMmjt3NVhWSSvTU5a7ygeC2Bw9GhS
	HIe98Q==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46454bna25-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 22:00:35 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-73917303082so3041705b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 15:00:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745272828; x=1745877628;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=63TelnMaZLywwjt0ZE9rQRxentiOmbDDz3cY3YJGWYQ=;
        b=b8KEWp56ywgVlbY5QH45A1mwX7ze4/nj07RebSDvn+ABN4ejo+csxCv2T8rmOfHBsQ
         1hY7olGKmetIKiBEHzZL1dyZxYybKiqZwokBlgTbL/Evduv0IgFIfJ0dGN7Hy48j0mSl
         +uNUzuLuTFRzV4qti/FkkTyrJXnaTnONBO+9+0GnwoZaYgicO2EftdGuoK68A6tm6pDa
         qv91NePu8JVeuR2Yu9tedq+GqEZ/uxX4LMovaKHDtwaERlLHlP9/U9jHHtcApVMI2hQk
         x7VWiGk9tp3xJPxipnzWmMWrQty2IFxkoYJQtZ/1RmKUfKyCax8g0vix0n1N7dPH5z1o
         TNgA==
X-Forwarded-Encrypted: i=1; AJvYcCWzCwVKHTx2p8hF7944iOhgSjCwVDGT1ad4C/0yvNP723fG69MtSZDbD0oBxuSVVn9SqIvAv0rNKQU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyyGdQWHmmERG3TeNml70QfcwhhxqV1RPE4BGjNjCQUh0rBitw9
	z0cfqRcGOxIJEMH5gwJ4T9RzOF98ha0T5q/CHQzCZUUoq15bo4zhJT7W7qN746n9u/Bkrd6EwHw
	T12tvICZdK83OXtASxY7u3e0J6Cc/YrSEvp6l2HI+f0K0srO+VASUJ9N9koM/r4Da
X-Gm-Gg: ASbGnctWiz0Qo0L4xXd8zHuumENHdLeJXOpElljONweZajeO7GPZZhti5xDlz6/wie0
	bTb3OczjRI4cZnlo9x/2YONfCUDpuvQ3nuLT0swmtFfscQnMDuO5IZtT/gyA3xv2m8Cgmq3BkVp
	ftjWAFoiC5vFH+EoSDswT4Ldl/lc3p+i4pazOcC+5ChrD56su9ng7GgXbTbhzFDT75qhlOZqpRk
	Ai14tv1ml6FzlJ8/On7IpMavGHMSd/5u5b9o7j81lq6qTF0Z1hDoTTumqNultgo1N1wgaFo2RDh
	xMi8AhRysCgTmuMlho4S6TNW426zy0T6Z9K1gMgHj683CskoHc3+WnhkSym0sWgHzZo=
X-Received: by 2002:a05:6a00:130e:b0:736:b402:533a with SMTP id d2e1a72fcca58-73dc14453bcmr16346754b3a.1.1745272828416;
        Mon, 21 Apr 2025 15:00:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEG+M2qcme5yQCukoxMyaSAlmWYa2RdZuaZWi1bkdOq29qfFC4FEiaqTX/rJnAHa5HEtbsGtw==
X-Received: by 2002:a05:6a00:130e:b0:736:b402:533a with SMTP id d2e1a72fcca58-73dc14453bcmr16346700b3a.1.1745272827980;
        Mon, 21 Apr 2025 15:00:27 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf8c04c5sm7107917b3a.24.2025.04.21.15.00.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 15:00:27 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Mon, 21 Apr 2025 15:00:08 -0700
Subject: [PATCH v5 01/10] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add SM8750 to QMP PHY
MIME-Version: 1.0
Message-Id: <20250421-sm8750_usb_master-v5-1-25c79ed01d02@oss.qualcomm.com>
References: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
In-Reply-To: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745272824; l=1370;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=8DqyV8lJU3L/SgQ/5n/G4b54XOO0JVKsEdNPv+HKEao=;
 b=iztD2zVXDUPlkb2VzvABWkpEGUouCg6l0hBj4efv6tvZx/fXQq/d3jg4tWzRkC+RxycYWKOM6
 WUgksta4vSgD83ZiGs3JU+XpGlgYcvc1K97If3KS7uVnVzanamXocRx
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Authority-Analysis: v=2.4 cv=cdrSrmDM c=1 sm=1 tr=0 ts=6806c003 cx=c_pps a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=bbY3M6C_flAL0yJJl3cA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: CB-ONpggPGp9hp7eOb7bm8k3GL48Jl7X
X-Proofpoint-GUID: CB-ONpggPGp9hp7eOb7bm8k3GL48Jl7X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-21_10,2025-04-21_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 phishscore=0 adultscore=0 mlxlogscore=937 malwarescore=0 clxscore=1015
 spamscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504210173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_150037_602348_38A9FDD5 
X-CRM114-Status: GOOD (  12.08  )
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

From: Wesley Cheng <quic_wcheng@quicinc.com>

Add an entry to the compatible field for SM8750 for the QMP combo PHY.
This handles the USB3 path for SM8750.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 358a6736a951ca5db7cff7385b3657976a667358..38ce04c35d945d0d8d319191c241920810ee9005 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -29,6 +29,7 @@ properties:
       - qcom,sm8450-qmp-usb3-dp-phy
       - qcom,sm8550-qmp-usb3-dp-phy
       - qcom,sm8650-qmp-usb3-dp-phy
+      - qcom,sm8750-qmp-usb3-dp-phy
       - qcom,x1e80100-qmp-usb3-dp-phy
 
   reg:
@@ -133,6 +134,7 @@ allOf:
             - qcom,sm6350-qmp-usb3-dp-phy
             - qcom,sm8550-qmp-usb3-dp-phy
             - qcom,sm8650-qmp-usb3-dp-phy
+            - qcom,sm8750-qmp-usb3-dp-phy
             - qcom,x1e80100-qmp-usb3-dp-phy
     then:
       required:

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

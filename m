Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDE7CCA5FCE
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 06:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0httsMXpk3LeEAtbt0jk17EBOc/3OF3QMCr2qeqpbk=; b=yE9/FE75u7FvGp
	ZjGMPX0L/gMCf7/sZVv3F3hJ/49lKSCsmN5eM1tzlZ6VRQ2eDiIZzQIx/BUrhyYbXbsbp4BikQreS
	wEk8bFZlfAkPk9XEMGzOwP/nHGJBP2Um5FdVAv757YoZgwkVCHcDwo4jfbGGrQzWNWbrl0ZYyUBXl
	OtkhN0FVzCU+sfp0CCdJqK7vMkh6AblrcyNwBqsXcOTGIm84B0lyenKmLoRGHEy3N+8oVm3yHSii8
	vvztDK3jPkGAJe79YE+lsRbFIfvZcNx1NKP1OjdrU2zZKikIOpK3NP4K72hgwx8WlhMBojFdvzPp3
	NrHhWdk97bnhVF55cfSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDcJp-0000000FjcV-2PE4;
	Mon, 05 Oct 2026 06:37:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDcJl-0000000FjbE-2G9c
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 06:36:58 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6950xuSD291095
	for <linux-phy@lists.infradead.org>; Mon, 5 Oct 2026 06:36:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yxOiia23GtlGiNnaYrLL6nmn5DZZAppKMl6jIYoOE4E=; b=W6+2YKub+dtcgsKC
	60NutTAwRP/Nb+CSNv8ouCZN+D8Fn1acPogtffbmu/BelSgz4J1sktd2EVrpT7+3
	A1MnZNeF/6waJNF1fHEloBtS0MKPHk1JSTWbyxChd96V4s4ql5G586ufXf7UbWEJ
	1z9GRzJ0anWJMVrXLIGwLJB+HkfI5PMhUoDVlngvinDELctt1mCck186vDBpAo/Q
	jTCTQMNaOYimapBq1eyjAcN1NwtgJ0yUpRG1SnTbJrqlf91N+c5wScJLkixkZL5D
	+BV70zSB90LsjAf7S6meQHK0ffwn0AQbYdlbZBkIFpsoOBNm7lVVYVj0+jzvVMtR
	sNYEvQ==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h3xhs0y1f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 06:36:56 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-14a62326b51so965452c88.1
        for <linux-phy@lists.infradead.org>; Sun, 04 Oct 2026 23:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791182216; x=1791787016; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yxOiia23GtlGiNnaYrLL6nmn5DZZAppKMl6jIYoOE4E=;
        b=X7aZ1pDKAPLpcf0GS1iv4U07UEM7IpWRtwzSqlDwhh1oNaVFnaA+aaZvo47Gx70k6G
         Ou+Q6GZab55bf2LZ4yZC56/hHUvvSzSUhLy+tMa6fK2wtR1y567svkdg/mpVqnqO7qY7
         wYNP88rm+4MIFCUtpYCbtEkvLhFADFK9MVlaxhsBGpQwGwrVneBg0Ch+IM3el9h7q9Mt
         6h9OrzTdnF0D89SMV7N1/d01blsn1aHTqeJ+URWeziMxawMSTRUwRpoky1wilf+p9yMY
         UEh8hcWQFu1XS44HFJ3Yq330da0R09Q8hUoaTRxlo5c38V74O+hc4I//BY5FMZ6bXo1K
         nWng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791182216; x=1791787016;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yxOiia23GtlGiNnaYrLL6nmn5DZZAppKMl6jIYoOE4E=;
        b=SLZbt7bNXZPTHM6HypXxpmCihLKNhscDiAXudocFOhJWIBvMvFyttyDmwwPADcq//A
         QI4liRROu+BSIPYcs8q2qRVIjDtqRj23P5Tj6sgNq9XPT6WA7wX1K3O31f8LuvV063fI
         8Lsr5bUm86AZe7ZEFjmcamMw/iXMVhm6bJnBi3aQXhfZi64ArHk2pt14fdKNWQ+r9l6r
         82FtIwokvZ3X8n4pKjlyu2fdcTmBUr35srrKzCTGKcmhfbuyqZtlfSSH4+n63gYrLfWW
         TatKGjQSPgttOdFn/JAb7lWts9/3NH5mgHVxlw0ZYjKaSRUla+A41qUTnrBEF72dRmjP
         aQpA==
X-Forwarded-Encrypted: i=1; AKwUvBwQTn/nZOnrX9cpkFskMXyVsFbOlKMcgqvRAQjr2501gxAEz4YGk435WM4QHKj+0QYLgRtNBqEsK6M=@lists.infradead.org
X-Gm-Message-State: AFuF++lw42KlivrArhLRzdv30hf+G04GGBsvGH/mMEhZ/DBDmEhqROqi
	HKTqVUyj0sPLb1D/ixpR01wgmqJN82cPR9ExOdbfB74anwe6F7sPGmdQJ/pJLLG/m5wApn17pYN
	h9MMsdE+BtCYF2YFwbSnR/3aOjghcP8kUFaghGcIecevo5Q2PXIE3YVMCNwjOhYVGUhTA
X-Gm-Gg: AYBFou1TnaVVS7iGT9xR/VkuoxxnQZ/Iz+lKswsoEmNxdF8X9vjt3q8MBSKiTISH4ZM
	MoL8h6fxsc3MuJLq3VtxeW/gXuTePkIiTte7TxA1sQk3taC2XcHp4OXHFf4Gdu1c89vdgwRaUB5
	ofyYHVAbP6ONzhBdw6i++m58LWGyhj2atqPMnr3mJdIfv6DuxUIwTI6MVtwebA+W38vYo1jXpyO
	+wGxancq5tXtBKJ5EI2jaRNAh646Y31F9FTRKhIA08Kl9I9P6fONNBgBSs5j+CTZloWO72oUO72
	XGIKVKKxvIa/YqVtjHxMuXT90An67mlg47Ce+i4knCPELTkS/1BQxJlueVoYgKDl8Tcj/8xTNzs
	Asx6U3cqiDP7y1IvLqgSnA/3D3c8NLwSItdLgc00xeVW9lnoLMMVc+lUX8wotecUHXVrT/36j/C
	jEmS1TZcWpVlm1+pUWVVl4oX54UJxL
X-Received: by 2002:a05:7022:7e0c:b0:14a:51c8:ea06 with SMTP id a92af1059eb24-14f5bff5f14mr13474734c88.29.1791182215619;
        Sun, 04 Oct 2026 23:36:55 -0700 (PDT)
X-Received: by 2002:a05:7022:7e0c:b0:14a:51c8:ea06 with SMTP id a92af1059eb24-14f5bff5f14mr13474707c88.29.1791182215094;
        Sun, 04 Oct 2026 23:36:55 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3512718d9edsm11185821eec.19.2026.10.04.23.36.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Oct 2026 23:36:54 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Mon, 05 Oct 2026 12:06:26 +0530
Subject: [PATCH v4 1/6] dt-bindings: phy: qcom,qmp-usb: Add IPQ9650 USB3
 PHY
MIME-Version: 1.0
Message-Id: <20261005-phy-v4-1-b04c4123ecb3@oss.qualcomm.com>
References: <20261005-phy-v4-0-b04c4123ecb3@oss.qualcomm.com>
In-Reply-To: <20261005-phy-v4-0-b04c4123ecb3@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: 6WWtGJe4zqhgUHPn0LTOggZVbiUv6ocq
X-Proofpoint-GUID: 6WWtGJe4zqhgUHPn0LTOggZVbiUv6ocq
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA1MDAyNiBTYWx0ZWRfX3b1AG5Y5zFhr
 3VwsZ3ychHntujvah2FSpQUX2d6GFMUSr5M1d+n1WSC/GAHddWwkAGkbTr7isjrslLBp5gftQcp
 cNTW4cF/EO2Iz92VT6s17E4FHrlIe9U=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA1MDAyNiBTYWx0ZWRfX3NjCc39l15c4
 fXwGu4K9N1q4MY2/EfnpmBIprggCgOLgOLQkQYZKGOvBaAasmsDGIS+Xy9lqLls7WfcPVFHF5RH
 aGS7Cbbv38bXzcWGk0GDdCplI8Pm0s0LEoCHzPMoFg8LlaVBXkBX/FMggqVIL1FLPmEdQUqIVKn
 jb8ofPFygCuMRN4WYsAK3g+zzYtB2DWDgvlKsFcPyvbOyyHUhzslRE/dcggjCupY98UI/Qr0VuM
 1G0Ynd/5HsGDECtDTr8O/9tYQEWByKQRfhh1iTxdd2q1dh9Qn0SQTXQ2CYboB1++PkuaLG9g9LV
 OZEZyUQGNc5D47TULidjTDEYtbt1cV7VA6SRsKWdFnqydVTa/oGOJXb3uhuEvy4rEIonO6IhbzW
 AKOZUV0aH5B5ImUTDYE//xOFOp5aqNMlnrkhPN2A3mtCLD4JZ2my3lKwDZTIZppEw4l58wJqwEi
 neKuQ+tZmjyxg+GEv2w==
X-Authority-Analysis: v=2.4 cv=Q6tHcI2a c=1 sm=1 tr=0 ts=6ac34588 cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=CyeWGLuohibXKJY0YOUA:9 a=QEXdDO2ut3YA:10
 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-05_01,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610050026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261004_233657_697363_D7911530 
X-CRM114-Status: GOOD (  10.48  )
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

Document the Qualcomm IPQ9650 USB3 QMP PHY compatible.

Use a standalone compatible because the IPQ9650 PHY has register
configuration data that differs from the currently supported SoCs and
should not fall back to an existing definition.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 01342823e57f..746c5a331f48 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -23,6 +23,7 @@ properties:
               - qcom,ipq6018-qmp-usb3-phy
               - qcom,ipq8074-qmp-usb3-phy
               - qcom,ipq9574-qmp-usb3-phy
+              - qcom,ipq9650-qmp-usb3-phy
               - qcom,msm8996-qmp-usb3-phy
               - qcom,qcs8300-qmp-usb3-uni-phy
               - qcom,qdu1000-qmp-usb3-uni-phy
@@ -102,6 +103,7 @@ allOf:
               - qcom,ipq6018-qmp-usb3-phy
               - qcom,ipq8074-qmp-usb3-phy
               - qcom,ipq9574-qmp-usb3-phy
+              - qcom,ipq9650-qmp-usb3-phy
               - qcom,msm8996-qmp-usb3-phy
               - qcom,sdx55-qmp-usb3-uni-phy
               - qcom,sdx65-qmp-usb3-uni-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB4E4C43458
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jul 2026 13:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rF2YD91veeAc+Mg+vovQmCdKwUM8PTQK2l+kS/HPd9w=; b=4ZWie54OYvoxEs
	6EXx+X2KZXMHtiW8Yak8xN5p9hU9Pxv7IluJd87IBKysel/YlP65/dOwl+Bs8umkcrQ7+0zAixg7V
	KfpOcS6Msb/aWUJwM84LqZqK1omRh739DcfzhUHr8MbOaGgU4jV+xPxOZucct/hePng2lPDZRxFrT
	GjgRzKkILAyzLJR9K/DtkAfJALBQnmvu76ixFadod4BWmTTYGm34DtYLxcLjZ519pjh3JFmB297ak
	l5uX4vPyRhIEEv+uGOJHCErXnO1d83I2/F7lQTCWf22fO7pOMC1CVeBptIaHwuYRg+A5yehQCvJ3e
	N911x/QTob9/OiFfo2lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGOs-00000009KQ4-2Fgf;
	Mon, 13 Jul 2026 13:08:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjGOq-00000009KOt-1StN
	for linux-phy@lists.infradead.org;
	Mon, 13 Jul 2026 13:08:45 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66DCDf5v1480820
	for <linux-phy@lists.infradead.org>; Mon, 13 Jul 2026 13:08:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r57t4avPqTzhJ2J5sOt/oWIGHq+WEOhtA2WuO2ZZaEg=; b=gwZFOz/RpWmq45YI
	n002hxuwWBCp7DJ4Li0RyiQcPNE3xnW27pM+kCRMYbjRdk/IbPU8shO4YWEYJ/I6
	yfa47fsXh4GmouaIZzgBWd/Zicrs4xR+x/AKOvxGD6XfEp95PY7pTVXShMQOTUPT
	m7NWntl1eOBB2CdgezL7Q9X5dI5D4NDDiaJP0fV6v2u9mal+XViqFWsvXRKnhIjQ
	phuunprbAVpUWmsU0cV2hWqzpJlpUYNnnMOXSL2sldmTLY5T0zzuB//i6/4cu5li
	z+yiLrZMhLzDPHeVE9ErXo1kZ+HyT7PRZSKP65bmDSPauP24qJa10WXPbbCHi38/
	v4w70Q==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fcwavrtt1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 13 Jul 2026 13:08:43 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7eb6a8c61deso2450509a34.3
        for <linux-phy@lists.infradead.org>; Mon, 13 Jul 2026 06:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783948123; x=1784552923; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=r57t4avPqTzhJ2J5sOt/oWIGHq+WEOhtA2WuO2ZZaEg=;
        b=VPpioJnqAVjETQM2anGJaIvoBDvXkTJbmUownO+O+ezCPRAppqVnO/7FPYaLaGcDtZ
         3HUbrtQz4TZ0Qi/leuczZLjdUiXnDlIh16ckQnZQduXb1FyJMwucRJoBqY++/4/GZ0mw
         w2gIi//w4BPir/HJGyq6YXrY205oJS+FgcX6zivuEG4e9V5a/sSgej/rJVb0iXDf4xk7
         vAvCHu0rZol6QEaf6YNrcmW09zd8/gvgXuiU5+LDJjq9QKxsK5497EAanakv/9phwX31
         EXJf4ablFFfuyga9HfVFKuKaGGyrvZ9QYl5lviIWu7KELpz6dYxpjfx7Oq+zEGEzxz5U
         Gp3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783948123; x=1784552923;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=r57t4avPqTzhJ2J5sOt/oWIGHq+WEOhtA2WuO2ZZaEg=;
        b=SsCxLU+PYUa+uUZaP7hOIFJOnHJsAwvxk2SFP9wjB0V8x7ja74JZSHhPX9dXzmPAAy
         F6E74r9E3+vz9Blrr1LFBtADpzkjBVlgGNmDTYqYDi9u/vk7aC1pVBKTegCEIXBrQqkk
         U+t3R0IOwUN3CmxdOEDDw6Eeehuaou+ygB3GgCA5V2tpQ3tEqQQHBPakhlCb+StJ8hQo
         UH/fX3S7a+ZZ7DdRaalE5Ms/QYLodxDfZcUNomd2NfVdLvN8QqbDet7ZTVXd+X+E+NIO
         SYlj/WUbVYR4Q0jUqkFnjRqxjCA3OQmSGyVOv3AeMpMZvCwfx4vqJmHP/mVTnK9DJFgh
         QbuQ==
X-Forwarded-Encrypted: i=1; AFNElJ+0T2Hf8mMjdsqnVEidFbEaEkKg6xvQC2QykV1Rk0Um93bqRNHE7iHeMFC5j3gHfBBCnBwLga1zLUc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyMlNf0YPwoPdd/RPyGPjZNc+JqmRZiCDITa6ZZesF4/9cPfY6Y
	484cYkQeGgV+KrA/XwLYxMLXIBvs/Do0016vXW12El/Jp+sllr/cBPRyhzbEO+fmKUG572olckx
	LlHB42M+11CT1I4qV6zLjiaDz2wLLP9P1oHFAQFPaeXPr9uSl4wF3DCIiQAAM8qEUwim9
X-Gm-Gg: AfdE7ckd1zWKy+qrgQ6900bn75ZPcUwTinlert0X3fWcgjsZCXuUf/h+ap93Tz66WSS
	P6dNNZXkrAgzWpQ8cp3Y2mDAg0EbNPOc7WN3/LgOGqv41gBZKoTYrt9xsZtu3gBXL6gavbQEQ7T
	QmQseB+rTxXIfS/Y+V9ieKBmHhN7LhVG+GXLZCwU7B/WSvgsbFNE8rzWlDDqmyuVg6qT3HnTysF
	3Efs5FK92RQVW4waBsHpDoyy38mJjAXTB4JRAG1qKeErP49Q+36Ob6yFYZ9wbq2mcp2QllSi2lU
	VXbvixHDSm3ZZM6Kdbim/QQ377EATKcO8IiB2F7P27IWAI8EgQUWP/c5mZStyJQsvTh9lTrLFdq
	tpJoWiN7NksBc9w4htWHH7ZJIugzSGfVfaoLQsZdtCxebF6a4j+YlEBAFjjg1tuKewvcpdLAA0n
	W7hMs+
X-Received: by 2002:a05:6820:c81:b0:6a3:8023:af0a with SMTP id 006d021491bc7-6a39a630e13mr5348704eaf.31.1783948123129;
        Mon, 13 Jul 2026 06:08:43 -0700 (PDT)
X-Received: by 2002:a05:6820:c81:b0:6a3:8023:af0a with SMTP id 006d021491bc7-6a39a630e13mr5348685eaf.31.1783948122655;
        Mon, 13 Jul 2026 06:08:42 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6a38e16c7d8sm6415913eaf.9.2026.07.13.06.08.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 06:08:42 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Mon, 13 Jul 2026 18:38:28 +0530
Subject: [PATCH 1/2] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Maili
MIME-Version: 1.0
Message-Id: <20260713-maili-usb-phy-v1-1-3285da11f148@oss.qualcomm.com>
References: <20260713-maili-usb-phy-v1-0-3285da11f148@oss.qualcomm.com>
In-Reply-To: <20260713-maili-usb-phy-v1-0-3285da11f148@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783948113; l=982;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=3WLtHMYOWWG6YJSbPwoPg6vHqdpiCE8i5VjgYuBraF4=;
 b=TnPiNtyvARISbs9UcMFxGz78vo1eN613ZxZL+NYqdlHqEpXjNnL8Fzw6roTJ16R6a4KJTpIfi
 a69noB7eTmgAMFb0u6JlFiz1hPunaTg8cetE+vTI75h+V1RVos+WX2/
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-GUID: qU24qqYyCWYgTqqDU7kePGA1b3ojaoaB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEzMDEzNyBTYWx0ZWRfX2WrBbLf5WLf5
 p1UmCwbMUQ7aW24gCATc4S6W12eG+kjeJjNEOh23sWDC+Znt+JUONghMe0ISv0TKYxN7CMOzOoK
 wXZzvA3beBmDNgXjIDOCFPCQ/L94vXKqbKfrcX/sqORrQ9hYeRPuV1DI/5SQcEeKISkggBU1KwO
 S0+LpblZv/NA8Hq1+2OoVSC4F1zbNXwN+usvQ3VTioPH4oCwbRExDA+MV0O40B7viabrI27upV8
 XNfgPKCA5k4wTMw+NsmEmORmGZJiETDXFHhDYZky6fz/Pqm7AxUwkxDTv/g4houwJNL72kkSFih
 Ew6kzBfbIcGlA0qovRZlMMlN/PLSAuiMBQfmJzdnkl613lD9veKffriqdSSgs6K/1+ARgSjfY6R
 rq4iZGOrS/pCD6XhqNzdHA6Th7/SiAQyWn/ypVd9OOs61NyFH9aG9+yxfPG1PApEM14XgLBIhaS
 9/Xk0RjRovH4XJiSUYg==
X-Proofpoint-ORIG-GUID: qU24qqYyCWYgTqqDU7kePGA1b3ojaoaB
X-Authority-Analysis: v=2.4 cv=dZSwG3Xe c=1 sm=1 tr=0 ts=6a54e35b cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=LtwHUEFrW3c5eyPZFKUA:9 a=QEXdDO2ut3YA:10
 a=EyFUmsFV_t8cxB2kMr4A:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEzMDEzNyBTYWx0ZWRfX1hRC7cFO8aLE
 KPGtXgoTAk0ixsPoSiXYMA6hPyv+EoMfhdRC0yk4Wy1Li4xq1wsSe1ldzZP+qvLTWX3c7PazQF4
 alTTRzywuIaqIOydxgQOjAkPdwgn0j4=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-13_03,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 adultscore=0 malwarescore=0 spamscore=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607130137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_060844_527213_7D5ACEF8 
X-CRM114-Status: GOOD (  10.39  )
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

Document the M31 eUSB2 PHY for Maili which handles the USB2 path. Use
fallback to indicate the compatibility of the M31 eUSB2 PHY on Maili
with that on the SM8750.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index c0e7e2963ce6..613fa5cfe9a7 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -21,6 +21,7 @@ properties:
               - qcom,glymur-m31-eusb2-phy
               - qcom,hawi-m31-eusb2-phy
               - qcom,kaanapali-m31-eusb2-phy
+              - qcom,maili-m31-eusb2-phy
           - const: qcom,sm8750-m31-eusb2-phy
       - const: qcom,sm8750-m31-eusb2-phy
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

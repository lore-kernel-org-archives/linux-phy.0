Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B93E3CA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 06:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qa+RYaKn7UZHA5+7M4h1qbFwpttyMVEPAfSUKZ9SmDQ=; b=q4ungOtaMaTd+3
	Q7aJd/dEzBsKPOaZYEPnwnzrdcJLdJZeEOqRza6oMCaWI6qag44A5LOdDLpXhzoHvTEgTwxpNG8GW
	bUoreO6EkrX4J1mlOhqtJGAknyyhLH9qj4fi728ZTZ4BAqfiWXU7jadYpSc+dJGEL7klO+k9+tIiU
	Je8jNx/NZk+XvUEggI4nWg9PPo22kDqRxjOoe5QhwD2qSrmSaRu80KjdpXnX51d6vNRxyuXA+h7Dg
	AHChAeowvcHDFeDLDTX/Lj3tC2Y1qPyMoMy+OWmDzWNTZEXuDgL0aVPi7GLTO74lblS7DNt4ufJ3F
	fcCaCidZXJ+GCh1xDgCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9mt-00000009lZq-1miK;
	Mon, 12 Oct 2026 06:45:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9mo-00000009lY8-1ZIm
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 06:45:29 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69C5PTNh1786863
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IbiNyzfqx0jGWwabN/+ItDIDzhYhWzZaMzG7MQNpHsk=; b=hr4iZeQGkQrP6Hi6
	Q0kCOTSwXZX01Er/bk7i2l6XSYJsOT6kLPwR0AX9sfqxaGfeSlsGcUjr9MtVd2IU
	PlSasEuSvH9gAX8yX1Rcu3Zrn1jNccUNwpk/vD4aJUibT/VZ3EUr9HHqu4K8dHsI
	/uGWWWD74nIR/+OMlrXrHqqtca/ST8UJvgJeAI3HQ4HHf0RqmOM//piGh+hcAEDF
	D4kkU+0SfeaSl6vehvR04huCiioavjQimTQ802U3ZaBbDBwrlacqfRb6PJtzCfUd
	TAoJ7Uvs82Wv9KcxadokKFeiqk9woK+FWGxSuhJ4XS9AUyA9VINYzQn7X9GIVaN1
	nDWMvw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8sd1rb4t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:25 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-898fe16133eso1041501b3a.0
        for <linux-phy@lists.infradead.org>; Sun, 11 Oct 2026 23:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791787524; x=1792392324; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IbiNyzfqx0jGWwabN/+ItDIDzhYhWzZaMzG7MQNpHsk=;
        b=a/aqNq6o9l0eyc2UEeuwbEhmmc54T+kV46jaRxCqMVKIssD29owkoFEVIECaKHVM3g
         jUdUwpdT7WXcr11xOT23zhddnYwIHl5vIrxzNuSfLfSFHag+D7ATAWuoCwJ/nduU2F0Y
         jXSxfdq/FGOZ82CGnUKhutDLwdXHGaqgPz2/XQI0dsppFNbzTHgSor8a3MsObzMk79XL
         IdveSls/LzsboCVCc7PXUSX3gxI62Myq7XORAzp972ZXz8YoZO2iqJmA+XF2RnfT06Ni
         1U5qPIy/tE2R+z1AiWqVXmYR1WhIKsYQ7K9waClPZWAXdDNb0mFPhD3pyXmvk+qkCZh5
         9GyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791787524; x=1792392324;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IbiNyzfqx0jGWwabN/+ItDIDzhYhWzZaMzG7MQNpHsk=;
        b=QaZ6ZnbCmDjBPdTZHkGrEYAxlAJ9xjGxrKB3hHzAeHx4np2nnG+KHoC+jKUmaVpgj7
         ewFLuhLKuroSb5qDyIqokHzjWJlXFIQ967avRnp4BHBICYl5zsbT6wcwM0/25lR27V3I
         vKMQ/UGjp4OM16PJETuykbbkEYr/ttpcy4e+vaykJ2Nfbal03CgUP3rhMBUMhFtldZpb
         o1dY7CAQa49vZ3mXZIzZ/noe5qOIHfk1WE+YNmlR+nq5Mnql16HuqJW6O+99DmFMKOen
         w4yFK8A10vAZMgS0LIL5bbwyraFyjIciVDvYkIt4IpjKwpZ0LcmVkJkHRgx7hmFOxmMj
         Z+ZQ==
X-Gm-Message-State: AFq9FYLk7Lo7SpBCnOpgodLnHcoXXxc/V0QA+F2DhXAXp/Eu3eZT7qgX
	cc8zmm647uRzZxKgDUt/yCni/HLDbtptL1xbuF02qD6rCCLFWy3DfRUNmeXcjb6OgEqOnVLVDmR
	3m12DCk59KGetIRXB93VASFDwopW4U2ya2HCupJ3E9cAIWm4ncP+dfAO0xhMjvBUTMl3u
X-Gm-Gg: AYBFou0JbRRsK5JewwBwl8LEarX0kpXxldOV9JihslqQdmtSPGqvq8NaXckrfZdubXq
	XKGnA+wxOJTwUhcjnlvnaPhKFewz6IdQu1167wT98AlTRb1Iy9uvWfkgnz1BQXH2Bhlcp7Rmbkw
	x4u66se7ZafyiWWa2jiOAHtAFxHDtnQXyv6VBPsA4YY49XQUmYbwL9FJQNCoNJUP6EPa+6yCjJH
	2hMSGzfr5aRXOrzPf72ErNg5mGUkDnVzTecVqIeodtgeW5UOI4LXmZDy77Yz/xFk9x9D7IvppiI
	vPPYXAWue8pb/QvRb3uwtdjl4AL7nhyKhBMbZg9TkcHN43yvEDrx+eHI38IQnUH8+zzHPM+fb9n
	AuVbqlob8OZfT224h4NbFACv4uffk0Pf03VX8JNqLG9PmCbri/Q5rriQKjWtZImiSW61GFbRuki
	SNZf2w8IaWGg==
X-Received: by 2002:a05:6a00:148b:b0:886:5f48:3fca with SMTP id d2e1a72fcca58-897c76e308bmr7234570b3a.37.1791787524391;
        Sun, 11 Oct 2026 23:45:24 -0700 (PDT)
X-Received: by 2002:a05:6a00:148b:b0:886:5f48:3fca with SMTP id d2e1a72fcca58-897c76e308bmr7234545b3a.37.1791787523925;
        Sun, 11 Oct 2026 23:45:23 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-896c3dc6c93sm3534420b3a.33.2026.10.11.23.45.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2026 23:45:23 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sun, 11 Oct 2026 23:45:03 -0700
Subject: [PATCH v21 01/14] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Kaanapali CSI2 PHY
MIME-Version: 1.0
Message-Id: <20261011-kaanapali-camss-v21-1-04fd28d815c6@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
In-Reply-To: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-ORIG-GUID: CAXsi8T0ro8jG-9_KEu2tp_lqL8Q_CPB
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfX1edU2IakpHG0
 Z9a0G0QBBqFxC1p3ffu7ID0IHRjaUQJ7Dz4xUyJGGYLLzmaXv7cpQqwpJJcoYsLw548BBmlPeTY
 mb4aV412KMvnnX1iFiFPdL6T5FsjUbI=
X-Authority-Analysis: v=2.4 cv=QtHLTlyd c=1 sm=1 tr=0 ts=6acc8205 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=mZPZtqNPFm0sPOGUM0AA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: CAXsi8T0ro8jG-9_KEu2tp_lqL8Q_CPB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfXxxGQ0NBT3G3/
 g3273nVnXVVB7dQg45cG/rTW+WQV0XfeT7S/qo5TKq6sMmh4DbExfvHG3jvRO6LRJ4VtmwJhl22
 C/C4O2lOXi7DQYRbQ38vI0Bi2t05LgEgn5teVwMKFNFT4aIYW0FXvMx3N48axZ6aPL+3O6P4jxG
 vpLalRSu0Wq+wSaoDC01AeNjC6uWSt0+dg0cxm9392iYasDcbUep/sVV4wPqwE/4QqyHczmZK7P
 2OITpRiZeWsxaXaCee5EZRBJk8UZia8RDDma4lZwe67mgG5DNNK34qbSDNv3CKIabGwFLBzBOFt
 /iQ9sI1OUmtuJPBtp3L5XCbXf1JKyiAgZNDEiRckSdbDpvBHkQRvCX/fqxARW8PYRh82b34VUfY
 A/aiN51QRxgRK8NWC1DpZ8LhxS0EA0fgGKtMAYiXFvhlmHLaSfZVKmRzrVVVFPZjFK3CcsFghhp
 FHTgfF++6B4hBU1+rdw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_02,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 clxscore=1015
 lowpriorityscore=0 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610120026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261011_234526_524546_9A208704 
X-CRM114-Status: GOOD (  11.37  )
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

The Kaanapali CSI2 PHY is compatible with the existing x1e80100 CSI2
C-PHY/DPHY binding. Add the "qcom,kaanapali-csi2-phy" compatible.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index 1f1e2a4993b2..6e9eb8e265df 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -17,7 +17,9 @@ description:
 properties:
   compatible:
     oneOf:
-      - const: qcom,x1e80100-csi2-phy
+      - enum:
+          - qcom,kaanapali-csi2-phy
+          - qcom,x1e80100-csi2-phy
       - items:
           - const: qcom,glymur-csi2-phy
           - const: qcom,x1e80100-csi2-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

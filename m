Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B8EED1489D
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 05:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i9Bq4GeagBrbhQ6RcUWl34DxneD4AzGNTs8mcM6PmdU=; b=mt4Z3vAAC4eP2o
	aovn5fLS/42SXrTQRRPi/PJCmL9G5Ze+UeU6EJvkhnTYKzrw7uupvDBSE+jpAPN/W/4PvSX3jnycz
	KOACiX0dbdJOorjxfx8W8fCBKgvVGr6zLu5NoKL1Yoo/ku6dC1zrN4VXK3+S4MPAKMtkm0JdZkkOJ
	+oAFe6DeX/oxW4c9A8FdZWigUM0BFjNQtFajDpW/GH93fPpWOZLHLQhYrl7tkK04+ZHA6u5wvmuRw
	dzvo6xXlSQ2dqyvkDe8GL8nQNnJYTOI6byttoz8PQZFCayWRFJIeM78fYK5WVGELv/w6E8OG40IGO
	RNNP4zOCpHfBRixCxg4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdiWO-0000000Fwmx-0gXP;
	Thu, 08 Jan 2026 05:25:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdiWL-0000000Fwlq-3qJw
	for linux-phy@lists.infradead.org;
	Thu, 08 Jan 2026 05:25:19 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60818Uae4050660
	for <linux-phy@lists.infradead.org>; Thu, 8 Jan 2026 05:25:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=++7hsKoXJsW
	92ivW/TnQTYqSqCDWM44USC0F3hg6uVo=; b=KBwYCeJXWlx9Z90ACkYV7HTF7SR
	gbv4XeBVxaAxjv+qHuUVQ2t7J2Vbng1ZIEAO5BbDQTKzPnr9ro27guNqBuh1uKAg
	sqQjGmux3Jn0xqKWJUNj0zAhPw+NpmdlQTBvyDrNofJzqw1GlbObWAuMe89pCQyf
	Jt+3oq7cJSC18yRDnlbOni3pLSdjnartwLN6inqn2831YJTuuPD7pVvporv3XWCX
	GODTJPTL3Hj3H9PjJHEDCBRgZZ9xEIYG0yl/ZhvqJ/6HqLWEywjrqrG0U4UF3dmc
	GEFdvgiXEl6+f27R16/f27ArourKT/anspkn8zIjf0216KYcbZ6t3GpGM2g==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj2n8gq0y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 05:25:17 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7fc82eff4adso1505283b3a.1
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 21:25:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767849917; x=1768454717; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=++7hsKoXJsW92ivW/TnQTYqSqCDWM44USC0F3hg6uVo=;
        b=fRWECMc3LeIEuvTBH+yTPUyi11iIT8lkUpeiwoiWacAYCMbx2btUo6K+0BWmoTpGLV
         oMOpChPAYJWbrrcuBQljkS4J8I+NSKrbz3A79nj/jLQlSbZulBm+UA6psmJZt758+fZN
         /h4pupT74HuLkiqAVYxUqmRV+oXA5QtPEuMTonacwfrPJ7nUsGkq9H45+h2VWX14ZG82
         372mR1+ZoFXfgoO4ALc4Mck4siE8qXF8NCHtDI2fugqO3cr/DN9lfuCKLDThZIXBjjCQ
         tl9JdaLlUT9WHp9SBUUNza2BnsUpLoKrZLAj8Xsj5UKmrhQLWnwheu1OYf/HDj7hIscs
         KDNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767849917; x=1768454717;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=++7hsKoXJsW92ivW/TnQTYqSqCDWM44USC0F3hg6uVo=;
        b=BEbnO4pzWQnw3tUtxLvNxjhYFKdbE4BnNdROTksSU/LZ4JmDHjaqdr8ek2UiDE2ST+
         CtZIxlqqYVNMb6lKagguJT/7m1XZsHmkx6edL9LlqEL/XEo+rT96bj/tvcIzAZkK6kV2
         ya7vTsOK+e7gxc9drpLv99aOgbYrQx9GBGWNdWMkbBe6YFaSS9dgXEo65m6Rdqf1SfAS
         jvT7A5zn4XYunrSeHy36aNATLZHY/cVyLAPXTInWt3Crn71ZT0hVAH6OHfcsFedBoCmi
         fle6h2GHZIEA5MaU8SlbqbanYLcDiQKfCBxyiCxfKmC6xTVx2kdfvhzIk0tMoV7OGD8g
         KiDg==
X-Forwarded-Encrypted: i=1; AJvYcCWWuqvBPqYdyGELk3DzbEEC8JnfQADWBe7IZnKux7tPmvqRn0L+LBEIohc5mL5eKTiAwEaRjsVPED8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxauwsLAxRqE+WcuuPkQIYA2U+ni+12iaELyI2iegYByJEFYUre
	xpSk2WozyT0qUHqldkypJNjDF5btTqjndXZoD0rAEa5bIt5ONCNVKJK5e0Z+eFcr6TRDjLYPSRK
	p2N7H9dfg9OGOR2MK2y1iMk87iMIH83b3nDuhKf3iJIympkxqAG4M/h8kULs7q43YCzdi
X-Gm-Gg: AY/fxX5zOeXJnBqeTYXZYu5x1gwv2QJ7QoAsldCKLDB3WVpxFz2Zy0uDDN6rOqb/nJ9
	ugqL9y+sCImgsYx6hP9siqcVidOWK/MXxrmwMq4Ue9ZXJ2WVTdZNAkGFrJsb6tv1W9+x49askn2
	WGbqAJUloMP6RJgwUUqHKNQklf756wttAmbFOlTJeQQWIGuqeFon432FabducSd4L73H7LhQmm2
	Q6atW9ol0+ua2yYetWLH2ddzazOtENq7y11G3hSeVrwgFZNs9Chu1OHESO5FJqo+Ip94LlV5pHV
	op/Fxy2nlCwOQz/ALRf4AhkzguPcpFeu4F6v5bOfUZpwd8tkp3e4/rarcwY66PjjrJozvsmBB7W
	QOoO1zaZTgN86xCDmgJP1T2Uh9IqvruniHAMJVIBOvjSLxZ4=
X-Received: by 2002:a05:6a00:1c9e:b0:7ff:8316:22f8 with SMTP id d2e1a72fcca58-81b77eea660mr4857358b3a.21.1767849916485;
        Wed, 07 Jan 2026 21:25:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFIWySSU4rM/WwZXOa7D43aSEqm/pO1hNAnchsuorkXjxYBUuM60iUD4BoztRWzF833sFg1pA==
X-Received: by 2002:a05:6a00:1c9e:b0:7ff:8316:22f8 with SMTP id d2e1a72fcca58-81b77eea660mr4857328b3a.21.1767849916005;
        Wed, 07 Jan 2026 21:25:16 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb0de2d2sm6415534b3a.27.2026.01.07.21.25.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 21:25:15 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v3 2/2] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for Kaanapali
Date: Thu,  8 Jan 2026 10:54:59 +0530
Message-Id: <20260108052459.1819970-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
References: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=d+j4CBjE c=1 sm=1 tr=0 ts=695f3fbd cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=JlprKJ-Wy1uuo2cOBb8A:9 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: OFUCwoXu0KlftKAh0FiXj5QzDYTsB0Rj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDAzMyBTYWx0ZWRfXyllbBKWD1wGa
 5q69xLiFhFB88ld75PK2HYfQhtyIMNj44aBWwmxLW26zsLaN040pQO1fvMoRF+TrAc27Z44mUPZ
 wLz08B5LU5B1bD/M+8FUWtVS0Eg6EnhbrrGwzW2SkQXVIYfugf2lbUFbVCFDR4rS+tNaRYAsRQi
 YrirPfliiNdEEWe0dcnRBUH7lATt7SXy6OvswSlKOM50tmrl5vXf5HWJdn065agG1DJQpwOF/qZ
 WvnBi2g1dhM59Nhs8otS6eYofZkZPKkSnhSk0lOrBdIzt2PKi/w3+EnEQdolTGnNTQyo93frF4t
 PJgpMlmTJlEWKyQvgGfkpqJmZ5zsW1H4JC6VzJHJd3L5Mk6UFGFwrO3GeQiu5DJ8JN22CglVB04
 9p88y/GdXZzTHgeHZ4onVbWIMazbEfvRp0VH5Joqe2gjcCpywXkeXy2Bv7Y1MPYvG8Auf5yu81V
 TZF74UFn8+k59kQS4Rw==
X-Proofpoint-GUID: OFUCwoXu0KlftKAh0FiXj5QzDYTsB0Rj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_05,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 malwarescore=0 phishscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 impostorscore=0 lowpriorityscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_212517_962579_C145DB03 
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

From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>

Document M31 eUSB2 PHY for Kaanapali which handles the USB2 path. Use
fallback to indicate the compatibility of the M31 eUSB2 PHY on the
Kaanapali with that on the SM8750.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index 409803874c97..cd6b84213a7c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -19,6 +19,7 @@ properties:
       - items:
           - enum:
               - qcom,glymur-m31-eusb2-phy
+              - qcom,kaanapali-m31-eusb2-phy
           - const: qcom,sm8750-m31-eusb2-phy
       - const: qcom,sm8750-m31-eusb2-phy
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

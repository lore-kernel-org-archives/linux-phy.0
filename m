Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A749DFF885A
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 16:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n5T+rAm0eiGggm9xtsAlgpWJEI6FECAVTiEp9kSCZK0=; b=OX4Lsmb40caJ8V
	Mxci4ocJk4y43iOyLEqdHNnNcSJJBSEC9+8/OwWtklS53RFdCAEShkoPPnPNso+UyTDSSw5GH1961
	qB9eEyuE4Jq3uAT7mzi1vgD/icah3nvSvax5x2ScCyg3bz3pKQjUP5xo01Ph3pUl3JQzW9ltnf8H/
	nqpLRhMJILoOIumHKmWwkNKR+csXACoHSsxeA9AnaOOfrY7G6vM+yiPnMD8jZKkMpmzcqq/I/Ezts
	i2N+vstYI2S/SBa5TmeDv1Kb1Hca2SvPGW+MOPLSXWf8XzCeUPg4Z+VKPvS0w0ZID2Hot4BygCYbX
	kLhvwlVYpnkC7Wnr9HvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJvlw-0000000DegA-0DZK;
	Mon, 04 May 2026 16:03:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJvlu-0000000Defe-02E8
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 16:03:51 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 644B4E3c1151983
	for <linux-phy@lists.infradead.org>; Mon, 4 May 2026 16:03:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=+A887ryxZ760eDs9FrcxFR
	m/+JAqOQlZHeis+Bz9dNY=; b=UooZoNMI3pvgB8IzFhu9L9HgLBtmM/P2wifIU8
	AzsAtCXSijlZPQky7r0XvcVWqg0H2w1PghBd5XCANmfZF6R/hmS1D34EOEspFwyf
	7YF6nqQUwWC5K81OPMY0+MBjq6WlW5y/xvIe+BgnZjWyEStadU4S3X6nugd1XfNx
	2SilPVRV61CLyKVEcroS5ekn+DJuqUrvVXYNodV+6HiZ6RYEDdJFDCXDlVmybsrj
	JjmGjVybh57i1YNez7/Os34oewCaK8ksWOUZ5HjaDD2MCAPCBXr5LPoUbgxCC5OB
	zLwnE5Aj+6Q8lG9LqZA2lix1ClVM2CDsus1D7SZEJqsVXbUg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dxscy95dh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 16:03:48 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3653638874cso1499422a91.2
        for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 09:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777910628; x=1778515428; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+A887ryxZ760eDs9FrcxFRm/+JAqOQlZHeis+Bz9dNY=;
        b=AMgMtJJYnaYvXNlRCzmb6clASSeVG5hu7Z9Pq0gO1CRxHjSdc4ZTJM+J/fbRuSS/iV
         P578U/oqPhMvBZku6NrMJsZRoJOEECuUwzITWnCJjsmxKIlR2szc7xMAzoD84Wj02f5T
         4TFWlawJcXLVpa81B2r3H9xYJ4B1qsLN4csSZ5US3J3e3gY69FLjGaFhjjsWPIH3foMQ
         7ztyoI+xsD92/Ca++QAtSbfjwVNorJeooO+9IPzDPRAjkmZBeLHQIFouB4jWB/K19NNY
         4PfekPkrfJABBsfQmTXNSZ5TW0xPsf0pPL8MUzI5/dziVuxV+HwkeiscZISRJ/Spoiw5
         NpQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777910628; x=1778515428;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+A887ryxZ760eDs9FrcxFRm/+JAqOQlZHeis+Bz9dNY=;
        b=mKi5p0bF3Mbd6N8/sgyXscFvIqlWl6r49ekb9RLaq5fPZpxrggzDnInT5nbRCz+9+K
         NdCX4xPyIqfphfOZ/a+5Zdo3q+1DwzUse+sYMXoiAwdG77pO/4jVyIXEugPTGZ4XCrp7
         riz9U8qK1aVPXyBX7HQjFA+prSe6whf9mX94PJ94iwihdei9EPxc92bS7pyNj36/WyA3
         KEzcrHq3lB+GHOiOUISBMujzY3BkCkeRdn4EaGUITsCJzr11YgqyTaTITTkkDloHDiX0
         gYbY6cvyedwoBFUT5ugD/53ahFShwi9hKgn92eTeUk9+P34T7sVdl3MS3QC/FdJRJYlA
         wpWw==
X-Forwarded-Encrypted: i=1; AFNElJ/6xdDajhUQDm5uN6ZGbEWKwOVFXkSx07FIlknRLdofoV7rrZLXGVE+bxQpcBSO08RFkSEHuebFLl0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/2lQPXWTCySO81ZytbhhDPvkdmYLPKgUpaJMFo+n++BRHMPfo
	eA594uZ3CUfnFpLPKbp1SXXBzY3gxJatud0v5GaO69dsliiefaYEJTCBHRcyrzhqaEVhDzX2Kuw
	IH0yhlr9jxBIv778S1My5qy1IQd6VFUn1aVIAHulLIb/aEdiLMXwPyPoQ4H4vFwsGW6Wy
X-Gm-Gg: AeBDietmNwNAj1m7Ce0awKJpQ1cn9cbFovivfHDMrHPolvKe2EiUCzjlhZa4VN721nI
	MOdiKxcWulP5+Be6wUq/GnXVyZpjxYXACG6W3xU6tbGPp3HITt9zykIDqYgqVH6D1l5QInGhH25
	wd/w6rVHlEMS5Jh7GO953dY1GeMBVq2i4gDCJ3myevAgM0/K5yGiSacFn+aNYbY2AADk1nAkxEY
	+rurJPEBCT7LpfG4vYgZVaEvbMJ4Nje/UjQrBfIsnJQPXO641077AG76bXD3YFd1RimcZgBpsFZ
	oyvJRNXP7Ufb1yX/E5RaJknPBPePq4VT7AyS4uCoiz5/U3BBqKcYRaadpx93SQXioL9+eIqSqHa
	yx7nFKx3hMaQqJEAL5cNG1fSu1U1yzxdnSBL1jtgL
X-Received: by 2002:a17:90a:ec86:b0:35f:bd29:75b9 with SMTP id 98e67ed59e1d1-3650cee7ca6mr10116941a91.22.1777910627019;
        Mon, 04 May 2026 09:03:47 -0700 (PDT)
X-Received: by 2002:a17:90a:ec86:b0:35f:bd29:75b9 with SMTP id 98e67ed59e1d1-3650cee7ca6mr10116537a91.22.1777910626023;
        Mon, 04 May 2026 09:03:46 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48af0d5a613sm105838635e9.2.2026.05.04.09.03.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2026 09:03:44 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 04 May 2026 19:03:41 +0300
Subject: [PATCH v2] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add
 Eliza QMP PHY
MIME-Version: 1.0
Message-Id: <20260504-eliza-bindings-qmp-phy-v2-1-849c4de8d75f@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAFzD+GkC/4WNTQ6CMBSEr0K69pG2CBFX3sOw6J/yDFDoAyIS7
 m7BA7iZ5Etm5lsZuYCO2DVZWXAzEvougjwlzNSqezpAG5lJLgueiQu4Bj8KNHYWuyfB0PbQ1wu
 YPNPurLkWmWBx3Af3wPdxfK9+TJN+OTPub3ujRhp9WA7zLPbeX8ksQEBZKG5zWSor7c0TpcOkG
 uPbNo3Bqm3bvjGkIzPVAAAA
X-Change-ID: 20260318-eliza-bindings-qmp-phy-c53be4b0b131
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-bc6c4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1465;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=sFJV9piVyzoU80B+ueZIt2l+Kf+S0OFQbpZGdavIBN4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBp+MNeZbpdmCaBksw/dXfD3UnTRn8BKXcq8N4Pq
 EUDVugo33KJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCafjDXgAKCRAbX0TJAJUV
 VrPlEADDcd2ov63rM9EosgUP6lSLvDT6OHHGoa2SWfJBOD/93/4aLA2TLVWFKvTtfXAyWE8GEeY
 l/aPuw1EDAED4Hlqt2Gz5si2h1CTeXXOKZu5q3+gJud03OoG7fUtko7Xo55DHVQh5QGP1P0+8wN
 jl7uLT96wxCF3NTNt2bbBHq38MTPgfE5Cv4TI9XgJl9bo5DV3cKPisTLXi0RA2WvSJz3WOQqj9f
 yYaiVOJ98H+0kl4jW1SRL6LW3GpDcjGomXWMnRsMboBq1436/p5gAPn8OObB09GUBil41viNhrx
 7X9BONjurBEUuU1CEBCjjMySuqB6nieL3/XyRBbPMCHcwd/WyPZZL353mhFo/f8qUYC/y4lnmjl
 c55GjssGLs0aMKjZhv2fuPTebhXV4hSCkdLS7PHc44oOgy9l5lCBzCINLeWhIoQgCkaIoGe2mFH
 jFCwpy3Yk6eRP/c2H3FGwwkz38535mV85x6T8copkn7HmDhUwyylGFz7TeAcrYGS9+QdKnmwUp1
 fgnUv1J3QZMP5889xN6A6WGrJHjszoocAg9cvq/PjXBJHBImY+BmBjF4nBbPKNM7KlNy6/0BCYz
 doBinewp9Ca/JUOtt9xlSab2ODL7ONzSnbDqG8tg+UqDEoAHGyvU6M2kTrMzauMImrKRLkz3AKj
 B6qhLkDGmFm+lmg==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA0MDE1MSBTYWx0ZWRfXxEknPdxjDUNN
 qTPiHRwBTdSTv6AGsJXAo4bh5cSIH4idpSbnRsBzG4ODeZShSzEeTyZ98KceZNZ1Sw06FWkIDNi
 SQFkfrUwxRh2b6QjHOsxYhrW2BcZbIGf3SzSXJwPuEPcBZ+El9X7MukZn4GycaXSZbOfTjeoRdL
 18rcvXAJ12EYeubrOtcZxVOCDiAHYy43JmhnrTLlv3Ykm4xPgl3sF3zejUjN9e0M3d0HKNpnlDj
 QDuIxjUhBmiIuS/CqL8qHugAPB2lv2KQNQW/gLu6yLtAnAys+36KO33625ktIkv3gCRGrrraxYL
 DZGxsOUObdEnbjuwDTg6TcHGTC3NxyQVSkr1JMv3wUvZuhvttvgVKLloL1WIkPfijUVqdxkDAh2
 5BKwlF/uz7eC8w69S43VKUWnLVkctiYH4teN9baF/JY2dj+/vKptKtkXGrmSptPBbKTwjafeh4Y
 SYgwB/ovIF54JSD2ZEw==
X-Proofpoint-ORIG-GUID: fVdSohXUJ5rRwH0a9H4Oa0XmlXlWQjEk
X-Proofpoint-GUID: fVdSohXUJ5rRwH0a9H4Oa0XmlXlWQjEk
X-Authority-Analysis: v=2.4 cv=C47ZDwP+ c=1 sm=1 tr=0 ts=69f8c364 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=gcnggjyPzmaCdwFRn6A1TQ==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=K6OwPNha_kR0oLd0V9oA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-04_05,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 phishscore=0 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605040151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_090350_059682_1B66A761 
X-CRM114-Status: GOOD (  11.15  )
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

Document the compatible for the USB QMP PHY found on the Qualcomm Eliza
SoC.

It is fully compatible with the one found on Qualcomm SM8650, so add it
with the SM8650 as fallback.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v2:
- Rebased on next-20260430.
- Picked-up Krzysztof's R-b tag.
- Link to v1: https://patch.msgid.link/20260318-eliza-bindings-qmp-phy-v1-1-96a0d529ad2d@oss.qualcomm.com
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml        | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 3d537b7f9985..4eff92343ce4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -16,6 +16,10 @@ description:
 properties:
   compatible:
     oneOf:
+      - items:
+          - enum:
+              - qcom,eliza-qmp-usb3-dp-phy
+          - const: qcom,sm8650-qmp-usb3-dp-phy
       - items:
           - enum:
               - qcom,kaanapali-qmp-usb3-dp-phy

---
base-commit: b9303e6bff706758c167af686b5315ad00233bf8
change-id: 20260318-eliza-bindings-qmp-phy-c53be4b0b131

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

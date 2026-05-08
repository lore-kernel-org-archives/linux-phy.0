Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E309DCD37B2
	for <linux-phy@archiver.kernel.org>; Fri,  8 May 2026 21:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJA+aux7k9/r0udbLrEnOUctw4KbVY2eEP0ii9QnwrA=; b=JCeyTtzoJXbNn9
	5XOI7iJkBNmT/RCB1m2NvdArvPiRZXlBqVIw2+gAVJwDvy3enB4bQW22kr/taZ1FheejFRe1u4p47
	Cqo/f+oztYS7ncbUUbx58Aq2v04K4I5ULPQOF7OltNfQ0By5qW/CX31UXcD/JnIXn6F2NI0qrmNDn
	0GqvQbJFpV/n0wAF7Xz71tSfqXX65oKEGKjGw5pKS5RwD+3wQNZo1sBMX6IVY8AeKD8uneaL11Q31
	T4LgsOST1SjWBDD3qzmTnHw2TTePYyvLlUu2o5gr47qsr4Iniugy5qi9yer/MmR03Y9npDz4O6yQ+
	97Nvt6VuQPMNoBMZuJmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLSoo-00000007Z84-2ORp;
	Fri, 08 May 2026 21:33:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLSol-00000007Z6G-2JJG
	for linux-phy@lists.infradead.org;
	Fri, 08 May 2026 21:33:09 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 648KdfGI852271
	for <linux-phy@lists.infradead.org>; Fri, 8 May 2026 21:33:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ecNTbhYHuyh
	QbhuoB+7vmARq36r7IGCdT0R1LSWjkRI=; b=jNAdAH0YKmnXVRc++ujA8I1EB3p
	SaaHA+r/Y0HkFFNG6dcFq3Opd+3AyegXgHzRdbJFTFb7ZztzO1dbrigMuxFzgRsO
	5PPRwGPXmWsDfRCciL4++sdaTpztMIL+3VAK0BuPftWFLdL3wXCo4m+JVN8nGnjT
	cP+nsnLyGeqVnVjlMIxr72vaOsBMil1cDZRSYzoH5/RlyxF9yGBZIYfz8XurX4bF
	mmIh15RZ3+7Vw9I6xDfvn/tY9v8QQshopZaP01or8L8JEJTwYmcKv3TqUoS3gLA8
	umjOYHALIIxAHA7C4cw3xWUeISzUJOIBwa9ueC8vt7c4IyJQZfa9UicilLg==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e1fptj0s3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 21:33:06 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2f525565b33so3250384eec.0
        for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 14:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778275986; x=1778880786; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ecNTbhYHuyhQbhuoB+7vmARq36r7IGCdT0R1LSWjkRI=;
        b=C61SmflWw+ym6ZxqMsTRLgmw0Z/Kx/+lPBBRy58SCViTM+2M7i1LroO0ZwvXB2Rrvy
         XygMwu3HSDox0Q1RqL0bLJBB6W9sMg8eagK/XzJy9YmqF2munfEDNUM5uSGOr1I9rnH3
         SL0Z+UKRwAAgXGaVfx6OAWOWPRtIkKOET/MFIj2Mes/aUBh/aJiPMonPCgh02aas1tDC
         hD42ZzBx+zFR4jd3u5rBJMpdm5PVXh7haUWzWt0GpEXmb88h6GB+gkVwt4JmsXA5Djzv
         TRhDMTKbAgNNSxTVgJeTDetXW4Cl2qwFO8q0PrqYr9zJQYvjcvZMHk8rcjIjgLwtlyeh
         V+Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778275986; x=1778880786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ecNTbhYHuyhQbhuoB+7vmARq36r7IGCdT0R1LSWjkRI=;
        b=KPpOdzo5WAS6JzAAJvvj4YtG2rhG1FX47HljmZL0MlvcSXrnNMLf8mUU1KQuM4pjlf
         jV7Vt4gRcARuX0o3rhH7maimK76S9HU40FTlYpUi4+EWNHQBb8s+L0MUGBh//DrPPtKJ
         +edIAxy7jGR9xftHVJA9lHd4+8EFcEDxHu4u5YAbFMx0du4CEOFI3CouDAJWYMRSb1Ik
         Du8u9pcSv3lsw14x020Ng9ikixthwgHJdEMTzdHRPilqD10J6VAC5Vc8lnSmNLiLyQSA
         VeJ2d5a9ZUMK/YpXGojpVdGrZaIq1ZuOaR/i5omx5TXYHQrS0xew6a2Xl7XBAUO5dvle
         akVg==
X-Forwarded-Encrypted: i=1; AFNElJ8B7aIHzZJK5V2+ECMKv9t7xWdx6Z7anIhkqz52Y/VQcVw+vCDvALAQKy4OUf9oqDrk6nrsLmqBCw4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9nB4HNZ6Qw5LY/aaD9nsF7x1Eo0mlIRx/Japw6vxFnraVIxij
	DDHcq6RwUh38DgRge9CKIkljGH3H+X3MEOKfcGoRzJPIMmW4oGGeXPQATMnt9cdsZAZIUddteFb
	yd52Mhj7l7KsctcR5Qi4RwJ6O9nh3hXA0yHCHaaiIHKz0cSCiBGQ3hkAUsm8nVW9LR331
X-Gm-Gg: Acq92OHROmthHBnTVz4KdJdrHzYrVR+1Qmn7hiAxDdA5Hg5+kChp+Xf97X3RdgVqKqX
	IAJC3ouG7PWfIvqDie3+ou0EZoX2+zpt4Q1PrrzF9w3XM/aAasjoE3uaYzl2LEMdYMqZXuq8ew0
	BXrWPsS8gbKD/0+a1DLs+Ma1QKuxZJLf7mcrCplgwQN6zDdmlnKSt0YRX7k6sPZHIK+RJy1HPvv
	eDISD2kPzlmkI1xVN/bf8sdP39K2a2zvd/PcSFMh808mLxI2/omGM+M9C53aGjsk6EX11D8KqVu
	yF9ZVxz8SISJuMxIv29rUQbTBgLNIIRBMu2N/SExjluZmDv8dSRvpsve5NxWYbuW+nzFgFxsGIH
	0CPVys1nzstLsjYVfR+TMzv+2JTnv8IetIKPpyqIjexay7PFu8xA1sT+5M8QpPo5aT6dnwNnAzG
	s=
X-Received: by 2002:a05:693c:394c:b0:2df:71f0:e5b3 with SMTP id 5a478bee46e88-2f54f9447a6mr6846202eec.20.1778275985284;
        Fri, 08 May 2026 14:33:05 -0700 (PDT)
X-Received: by 2002:a05:693c:394c:b0:2df:71f0:e5b3 with SMTP id 5a478bee46e88-2f54f9447a6mr6846176eec.20.1778275984797;
        Fri, 08 May 2026 14:33:04 -0700 (PDT)
Received: from hu-rraheja-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2f888e3e285sm4871285eec.27.2026.05.08.14.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 14:33:04 -0700 (PDT)
From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
To: vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org,
        neil.armstrong@linaro.org, gregkh@linuxfoundation.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        abel.vesa@oss.qualcomm.com
Cc: wesley.cheng@oss.qualcomm.com, krzysztof.kozlowski@oss.qualcomm.com,
        ronak.raheja@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/4] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for Hawi
Date: Fri,  8 May 2026 14:32:32 -0700
Message-Id: <20260508213234.4643-3-ronak.raheja@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260508213234.4643-1-ronak.raheja@oss.qualcomm.com>
References: <20260508213234.4643-1-ronak.raheja@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: u6dfK1LVwutjB3p8HXaiNLbebvMHbtxe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDIxMyBTYWx0ZWRfX6X8w2UFVjm5E
 MNzhARf74g3+v2qOt/Q9J4xzFqNggsoBf8Gta26MOJExY+hgfOX9HJoz67Qx+edGwTBAIsopbmr
 6ng7K3oQN0c4t6oX9VA7OpdMuoxlpSbs6RwVAaj3QqN/9gcalw2pYfLh0qXkX7Kalv74qRAI1t6
 RAyMIGLVDtddpqbe+M85Qm8jRT25+184HBYeOoOqG6+R/np8DaMek0lYxhaY3vzYy2QuenfyZUR
 lFqcOcO0DwftxLIRS0PR8bg4lNosGQQwJgLRNpqW992WDsop7RsRwH2gxIF69ZKZIjSCK9lx7TA
 ArBn032J2zXjitdTrNW9bYqCUTVla6Mv3SpTZrmgB6Bd15Q+25961yVdiSwy2GuEdZZwqU932WX
 KYAm23AYyilixdN7EADvExC96j77EzbacRKLQEOAZHkOpzinglkgNVvvRaeH4OrW8gbNlmv0ugx
 pqulApzjxtNbgB7t8VQ==
X-Proofpoint-GUID: u6dfK1LVwutjB3p8HXaiNLbebvMHbtxe
X-Authority-Analysis: v=2.4 cv=IYi3n2qa c=1 sm=1 tr=0 ts=69fe5692 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=vC2bFTPnYnLVIQvTftgA:9 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 clxscore=1015 bulkscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605080213
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_143307_756053_0B3A0766 
X-CRM114-Status: GOOD (  10.30  )
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

Document the M31 eUSB2 PHY for Hawi which handles the USB2 path. Use
fallback to indicate the compatibility of the M31 eUSB2 PHY on the Hawi
with that on the SM8750.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index cd6b84213a7c..c0e7e2963ce6 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -19,6 +19,7 @@ properties:
       - items:
           - enum:
               - qcom,glymur-m31-eusb2-phy
+              - qcom,hawi-m31-eusb2-phy
               - qcom,kaanapali-m31-eusb2-phy
           - const: qcom,sm8750-m31-eusb2-phy
       - const: qcom,sm8750-m31-eusb2-phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

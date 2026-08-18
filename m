Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E34DC5DF74
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 06:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gtmjtp0XWlJSTg31Da5eoQfgyxT1tRf+Uox77LnZcT0=; b=IrE7qOReIutjMN
	M9/ZoP237GNPze0ySVkNr9hFhbsEwGhhE505HPPaaqBTWTQxg9AOH/1LC9eqjnZmOU8iE/EySMCGd
	zCCFOks+N9AaV3b71UYWN7qF7oDIoYkHxiHVEEv7IALwh8XHMcn1Aceiqt3PQL44rV9bQwCiMPAJ3
	qBHghU/DWF4jLFixMejvuUxn+Yjb/1UQ/JCTjePGQ8Diy/rZtb7qxnHgw9IarMQBon4MUgfvu5Xzv
	Lc2pay2UDZ6gVfITMNoMfjTZ8ypj89EPJnagb59s4NDlKI/Z46YVGvWoCjUV7HoAsxs9EN2VV1vp4
	o1FLj32ypxp2ixZKTMQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwD7T-00000007OO1-2khR;
	Tue, 18 Aug 2026 06:16:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwD7Q-00000007OMU-2OIP
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 06:16:18 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67I28UQP2884789
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 06:16:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rracbgBVd/nZrkFuOOwe3Q35Ucj/QEAkd30Y/qa2kKs=; b=FqpsC2NwRkAO3PTQ
	Mx+N0l+Qr9bfRR9xIldfhKCLISgUJFF6gcNMOlFXtdQe3VIr3R+eMoX4CVHgOvj2
	Ck0lN51ZgK4zsg7wHgtTujNBN1fK/kvuum/8VHu2MmHDrchaQyyzAgKWaqRkleZb
	p+pRq7aMxSfHGNSxGj6SZomAzT1QLHoxBzW3wtFfKwVhSHkFk9khqt87AhGdYRWq
	nab71gmGWfCj6lZybQ4rsvjtW1NZykQovWSNBimcn/XzObzZ0kDQURljxmjB5LzG
	gUqbS/89A+XTpJvXYRCeq69VciKTgi0To3QbtOPEaq/qGM1dPC9JHb5BwdEtqHW6
	aEivlA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4ebprxu3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 06:16:15 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2d55d8cd938so50522215ad.1
        for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 23:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787033774; x=1787638574; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rracbgBVd/nZrkFuOOwe3Q35Ucj/QEAkd30Y/qa2kKs=;
        b=ROe6HFH6olyz/L5IykTJjQ9H8b0KVZgZX3Tuk2n9U4NXo8gjl5wOawZxzOucayBa5b
         kkarsUpAN60cajrJR7LyEyogIpqGKyGsRZg2wbv3cOgsUtImhdBTHJnkvo3s+3ev8XVE
         ndvSPA9weQL2aJ8r9h5Sa+ptzD/z4JYOlIwYxwIW8jxVaQon+tSOmjWFVW9t4P1gb3g5
         cEou6c/3gC3VrIJWreT4f5j+AS6i/gV64M5RtVNKNOUGf8cmoY6IPNAllleXpgiy0+U0
         wVLWEuXq5ertYq2QkI06m/aIGz8US+EKM4gIDQQ+BkWt+y2xBBqDZvXgbefUvrs/HQ7r
         ppDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787033774; x=1787638574;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rracbgBVd/nZrkFuOOwe3Q35Ucj/QEAkd30Y/qa2kKs=;
        b=V6/5UUc60WKe45ogCuJPDrdoEOZ/IDU2p0E24mL73QuAjjyFCPkPjG4f8IfBU3CF3u
         q/uXJOivtpNUKZL9qqfPjYVt5vGTkgW1XQMr53aLSwYEPuQM9PG8XO2s/gkbFuRnra42
         IeZiXXmhfw5M3ypNsXk/zrUlYfEcDlALIloqSrDKMFMY8keSrP3cHEGv/Qz2TL13DleF
         agc9X+VR4othFtX9yRTCw6Aa8wRqju6mUiksCeT9RSCXR4A5X6Rz27j0bq7aTmFOYr4I
         Z52jD8g8OUP+Ie1zERBZX+AcTqOTOnTZ9pzUZUSflhm8wRnbyHT641AKGe6ziD6FRndN
         LY6A==
X-Forwarded-Encrypted: i=1; AHgh+RqrWO9KQ17vzD2UgKkg3mLBCwuQHazIt4h6Je7VjmS8znA0gxAv8rXOycZ/C5k6UG0O/15AJ2nq4jQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzROH0au2gREthvOgzEga5eTPsfiVYZXZAl8Xve7xE6+hv9jX1g
	E+DoZ9McaQfwHxT8QVR73LEeGxGvdIHTmD7sesmGH03lpgtFNmw6qkFlPzA8D6VNdHPGywHxRCp
	88D5Khg7wb0UQdFKgfMswCzKYjLiiph9qbflJAzc3S0xQ4nWKyMk88ovLZCfecdDTl21T
X-Gm-Gg: AR+sD12omRJOLMHycJrJWpFqd98psOr5SGQZlWnY0G0ubircSkKVT5kFfUKn73z80bx
	Qn5gC929rW+mt7Nl6kkvlD9K50ifOQGEmlYD7drnn3dqGQG4tl8+lmWNC0nBs0uOyeFK4aFp/H/
	4jbcskU5OYd1h52+3lfnh8QiwhWcZQ3x6lwNwPviN+f6RNPDQ85fLGcg4VXxq1tr9Lw60zdYg6y
	yPxOFSx9IEDf0MOp1oXGBSoez1BIsxQ3b6zVbLPc+x5SJPFhw4jkvsE5Tk5oyBNJ2t4iw3Yg2jb
	Z39UvfUvxm7VzdiNj3JwTn2YqpMe9WyU15y1gcIOEQ/XWtJi+9KJ+31JJJIIkrb6Ud7pFxun4pu
	4Sj8cmJT+uH7m+aufyAYxvuTsvW9akjtMN6fQh7lrOyUOStuz8Fo=
X-Received: by 2002:a17:903:390d:b0:2d3:89fb:35fb with SMTP id d9443c01a7336-2d3b04c40a1mr365252215ad.0.1787033774194;
        Mon, 17 Aug 2026 23:16:14 -0700 (PDT)
X-Received: by 2002:a17:903:390d:b0:2d3:89fb:35fb with SMTP id d9443c01a7336-2d3b04c40a1mr365251525ad.0.1787033773782;
        Mon, 17 Aug 2026 23:16:13 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d5bb499d7bsm13719685ad.3.2026.08.17.23.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2026 23:16:13 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Mon, 17 Aug 2026 23:16:05 -0700
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Maili
MIME-Version: 1.0
Message-Id: <20260817-maili-usb-v2-1-97d7317f64b3@oss.qualcomm.com>
References: <20260817-maili-usb-v2-0-97d7317f64b3@oss.qualcomm.com>
In-Reply-To: <20260817-maili-usb-v2-0-97d7317f64b3@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787033771; l=1041;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=Q7irTamYM4FsXhldCMcVyVUhkh1gcklQF6hPAW9V7xg=;
 b=0NuIALMLe1Vk604Sr4T+YtIZ8YOw57yJ+XICdl0Ugcl/jtfBUIzZ6LVfyC/OaiPb62Wqkh09G
 MVSAzVED7QdCxBxy+35J1bDfRRMTjWz5iF7/v/UfsDr9bHK8T/6QPI3
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: Qm34cExeBcg3yQlr99IdoPbTQ8QfEECB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA0NSBTYWx0ZWRfX42WId44Z2rkb
 JF+Oe0ueMq5NcaUcCgTFyYvH/9z4In9S3AGxFBovhNm2XWt95B9BMSpRWIqnnmUcu5jPTI3GDpK
 ElvVqQuAW4Fcr6HOf3j50HQOcKKuxdVGNrerj9wxHdKS14S47kCbLhoSjCD/f0KA5ewhExJpH2c
 dir1fu7ptgrtBpTH897VZfGOLesb8IKZUs3z+Vku417M5YHFLAmx715gJdwS5tdq9qAx0oBkli3
 J45a41Nu1UyXXsjHrwqQDrhToU6laM2HasdsYPoPtV/4r67N3xqrsDptBr2ikWJlKoKU8oN0HeG
 Qy7UgERuQLh7WFaMdnhMeZf7f8EVcVd1/wwwRwWL0KjsW22Dtafre/gw09EX5m3ufpcTvxiqDsY
 iqAewAE/Gnt827WWUJbIuqxuzaY3J4h3zhcjrLLY3+o/UID1wbMkT5gisSCGm24A5toRkG/2pA6
 /zLSv0D55DjgY6/e1wQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA0NSBTYWx0ZWRfX146EM+lTs8Zk
 CZPhqq5JkLRZ4BM3a2ZnnOwvdXyYZXQs+yrkv4DF0GeWw/lfzyG99CD+QeigH41pt1P3YexiYmQ
 U0xo2FO4Vr3q1J2W6FHwb1rKBLsyYFQ=
X-Authority-Analysis: v=2.4 cv=FsU1OWrq c=1 sm=1 tr=0 ts=6a83f8af cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=-YzSTstMqKbG7k7xZsQA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: Qm34cExeBcg3yQlr99IdoPbTQ8QfEECB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-17_04,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 clxscore=1015 malwarescore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608180045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_231616_730960_17F4839C 
X-CRM114-Status: GOOD (  10.61  )
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

From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

Document the M31 eUSB2 PHY for Maili which handles the USB2 path. Use
fallback to indicate the compatibility of the M31 eUSB2 PHY on Maili
with that on the SM8750.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
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

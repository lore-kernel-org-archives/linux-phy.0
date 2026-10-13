Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE9DECC6B03
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 11:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xDsLn4wgUqOwuEv+zrpytRWWPbVJeBXhUmXnZ1S0rbM=; b=LflWrHs0/rdrhF
	mPddhw3M08rnC+O7M71hhbvjqViZQ+N3wO95W+oMvqo9lzrxidD+GVwzN2jIQYtyYfou70MviGaKJ
	/+rzPdufq4m1B8Sa5ewUDa9s8/FpZN9F6rPanBgYtNUpphU2wiBFxvu0z5om3pXNEMShRuVDjRmFQ
	HiPdQWN2jmOKjTw/aSo/KehLdb3KpCH7Nrh/ZS1AVpkQvWugJyLWCyYlROsd9pC6IcVnk+P9E4f3V
	uhDlIKqNTBD9ZSpKqphXdl3GxOh5QBBDLdAn4BsIKICkMYrFdysT6ISnfWtV7FBKKIEEdsUthR82G
	wAa5gQbMJE4KEM1aHvTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGaIO-0000000Cf62-2pFU;
	Tue, 13 Oct 2026 11:03:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGaIL-0000000Cf4s-0k2p
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 11:03:46 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D6Yv2P3208403
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 11:03:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XQyf6jcICM4FKao0weCOIsWtu0ZxaxxkK22IBq2EtCc=; b=KBRxdqZpIOP+jZak
	PJ8j6u8IIEOOrsWJm+/e2XNFUaLMxBVuCs25XQHvqng6em0oNxnzvUS9HRZsqGzF
	r8GwJZzZzVtR687j8Xax/dGGISN2iQXnDcX6l81ISinSgHW/o2ACZlhN3c3BTbFz
	1Xg9nv+KdSq6b0lrcfG+2pfSlvdij1vuJvshhxPuD5AcMCphlwg8bybNquWnHPs4
	7jWOlVUfbxweQ+ObvbNO9B3H0keKqnVqQvV62OflG64Tv9igrmfmo51dkLdxS43f
	I+qjC8ZPN1DOflojiYMKi/7GhFWkt0VVBnaSKO0vh3Wo/+gYSxVbtpbNVpdCsOx9
	2mUm6g==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h9fgjh3wh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 11:03:44 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3a7fa5e0442so4209252a91.0
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 04:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791889424; x=1792494224; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=XQyf6jcICM4FKao0weCOIsWtu0ZxaxxkK22IBq2EtCc=;
        b=VLk4vpQEVien1YvzJJxq4yKa2NNH4cUwlCRmzxf4Hh6N/mkGWOtTGMPnifnib5PLDK
         b36KoZkqok6LqOPFw5CXs4KJgmn0ANCHa6OTQ6K+G1P3UzggBHQBmNI+pG+Vw1ZXwGlk
         AB3QH9YD+ryu+Ohxvr+o3+kSaqD7njCYb+4KdKxylBSojuS3qwIVCP4t44AH2emgNCSK
         hO7K3IzIWScWZpj5S+d3WwObsCSmJSkBZGgzl9ERyefmtEDzFp2jckSbpcfsoFEeoQLM
         3+27jHxJvV/aBomHVl8LH32zsaBYVzA0R6YC4DUznGGfFLQA26LrFocD/SiNPhCAvYyJ
         mTHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791889424; x=1792494224;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XQyf6jcICM4FKao0weCOIsWtu0ZxaxxkK22IBq2EtCc=;
        b=GIW+2ITc+/NUshw/Uk7NR7GR1g5qFEzDZL/ZyI4fTsKofEiXC63aI8SXy145T6tOJI
         UU17GpJZMoSZnC56eoePw3+jEenAjIpinrt3zheUHQsVdbuWQzIUiPR1SHyXHwMAeYPt
         DDYBtrDms9+RYQWsxvZBetLRGMzE+kxYBfzlrq+BR28PAGUQYgQQFWCxrcDP6ZwyVFxT
         82x0bUL2z28q9KDpP601NeKO6RWrZUydqawRMAQcfdZFZc8k4makJwg8HbQM4oAdqS5e
         syIpglFZGzofWo6fOUicAfjobUBHPU+rBpyhLO9sMnABUnp9k8JjqemtQ9g2fOGzAsqz
         6AdQ==
X-Forwarded-Encrypted: i=1; AKwUvByq0zlUg1LkyKNu8uDmp3GqTx75WwTyd7NKu1K9N4ladwYH1pcHMJZW2bpIy86wr06l2J/UGQ9Irq8=@lists.infradead.org
X-Gm-Message-State: AFq9FYIBdM0V0n3ie+lDBMxXGZAfSRz+vI2/OsQbxKFwptBxGcYX2EPH
	Y7/VxsGuN0G6Y2xWUmiz8OZXAo4HBqAiZQqwjOi1es+jeYwz50l5xd477QqT2mJbVGnFGmCAbEm
	4g08OdoygzRNvdRK25RzMwTwQ/BOHvCXll6XlrXGd70jCrgC2InLyMHX16PlbG1GwE1gg
X-Gm-Gg: AYBFou26oWRlkIRSryp6scekN9pocKo6Nllp91iT4RC3CdSVZqClU6FdMugZYOk7mT7
	Bzsch97KPnfk9oEVsbw//rUPPeY55HNMf3GXrifo7nAX/2Hce5nNNlV46y9PMrv8c98A5l1v/WB
	T5mZbaiW84E/tqZrMvQ9yGs+jUaXwDgvU7FiIeUkdaVohzNE54AJTn9J1lTIAakvx+IxmVQcH39
	V9z6l2dmEQAHctKOLvf00H6yaDO9V4B7ko5TD9hDCGUQ155igHoBGWUfu61Vhm5oLif/j4vmxZp
	91zh+bh5Ij6vZBij4lD2+1RBbopmJvmjvDPRKbTYaPTCuoQhdkITghQSd1RhmRunszNT+B24waE
	R8ELDR6VeHzVt7I9XJ5MqYwtIIgJn4JI=
X-Received: by 2002:a17:90b:3d92:b0:3a8:5cab:ff5 with SMTP id 98e67ed59e1d1-3ab3ab1fa22mr11534533a91.43.1791889423683;
        Tue, 13 Oct 2026 04:03:43 -0700 (PDT)
X-Received: by 2002:a17:90b:3d92:b0:3a8:5cab:ff5 with SMTP id 98e67ed59e1d1-3ab3ab1fa22mr11534479a91.43.1791889423107;
        Tue, 13 Oct 2026 04:03:43 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab36f46dfesm20808403a91.8.2026.10.13.04.03.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 04:03:42 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Tue, 13 Oct 2026 16:32:46 +0530
Subject: [PATCH v2 4/8] dt-bindings: media: Add CAMSS device for Maili
MIME-Version: 1.0
Message-Id: <20261013-hawi-maili-camss-v2-4-fc93222da89c@oss.qualcomm.com>
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
In-Reply-To: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791889386; l=1384;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=ZVrZiKjn5eoj1xYotO2X6Aa3N+e6mbg9W7+53FVPuhY=;
 b=yjDWXo1cCMQNtBqrKN0bhNiXuURBQDjxrGWVNAyZ5bK8TfCfdbmbEf6tewJY2xyxX6oeHjCqj
 DSR6hpboLLRByu31a54l8wXXC0SQFO/VAiyVILZR76QxGGEfkG6TRpS
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-GUID: ogPnDVByLfH-QlW2C_VXGIhjtHLKuuKQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDA0MyBTYWx0ZWRfX4V05kegfHp18
 /WNnEA6KTR58sbPfG+fdTsE1PuXaVSpz8ab43K+RAJpMxFnNwuHD9Q2oNpAW6yYVAhTBPHdxPFu
 B9+Om6vXLHfAH/nbIyLKh6qgyCC6ztls5Bz785JdODVWedX8xbHJghk+LwcUo5llSa159nUZHst
 brAI0X9Ynsf1jz3XbzjnqXy06nz3v7wV4lMxlgTlV8J86sUBC3UQP9CKudTgBojtYX23avhUSyX
 3ruetbe3i80ii71Ot0RShKJ/+K0welELwc6xR1w+iXbE+zVjBtYe1XTLNK1MVzjLdodtsAvwrud
 beQ1r3E6dw2qi2e2BcyEMwrtdCwKwIMovtxvQca+aUoCbOV/S58XXtk6fSr8vSjXS9rpefedoP6
 YhSSaVINEov/TvIxjduDNcVCLNuE1ft7UZZo9b3gkqX5VGZZfp6+soeP85BUcNzV+Sr163jUx97
 YGwpnhS0Wp+Zo0njV+g==
X-Proofpoint-ORIG-GUID: ogPnDVByLfH-QlW2C_VXGIhjtHLKuuKQ
X-Authority-Analysis: v=2.4 cv=PedqFShd c=1 sm=1 tr=0 ts=6ace1010 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=lEnWAUz5esA3NO-HxloA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDA0MyBTYWx0ZWRfX/QAwDjYXkCxA
 SfhFy1uwbKRlViGqIl8Kida22xKz/7DtCKboMDKDzJ0bzuCiIZqg7jjcMPfLyuSXYhm1vNT2BP0
 fCJZDHhiZPDORUH19MRA/kULWei+tsk=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 adultscore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610130043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_040345_245551_66B4B279 
X-CRM114-Status: GOOD (  10.70  )
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

Maili shares the same IP as Hawi. The only difference is
Hawi has six CSIPHY while Maili has five.

Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml b/Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml
index 5bf0dca3d24621bfc4a09feb8e5037a925869751..d1d53d6f024cbf7d2a0f2525aa4040260353b200 100644
--- a/Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,hawi-camss.yaml
@@ -4,17 +4,22 @@
 $id: http://devicetree.org/schemas/media/qcom,hawi-camss.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Qualcomm Hawi Camera Subsystem (CAMSS)
+title: Qualcomm Hawi and Maili Camera Subsystem (CAMSS)
 
 maintainers:
   - Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
+  - Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
 
 description:
   The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
 
 properties:
   compatible:
-    const: qcom,hawi-camss
+    oneOf:
+      - const: qcom,hawi-camss
+      - items:
+          - const: qcom,maili-camss
+          - const: qcom,hawi-camss
 
   reg:
     maxItems: 13

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

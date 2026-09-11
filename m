Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36DD9C88E53
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 16:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cjnBWdUe3kJsP6jcjUdV0qk7f8CbQ/BybHLjeZb7Uw4=; b=VW/cTEC7kOTNOD
	QteKNute0fN1zxdKNzs23otx6gDEAtCoxBhYa8r8gXbpziwPOiT8MECofUoQkoyD2DrW02RsyWVAo
	o57sqG5/UTQ/VnxhMLYN33Fz5N9i9Oywm016Hwkz26h46a8VDdZqaOj6vcaNp86/kkzpiE3t4VXjx
	nQgy70NML5mdq3x/gWCTipI7AKRoQejjUe9zBVrfRny6WBgAg9/jmglOVSIyPyq8n7qMhkkYaZMkx
	pYQ556OPNRKsPBmB12DjzUKkOuFuxH7H8fDJk/x6ZzgdD0OunNxOm95i/GkG89HhPYewXaMrFYDE+
	BTvyXmI7dOHKne6TTMqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x54PV-0000000HFpb-3nlR;
	Fri, 11 Sep 2026 16:47:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x54PT-0000000HFp3-2n5C
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 16:47:32 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BEm2mh269405
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 16:47:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uihisGELWKJXs3ghPTChJvWF5WlMaRjqVwCduuDVyXE=; b=UJyok6/lz5rH1yy0
	mHE6FTCwqUrRqNR6Y8heDrqlvVTL6ahujHmMUpR2CW+SgmflvBDrwmhRB0M6SQzp
	+ZkI8MKkdT8WMYmv3g9qlf893zXNSCEruGmsr69KrQWXQZLtFBGpAHLDagDPM5hs
	tWMyExZD3tcYu1Y86VAMk76xHXQlMSMY8JXAlbNqYKJdgli0KqlZADbxd0gqUu9k
	TRTaIDoXMKpP01pI6Ec+g/ebF5BMuAeMaZ6g1bOWZtk+MSGZbhH8No7388K/vcrC
	wg8+7DEj8Oq5lWUSyH21I1mG3TDkXwPaodD2Ii0GiqbvUt/486dZ9vLS8/V9nT3p
	nDZTPg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmbd52tdc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 16:47:31 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ccb6823efcso10994625ad.0
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 09:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789145250; x=1789750050; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uihisGELWKJXs3ghPTChJvWF5WlMaRjqVwCduuDVyXE=;
        b=AMC+6LcfsujVmsmpFrsHJUx089ewl3awkSEekyQn10FJZrQoEBGvtMHzZ8GQSBdA0c
         XhhV/ph8AbfYfltMQgV6FTjhU5lNPox/CkLZvijPtp/HIIlHHio9D4o1rpdaULdqPx/V
         pHXF5NbfJwtuEcFDwnJsDj0qTGG9eukgh5UTmUKGf5SLWulSGdL+TiGgFQ+K2o+hQ7HT
         h9lFGRCG2Lb8qzYKhIntb69R1GBJoTNnFJELzmh/nOjd/qOqSQBzsGGwL0NfuBVS8eFB
         DNCbWjJNQKOil1lFV1EF5JYrAZrL1JiT74ap2D5gPq+b07hFnkVROW3nc9kRRz/DqBrs
         Q6+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789145250; x=1789750050;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uihisGELWKJXs3ghPTChJvWF5WlMaRjqVwCduuDVyXE=;
        b=oSpI63GUsyuFv0gThSCG2R9j80UTUl5Nyf5HUm1wnF4MC5mDdigfhNIQtO2hFfHiSW
         0fKhhPvvfvHw1cYx4hl4jkceP8GaIy4Flt/p7S97Tc+CnlrGeQiLc17EJNq6zDNjC3pI
         JdBRoVPn7E0X9zkfeMC79BFR+LqS0Dxi8SqCL1DCz2eg8o5pQ9ETlctJ28duF4q0a40P
         985IOvkMESneU7xDU9Z7arhyWld6kDEnCYG6/e1HGmAIqW9lwWXvEMHrS3ZmyuXOT2Av
         MOqp/MIu6wmns4eLWVCtZqcE5IDfE/2GGRvx5AHqvMAhZM5W0c6JjzlaCLNx3w+ywfgA
         NNwQ==
X-Forwarded-Encrypted: i=1; AKwUvBwfR9jKFr5LC86td2hX/UMD5weuXkpTlZzfLWYY9tjRcQJTS4tONhknXJL3vIqYQWZbCEfsZgsnwEc=@lists.infradead.org
X-Gm-Message-State: AFuF++kvm4SXeMjfQsg9+Uv73bWeDlZbC47I45Ep1WVBXkOTOUZ5Sl5l
	3lJh5GQDCbVielecwXQrHHS3XWf4/cu7JeTDa2R4Chj+4ooaiEz9WhsnwG9R2SjrUVETknDBNMb
	S9tQu1k9t5PkJYQX4qYUtl0ITKKu/QMF6w4HQ/xyqu51GyYUzQ88r71AltDRGIxbPxtTFL4jjvZ
	M1
X-Gm-Gg: AYBFou2UxpOSos/BFBWi81r9HXOCzw1Yb6EN1VJjKyP+iVCm8oP9MX5bgAt5by6fbMP
	SJOIlNSmeSOnDAFoNxxom6z5TuPFL+kSDtRe1qFpRLEdJ7ZJEJdjvVcgHWVDCS/957cdqntr8Mi
	tftHr/He3BTg3l0F8dUW6VcVPCQVO20CvHhUWoPAn8qiYx3cz5h5VWxh6VZR96eOFfmLLENOhTE
	MKgiMe26dpuLD9U6veolpxEdUnanWY3ow4aqF0grSJndOSvkkdvmc4OoevMhetnvArHVVRsVSke
	NZS/NrNzukwAm45h+m2sGyonYyY91AM2EKohvaRddiqEdaZqNYdOxMCshTvYjsv/eHAuxMAGY68
	Wg8iu/sbz+21gGxb0mu+6/KKRgg==
X-Received: by 2002:a17:90b:518f:b0:38e:97f0:aa4b with SMTP id 98e67ed59e1d1-39d9c1bef27mr9067202a91.13.1789145250478;
        Fri, 11 Sep 2026 09:47:30 -0700 (PDT)
X-Received: by 2002:a17:90b:518f:b0:38e:97f0:aa4b with SMTP id 98e67ed59e1d1-39d9c1bef27mr9067137a91.13.1789145249963;
        Fri, 11 Sep 2026 09:47:29 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39da64d4bdfsm944193a91.0.2026.09.11.09.47.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 09:47:29 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 22:17:05 +0530
Subject: [PATCH 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document
 Glymur QMP UFS PHY
MIME-Version: 1.0
Message-Id: <20260911-glymur_ufs_qcb_enablement-v1-1-b9fc5e2ee99a@oss.qualcomm.com>
References: <20260911-glymur_ufs_qcb_enablement-v1-0-b9fc5e2ee99a@oss.qualcomm.com>
In-Reply-To: <20260911-glymur_ufs_qcb_enablement-v1-0-b9fc5e2ee99a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789145236; l=1139;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=cGF4M7H2BWDSkfXAPdpNOY2HONhPgqyoW2d8CtFkC8M=;
 b=ScVpIgOtIpyh+zz/FM85IaQRzpO1CYWvF3zezlK70MQ69qTI3KN7mM03N0ll8YBeXAIO3HOSF
 RmtA9jO4UcZANvQVPYSanKloQKp30VzV5xrSHH+j7kz03E9iCbd84gg
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Proofpoint-GUID: MAwO60FqDQfz9iR83xg5B95iXuCkvnZ-
X-Proofpoint-ORIG-GUID: MAwO60FqDQfz9iR83xg5B95iXuCkvnZ-
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIzNCBTYWx0ZWRfX2bqFXYOjkGq2
 ODz1Uzh1RiWizrTnx+Y9ezYEF5o7Bch1Zv0IlXlk+goC+Knhm+zDG3c+MScX/pqWacYdgVc2TW7
 qL7kQlYeqvmR5mzuFwh3NR9CJBUP2FI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIzNCBTYWx0ZWRfX0rWaUz7tPyRz
 wRJ7ertQMot41fE1jTZPvCMqYQwq+OtYASzLMUioRmdB8L0QJJmxcanQ9H68cTM+aI/95Q24c0q
 eyUJX7qKgKkd+nmFV/MNqwt3eIoxXSBulnJaHjc4oN/cPD7uSNhFej9ZClCFUTKS1HbLwKGoXR7
 816OiHagV7Pbj4d83u/hfNkOrmmviLm69fSY8e7FoGmu7JJFode8zS68ZZCk+Ixm7Vg6elNURbT
 wtP7GD/dPe+tOQH8TqFb10NBPMDUaHF7l4LmzqtAR622MQYz4wIjHLdghvlr6is1YMTkHQeGj68
 e2OGvikjzuTVSimCfdb83ps0V2hpboXXHxoosUmhH6yyU81mVVOOVjfGak6iQk3iIF/9FJr8f7e
 Yl9gVjoDQHDgYvnYxbhd478JTkJpQFoMXKPTv4cVE+3+FRLROAKM9P7n9i5I9Fw5kW28bqDLCSo
 J460lqQ24gRKMOxV16g==
X-Authority-Analysis: v=2.4 cv=db0VTnXe c=1 sm=1 tr=0 ts=6aa430a3 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=BahsdhlD1VgbZ89a8f0A:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 spamscore=0 impostorscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110234
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_094731_716802_83B5FBED 
X-CRM114-Status: GOOD (  10.08  )
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

Document the QMP UFS PHY on Glymur SoC.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 4efe40c0dc97..e1b19ed42542 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -38,6 +38,7 @@ properties:
               - qcom,kaanapali-qmp-ufs-phy
           - const: qcom,sm8750-qmp-ufs-phy
       - enum:
+          - qcom,glymur-qmp-ufs-phy
           - qcom,hawi-qmp-ufs-phy
           - qcom,milos-qmp-ufs-phy
           - qcom,msm8996-qmp-ufs-phy
@@ -109,6 +110,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-ufs-phy
               - qcom,hawi-qmp-ufs-phy
               - qcom,milos-qmp-ufs-phy
               - qcom,msm8998-qmp-ufs-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

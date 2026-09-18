Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E435C982D9
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 10:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cjnBWdUe3kJsP6jcjUdV0qk7f8CbQ/BybHLjeZb7Uw4=; b=izO+2nMdkInTiN
	xwytuAYj4cNUaXLzWqHJbyMBdBOzCehMkXt8T1tAr47PkFyVKTYitpDaZcHwLpMpxe8OcKwKquXve
	ODr60VrIYxYpAWUiy+PquHj/aE+ryZVOLNzsBF4jEk0aHI6pQvhYuSslY5cxAYx+V+K0HoGD/2TWx
	53Fl0B9Xn0hd7i1k3mQhQBuwVutaQDzi7MWCy89j2UBb1B7ofzwFr2vWNSgCEZdEcVi1AFqPG+3Aa
	io9dhMbgFFT3xZC3DOTM+fymBuqcIz1XefcuQkuBjiEE0o62e6Y9fE0IkBfjlJMCFjkaNPv1S15et
	kYv1PwXO5C6xVjjVLwdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7W0V-0000000E72l-0uQy;
	Fri, 18 Sep 2026 10:39:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7W0T-0000000E71u-1feH
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 10:39:50 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68I9dO2r250720
	for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 10:39:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uihisGELWKJXs3ghPTChJvWF5WlMaRjqVwCduuDVyXE=; b=H4JektdXU7n8uCkQ
	yfPKXqFLy2+aFUSqnCYq48cDfUffZIeqchY87OzqOl4MmpKKidu5KJLq99kUfAQu
	K07rHA3aqYC90CPW4gAkh9ak9BVmucrncoX9HNMJ7DjaHFBYhEnQmRC2SfaTsJXh
	NXzznxTwQiNb40UneBtv5ZLTF/BerqJs+LN11CTMX17fmj7fLV1oflBsayRcFFAW
	3UDk8Jc1I14tBtI5lOlQXBJWfMYoM4NvGtJRquF36icmnDB0XXoDpMTy7tmqcXDY
	30NiAoMPEwZgMoDJ7SEhwEsVdfNdLIW7TX2MENAPiSIqwZaCa6asT9X1Z7bRVtzR
	EavLqQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gs2390es3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 10:39:48 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2dc7337e2a7so9095205ad.0
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 03:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789727986; x=1790332786; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uihisGELWKJXs3ghPTChJvWF5WlMaRjqVwCduuDVyXE=;
        b=OIgjAMguQZ2hoEeSdcZ/MGQ0SSOcW5M5l3pvSifFyRNMyCWMaKOpq0a8CHei4yWkN1
         O8+ndGsLO19tVgS8Ys2EtZvGhXaBROE3pvjgXWTtqCW9fCv2Hh0w6ulSTHv5Ue6j6l5P
         LBjZsd+B7068/AGvy7RV/7+H4SjG9ZZ3kqfd3kO2TlrQ0mlEM7rc3fE+41JgyDJ50sKv
         GVFZTQuf/XPawb7Y7PJOTZL56gOQ9kEbHpYRDp9WcEmg+WR/Qg9l1JQLNB+TPhqTEz5t
         JPOgqzDtsFxYnD5XL5q6c5VTg9j7kMUtX3JH6YP6wsNLifmbGM1QELigTec1nrgUm4+G
         mCcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789727986; x=1790332786;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uihisGELWKJXs3ghPTChJvWF5WlMaRjqVwCduuDVyXE=;
        b=pMi9sMU3Y5SdW+6KvR2rOlwQPsVyxOkhy1gFknAmDCHByfNLyM5xNMOL+oL6CNlh+O
         uCFdenNmHEVwadvoc9DCt5D+n+a81PeRZ0EgSQbat82QpwSaGJd177kiiyGE/QqlNbs7
         TFVlyV4VnFNbhbuCpFYVnCNhY4F6SUKx9Gz6c92pQM2omkqS6mdMU5e9h7Bl4SZU6IzP
         LwrvDtm2rYBHbfej5AeDS/DvMXd2yNAAZpmt/uMT3jSe3YchyS1PakpeRMpHu1+eiRIX
         Fq1STdzIGJMi3PcqcMCS5GTusgp/ezorkVlaLa71kicDoz5O7vBfEf1jzuLbtvjIliIN
         z+5A==
X-Forwarded-Encrypted: i=1; AKwUvByuHy0i39OzL/PbJBqoQlh3l5YU0ddX8bvXkSGO35qTH4hnOCn5jAL6qeQbkj1w+apl9FWrrOmoerc=@lists.infradead.org
X-Gm-Message-State: AFuF++ntArvnsmO/Da05HNQD3sG2dKy+M0aG2KMIXc5lIk6DHx+tNVx7
	3Qfc9wfiQrrePGyR4W/49wUfMj4BViiLUQ9OuhyTHFZdDuhBzSnCBcBRbsUL/dk9UIjXIf6Yrzl
	MIpVsUPDHssTqEZN3KVYnk6i1GcXhTHOWmlwgLNXljIuCHIDQWl77i5TMCSJxM6hfJp9G
X-Gm-Gg: AYBFou2ChB2orSXBLOaOGc6timUThafbER1RD5x9BUynuZXoKnILmSxrlIJdxhd85rW
	3p7FGsAVjNvvL2cixDEVTqObwKiQzdVHq3IdKPyjiknW2fGm1vqw0GZ4Sb6a4Lxmb3YMs3ySffY
	zM2chvrzQntfWOZkKaWU2nYWga7YLY3D8Ljuc5okvAH9N0KOpXEoFtxXVu+NhO0nU9dyKde0u+a
	zcmUEk9aki6tiF9IXmh3hHbeHGBVgmGSiXdCB4YaAfErARmfYeveJ1YEVwPuJdZ5TM6Cz54pmps
	wKAFIgDfbYiQGMFI9cLQCSFoRWYAlOSaIxUwz47eHPJj5stA209nmR7Qdn5Gporn4gPGwvscEg3
	TL16opuYUTCLv94IoiquzHv31+Q==
X-Received: by 2002:a17:903:2ec3:b0:2cf:9347:f445 with SMTP id d9443c01a7336-2ddb1adf192mr49207545ad.10.1789727986132;
        Fri, 18 Sep 2026 03:39:46 -0700 (PDT)
X-Received: by 2002:a17:903:2ec3:b0:2cf:9347:f445 with SMTP id d9443c01a7336-2ddb1adf192mr49206925ad.10.1789727985688;
        Fri, 18 Sep 2026 03:39:45 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33c286d98e7sm4020702eec.9.2026.09.18.03.39.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2026 03:39:45 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Fri, 18 Sep 2026 16:09:07 +0530
Subject: [PATCH v2 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy:
 Document Glymur QMP UFS PHY
MIME-Version: 1.0
Message-Id: <20260918-glymur_ufs_qcb_enablement-v2-1-16619f7e36a6@oss.qualcomm.com>
References: <20260918-glymur_ufs_qcb_enablement-v2-0-16619f7e36a6@oss.qualcomm.com>
In-Reply-To: <20260918-glymur_ufs_qcb_enablement-v2-0-16619f7e36a6@oss.qualcomm.com>
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
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789727970; l=1139;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=cGF4M7H2BWDSkfXAPdpNOY2HONhPgqyoW2d8CtFkC8M=;
 b=XzF0ig8/4xrWYyFA3Oq5tym/qWpafBD2LB5j9S4Py9tkdaCW4+PyCdSCMH10Q18nc1dRGX3ma
 dR8Y2ZUi7BaACkcHS/z0R8Wqi987zFC9aNVjuj6osBsOUctZec/o2Zk
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE4MDE0OSBTYWx0ZWRfX90oNeUU1ydTd
 qAHDC/m1RgF9Y7XfaAtvneXewSuMqYbZfzEt+CLdhJy9tSayqxFfDt5LccMqBanSx9pz75WXvdE
 aprdLRNcw+PIKXtimpGonVGpCc/3cpQ=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE4MDE0OSBTYWx0ZWRfX1hfR+LU/+thg
 hg1NB80FMtt8hLK7TPQvKYH+YFP9UPb7d5Fu3GCKkGN6dEpGNxKR3SUed242lL/3TBik/0pU9gb
 uUdmxj2vusmtDbfgkBD4MgCLfeINyi5xmUkl9kcaSLBf5sz6eWqlq9xunnaUT08/AcKWa0Mx/aW
 ZUG+RnhUoSLZo/glqMg59SpGZEaFCIeC85e/8qVOQq4TbTGXxAvHR6uPEbyNEdp3P9Baf37qNL5
 lpjFXF+whasLvj3tKJ3F/Wl5isQ+yA4RS5aAfoxFH/fUBZOgraULMgyocqCmfvlC68YAGROkwM7
 A6jxHx6cvMgh0bZScUSlNki+gGh2vpyDJszRsmoYpSU6qNxR6TKrDejECEZV/g0Y2JT2UtZSyIL
 4W0oKBxH2jHTbUVC4ST4bzITHbJ1eyuvGjbPxgn1yLfLdPv09gFfXVwJqBDNckafgldoogoMPsu
 ++m/jw4xQO60AjlxekA==
X-Proofpoint-ORIG-GUID: MoriogvpIFzPfGKWVRuyyg6_cxP6x8TD
X-Authority-Analysis: v=2.4 cv=I7zw19gg c=1 sm=1 tr=0 ts=6aad14f4 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=BahsdhlD1VgbZ89a8f0A:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: MoriogvpIFzPfGKWVRuyyg6_cxP6x8TD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-18_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609180149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_033949_557421_99791BB6 
X-CRM114-Status: GOOD (  10.05  )
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

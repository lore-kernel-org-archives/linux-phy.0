Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AF24E8FDB1
	for <linux-phy@archiver.kernel.org>; Mon, 29 Dec 2025 06:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZpr3o7xZ6wDbOsp27ESngvQIyplJjAy5WVIGyUzrQA=; b=F31k+uRWoSlnfy
	D+0XHTEwMbakThyHjAdeC+4/f1Kf71FNoWkyFpn1wmt+i3l4SP8kGJFwv2yYDSg2d4DQwUTxNyRKh
	BxJFnayM2qHPY+7JRt8hojXT5sEJ+BSLXcVKsbd4LSWrfGlpX4Ag2pnqqhpU0xlfcwchVR1eQGuMH
	JbCOpfojFIQwDSzGum+sCPz/WSShEsAzv7sq3rpkr2602dxedDoNor2jI7F+nG6TlUpZ/lLIGsuch
	Pl7tjx+BK3WuZN8YsnvL3JjtCnYcgy/Z8dpUrAx7BOt89VRJSZQA/PxAiGlQtQHw8GAYX88bumMKF
	4ODnoVNlLN2s9dqpRBrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va6Pe-00000003N12-3KtT;
	Mon, 29 Dec 2025 06:07:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va6Pc-00000003N0E-3JL0
	for linux-phy@lists.infradead.org;
	Mon, 29 Dec 2025 06:07:26 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSNrAYb4190465
	for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 06:07:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=I3hUvNAPWtt
	5FBty8NnxL5IbWwIfHhW09CY6p/HgKJk=; b=A4cjvcQZBitn+/t9xbrmC7ZYUgx
	z4geC2PKRUVjOZQHFpOQp7HlpdO4ItilGXqvllUjejD63fg988IgRdZVpuIVDfuh
	Q8qx3CnK/UNfoKaNQDthpVNGtH+9O5htLQARAEWFNUh7W+Q3bw0GLmU66JQQ5iz+
	JhDGwhKrKGA1FEov8brccoNJS43FsFnpfgDkFVWqdz5dCF1dfteXCR1e4r6DCziJ
	kIdulOJh2QNAE4T9/9frKY62ItV9ichSECAW09VPrhSI789g2Q3jWH/rce3NNpBJ
	OqWVpoUggsSSIgoPqx4qR5irdspaPOzssRA1gRdpF7SLjwOd/hLdEkoVQZw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba7hsbh7h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 06:07:23 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7bad1cef9bcso18360500b3a.1
        for <linux-phy@lists.infradead.org>; Sun, 28 Dec 2025 22:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766988443; x=1767593243; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I3hUvNAPWtt5FBty8NnxL5IbWwIfHhW09CY6p/HgKJk=;
        b=X2wS3rSwxv9H9m6PdUQQJugdcH9c48Ng2TuddWRi5ntKsloXsXoD4cmth7nj1Z/wvQ
         2JUQsEDhRsqESKbwBTdMw89oQH11ZdlXRb7LCVYyfjdPbqmPqsT1M/i/qzh20n0Y5Wlu
         kH0K5g9IAb5WEfJCmg6fY9wKxFAYJo24zOxp+0kc5RfRRa0N7VcJKyBn5413hR2BxXTB
         Pj2V9VRfLYWnhB92wGWP5ZTXmzCIhGQ3CWYrSsKtmybdgQKez0gM2JId/n43DbgjIJk/
         +zE/6HJyiBG2l8pt2GIvWn+167lX9g5O04QkH2JWisc3WZVGw2Tdvaf29EyLSi3lDuST
         c4iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766988443; x=1767593243;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=I3hUvNAPWtt5FBty8NnxL5IbWwIfHhW09CY6p/HgKJk=;
        b=UXbeXbkUA00AWrxp2cIFMhkVJ6hw8FDpOQJ/nEontMl8ZzwrPveuaQCEHkBkconvkm
         sfr9G4PQeAxgafhbXWcbw7bD7cVJjJ8mwCENv5N3xN67HCxz+HuGjyx/dVZf42OXKUcz
         14x5yTt/FvMpSzZVlzAfESEsvH1rD9dWRjm5+EwFKm/Le8GePn/qHz+q3ho5pzs+yTRG
         Xwja3MttSf3ZUm3Gn/2p19QvRv69EdGi3G7hOF2/3YAFwjZMxSpO6i9OfvCz+d0ZY7So
         sOyJddmwv26QzHi0UDMewUAECaybiej2glW4H33KJ6AuTyjXpe1mBb4A8QMSgSei5Ydm
         gWEg==
X-Forwarded-Encrypted: i=1; AJvYcCX077NAbSeElfNjTom4bYX0LEi+6URuD9PnmyvAA+9o3Hewh7N+CKbHJwFCcUO94cHRyYN8nfiDiho=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6DZs13vacbLfLgqJOxxbvztUT+pO3F69R9/j4ErXGbJjr8X+x
	uopTeiNlx7gqbBudh+g+tpQ4LEwOuTdaHgmNAUW7o6nAFVcdWNeNpxzaoXj537yqULw0mKF+tgv
	lqxsoGWbkNR0yzYYwdHXmr7dPPwkF3mer7HdPizS8+hQ7FEEC9BoYCObe4o/RUp9i/B3O
X-Gm-Gg: AY/fxX7eaH5Hd4f7sBM+SsrXloU7MuEGyWO/kfhRflVWE4jRH/2uYUbcWMuiSpwgNR1
	AOctii2BWihu+kSukOCfkMn2U9of3H6HSBz+J7l+n/PpW6FnOImPKf+xDw8Md/z/rBGUHMvPtnO
	zNG23NY3HOfT/DQD+I/FGzkoJKFugoPijfzlJRi8YpVw+FYuhUp0art3BTIsa/Ju0LD/2rb1Ld8
	e93grqScIiBVcXvO44eSj96/hsghwIX944m12U/zw5I7xgsgsD4VqmAC3nYJeJ7zBIEeddqNnCD
	wCCKSd6aLDLAG7KBPnF7takjHR35vJt0jd9R9VMxEmKJbaQe58j6t6Ug/xouQldnJJTCJm5A53U
	8YrJLpko15PKp/Us3tqJpw3OexzdKZtlQCswsbEi6vi9j53atmTpl
X-Received: by 2002:a05:6a00:2998:b0:792:5db2:73ac with SMTP id d2e1a72fcca58-7ff64403c13mr27755387b3a.7.1766988442970;
        Sun, 28 Dec 2025 22:07:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGQjcE18QB3OL4WoMWr8IotpQbW43BKwdAOmr61bEQpyHhcwjCgEyzZ0+Kzga7KsoF96MAkwA==
X-Received: by 2002:a05:6a00:2998:b0:792:5db2:73ac with SMTP id d2e1a72fcca58-7ff64403c13mr27755367b3a.7.1766988442531;
        Sun, 28 Dec 2025 22:07:22 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e8947a1sm27917763b3a.67.2025.12.28.22.07.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 22:07:21 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V1 2/4] scsi: ufs: qcom: dt-bindings: Add UFSHC compatible for Hamoa
Date: Mon, 29 Dec 2025 11:36:40 +0530
Message-Id: <20251229060642.2807165-3-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: AcLgQxCkp2yZNzCBwICAo9cixAcLj6GG
X-Authority-Analysis: v=2.4 cv=O4o0fR9W c=1 sm=1 tr=0 ts=69521a9b cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VesTawrJlPzqt9UML1YA:9 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: AcLgQxCkp2yZNzCBwICAo9cixAcLj6GG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDA1MyBTYWx0ZWRfX88eb4WhEq6Wc
 RvRI7el9ux+PAijuYkRsMt4AhymCQDQhiT/ZSU4RwJZeB/TrSdOtWnWEvo+bn302YS/LfZNUOzg
 BR+e6LxhRQDqR75dCbsHslBT7F9sI8uoQfATzZC9UrETLCKpFTpHf4hxzP2ngPfBkmbNtgTmO0a
 vpPGQcOJRvwv8L3lgv61wRlcBh3Se7yPBgY3oVF6rFvgfPBPsTR3LOoERRiFlKiHWpiNEPd0o37
 dCvzw9uNpCaL6i3y3a4fkX8W051BXeSzJkCeGeSWFxepCWuuJmUgQ5dn8PyoS1k8ngzDrIAb46G
 dL5FgFWuxO+mdMNunDhAZZy16n9ZJj/yTUxiLx/vVm90w6HR6m3BYYgJqT7b8gAsagQPnBh6zQo
 tDn+DulR1wnz8CNCsUpZbv2oFJuZ6wDLZBvr28bQ2pVYThNAi0kfmQg8V1D35P8XIilXOajEMWR
 cXE6gtr2uhU8tbsGjSA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_01,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 clxscore=1011 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512290053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251228_220724_946899_7E7D7E39 
X-CRM114-Status: GOOD (  10.95  )
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

Document the UFSHC compatible for Qualcomm Hamoa SoC. Use fallback
to indicate the compatibility of UFSHC on Hamoa with that on the
SM8550.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 .../devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml          | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
index d94ef4e6b85a..3b5a95db7831 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
@@ -31,7 +31,11 @@ select:
 
 properties:
   compatible:
-    items:
+    oneOf:
+      - items:
+          - enum:
+              - qcom,hamoa-ufshc
+          - const: qcom,sm8550-ufshc
       - enum:
           - qcom,msm8998-ufshc
           - qcom,qcs8300-ufshc
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

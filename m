Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E38E6D5C0D7
	for <linux-phy@archiver.kernel.org>; Tue, 16 Dec 2025 08:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDqA0/dpAxvVUNzeRCbJCfZUbqwBvoBp4JhPRnU8cJQ=; b=e/DKiqISUON7rt
	VmwA+qew6VxJUBPbKtnk01KONFfEPV1UjmvTw2JojVvIrJ+BwLt6sEH485Wi5Sdufx0XXmmfO2/s4
	biYWxjJqbPUMyFf4lGu6V5d+zQ3YSO7QqrMrjdFMfXjTAF8sSWX/6AGi7QJbQYKLMsPzVCxN/KxT4
	XbmMyFfclsxbLH5M62kfgt8qQX27U1u0/kc4N3LX3csYoZMuKyajhp1b8HnUhhkuh8bScUzwz+EHy
	vB2brwg0BnPIcRYaR5HGtiw1z+ZYgJbOhg1XerIbXjWt8NAmVcQ9/YBiaDl3PY/Ni4cW0zPluNqro
	FZewIybe8RkiRjllmLGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVQN4-00000004v3E-2fus;
	Tue, 16 Dec 2025 08:25:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVQN1-00000004v2J-2cIJ
	for linux-phy@lists.infradead.org;
	Tue, 16 Dec 2025 08:25:24 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BG85CiR2869694
	for <linux-phy@lists.infradead.org>; Tue, 16 Dec 2025 08:25:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6CVQdUgJy5sTgBeGktrNp+HJ5eUli62AzcAe/eYRZ2E=; b=oqmsY5VmLK+HUxqw
	hEq0AksSdNS1TFpWgjBNT+n8yu4b0otYoUXz33tk1F8hrjBtLxnLXvpxpZX4ShWT
	8CjKABlaM0k+bpmB5IXLs3Xp9COfHV+VWE0kD+yyf717QlqQuGG1xsoJXnwujZRu
	334WUmvJUw+TYJtczDVMoyfPWVnvoSVSXn3M4HiCRtwX4ZuV/7sgtj4cd5QNw4Kb
	XTXig6lJoNR6JoWBONhiXdhBJ3w8RKbB1DS6FuCuU8cpKTcuRL2q/+IOvk/q9hXe
	EdBKbIxjkCiNzezVZABFEwl8gr4LGAU0BlpcKtiMTyly7RsDmE1ZMQBnL7tw77fk
	KV7GEw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b33kw82sc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 16 Dec 2025 08:25:22 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed79dd4a47so98949871cf.3
        for <linux-phy@lists.infradead.org>; Tue, 16 Dec 2025 00:25:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765873522; x=1766478322; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6CVQdUgJy5sTgBeGktrNp+HJ5eUli62AzcAe/eYRZ2E=;
        b=HyRcxdvLmIJqqPHS9rBs1q5Gw2ajF4kt1iG/LamCOcEBzbgf72d+3R/QCOvjeCzcgq
         VUch/8KQE2QXhmIxLfzbFSMwtcxn9mRDDiPy4md5xOf096w3RkjkhtgMSF7WcryAhVTb
         L79wueUfNWEyASIJavSbfrUQrLyXFl/jjtqBZk9MeGohkYcDHyUP4yF5yBFKooVDuWzN
         lzAWPcZes017TokxbmEMiYYrKvO49/l49nwd1o+GXhyuyhSYDRWGkLTQqE4KL4PUPERs
         fXPl3xbOaJeXqylVXovOnpO66ymmBr4E1O9AeGwYjiYZ3p3r2JjEv65C/XxejRehUhP7
         B6+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765873522; x=1766478322;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6CVQdUgJy5sTgBeGktrNp+HJ5eUli62AzcAe/eYRZ2E=;
        b=CMkYbqDuwUHID3OJtIZCWY1yFfTQTdQajbN3Qy29EE0stBAMmrJD9Kkq2Yd7sNGDq4
         LZBK8NuqI35115fIbXybkpqRMxX9iZVFONadiQSxhpasiKroYLWNwH1sJXmUEvW+lRnf
         FujFJKHwLad2msLO6sWfhveiVU0QRq0wWhP96YIMyeL2mK2gdowLIarqpaz2BDXBFpEk
         PZbN1zBSn2kpulPO4k76xadWEUe+brl0Z1o3z7VQ8jLkGhWg1XtiwQkktytWixns6uEs
         p6tFAFVaghMdibvhoN8JFEiMXOgciwhc7YCk36pYMWmXlUb4emgZQFgiEnxpE7q1BsBc
         aGCQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5SeCyw0UHXzjZyFTtGv0ZlX9Lbv5Bz3LXU7hNgf/OlUnLB/TjxK+LaJaKTjU0scXnz3LykZSmyag=@lists.infradead.org
X-Gm-Message-State: AOJu0YwY7nipoGDWEbYzL91g6okPxuZNhdw0wMN5mAaUzEcD9MFkUk9x
	PXDVehFA3qFbD+fhXxlupHOqz/B8QKOBG1UqcAvck5c7yjqJpxbv0Hm1CpAVle2l4/nmnTbtA5J
	YbaHp/zE6HAowZDSIyyfw3eEsXt1yyleq28ThcO7sQg7Qxr10vyb65duP8D/3Zbe+igS/AI2zq6
	CP
X-Gm-Gg: AY/fxX4nxFINtk0tdspIt5GR6yLmRa83U9OtONC77jux1I+UkKZJRd7kfqhJzPZW46f
	KXITXC569qixUNM7448dNj4Y/ciauVft0fxXSQXWL0+QTygVkzv5nJDtD7KE8tV75QWtjDHAASV
	Qn8zCdo/sg1ZyqhIrLYDzLuka17VI1DHFy0B+IkZ6Msj/hQ2aqIxxcYUQTtr8KxBaMFJ2eeO7XM
	0jA35DqnivH6WNl+1BUfaa/itLLZCH8TeUun44vR3Fww14OGyNt20QsyNas9ZMIHEu4xJR/EF/X
	qnatAsSAr+lrmVfKM8HT/XqOggMQgia8oGAakvttuzxJJPx3gi4IhgHq2gM6cBgg/6KPZz12UC/
	gwrjO0qxNANYgME0=
X-Received: by 2002:a05:622a:5905:b0:4f1:83e3:bbc7 with SMTP id d75a77b69052e-4f1d04f96b9mr203911331cf.27.1765873521883;
        Tue, 16 Dec 2025 00:25:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEPOTJbHCWpoIZztaNlWGsgzKDsGqAoZbgMYz1zxuCVqM/vU/W/aX3Bwm8sIrNbVq9Eo/2Lxw==
X-Received: by 2002:a05:622a:5905:b0:4f1:83e3:bbc7 with SMTP id d75a77b69052e-4f1d04f96b9mr203911041cf.27.1765873521358;
        Tue, 16 Dec 2025 00:25:21 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6498210fceasm15134381a12.24.2025.12.16.00.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 00:25:20 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 10:25:04 +0200
Subject: [PATCH v2 1/2] dt-bindings: phy: sc8280xp-qmp-pcie: Document
 Glymur PCIe Gen4 2-lanes PHY
MIME-Version: 1.0
Message-Id: <20251216-phy-qcom-pcie-add-glymur-v2-1-566a75672599@oss.qualcomm.com>
References: <20251216-phy-qcom-pcie-add-glymur-v2-0-566a75672599@oss.qualcomm.com>
In-Reply-To: <20251216-phy-qcom-pcie-add-glymur-v2-0-566a75672599@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Wenbin Yao <wenbin.yao@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1536;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=8ctGmRsvxnprJICb6Z7+wGAlCXuoQjcYUPvRRkbBi4Y=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpQRdrV4K+ZKLOo9QEOLsk9HQSrQXPEvYTcBmzx
 rhqrtPFvqiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUEXawAKCRAbX0TJAJUV
 VtDLD/wKyzycQ7gcw2hxaq9M3HyI/7CvpaY94F5F+i1BzAlYumKwvTcmQjOhZT8uKWKP9qcAWFS
 wF3x63xK+EKbG8PDdKdkHCbn/WLkLAMNSoH1l7ld6SQwBPO3qxCz342JOjNmVRQZK4FVEoLu5bs
 jui75ECySPHb/I7LUMCufpLgw+SSAoBrkzzOx3y2vBMUL9Bd+muxTnA1iRMciQGEQ3wpvDkVzbo
 RcpXtwLRGZqDAE/PZO8Tpskh56m9F0ir4XRZXYEFQDgv7kfz9MXazpdJH/fXd97BG3UBG223dEw
 wTaHw412vZMaJ9nFLYohVSUUoxeYr/amJcpH9VfRW95Y5eSEhGTv8YyRlBV1y3EQSkklkp9VIpP
 9mHcoJ7OTsKpUKcINbnlX0j46VWc+MxjJ7C3t3HAT2MWGFbYQGlrxeP79wj5YtxF7I1jhI+Yz26
 g50+FaQXjo5uII65x8qVDVjCifGyv1EsE92LL1+lzlOLvZUvCIAvicmu+pl+jzpoNqIxSkJcujx
 fnnJV2x4UVauTm5X1hmCa3UKAjEkuyZaYIsNk0B4I6OAnKY+0gpPkiqkFs7jQZqiCfMbr1oUTpk
 6dV+wStmxXbvwJ5qhAsOdFJMGAQDtb7dcgM2MnDAGFNT3w+jmdat0qIMtODyIrtZvnIs7PoGgr+
 xHRRdBhOdIbphUQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=TLpIilla c=1 sm=1 tr=0 ts=69411772 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=CzDMsQTYOGAzJB-GoUQA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 3OHqIuy2G_hyXp0xQmmPOjyXQNha_r1d
X-Proofpoint-ORIG-GUID: 3OHqIuy2G_hyXp0xQmmPOjyXQNha_r1d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDA2OSBTYWx0ZWRfX+0wxJWFM6msR
 Thm55rYNQtTZV0wphDIKqM/DONdsCgxg24SBJnP5GEfESS7nkiq6tvwtOHvL53pTHBr5ijpnsl3
 YskkyP5WxqJ0AL1vxrBlaaT1gmI2EAkrK1SqdgZ0IVKlt0ZAExoQ98fy4BlDUcy3qmBXINMGYlz
 PwfxLrd6t7lNIYyiZNCCrVXHxcP49wz0NhvsuBSYM8KNmnOToRHgZ8SvV2P6txtJbb1NygjDguH
 xUKOuSI3kBFhHt1djePOvc2ACW7lSYsG9BYYcy28CGwj3rJuO64YkacfgOQCCCmLjuLRwQrwmGr
 dfzR7QiW54sMqeJ939on9a/8/MozMYV+x4+m9XgWZVmyivxzvC7rPujjrOTTX+MBEzcHHlrHear
 Ft89/6PVyNUqYveP1AngDOWDZxulTQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_01,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 clxscore=1015 adultscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251216_002523_783345_B634AA4C 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
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

From: Abel Vesa <abel.vesa@linaro.org>

The fourth and sixth PCIe instances on Glymur are both Gen4 2-lane PHY.
So document the compatible.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 48bd11410e8c..e23480a13016 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-gen4x2-pcie-phy
       - qcom,glymur-qmp-gen5x4-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
@@ -179,6 +180,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
@@ -215,6 +217,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7814D41C18
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 10:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNtemXUqkrUsZaVdQ+wWxaTT9MfRLyVuqaDZFQ3fD70=; b=LSaFqMLruLhRUI
	VpRyJ/lYM75/YKRQslIdswYgi3UGPAByONZtkG2BxB6lqOdvRW0WfPj73HFl2NN4DbODkAr6IGazg
	jkE1236Fxyr2vPBLqS54UY/Xsl/nIxDLEigqm187EMgW4Efk+ECj+OPfQibHbJOX480IxxCGbkXCO
	SfdtVWEOEjX/dtvSUmp4Fi/mMtVfuGHhZr2LfTLK/2DwNSIx0UEHsGDCBtZ5nfq1XuB0AHJVhtADf
	CwmC5+kIkc5g3dwcuQtHD1BH5csSsYCGOKYNQxtJ1uJ0RMAAKq6fPtqXgXb452dehknnKsKrKcVKA
	eIYdmABXZzNaYucOKU2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTdjt-0000000GTdO-12wh;
	Thu, 11 Dec 2025 10:17:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTdjr-0000000GTcT-16vG
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 10:17:36 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BB9ZTN81241007
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 10:17:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S1DTJQec/NgKiKVFzzWxTq2KpPf2b+8dzldrl/QCfts=; b=S7m+D05oGNQDN/Iz
	6y1lcDOBlCdxl481l6Mp3vYZ+7iPA7y/Q6jFuGCK/9C0HBxq1rpEjV1nd1Qj/6+E
	h617tBNBlObqcS5JTRCeCZYau62RptnkV19i1KFC3j/BFm/bFOTMGR9aEdiAZwhJ
	WVmgrWkUtUGkdkzyRP/tr2dJywUFTOVNCk8gEzC4Yh7vJ/x3rF4xthXsw7/vwYws
	Hl7jeLGGAKwZ33Xe2nZyOhm3X6rUynRMgejnl5wEBRr+Sw86Ua9xcIPzzomsYRaO
	VzjUSrAXnT8jii4uOxoF4QgVTKQFYv2UrO02gK698qg9FdBnNeo+NpCPm7g+jgX/
	HacnUg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ays4qgned-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 10:17:34 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4edaf9e48ecso19714861cf.0
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 02:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765448254; x=1766053054; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S1DTJQec/NgKiKVFzzWxTq2KpPf2b+8dzldrl/QCfts=;
        b=K6uP/A2UE87VcwZxjbTpMEIuRtzOvgRkDY8ITXUQEQ85f17NyXYFPVZsAIeJPqvF2H
         xKq/uzSvbpBjfHw4LY6dwW5vQaqt7NAje9EqqD09o3pKEnwcn4VFeEBfcqHrwOWgkF74
         1dqsjBAK+JRLl4e4nIo3wqQAyQuwDweVUEXXNNI+sP9BRR+zCjvw+NfYJyBtG6QThz2k
         MxZ21VR/7RYb2zVS0V2JqtuIPge7LopmqSj4ChnYmV3f6U5eY+Em3msShZJ4J6Y9O3II
         M5d0ryEp5Is2lPFj6THcO529GKAPZoY4Ae4g33/jBsSmAMgw9U9sjPwv9ZrD+F+Te6+f
         dL5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765448254; x=1766053054;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S1DTJQec/NgKiKVFzzWxTq2KpPf2b+8dzldrl/QCfts=;
        b=r0Jc2HRjNPlQhzEYrNBi0q1VHrls0pm1wFDRkV633/NTFQWj4bTVUTFhi6OFOH2GaZ
         FlVxSnYjcTKbw5GkuYenmC4H9nc6IZJK26DGdiG99xklrcW6aCbd91SZVdLulXcZdcn/
         W/SJKlW36zVapZMJtJabCR3m8w9g2mJ7oh6/0CJYHTA1cbaSCgzdw5YLXgR66GqveDE/
         JuJfz+i02pmsi5KwqzeXqD8DLikA3xFB29NZ3UqVwT1dTqbGWpWrJoT3KYuoZJkQygtk
         PM2gIDSsyaqTrrIfqo2Q5xAe0OXbdp9ZAfsTi3biNkez40nJjmCH6JACYxKdLMRg5sQF
         OuzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYhvH+ltqvjRH9R1NyAiR8gIOgWalELOi8NVRX/j05kox5XYZzYcYu7y0QMj4g0OFpxePKwE/oBL4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwnZgtgASoEf01NT4hKwlPaSk3lPtTpeFX7Qn4LJymFh+bDv6W1
	iKEYtF1MaKgR8Us2XoCpCMOQJ1c6m92OsGmAtD0jUfjaC8zYnNduHNECRUvbz7iKEFO0zL2BG8P
	kQgjgZmR+4+3EJBKvrah/q6KybaKa2wg+LUyUG80XNw9onQgnn+ntVZrpUZpIc8FUlQ8b
X-Gm-Gg: AY/fxX4lXT+dsUvtuFINxo7L5W60a27jbVNj3Bh/0UtkljDQlML1eWcE/Ja+3ZmJ0tt
	Cl5HCQugZPjuHCYMs/v+P9cLTdI9eWwwMV9lYFr5pUxdnHnI1daIyr4RE7R8AbgLvJKujMeqQ8Q
	92nZpVgpRtO1zwaYWuzDAmYZ3wE/l0LJyr2bw6rJ1Zumnl91ewMwVibLP2YYmcrD3DBff8SE4wR
	GYc6dQaUmesAmgSf+H5liTc1x7UafkrFSztwlU3o1+N8qsUnDMopYBGH4RVk4VwNzQqlSxJRJxt
	hvhysf4WfU4s37IdMJT6ic2oW8MqWEK0Vnj+TVlsbINmBtlNJI/yuhszkNOnXOOQCQkYsbdL2Sj
	kEubEi5PdQCVs1Ag=
X-Received: by 2002:ac8:57c4:0:b0:4e8:8c99:832d with SMTP id d75a77b69052e-4f1b19b8b0dmr65592291cf.15.1765448253660;
        Thu, 11 Dec 2025 02:17:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGpFdTZhJfdfYHJFcMDtbP8b+NkVt3zxI4YJr6x2S17R5pVc36NFQVmDmr/3TO+9X7OLif+1Q==
X-Received: by 2002:ac8:57c4:0:b0:4e8:8c99:832d with SMTP id d75a77b69052e-4f1b19b8b0dmr65591941cf.15.1765448253088;
        Thu, 11 Dec 2025 02:17:33 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa5191efsm225381766b.40.2025.12.11.02.17.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 02:17:32 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 12:17:22 +0200
Subject: [PATCH v6 1/4] dt-bindings: phy: Add DP PHY compatible for Glymur
MIME-Version: 1.0
Message-Id: <20251211-phy-qcom-edp-add-glymur-support-v6-1-5be5b32762b5@oss.qualcomm.com>
References: <20251211-phy-qcom-edp-add-glymur-support-v6-0-5be5b32762b5@oss.qualcomm.com>
In-Reply-To: <20251211-phy-qcom-edp-add-glymur-support-v6-0-5be5b32762b5@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1166;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=UjT3XNaICZQxaI2rtQkKLAQyo6ogQ8qaT0RvJnH3+s4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpOpo0za2YinIRwa6tjrifsnTZ48aQNMl/njTOu
 hdJlu368e6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaTqaNAAKCRAbX0TJAJUV
 VsnREACoP5YnqWL/NMo+wpuZX07f+VmgMUwphX4FG0jHF8C/WeL899DIi7HUYLIenAAF4hb0QuS
 YYFwW0jiqwGRnA7ksjENKEyZfi5MrUwJYaL1PwayuIQw6B3GaAMbuQ3aifzngfOQvEVpCdTajLG
 +74ScBQlZk6d8AUDRWWVBJnwwQ25Tnh+c4sinrtvm8r2w2kwWvbbnKbmbBhm4kYiONqk7UlSiyu
 rWULUgo+e4BVqKQ/03dH/EYMwl5at6LFPgVvA9hasiJgxwtOAwZzY4R5Bs+CQHJrbEhyXj/9Wdw
 lh7a02sdX8igyGBlh7OU6aQOdEka7ynemGSTDaM6FflR4z69an5ntCxv0VZZvao8LcQ+2lUCJk9
 rIumCfNVjKI6kftWP0XOnD8HJ31QJI6aUaaqgZuvJeGBirftfSuwteUAZBbjMwfsooRlIwqNYef
 wdtVhPrAkTjDlH5DIGHkb2O3FnNQvJw0uffDi+o9j0AUxhKAfAU500HMNFa/LC++Umi/MgboXkr
 exyrf2HZXHyBTBox9NBTJaUIA8y7Qj2PXQeUyqSlFc0zZhFsJoB0+jlUJ3Fl6S8EH/i2GY5EiHW
 6PZTLYVa5fYeJcFmQIfknU6P2m8nugUqP9WSPwu4yzO6tPJ61eMqFD6yH5f3iccKBL9PEtItOAS
 52ZCnoN5Ul5UOqw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: kL5nJIn7cvFncACo3-Fs5v9ySTB1DD8X
X-Proofpoint-ORIG-GUID: kL5nJIn7cvFncACo3-Fs5v9ySTB1DD8X
X-Authority-Analysis: v=2.4 cv=B/S0EetM c=1 sm=1 tr=0 ts=693a9a3e cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=adPXzabyy6ZLveKXoAMA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDA3OCBTYWx0ZWRfX6K3enT/dgotm
 SU8X/nFTPf5i4Ophrp/LxGND07GARXUFf9psqsEoxGgSoDlNaPDzh5McuNEPRaOUK8J2AFBFH2q
 Ti0vrYezPqtv9PET5Xo3dlFjixP2mGQ33vkNJYElSpXkXyT+RfcSj9ZKhNbt9lsj8RPXCSFUJ0z
 HHEXZY9dBwTwNVsMZDGy0roS5woM/B+ugvZ8PWLGI9Gzcq6k7aqglifNqgHeK9ZWPwakB9W6tCP
 /Abc1Snaxt8PP+TGrSO4kQZW6YGQxMsMKs6g48Q5kQ+zO9tKX9hosocltmT66EBnBVDE+OwOyn9
 frz7dTLnt8YIB2m3EbK9a3oIkJdZv1XnD/ZHQqVltZyzpZmmZFoDCcTo2IFDd3kMohMV2JHf8YT
 sySmW0bwxia+D9LVVYJoCXUqpsAIBQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015
 impostorscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_021735_416850_C8C4394A 
X-CRM114-Status: GOOD (  10.57  )
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

The Glymur platform is the first one to use the eDP PHY version 8.
This makes it incompatible with any of the earlier platforms and therefore
requires a dedicated compatible. So document it.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index bfc4d75f50ff..4a1daae3d8d4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,glymur-dp-phy
           - qcom,sa8775p-edp-phy
           - qcom,sc7280-edp-phy
           - qcom,sc8180x-edp-phy
@@ -72,6 +73,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-dp-phy
             - qcom,x1e80100-dp-phy
     then:
       properties:

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

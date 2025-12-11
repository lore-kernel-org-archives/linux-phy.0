Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1714D41C19
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 10:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tCRQ9O8dr+rzoLfYdWC0XmFSGNmBeiPzSf2XfOc4KhU=; b=MTyfp+ds2zOAP8
	8TxiqWbrlLNNqj7BuNtkgZLH+VuY1EUIHD1Hzwd3Ispbv+xB/VsOdUE5rw0B8R/DJWmHecK8KjCpM
	82ZCxNeoKFViY6JuNWWuu95DiVd1mDN06r6vbkTJ4X/kt/9mBJEPNutGsgBHKa2DQ8KAmd00+0N05
	5MGs0BAlTYBOfbvYvLK3yu2s5u1Wkng8+8GLy8dUJK9o4lC9xcXY1psLRA+Pq9ZQjSworFZTGpmS7
	a9xiA+LFmQJwuA+qUnmvLrYuH8WiZ2uu06ADeIc+K9D6L/dpQOn/j1XbshO2GTEnukVUxx4fK8ikF
	/Qh88y5jNotBmJ3Lrt1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTdjv-0000000GTej-28y8;
	Thu, 11 Dec 2025 10:17:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTdjt-0000000GTcq-04Xr
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 10:17:38 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BB9ZSGu1646896
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 10:17:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aQM+beAzq0/PR9/1IAhbmxN4dIeCVyZh+8gDQ306rQ4=; b=Ye5GemAuJ9/jk06j
	FzzLn7WgNib1AB4Ivw3JYeosNsHgoHuT/yfM6XHI+FWoQfFp/vFuR8EEkCQIspnN
	jNEbrlpyJSUWEM7Hg+FA3aBH+IZLnltOkJpjrwri1tA5ABwXjNcX5eUgGvU2TJ7w
	dgHeuaqI/IUsHG3zG7lE2HIowTCtezu5RAUUV+/N2QvYDFQ9AYBthAWAp0wlilHn
	UGSlm1q0b9FT4fdY3QaMI8JNugIHjo0+l4Il6ySoNKaC0YUUOU8UWsSDwOCw5HB6
	9R22mWJpngeWAtGiKrcRc1wp+7uEjcR+ecMf52JGOmid+MqQS2vXlcHSomscPvjN
	IaXUmw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ayt708e3y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 10:17:36 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee4a0ad6a6so16336811cf.0
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 02:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765448255; x=1766053055; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aQM+beAzq0/PR9/1IAhbmxN4dIeCVyZh+8gDQ306rQ4=;
        b=JWF3BtUYyLxPs33iYYaun3yMswNBRIzYldmisWCZltYBSmowl3VJVZfy6AevMOZcF1
         0G537VIQ8nQPAa2q1QaByNdxwM1qoSd9omFH+0encBPNrqeHqWoS5Gnl4YVU74h58TKT
         8VN58BOkCiomYSVyfVTC1gcsT0VMVGOKmIXkcyv7NrEwA5TMzLoOMdvxX1fUitpGuCjD
         7B8bxUUgpIucaThUEWiE6kpDOyhygHddHScsAmRb2/HPZMqm8ADkqcZGSFGGbyNWtfdA
         V8Be9M/U53bUomOFTAsXwDGzbnasI6xtgy+tU+3PWcNigGoXOGh3YB25MHE9XnBz9ygn
         KZNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765448255; x=1766053055;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aQM+beAzq0/PR9/1IAhbmxN4dIeCVyZh+8gDQ306rQ4=;
        b=SODBYLxi2imSzhgdKs/nqVPCOiv2kp9nhPB9/9kdb/nlVFFg3EGYTLSfJHvR/dNgfr
         uvbFw4JVKCxIeHR94I4NFV4HcdXTkd4PyeZGJs/pkxK/LxnzKzbT9Toqy7BiRhlwd1Ju
         TCk/RTpHRsm2eewg0UbDQzR4tQswM3Vj+WOZd7D56CTXuSfaZEl2FWe8OVMyvjFAQ7ey
         EATAh2bKgPuRw31spohqKQEVbl4MpD5Q0tMN+V7eKwPgHN9TGdkOWkSj4YTnZNMz5R/e
         HOqFkbgwP4PbCqk7RcuMFUSilBaES2btYpuAd1jSgsrF/x1CBH7kQzNQfXhqX6d+3PuZ
         T+kQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9/q411XdR4uqT+cP0MdcffRSEAMcmTG4+sCRP2IGIkOzBpc9xglF0IdM/cECduri95fJWoPFZ6x8=@lists.infradead.org
X-Gm-Message-State: AOJu0YybbCxjDBoRqHyTWNUIeQ8b1ksRg0UKDmK8TZS0bO/l5wRvpfdA
	ueFtj0sRpUHCE9bmeF+7kVL0Wg2Hr7cAiW+y3DAf56TEW8xcO6hYO1c8LBee1wWfEUOxU32DdYA
	b1tOlYwHcN3srzNmT6f8S/VY3iRnUK2mSXjns1TVFejVIDds8kEkdUmAGyDk6SoxHrsbn
X-Gm-Gg: AY/fxX7NPV6F31K0fqcRkke5WMleZBIDIDkIfWEyb5JfB2ptGlU2pE4ahxv+j8AyOxM
	tWliPM9sdZhWAoUGaJkdLb1kolmH5X46XrFg+UhulAimqD0a5HL7e9hRLmxx2X13k5w0jk/k+iO
	iuw98zEuzyf0slVPsY7C+b8pPXmQcOlkeSUVhDzyFUaYwRFK3YbUu+8u8qQdB798Mq5aaBw+IYl
	VDUuTGdhuNZ77qXd+T0rJz/FSjNwL5FpV8bwcSpYbQYY5+x4xHo6eNrDoeOL7IecA/oN4/zCj0p
	q6iYybktWjfcNQo4JRx3hJXEkfoH87zzoQt+aT4xvoLSc9dkrEpMucHLmbkYJndASbIsWrfdGcM
	8LxeI47mpBpyuivs=
X-Received: by 2002:a05:622a:4c12:b0:4ed:67ea:1e5d with SMTP id d75a77b69052e-4f1b1aca8d2mr79837071cf.53.1765448255409;
        Thu, 11 Dec 2025 02:17:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGhD02uI6mM+u3czMWURWU+Rf8X0X6cahpz7x7+b6jAm0cqjI776Kjkc4GRHr8s2czxtBq7lA==
X-Received: by 2002:a05:622a:4c12:b0:4ed:67ea:1e5d with SMTP id d75a77b69052e-4f1b1aca8d2mr79836771cf.53.1765448254970;
        Thu, 11 Dec 2025 02:17:34 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa5191efsm225381766b.40.2025.12.11.02.17.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 02:17:34 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 12:17:23 +0200
Subject: [PATCH v6 2/4] phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers
 count
MIME-Version: 1.0
Message-Id: <20251211-phy-qcom-edp-add-glymur-support-v6-2-5be5b32762b5@oss.qualcomm.com>
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
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1313;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=z/5gvRTWmoFviOJ7wu81OY1UNYIgxJ8SEI5ecSWoHm0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpOpo2dof+aL3rnK2jdg73vC/yentnjZqhl8hiI
 FDLBJ65lVaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaTqaNgAKCRAbX0TJAJUV
 VlguD/9LaKBZT1psoiQmykvCq3WkPzD4uhm/rHiBdU2h9d4OVfCJTW63LDiDppII9DyyXkfIkZp
 ODAbhKK4yzE+qTFZ7kQj/qymVUomu4rmzaTUzPZeD4hsNPtdG2/JBXA+Fr6pFnJepMgPUEIgb8e
 s51Qo47DKUm8h4lX69LeG4ul6grBGFEmQ6NPAz1BkZoSV+KX/bOtN84Sw8dL9NfJEpklxy5C9U8
 k8Ph4ReAdbhOmHnkRulkLC+TJ/N9JI31IsrENWIBvzzv9N1usdYWsKV9VMJPOXBeAsgMZxV5p1L
 GGndflrYjW933j6v8sAvO1Ubm3Psssc8rR5vyWMfc3u8fX9h/ad9HY/Sta5z/VbxB26Z5KZr82y
 b+0Jm/KOX7OqZenUYbgvbJtV/Fo6eNnQyjvs4dsSMIyTVjviNsTtxkyZpKEdMa/IcAeGL2pwN3z
 4k6HwpP6bWdMBAvssohB6BxczNMqNl0gXg6z7t3lcUOEYboNjARUsFnjimREhuMnDvOms2M/1ja
 4OAGQ7jDTZAPefr8DAlSEaGiQCA/SfMT6ZvGCY/sVLMeHNg5hOwQbqq0Uz/Mjw2Xmn6PesQIO9w
 Qeb7xzLxoiNlPq2kYyMBOE7pE/Th+ilqYNfASJJtlG3rWHI0X9RLq4si0zLdTPc8w1t6kJ0odTr
 cpgHdkqvHAqWnEg==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDA3OCBTYWx0ZWRfX8f1mPmE3hCkk
 A8PAEz5JsG3OyPnjFJ4ASEZPmRMELyHkAKdj6NhVlruQ0NTFhTx5TULCHGHYUJoMDWhysmHvp7A
 EzeuZJo2F0xtcUdKUhllyIQFKyDtphJHSNX+uflt+GBgkP06S1u5XZX0S589c8nrKNVnyqRN2BU
 4ZFrPgloArq9c6u9yYY/6Jt44HNwQ+di4DrhCS9NUKUg/bt7P17RRpYmkm4oZAF7NHfLcREGqAh
 dwu7pNbBKH4fu7xOtblvXLVISap00vicMci+J0uRqFtvZgiq7TsQnETEW3tEFU91qRVCjwIgTNB
 uq/zh8brXgH2VuLTm2gLGebelR4QdJThw+FRde6GVd/rB2D6AFYl1HbHFGSBSTIbLygCbrX4gNo
 qKxyWvPGI4EWz6uoWIUEA2720l8AxA==
X-Authority-Analysis: v=2.4 cv=WYIBqkhX c=1 sm=1 tr=0 ts=693a9a40 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=EnfBGAjIh6IkBJmaZGcA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: PuTwBx292Rw2Pm58GWSyTAzaSAzk4xRr
X-Proofpoint-ORIG-GUID: PuTwBx292Rw2Pm58GWSyTAzaSAzk4xRr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 spamscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_021737_177676_3BA99A67 
X-CRM114-Status: GOOD (  14.09  )
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

On all platforms supported by this driver, there are 13 DP_PHY_AUX_CFGx
registers. This hasn't been an issue so far on currently supported
platforms, because the init sequence never spanned beyond DP_PHY_AUX_CFG9.

However, on the new upcoming Glymur platform, these are updated along
with the rest of the init sequence.

So update the size of the array holding the config to 13.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 06a08c9ea0f7..f98fe83de42e 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -32,7 +32,7 @@
 #define DP_PHY_PD_CTL                           0x001c
 #define DP_PHY_MODE                             0x0020
 
-#define DP_AUX_CFG_SIZE                         10
+#define DP_AUX_CFG_SIZE                         13
 #define DP_PHY_AUX_CFG(n)                       (0x24 + (0x04 * (n)))
 
 #define DP_PHY_AUX_INTERRUPT_MASK		0x0058

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

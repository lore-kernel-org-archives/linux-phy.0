Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCC10E75448
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 11:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tCRQ9O8dr+rzoLfYdWC0XmFSGNmBeiPzSf2XfOc4KhU=; b=Csmf9EdS6OeSXT
	xFBf6hGHN2HeIFxvwkuPcKxqs4WXPKZNaeazJHVtI9zzVouBvcoYwUnWPOYuYCaNr7U3apWzKqmt+
	1XTSsxlHOfGpcnQ8xHlnDVaBFqExiPAWlXyPJVq43hAGBJId0v611PX46T/54QyDfKcj2i/GSV0f6
	9sPG9X73Tv/la26DT1iG1owNbuphhfkIrPtk3vCNVbd/DVHmOHhY8x+rk24e9KDLyMQXZcaDIqPLg
	oQUAkRAFqO75dEcE9GYNCA25Q6eBpm0J/qlQaWaxMlWiY670MCzA0J1veHanEEbz1ur1qo1H+ixAA
	+A4ssjWkWzTIMz2O09WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMlq-0000000GiwO-3nEG;
	Wed, 24 Dec 2025 11:11:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMlm-0000000GiuS-1D34
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 11:11:07 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO3vJdo4133945
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 11:11:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aQM+beAzq0/PR9/1IAhbmxN4dIeCVyZh+8gDQ306rQ4=; b=RX7RBAJHdaUyDBv8
	LmCDZdchHPnHFS7/INNPHT9hIcVMO3mSVOcCnyOE2hHB6ftPhCa0tBpPmMG5tTSW
	VZm9kyZHFmujj5hnBLLjy03AthJUZEDj4axPcpq+9TXPJFO4h+ib6AlrjT2riPVu
	afDS/YoK+RbOffMqjkSeYjWL7zvhfKofD0gFlMHFr3vjg/e3of31+lyeCSJCWmNl
	OEzWBZrzFKSnl1ylnDD3Nvy+KtE8ayCA4gyEBBMRaFENG9DLkBOU/2f5qJQJkl9E
	9js6BqE3z36TH5ZctlwJnNhrOuPzyh7EqQRW0YsRUOTz5ZJwIYH0d7aCUWpoRxtw
	rVsIBg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7x46tv6y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 11:11:05 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4edad69b4e8so123120691cf.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 03:11:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766574664; x=1767179464; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aQM+beAzq0/PR9/1IAhbmxN4dIeCVyZh+8gDQ306rQ4=;
        b=UJvaUmy7ZzhhHLO+XMsTt3coHgT5gHq4jQDPzIsoOw3zGcQs+jUqJeWqb/OtokpqLI
         lOsYCeiG32XzqvW4rTTeL4eF1OvMEpBcpAzxrt8hbMSDkxzJYdBCz2BLcH2yTu6Icikz
         Wl5B2/wnVrXdynnlMFOGbdkrHjGw6xKWN3AYiA5NgvsDeFcMegRizh2sXmnhcoRRVapm
         xB7UsZ3/29TpRfXNm265XAmMDFRUVwh/KWNMAPhA3NUKLIx2+qVmjEx6W10mZdgZ16PG
         UgRVeC+EPHJhlPmL0ZyDZPyxgLdz7UOScI2VgqOEQhBMrByPU3ru14NNBqWVWWg/T0J8
         ZzBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766574664; x=1767179464;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aQM+beAzq0/PR9/1IAhbmxN4dIeCVyZh+8gDQ306rQ4=;
        b=NqGoeL9dojkrkbrMZgGEptpAFEHI6oYcGSAyxTARSI1kM8sXK3O4X8/pPUGLNq3SgQ
         dd89XP+YVBuDXuKdRdKwRzaVZEbIAfB3cyB4tmnR3iWK8FuqAHlCDCO0eYHmZ3qRCeTk
         cDTPXMRSQonJDlxc3bg/5OS3Owo+hOwg9m3lpTZkY5p7E4V/PAAMFXi5ZCxxR4ByDUxA
         8Iekh65kdaCMtnnb3xoxaggXLsORW3vwmbjmv0MC/lffUgcZeDv4yfJUPPPwrR+kB+CV
         zsXsps0sYgtr4TSZxa2P+R2VabP+LSWQiFkcMUfZt+Zy1m268ND4Fhj4OvTtut4/2nK7
         bwsw==
X-Forwarded-Encrypted: i=1; AJvYcCVod7zSzqQEfKVqhysyCpP2ecWa8QltHhKRK7WwVWqSSJaB+2vqxGyUbJSYIc+xtmkujikOY5w6K3o=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxv10M/bTK2ocfV2QK2LSeleRODCoDtxPvoBL1UNsB+jHTGBJcY
	8/XzOF6BK+105g0dR/9Fg1nvwPo2vwVTGwIthPPzwHE3Y0ZD9/MRSwn3bL82E4/LZsrr0n4HqCm
	c8qUnwRs6Wjoty6ZZ+zkvMfrOkO0MmuZ5j/hk7FfZf+oebJq9e0XM7LW30wtX9G8UlXPkhM7l6m
	kH
X-Gm-Gg: AY/fxX6ViJ7Cr7EDtJGA/PI0kOvBV4gpN6pTq9t28PsTatMrqIhKFjiM+OH6ntfUFNP
	V0I2C3eimjFpV6adhHWpNhLy6kQUDH397T9bmO+HPgSTCYCresz1cdC3i7d7fXAtSSjZ2p0yhJ1
	wyJDbGF6F2pClGt6S/BBn0V2PsZgZ5olrMT/6fPnoNWWiu/gm4SWJ+T3PPgyZ8tcH5RnTcovL1B
	xfnCbEprmuPeRDpWlxlKPhlXGKUNqCxp1mPu/jbP0XfFaFEmGqnChz81dJeMT3wWwef10YtlADJ
	6iQlyC7D8D2y76xqV2+BIuFxlrmKwSqKkmE/qTnLEqTchMYioM2PJhFr/3UxvNdi5QMQmiD61PW
	E1T0ghg0PQAhOXX8=
X-Received: by 2002:a05:622a:199d:b0:4ed:ae94:5f5b with SMTP id d75a77b69052e-4f35f3a046emr279974411cf.8.1766574664531;
        Wed, 24 Dec 2025 03:11:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHY+QXEQr9fA75Iom8zAGPbK0MF2jM6Xeby2efJjGDdoAhvTFZCsfc602Uv4p1sHvP/+1qu0A==
X-Received: by 2002:a05:622a:199d:b0:4ed:ae94:5f5b with SMTP id d75a77b69052e-4f35f3a046emr279974131cf.8.1766574664041;
        Wed, 24 Dec 2025 03:11:04 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm16799036a12.31.2025.12.24.03.11.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 03:11:03 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 13:10:45 +0200
Subject: [PATCH RESEND v6 2/4] phy: qcom: edp: Fix the DP_PHY_AUX_CFG
 registers count
MIME-Version: 1.0
Message-Id: <20251224-phy-qcom-edp-add-glymur-support-v6-2-4fcba75a6fa9@oss.qualcomm.com>
References: <20251224-phy-qcom-edp-add-glymur-support-v6-0-4fcba75a6fa9@oss.qualcomm.com>
In-Reply-To: <20251224-phy-qcom-edp-add-glymur-support-v6-0-4fcba75a6fa9@oss.qualcomm.com>
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
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1313;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=z/5gvRTWmoFviOJ7wu81OY1UNYIgxJ8SEI5ecSWoHm0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8o9sB9QxfHFF84ivRguy+9vK2z1CO1NN5dcn
 sYXr3eVgh6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvKPQAKCRAbX0TJAJUV
 Vte3D/9dUcwB9f08kDZGhordYfzLvIdLl1NxIhe7onk0rEorigyoPK6p+Q4/UwXFtHkWeF3hb4d
 /gdac2+Tish3pPaJi93LP7BQHg2gKGPFWwgy0PXbFwNhoGduuzgt+NMSFFxpO22LHCyYbr2QHZ5
 dgOgLZZjXMoU/rF0ZfJbMfupysdtLcSqiyN8DrewNjKB4nJ5yIH/pf8bwlQ1BoP92C2Ro7Pmdmj
 qcMLuwY8heMw0hVYSb9WNeDIe0ctTIZfzlsofbeZ6YGpWx0ykkXRwoBDKFkTW43yqbWtCN8wHIr
 DmGSElbAb5wMx3+VowGyfXKHyo1fuhfw4NaZNiAZGiTc+nriZEwHYoP49uPBxaKWqBdRGPNJDo6
 vvFZtvcxaj/AtE9ByfOrgGjiaJaeT7qB+7EE0iSXBo3mkwbWnQCDG7ceHYYtNCsxkFt6ElyleA0
 CILRDQBHdN8tdgZOboyvgjoCyq+1ziw4N3qcWdzmcCDn2iG01pri7VGq+XF4xNko051g9JPnsGt
 WlUeZuBKZxSX8+aqauHtKDvz3wmhX86V7fK6ak9GvGx2EIblgckvUOkjlbmwCUGfQZwxnz9YJu2
 ZsICLRJW4emO07vDiR9JrfByKcveod67ldI8OKf8R/vDLIkRcHqFlGsxVTk1Ri8nk5yayVDcfFh
 asuhXZPSKBK21nA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: MR6bq7aAWwQOJQTyfTIhfi5NKXuiupp4
X-Proofpoint-GUID: MR6bq7aAWwQOJQTyfTIhfi5NKXuiupp4
X-Authority-Analysis: v=2.4 cv=aOf9aL9m c=1 sm=1 tr=0 ts=694bca49 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=EnfBGAjIh6IkBJmaZGcA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5NyBTYWx0ZWRfX68sMIYW+xzkz
 yGswdgMy99cU2xBOXpm7Y6BleJwJEtNqQT+cj4i1htCUMohcOEQP8TBaGjJUYfQcTx42ZLJHeFN
 DxnKSnm26INYlbFYBP/3c46RgYfJ4LTY1FzzhY9w0UKHbkViWEm117LwtEXabQo2L+k6FyAFJiN
 f57xYReyyTodBEyxNo6VKcEBH+RpSnk9UJGECUiLsd9+rB6ARJBj+GY3xg/wuE1zdMT7zRnG0zB
 GodYyYoMsYXEG6tiB7fEfwxajx2M7Z4izvv7WYl8MbqQotTNx+eUbsrqkuXMRVO5az1Lp6ab+4v
 C26rHNt2lKhhYgfCDoeMJbNmQVOYLGKMbdmurV9bl/5L98MhzLy+dRAiInBQURBQC/Gw+U2Nzmu
 LRFKdmU9HO+4ozxLLAvyb376klIxXedYT7qSZ6Xub/55/kqJKdJdG0XwQv4OpbJN0Zr01ZaQy8Y
 D3tyatARWB9HEvpp48Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_031106_336938_8C970725 
X-CRM114-Status: GOOD (  14.13  )
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

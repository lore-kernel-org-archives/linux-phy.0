Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0C08CD4F25
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 10:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hnbu5TxPfDBOQ/6mm/3mvNpZ6gbkDbYD0k05cZkqhq0=; b=Q5DlJFzYDz49p0
	w1vucfjub2njJQi9Y7gbOjKm+dOGlgXmpp8fkPsdvmewtCF8zrCZkW8ryVTtihGpZNZVL3Few5cTo
	UG6OMcZkLDAIN4TX9jjbc+nuhRfnqMeKl3dCl8k8C89cmOubqBTMIgBIOv+1Y3nsWKlWYTQ/M3Q2+
	HZZH518ga8eD5LQr1gux8WsbitpbYN8iqCbUzdYWuD2JT1siOqMycwp/KwLGRsxjzc9ndCNJKGAM7
	PpYoufKYSfFTFATLd2FyeOeEIlm/qLunqELQ4+MYxgTsMgfDnIpuFnfnrJfVf8+5YSSMZGHK+w9lL
	MFJmMBJwzqmKlVATrCug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq5U-000000085aT-2ArV;
	Fri, 15 May 2026 10:48:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNq5R-000000085ZY-2H0w
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 10:48:10 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64F9AhWh1717390
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 10:48:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mWXgiQlzWpIuNL3PuoPS509A8qqN1Lj48ZNShMaqLiI=; b=UuoHn+1NOgriSVno
	EEcDXEWwwXDApCs+f26l9CFuUbzJIH+6RKA/PaS9v9vRcW7+NUYCptNtuosSd9D1
	IdJ1HVvt3z8uywDWJl7BA/UE0UPJgMYPU/Y7D/A8NVSTR7cq67HqvVDXwX8tILKu
	0ga0Zbx1nESMZfP/HrruNi+D2Wf8ptZ5rgmR84ZTnzI1WhdKgPzm8oqwSOUAyTO4
	Mjnw4D08G1BB70nnH61YQAC8LGi4kb/3b0fy0U5kEv6UTDYaq5KWPMA1qvoaMt6c
	a9AVVEISilLOhvWnHrHC7ZUbVnd35pBL9rXqV8Z1G1e6Nf6vu/FFKgj3ejSPHCzw
	LZjI9A==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e5tyxspfv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 10:48:09 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c827c880e39so3654193a12.0
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 03:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778842088; x=1779446888; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mWXgiQlzWpIuNL3PuoPS509A8qqN1Lj48ZNShMaqLiI=;
        b=VDgmAfcvGIaq9GSUDbYXLLrHCtx+ogj7sTDEW2hK+5OhVS/jEi0x5WeLfDbD3FMDuo
         g0W+XNP7s+94oY29eL45Ej8YxmkO8TM3FrvCt+u5FV5GgbmemZS/1RSgNd5yVU0IZ+Dy
         ML2V4xvPlGZ6V1RolYMbZwhNPztWoHJDgRhXUNxi5PKckai2rocKR+UlNUcy1LdphrzR
         Yl/VcqvkgUogmYUQd+UHwhox1UbL7JNEfoK9hKczDPGPXsVslO77CUSum67wWeEfhOy4
         HYTjsTDVR4cgf0eOCPAtQOYaNmjBssQLMG6Be2L0UB5REUyIt5J9jmHooxepkaod3XvO
         +sXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778842088; x=1779446888;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mWXgiQlzWpIuNL3PuoPS509A8qqN1Lj48ZNShMaqLiI=;
        b=PIkase+IHxEQiHiwrHRjrhDYys0rQcTeqpC4Gt2fnEWimKWhKuq7PHs4iZCRqFN0bK
         xSIT4Rmuq0Ic5GPpAl+l0sgi62kmBtbe0CSFNchmdfy489gwd2GcsRHfOs3FzsetcUFb
         2VaUoxvnhRh/NkTQc1LddSYV38vcHZCKAEuvxI6uqa4/alBpKqt1xVUyaRxrhIomfjce
         cF2VlgHZkbsQSp87AZfnVmUklqvTwN00jBTqOwZPqo+7Wj8sib4wmlFKJ6SUHpUNPrxA
         eobdsluuf7mEqL6PkYvRM12HDZ8qbYVy4PmgVeanB6ttw6bnUbcrJtoF6ONVIpBzevhS
         m78A==
X-Forwarded-Encrypted: i=1; AFNElJ8ahTt3YxLxm/tu5JQOXyIVmB35BO701b4qujuPn72fS3/+MqEGnWe17KfYTbikQHoLpP2j9QBwdh8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzBVmfHyMqlqlEJ71CQs6G021k8MXijgaKmcgojjrb0vqhll7IA
	NxgRm2TonizHlVO6OI7F/xPW7I//kuAMxH+TgaYFpdbA3M9xMOH0BrOy1TKv2HMt1WROWkeCwXh
	RWANYI7KjV6HYUvhDqSaiggj6SZLJx/Dk23dnGAE2tqKpxya89DIrIB08GhVdjyGbn1aL
X-Gm-Gg: Acq92OGp7movdJR0Sod6xL8v7GERx9MuR4XtFZcT4n54Qk32c7ND/SjnYgsIsTL3hI8
	RZ/4hegC/hj3SRYc8WnUEbgIIGyiVVaMtaRCL6zk+P4ARYjS9owzhoNXaFQ2YG0hVMfdSfxtUWg
	edTLykACppoMkjbhW/e0KqlCw9txXOWKZdq3nzpFDy9/ALzGTVomrgyzhs09JMqm6ibzdY6/xNA
	EghJgM7IGH0qkzryaTtsH70zrFQSARwBEKNfGqlKWSQfyxvQ7K2dqcq6h5oIA22x+N7sM/bQWRG
	Ue5vTrdxwJ8votK7mYaJFheX7RNs6dx3RNDgdLSg8VrVQMjqMeFGNmQoTyb9wIQo6igy0XQ7iCt
	2L/lFL27GC7WlpMtFf9xhbWvWfmZeVkDGS8GuscyT41HmTHgenAnXAVqTyI4Cpn+uXh4+3JVYwU
	1EwKdiLIjhD+1X06OLBqlBf7SbYWrLeADjrLe6zbSyb3vQ2CY+Ljk=
X-Received: by 2002:a05:6a20:4305:b0:398:962e:83d7 with SMTP id adf61e73a8af0-3b22ee7df4cmr3917213637.43.1778842088335;
        Fri, 15 May 2026 03:48:08 -0700 (PDT)
X-Received: by 2002:a05:6a20:4305:b0:398:962e:83d7 with SMTP id adf61e73a8af0-3b22ee7df4cmr3917170637.43.1778842087839;
        Fri, 15 May 2026 03:48:07 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c82bb1006fbsm4955221a12.21.2026.05.15.03.48.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 03:48:07 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Fri, 15 May 2026 16:17:45 +0530
Subject: [PATCH 4/5] phy: qcom: qmp: Enable ipq5210 support
MIME-Version: 1.0
Message-Id: <20260515-usb2phy-v1-4-5f8338d466bf@oss.qualcomm.com>
References: <20260515-usb2phy-v1-0-5f8338d466bf@oss.qualcomm.com>
In-Reply-To: <20260515-usb2phy-v1-0-5f8338d466bf@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=dMWWXuZb c=1 sm=1 tr=0 ts=6a06f9e9 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=--c7UDEKweIPGI6wXLMA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: QUpJHvBYg4nzF0y5gTW0-X10DkdLK1XS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE1MDEwOSBTYWx0ZWRfX5KMv6ulBEJ18
 iPrQACfWl2Z0lDFIOkEWAtQk6+tmfc65rom7rOpWEGi/vyM+0fs0AlvvgOsVlnhL5X/a9LKZnSn
 8ORtTs+C15E3OATrxI0DiM4HgA6KTSO/F1I1iUOnslMEpyrV+jluajjnvnCgufgN4STXMdU40Q1
 SVPANTJmIYLpMlsrA6HCPreisLzcdoBTgmn7ctgC1/u6bfNiaykEkL6ve5QWikK9b3IML3pUOaP
 bKAlUQKptE4S4fb5CFqSCEGBnmpUXQLUnqpA5M0mk4LTKRU79jKsKUCH3CU2ziRj0nJrgbiY3an
 EWYFZ9agtPB/crn8Kce7+wqzoIUkw7UbZGp6ejuN4cL9sLwufGsWMOuI5Ei6TDwsKw5U1MSxMAy
 bTzleburm8DOH8wO9qYQfDiBiounbLRdydOD9bg6+KlXMmwCv7QAOVJGh5OaAQx8JqH4f77rFU4
 xaIw98gFnSVf40ujizw==
X-Proofpoint-GUID: QUpJHvBYg4nzF0y5gTW0-X10DkdLK1XS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-15_02,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 impostorscore=0 phishscore=0
 suspectscore=0 malwarescore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605150109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_034809_598095_24730600 
X-CRM114-Status: GOOD (  11.04  )
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

Enable QMP USB3 phy support for ipq5210 SoC.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index b0ecd5ba2464..8d3d7e39697e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2449,6 +2449,9 @@ static const struct of_device_id qmp_usb_of_match_table[] = {
 	{
 		.compatible = "qcom,glymur-qmp-usb3-uni-phy",
 		.data = &glymur_usb3_uniphy_cfg,
+	}, {
+		.compatible = "qcom,ipq5210-qmp-usb3-phy",
+		.data = &ipq9574_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,ipq5424-qmp-usb3-phy",
 		.data = &ipq9574_usb3phy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

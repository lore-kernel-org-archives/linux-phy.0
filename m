Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5825BC43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 19:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d2eY9QiNBG2d7Bw6PghQthTKg6qWjmzKcODCfHYh6tg=; b=XOAonuDCcGqs0f
	5ZSXtrHXcVhr49GLRQINHWMUAQy3ppuOxbeZznnVheGbt5zK6LVN/FLGSYv3yKugkrDvqZE+ntaNU
	SK1Rzww6dhRhAFv/1NUoAEG0QKLXJjZidXYREAUtRMtuTOl4RbDgsbSJFdwg6EOZ44DnmvxcKSsB1
	qYke1ldCQyqpeitYt2R67NZcb8M55PdtVf+RLmjLTrQqsj2ucwfnsiLxhHs/cOZeAAFoX0xVYfXi9
	3SQ2vY/nw+SHfqz8QHaIXHq4mEaHSMq56tnI3JOX0Wz0FejfeLLA+DVqnHv2nY8yEY0yPqfFNM0Me
	EnBLoZdXpm4tdhbtUTEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedkK-000000005GR-0UVW;
	Tue, 30 Jun 2026 19:03:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedkH-000000005Fl-2AKc
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 19:03:46 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UHkht02733850
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 19:03:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GCgClY81I44AjvbZ/aXoo8VK5dN9dzyBFnWzQ9hfEIY=; b=RBgb0u9Q3NWcNR1q
	fqduvcaEhgXaUT5tc5NwsCbXZfNsGyrursYZiJAapEhPgYQHLOpXuWQctT+WUpPA
	Zwq3c7OzDWnymEQGG3zVku22NqnGl+WTTCfrEIgwFV19uC8lVGz83SgOaYxEGAbc
	jcbVYNEkcoXhyrzroV9GMo4PnbWcBp5PN1aLrPpb2oGZQVEsuqqeoLB5NLD+MFOU
	l+VEzLKU/LeWzSqhHGplugqAh0qe+REfqAFx8LzCDpItFpcoOOII8bVmY6VS0yHt
	3X00bGyKVYey5XqpaEXWv87M9MqOfTiCanjDrkoBKY9mJg2DvXQoQQN3FWwXsqpY
	XjfZQQ==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4h0ary2c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 19:03:44 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-30cb5001ed8so128348eec.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 12:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782846223; x=1783451023; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GCgClY81I44AjvbZ/aXoo8VK5dN9dzyBFnWzQ9hfEIY=;
        b=RWJC6rL/I4LpQKlyJJSlRckkkHBCROLAiNvahbbxOy5MJJYXOz73bjLT29UN5r6boe
         9mx64wggLaN2dzY+0BJnULlEzrIktPpYLYi9HQUB8ULYwphpIUVLtn/l5hxIhrTsNPE7
         b7k3wbb68vMi6uNO4e5xlUTXHZw5aEccHVH3jap2zuDIWnYP+YFWjs7LgC71Cebxj2k9
         5XGff9TXsdV12ApQBjy7xX6VMtyybK5C7uFfHOIeDhIAXVqrCj1XbVn1vcm4m/1sv7YL
         XoU5FHxpMD+tmFr6+bx3MkG4YPUVfmqfie5iJb3Ikf+Fvg8VEqQVlBnk+YIQu4EIgB6Z
         4MkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782846223; x=1783451023;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GCgClY81I44AjvbZ/aXoo8VK5dN9dzyBFnWzQ9hfEIY=;
        b=pujobwa0fABiO/bl5KT2MVDWg0YXs5b5wy0N836H6bPNECSb8DYrsv5esQYt3BfJsQ
         T7qENzHx6ZdyD0XDEMFzATHFEnJdOClVNn/rSNfS5n/CLiWz0SQk82ZDUqhzA2x8nW4U
         TwjaVnKy7NBO+91vLb2203wU1c+lCjGFbu7k7fuP0o28SNvlY7TPirIt3BgRPuP3cosj
         tivmDj/t7lCUgBLk6a1qH7IG36iSUSto8PmKXPhUXyrS1B3mknoStYjYl+CkmNc4eQLM
         29GUFP4oBzSK8EeZXDLpnAaJqos8OTlCe/lN2kr0eYZhf+nTflO1/EMJ/7CpCEO72dYd
         YtQg==
X-Forwarded-Encrypted: i=1; AHgh+RrmQ9ZRRDHahARiboHF8TeVcD/DjFafA3nqcR2aLLnHupJJqw6qZmWGdZuFq1y0p0VBCvo+hEokX1Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YzsT1+Q4rfb2Tl/xUaJZQRHe9OUf7fTq5a/t9oRIB1vYgmRsX9i
	cFk7fd/v9nGyi4dGQ4yWUQQed7txZHAzzSkyS9mvZURS3hRuRDQ0ckIbK/2i1jaeZgBNWbAV/SP
	i3eIC5to/yCER623nvxbLLus2AoegJNh/vQhJHwuu3kRRIMw986bsPnQFelE6GRZSOXYo
X-Gm-Gg: AfdE7cnt7QBNpE4MBgqCBaYgPnckRBf8ft2JKOzEtqRofh6pY/iXv60Z8VDabGwUklE
	04SfN4HVOE3WtmESS8P0FKSDAir3dFHf92QU3F5lvn+CydgcDPoklMmxPE8thNxRCUrWOG9aHU6
	GplAKhWRtFgygmVfZUIeIMretoBk/ZCG6f5KLnRdlp9Iwn1MBrCcb1z8QQca9gKkOMzux3Yt14c
	ACgGj7mbyPVJKJuO2wKERpQDtE4dEwjPk0bFF6K5cJWAIcHkONTB/AoU/1K40/PmJc+1mzAIC6/
	3pl+fDGFW8zbx1zkUY6VTr1y1ULPJV4ed0lhjLACVFC0CCQosfF0wCGEklVqTeNNZDk8F+/kjaY
	u+/IQ8/5HcI9jNacEQtiiL7nIjghyCmSPuY08pjVr61ZMfbA=
X-Received: by 2002:a05:7301:2f8f:b0:30b:dd58:e155 with SMTP id 5a478bee46e88-30ef096e8f5mr1218364eec.20.1782846223159;
        Tue, 30 Jun 2026 12:03:43 -0700 (PDT)
X-Received: by 2002:a05:7301:2f8f:b0:30b:dd58:e155 with SMTP id 5a478bee46e88-30ef096e8f5mr1218329eec.20.1782846222658;
        Tue, 30 Jun 2026 12:03:42 -0700 (PDT)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30ee317095dsm14963815eec.15.2026.06.30.12.03.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 12:03:42 -0700 (PDT)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Wed, 01 Jul 2026 00:32:46 +0530
Subject: [PATCH 4/9] PCI: qcom: Add support for Shikra
MIME-Version: 1.0
Message-Id: <20260701-shikra-upstream-v1-4-e1a721eb8943@oss.qualcomm.com>
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
In-Reply-To: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782846191; l=854;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=GecsPtDzBCsWNuDkEsU+ZgpETbYSghfoMtZfgts9qAA=;
 b=P8iXgoZ0ZmeREPgz0BzlNdOW1PX47JuBxAE/yjvDHkAEX3OQpmUXJ5BbOV87TORQ23uz/0UyF
 zwsAIcJQLL2A6aVZRhqot74U2Lymzxtp+S/bx//KLuoZLN+ihrMtvYO
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Authority-Analysis: v=2.4 cv=OuF/DS/t c=1 sm=1 tr=0 ts=6a441310 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=sKgv3_SsqRtbfYgyWx4A:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-ORIG-GUID: lVSuCPR2LYnJ0cGF4E-Mgdp5MoIR-Wke
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDE4MiBTYWx0ZWRfX0EOTtLlidKRT
 HfitgW0b2YuHzyeU0wHshYKVkX4Nrzn88DmaBF8faGfC6clPzRR9lt5DiMd0fN9KPeV38XOwWqC
 BStLt086IrQVNdG++OMDUv4+O8PzeMM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDE4MiBTYWx0ZWRfXxMVE8jYODcMX
 5zM/u2XprIxbqfy5yfkrE4MvoTGS8I07pWSYw8zTdjixgCAWXN7xS6urpueDW/HGpGr7Wqq1EZA
 7vFY1DhomWtapfKZd2QscZc1NLYJkXZEw5FKNMVPYKueyOoQE6pdQLIM4m6eGocls5VK6CN67f6
 v5EW00uU7xO2NRemFJe3l3VDLmftHBuw0Ism/euliBB/kaPbzczor+8enoSxt581I4CSyDoR2Ti
 ltRUCPErQoVLlxM/WgRpS7I008AlXEqBQpADJP+eC/mjmccDW4WkT9Ld1agHjbw/3uhgrDf1MJk
 YV0LTP+1BI8jBCiD/FUH8Ns13eCA/SZDaaERCsiW35IhoKiUa5+qVf2pVSDJTCrHDfHdL5EtL6m
 lEhBM1seM8r6VFDpM3hjg7wDV+gj0ecdLOkg/pZhjarQwZXVRGSFF+WbplfOOK7wR7kyQdEcl5D
 pWSShn3Qlq1DBJmZltQ==
X-Proofpoint-GUID: lVSuCPR2LYnJ0cGF4E-Mgdp5MoIR-Wke
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606300182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_120345_699608_C96A0C3C 
X-CRM114-Status: GOOD (  11.39  )
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

Add support for the single PCIe controller on Shikra platform
which is capable of Gen2x1 operation.

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index d8eb52857f69..19daadee65f7 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -2309,6 +2309,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_sc8280xp },
+	{ .compatible = "qcom,shikra-pcie", .data = &cfg_1_9_0 },
 	{ }
 };
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

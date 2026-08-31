Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53CD8C624A5
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 07:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d2eY9QiNBG2d7Bw6PghQthTKg6qWjmzKcODCfHYh6tg=; b=pXOjzSFeGXhQmc
	b13+I8cj4ukA5wMBA/OC7EN8Ut679TBV64F8wiZ3cDwXtdTd4NwkAk4c+ddpMCYVEq7xlOAcNMn9t
	K0mlkXJNXKdgsotJXS/oOXhwJefq+ij2xwB4o9hhIfCrSUo/pUH5XAbu2YhBOa5ssI0nDdCXzAZs/
	ImCuPjbqmMYT3uKpqMmyI+JX5XjT0vVbBicNpCnEK3Nwu/rY3FTJnZf04k10saclApkyU3ERD5BkP
	ym4uQlOuEceMMwdXuiU1346EvDDWJhiXsu1IAWJrZPChvfg/JaclbVGscky7vzOccpKAOU7f/NuwQ
	zamx9LMzm5gCpnu9o/+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wPc-00000008izx-4BlH;
	Mon, 31 Aug 2026 07:26:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wPZ-00000008iym-3AUS
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 07:26:35 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67V52W5A2017596
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 07:26:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GCgClY81I44AjvbZ/aXoo8VK5dN9dzyBFnWzQ9hfEIY=; b=cb+W6YpvtF5y3yAX
	6rv+oXd/Q+wYrFm2Yws/rl/HK2EjfIoPbxBJtMqDwQ+JCI732Mfj8v5dJIT6Uxcb
	9HQgyQrV7Kr1TEn514xea1pMVxR7b+LRX/Nv8oWaRKszT7aArUrkQx6p4ur/AmsO
	fS51NXhrRC8itp+FNwS75r939xLjcCMl+Lrao09ZCUmh6IJ6vEi6Yk+8YSEcXNEZ
	oiWRDeWJeH1COoI7yOKlO3PxoTz6o2s8NLZrw5YPIKDN1cG1g23tHhxBkEf4u9xZ
	w89shjs6k9ZouofbOPUZlGPCuaRGsA4kHuvY5oI2qj4Xq0n9uW7m0wWcq38W4wdW
	oezlqA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gbqt6n4hd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 07:26:31 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-38ecc48b3c2so5511369a91.1
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 00:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788161190; x=1788765990; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GCgClY81I44AjvbZ/aXoo8VK5dN9dzyBFnWzQ9hfEIY=;
        b=jmgP6k98P7/RE2V6I/hMCVTgljcTToBkCIxPh7v6Kt9qyP4pXhcTZW42mSAtfSxyC/
         QdjgmQUI+lRKXDUtqF4JiNlISQGq8RIfXcs8B3dZLe8bXfEkRTNIp2/i8tH+ej8VFfHP
         SD5E4vGlgZXXOnjiJzOHMIvx/pytkpd3bZbO4FQUZEkmy+T32t+GX8hZ9zsAPb17oAFN
         ApkFrFMCA5aSzmb8MI75NCcDNnYJg3czVhYW339/p2KVJFKgfa7hesfhz+sPGjL/mtin
         9tomc5RbUkSV96p3x2Z/Z/pzG0gI8xJQjlx2J1ekSD8VgTuhUNhNcRXMPos/qA0nA7fF
         fOLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788161190; x=1788765990;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GCgClY81I44AjvbZ/aXoo8VK5dN9dzyBFnWzQ9hfEIY=;
        b=RGQ3zPFfciWQK9H+Tb1fZTb9IgebC4p6tJ+btL7zPyW7Wnn2c7cSaphjQsKF+UFynK
         O72ZjgLxoJrkUDRDJkaEq6QetWnG9R2f+Bb8M/ba1DQl3tCAgitV8iFZsu83r4PBQGjs
         oEe6dZPLtHW7N1eyBsQ5DEygVx1gUY9Gvzau1QgVaAuP7NMh/akmM4LBdflOuIw0wBPM
         uNzAsFUy0+mcVf83EHXqZyqw9DS5mJVVMclnw7mBwg+3enUNjU3CJazEFHzwZz2Ygs9x
         laMqhxDp98gi5GMT0YvajSA8Z38BX289/C9uJlSt57ja3Ab/x7cKHcoRFAIpMHXLvOmX
         UbbQ==
X-Forwarded-Encrypted: i=1; AKwUvBxrh3/5vIaaWF48tx8X5ZYx5SPJ3RoQBEQxSVLISQ2gWe2jgNb8kWzPqqj0YoI2t7+CmWxrQDSLAMc=@lists.infradead.org
X-Gm-Message-State: AFuF++lc0gK7NCfS0OSGTinexefhHGYhrjYvGl/hgFHBma7fLkrUovFy
	fqtX93OUxFABUuoK1MSjJjAvMkJKXufTX8fm+GzBNd0W0Lb4Tn5PwxH3PooD3YGZ7Y/+jfVahg2
	+rhxbqJh+yT0ufwY7nNjDXEBl7hkybR8+1E/oVxIaoVcCcfThAPbe1xFh9HnWoK/7YHKenLB60D
	4n
X-Gm-Gg: AYBFou2bzgn7yvSbw3UH2sRPkg8h1G4IO52wDae0i8b1yHFdJg+IJanWJbQk1iZrqdO
	B98y43Lv/GI11y4VPM6AlLpr1N0mlnjim6bV2F2XVs/o0CCTRcox0CzkZXO7o0H+rZ6XiJROsu6
	6WFnzr2QvT5ZgzWWcVOG++MCi+QFO25qptU1tVFYSu+Nq8mwGFauUM00m26j8qkMPXZMILVqA98
	GPQCqrKpC1Q4Ypeh8A96EB7z2/81ivH5pmg/O+ZAtaoF2Mh2K+77l/Z+quGvd+9AggvUv8eNlLQ
	eoteuecNRZ58/cuVfrYABpqA39ylnznOmyGeKhWTqr5vi95/4kBMd5qTOGvKcvRHAfHZ1+6VqZc
	nkXAYSDMY0NVmVlC9s7Sjq1aeS/8sdq51Nkcg
X-Received: by 2002:a17:90b:1a90:b0:36b:bec8:94c5 with SMTP id 98e67ed59e1d1-396d0f8e80cmr34398735a91.10.1788161190462;
        Mon, 31 Aug 2026 00:26:30 -0700 (PDT)
X-Received: by 2002:a17:90b:1a90:b0:36b:bec8:94c5 with SMTP id 98e67ed59e1d1-396d0f8e80cmr34398691a91.10.1788161189996;
        Mon, 31 Aug 2026 00:26:29 -0700 (PDT)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286f9595bbsm31327059eec.14.2026.08.31.00.26.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 00:26:29 -0700 (PDT)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 12:56:03 +0530
Subject: [PATCH v2 3/5] PCI: qcom: Add support for Shikra
MIME-Version: 1.0
Message-Id: <20260831-shikra-upstream-v2-3-406661d75afa@oss.qualcomm.com>
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
In-Reply-To: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788161164; l=854;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=GecsPtDzBCsWNuDkEsU+ZgpETbYSghfoMtZfgts9qAA=;
 b=55ch1aG1G4LspPpgrm0K7D/1FVbflwomwl/UnDiUlC25zvssra1xrNLuTowwVyhnQIx1T7i3y
 BD5Bn6bEEdKCCwrq2EXn6BNFfR1UIiPZkXZLQs7q6LSnHDVPq6rJGyE
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Proofpoint-ORIG-GUID: 70KK_gZBzBI1NW5d6UyPJrpmaWOosdoH
X-Proofpoint-GUID: 70KK_gZBzBI1NW5d6UyPJrpmaWOosdoH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODMxMDA2MiBTYWx0ZWRfX/RNUe18hNLsN
 cVHThkwu55P0Q7fwn9LcTuyT7AntRB54N5SbAos98TT6cmiK8J118/JEGTVeW4yn3+CN/Y0zKDT
 WbQ00U6045Je4pILcSVS0HXZyYb9/IGAmI4TttPAdjDhixx5blJNpH1MT9TTHzIF6R1vDxgbrmp
 mIQVxtpO3FWmUZyJLtFiyLkAhRg0hONHYcJNILKqNtHM+HzuZRcs/SqJ2G9Zi/KxtpmPWYkVPIN
 RX0O+750zeDXfnYbwe5NUYuvX6Y+r+VeTVq/OXm7V5kp3K1GDIuOrDFi9cHX4kXQUuDTuaF1R8c
 OC0HJRW33yXETFBBr6Wh+5t83589PsyEt5cyR/M0zopwvyRiOIgIr934nGbVzathoQiJMTCEURY
 E0NKUD29iNhL2o4GQhPP8yftN4f67jMdNuRxYsac6T0y9Oa5qYqtrKPddaAPFC3xIp57onCQiWk
 aGZJw4nlTtn4lwFSIpw==
X-Authority-Analysis: v=2.4 cv=S8/pBosP c=1 sm=1 tr=0 ts=6a952ca7 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=sKgv3_SsqRtbfYgyWx4A:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODMxMDA2MiBTYWx0ZWRfXxvFbnxCikTh4
 to8cQ3kk3vQyVedKnfbQqEHdb8SsvzVE6PL991786dKbQA8iks9wJw/pos9Mr9aPuWf0q7ULfyN
 bsO2ynBjmlwXyA2+kEU2S1JiOOx4zs0=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-31_02,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 bulkscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608310062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_002633_914837_23D73115 
X-CRM114-Status: GOOD (  11.92  )
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

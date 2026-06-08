Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88F8DCD8C8E
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wXEhIAsOlmeemTKijd33tv0irMhpSHEJthKpGxHE5uM=; b=BdL9Pldk3bRN/C
	U8Z6V6uxxpOTKWKX4nvFQ9WL0cioxcahQeNDV2NpryeqRy155iLrZwULejkZrwt5rs3sH2jhq+9ub
	DNKZYUpk1dRd/DgL6WzmIA7HmomAJ75calzK7+NIJjtmTQU/sJAYWIcvduNlj20LRmdYr+aQnLNJ4
	Ys7kUCJgLODFDqBiYhaA54ICv+vqdPzDDYM4VeFxCfQh8DyuanTCY4x6pizkLkuiBxvjmARn9wS6a
	X0e8a6BQIF8xyI58yBgpkFxD0UKU0hzazYKtzKhqOE0syfv4yib+3hKKEhVGQNKwVlXhZ2NB4ca9o
	2B1/700G91vnl7ZMIQeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWVer-000000036wd-0OPl;
	Mon, 08 Jun 2026 08:48:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWVeo-000000036vl-0fTY
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 08:48:31 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6586Qp2O2771081
	for <linux-phy@lists.infradead.org>; Mon, 8 Jun 2026 08:48:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wVm4TdG5n8U+Jqzsg6ytMrzaYYKYP9UWAt7EIHGxQss=; b=Hz/bSFty7HgdrBau
	e5hogukicKy1U20NFq5et88eBdyW+eCgZeJMxZNvbH9FoXoUiXlXZSvpNjFtabG8
	4w/e8cX+l1yrjNeRVSWXMPGauu5jpTu+mrrTVDB4cspCNyzi0yBjkdpCGRsINXqY
	2c/iLWUg3iF2WkxUHeJcFteUh04Oo86xEixQfM9Lz6U57h/mILAYFCJRjiLX/jy0
	Ndzu9tVc7CyC7ux64pD6wMju0IiWRvQsIewn2mJKzcloUCLf88V+sYl8YLrXgXnw
	MMHLfzspsHuJQm27nCWCpA3M+ZDdgjMDLDInILza3PnSwXp95/sV/HLVb5xP97Aq
	NSceSw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4embx6etug-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 08:48:29 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-36b7f696b40so2459117a91.1
        for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 01:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780908508; x=1781513308; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wVm4TdG5n8U+Jqzsg6ytMrzaYYKYP9UWAt7EIHGxQss=;
        b=JKsJaGD1YW5ypl+kNtdlrbqE+oL/zdFFqQvUM+k4agbf9d8qCoF1/rsJfASy3XLxrY
         FlfhXtRgEdiNkyfFbuR2+b4lYPE4FgoJIvRIfQZp5RFtBD7aU6JCtRKOWXlC41lmftTk
         hjvsrQ+pj0oiBSdjnHCjlfhHIZzDjjlRWbzjMtoxCCt25SYgR0vWs2ElFLuDgG2TBb9F
         Sx2zBFPnIUKZeN4NeRCjNxa4Q3f3TEyrv9CFJf/lPxt2BXoW4CnKwWnnslCh3r6jIB+B
         HK6GSQ4bUNEfgY/Cr8NoD0OFFxrAgdonuggkrJXruXHl5qe+SoLuI/VAEvSTAcf7HPyN
         BTxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780908508; x=1781513308;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wVm4TdG5n8U+Jqzsg6ytMrzaYYKYP9UWAt7EIHGxQss=;
        b=McObNtHgCFpEHg7+fXnKok5xwHCRKtjm708guOdXQpJO9TFkXXHCguDX3FTsMt/TqO
         oZkHv+ZzvjcDsgUkCz+5NrTBmW3iZYVOv/2Wt5YeURILT/d1ca2Ud5TAs3ssKhfGOXJe
         j3Wph4TAWoeppUIw+nTzK3xRzsK5BWUFIizzO3appW4xwSn1NFq7qR5z/9F8ArjZFeoU
         DQQ/jW0W1HgmPoR3AN0in4z5fM+yP50ZiCcoogeXWxYQDs2/Y58Vh+sCs6m0pSnEgLmk
         o6cJmwiiND4xgEr1I53zi/18wSjTirtPSc5x7CEZ6pvKJnyV4YVb34iYrP6ixTMXFF+V
         eU4w==
X-Forwarded-Encrypted: i=1; AFNElJ84SGM3rpe0fbkNUGO49jcA6ACC8U+Vi7NVOGStmHARwZ/hcE70gdVHlvKZz/o39qb24xz2KkB8KdU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwAlqrsotTLMg2QCFu6Iwt0lHhk+4/Ed58u/O43ry5Tm1TEOHpG
	YLERjLpbuxdsj8YhllO+b3/eVYVGrwGfAEZyjc9glZEFEEqSDHuMWeuIQeaBuXxMkAWiITc/pGB
	+92CRULBZpt/leG6VrYNiHD0T6U1h0crphubtafCglN9BQq9kRnOofYYAB+WSB3mDd8DJ
X-Gm-Gg: Acq92OGoz1E6WCwi/br8hXmQ8fJiivS226dtdW7/EHCYzGT2Y0L/rJpM16Szh4XXPEF
	ElaaIwrds/B+8iXE+UjIxBDFBiOOLVDLHWPZvqbZFV5EwLs6On12B+2lKDeYC0qBYYCVO4kWZ3I
	+9OmTnTn7ISOgaD4tbgydUiU4MHxdk1Vkc1sn11Ed50NkiZnIy2Am89ZAuZZbfkJExt6w0pSJBL
	jH1jc2dQaLgmLaOPsQm3E++42gr4bdpEH6Gz75UTXyCqGLcGsWBy+wECnJ0/fHiw4IcUojEEy1y
	GHpHlSB0/uL1ccvO+mgAC6Ci7q9qF5PX8VkPxpMMibZwd63F916YIs5Ym24leQ1G+sC2/Wp/Arb
	f5K9qzyplnYC5YNNKw2lctIWsJnZoyywobaiTbTsRhh9okVdPcgy+0CZmlNyG8zSAEAg=
X-Received: by 2002:a17:90b:5111:b0:36a:aa9:eea0 with SMTP id 98e67ed59e1d1-370ee6437b0mr14861337a91.4.1780908508245;
        Mon, 08 Jun 2026 01:48:28 -0700 (PDT)
X-Received: by 2002:a17:90b:5111:b0:36a:aa9:eea0 with SMTP id 98e67ed59e1d1-370ee6437b0mr14861329a91.4.1780908507777;
        Mon, 08 Jun 2026 01:48:27 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36f712de91asm15070198a91.16.2026.06.08.01.48.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 01:48:27 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 08 Jun 2026 14:18:13 +0530
Subject: [PATCH v3 1/3] dt-bindings: phy: sc8280xp-qmp-pcie: Document Eliza
 PCIe phy
MIME-Version: 1.0
Message-Id: <20260608-eliza-v3-1-9bdeb7434b28@oss.qualcomm.com>
References: <20260608-eliza-v3-0-9bdeb7434b28@oss.qualcomm.com>
In-Reply-To: <20260608-eliza-v3-0-9bdeb7434b28@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780908496; l=1706;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=xeSQHPitzN8ohDKs18l6esrdselqsjwFIBvIjhevBqI=;
 b=Sjyye9YT1bQn9mJ6+4RYuHC4tZCv5yvYzU6sZBbvTxZEUl7v12HTT5cSIJN4fkklVSTLMO3l5
 PsDZ6EIIgh8DlCs1TsOCS31yAStdP3uvP8PqWbGxiPtn0dFkAOO6eJR
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=cvmrVV4i c=1 sm=1 tr=0 ts=6a2681dd cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=d5_U1CTwwdyySJRbjq4A:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDA4MCBTYWx0ZWRfXxGQ0HFJs90jQ
 PYp1dPoyOqVBSLGGIy7ThS3CrXxqmedRQROQd8fjOkt4x6fLLDIEWsRhoG7WvU5TzHGoaomEfha
 lht/lBGvotD2MIqY8X+8HUQ5kpqmAmBwoG+by8ZNRh6f70Brmx+V9cZKCfQ733K7NivpbGGyEN7
 kqo7LuLCjObKVicveAIwscTxbry6dSuxSYTXJUkQoGeLXUcy45C6SSkW/AKwkPOQBMnPdlr9Pac
 IdtRrw5H5nJcUhD4GmJrRdSIKexp8qI/WD3ldWXMRR8yAfTgqtV08L1d7AQjS8nlBCJWNqovY71
 vCpl/KnyV0Ydkh7WPZJ8xc7ojlfKhnX0rnU7RAqUGXSQEfruibz2h0LyATo3LhzQYRtUP9sNd53
 q9rZZpRC5dLovgwpD8X/+DUcTEmrFYonVAHDC3DpbrEJ8r9xEL5zaJkwqIgoilR+oDphXgf+7mE
 d/cNF15nJWA/AlR62bQ==
X-Proofpoint-GUID: NtE64qTrHLucBgFJ_U6NtT0XL-a3F_i4
X-Proofpoint-ORIG-GUID: NtE64qTrHLucBgFJ_U6NtT0XL-a3F_i4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_02,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 suspectscore=0 phishscore=0 clxscore=1015 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606080080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_014830_321945_FED672F6 
X-CRM114-Status: UNSURE (   9.07  )
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

Add compatibles for the Eliza PCIe QMP PHY's, which supports Gen3x1 and
Gen3x2 configurations.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 3a35120a77ec..be4bbc327982 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,6 +16,8 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,eliza-qmp-gen3x1-pcie-phy
+      - qcom,eliza-qmp-gen3x2-pcie-phy
       - qcom,glymur-qmp-gen4x2-pcie-phy
       - qcom,glymur-qmp-gen5x4-pcie-phy
       - qcom,kaanapali-qmp-gen3x2-pcie-phy
@@ -181,6 +183,8 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,eliza-qmp-gen3x1-pcie-phy
+              - qcom,eliza-qmp-gen3x2-pcie-phy
               - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,qcs8300-qmp-gen4x2-pcie-phy
@@ -206,6 +210,8 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,eliza-qmp-gen3x1-pcie-phy
+              - qcom,eliza-qmp-gen3x2-pcie-phy
               - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,kaanapali-qmp-gen3x2-pcie-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

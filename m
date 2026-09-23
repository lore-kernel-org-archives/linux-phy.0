Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F642C982FE
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 00:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yS8GSA6fvlsjqaz+CqTm5e2zoaAlQ6Hi9A6u33n21MM=; b=cP/Mv4jmTxK8sX
	5I3cMXqNlD9sLjh5qJT5mB7fS48VzcPuZLEcTh+gyCussDoY2uqov9fBhTk650SC3mDcfb/sIH0h2
	/v774pBPynj/Fmk71fay4ztQ0lPpMPrHBFnB97lAC/E+j30z+sQIFa1fbOtRS8C84Fb/p+LUdLI5B
	XkClxaoLozYWVxBr6pb3iSAPhpTVNAuCyHnrAsZwcsn8yHEYhQhuQIGmG1c+bC5t1f6cKdMYP9Z/S
	P7MH6lnEOxFbTsXuggvcdOsQG+u7SIShWGp4fZBz8GgqXbKUy+DcaJw4cUgJfGiCO69NHvps9Y2OU
	flTeClLLao1ogm3hzQhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9ATe-00000006lZS-0xJi;
	Wed, 23 Sep 2026 00:04:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9ATc-00000006lYl-1jid
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 00:04:45 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68MJIAiU2028371
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 00:04:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mAYr3b3w44P7O8c36VI5MejWSyRbtezegraxb/F7orc=; b=UhMkegOzOI5bhW5R
	1yYQdYMcv8rUEtfh+Am80pt/4D5PqifybEkyffSzZc3zfx+QZRtIFASzYa4m+0jn
	gBFiIpIlD/GBs5i08+NR4a3zv16iRywD7ondKFMkL5M15F0tBvDSiz8cD/Icv2Mc
	yWAST4vsetuIjEetnk1Bhm5c9fhM1KEJ/OkxfgU/Cm/L0kIUdNSvpE35gqAz88dK
	POxC2OXtPyaPVGgjnZJ4IYkmuGDM5c22aUFNuAj6mA65Yt+q8WyM5d1LIeZkM9mi
	z+EnXcZ08bVGFn23835lT20xKR00/GO8Dbqtdo+wfDqkwIHRBHCp35+H5Xm45U/Y
	9KBhWw==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4guqk4unxf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 00:04:43 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-334f782d1abso924139eec.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 17:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790121883; x=1790726683; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mAYr3b3w44P7O8c36VI5MejWSyRbtezegraxb/F7orc=;
        b=ek/SC05x4uUqt3gGAZVXBC1lPr8InTzJohzA4OBKN4O53ckQ50pLNTFP0oom9pMW2D
         Oah2KPbXYdizumKJexEeLmHSFU1WpoCUxcLPis1Rl58GYdjWvFqkYlS+Bv5nG37FGnFi
         rla4YBY1a65zdREpAWxyXaBsmgy8gSieHPNFfdCz2bihzx+tO5QzCMDnsSW/Bkl/mL+q
         ER0BoOpG1ba5rLJ/9g96V3xzNgAHUPGDkL8SP+aIqkhuj0d209ANCdWtFwaUw3ssq1Of
         OyLbINgnw3ap9jkcDF6pte+zuK2vgiNIVFIpSm1L/z1fEPimFJarVQev0u2ZlBHe0M8T
         E9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790121883; x=1790726683;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mAYr3b3w44P7O8c36VI5MejWSyRbtezegraxb/F7orc=;
        b=waGGZJmsjOYwn3jQCFIHXr5eADxVRxvjCeiC7+BRGX4EoYg89RSzKdIfUfYYOQnmY6
         OVG8aIeCltkypzRamcKKY+/DAEXF+Pqc+bbGyW+0TCBu+7e50u2UJMRNvu8fDgFN9hFZ
         fiv1gzeVLeyZRHVBrjfb01GmZFm0X9kmUdZI4Gpht2YUcEa1AmG4r4o4nVnCZOmN5+up
         4T8tLDmhTtqc81Lq7wgbDTbI9It+VuxJEFAXJLN+cSlWssRk49aCapmMdbACV6MlHInG
         lVn63RarEYj6nrChcDunpu1ePQ4xpM2ucAvtf6v/6O7b00PmyCx+RptXGzFLPQrcY2ZT
         3p8A==
X-Forwarded-Encrypted: i=1; AKwUvBxXCAOYeGWlQnc3xXVU2jmlZZrvSGPmqqxoi6Q34uRQ+3PeLmL4iRWmNiEkuTgwWq/YARE6gK3ECVA=@lists.infradead.org
X-Gm-Message-State: AFuF++nYu0K6n/9uEuYkr4+qOqKpg/34JZc34UZz6hts/02LBwDPJgc5
	AofVVqUyXLMArCJZGpb5CR44hhw9HMb+4JM/NRH1/Bh0silG5zZoXK7ZT3BqY93I3Ezy1KN7wwT
	wlWQr+W835C1/uZOn1hBx9lO+v8c9ItuQXb+GuCwrwvc2HpypWuUVqm1kZ16jaj1+zEzMSM8X/r
	TJ
X-Gm-Gg: AYBFou0o04fLHxWZsAsP9paxbtZH+c9IxqUYimaNx1NqKSY/m/ZNlNGkMsyhTuqy5Sx
	A7HOgFqSEdwJ0qFCWhHUF6JLccEefc/kWT2JfPXnmP+qHmdR9dDo3LnPvGABtZQOtdRu+My+Lcl
	kchmgzmUEl2vyKkBO03wu6U88Hg9f5ZXN5Y+knrS73fmZ6iJRJUhLnmmhmLporPL9flE0M7Vx97
	2kwoJpM0GWXSl98KdltsPoa5fhamOnSf7g5YJ6SEwtOAYTGzQ00SJ9Y6V9tVAgWcTOlWeIQiGLr
	jaRccOf7ImjBg8q/WeTxuI/ERr8iPT5wNkPb04I2pCeq7CumxtBR/o1wKD75L8/89oAVw+6+3Q+
	M2ji+b8npmOfXLTfo5P5t1zVkUtuL
X-Received: by 2002:a05:7300:7b27:b0:33b:eec0:eefc with SMTP id 5a478bee46e88-33e8e88ea29mr796334eec.40.1790121883231;
        Tue, 22 Sep 2026 17:04:43 -0700 (PDT)
X-Received: by 2002:a05:7300:7b27:b0:33b:eec0:eefc with SMTP id 5a478bee46e88-33e8e88ea29mr796303eec.40.1790121882596;
        Tue, 22 Sep 2026 17:04:42 -0700 (PDT)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33e939fd955sm1688347eec.1.2026.09.22.17.04.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 17:04:42 -0700 (PDT)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Date: Wed, 23 Sep 2026 05:34:17 +0530
Subject: [PATCH 1/3] dt-bindings: phy: qcom,sa8775p-dwmac-sgmii-phy: add
 Nord compatible
MIME-Version: 1.0
Message-Id: <20260923-nord_ethernet_serdes-v1-1-f8ac1c487882@oss.qualcomm.com>
References: <20260923-nord_ethernet_serdes-v1-0-f8ac1c487882@oss.qualcomm.com>
In-Reply-To: <20260923-nord_ethernet_serdes-v1-0-f8ac1c487882@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        Zhangfei Gao <zhangfei.gao@oss.qualcomm.com>,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790121872; l=945;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=hZ1gaZaGTIxUscu8Ntbw8Y8njqN5nK3w6Yrkl7huu4Y=;
 b=FX2Kn+jl+X5pwVuFZCTvtskk5LbsNnyDitlqPOfmvcKw071Q8Ya70PFZqvP7PD453SxPhliuR
 1lDB+jVAN+mBWEmdH6JsQF3+wHs1/nyugj7yYV/oThE2eaL69ep/Gh0
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIzMDAwMCBTYWx0ZWRfX+31daIx1DK7x
 psm0JVfQWWdO3LJCmN8YE/iuKKozYmE9qCFtSZTjyITyVeWHg0141UsIwoVoyn6xc8td0S8z3M8
 LoUtkgjsIQgagLtRkXgvm524oQLlAUNzmb9oDMnBA3BAfd/JoNkNPaz7Y8E4EyZFtEk4D1Hn7tk
 Pxol7e/V3bCJE/sIcV3641OMM4kI/Zn5aoucvrCRxRjdDB7qsDKf/V6mLJ8sRia/E8Aor4uCLt3
 bg3b6TiULJvRLlLncR+NDR+Lf3/zGqcGEYen3X3xaVJbbx1X+vAiR1gUitEmmy+2ZwUgVvV8Djp
 Kk4DvmpyOOY75XPJ5W5Hrhk/Z+j6rPKNCbw87tINJBAGN3bRAh1L718NUQ0CkLDy/ekf/gBolJy
 rCm5UJH9T+RE/6c1aiLxxRtHNAV+tBawKAWFjnxwSvZIJ+fgXSn1WeWweGdyBI2urMeNiE0ExS+
 JDryBUGwrnDkfx9SlFg==
X-Proofpoint-GUID: kT5BFEsYjkB6LzTAjAmrvI1Xi7lFQv7g
X-Proofpoint-ORIG-GUID: kT5BFEsYjkB6LzTAjAmrvI1Xi7lFQv7g
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIzMDAwMCBTYWx0ZWRfXxWQmK4TcSSLH
 1W9WLxKYb5gLYptSWk44m0sn1laYgmRKOf8g/qvY74fCzvCYy4WcUoFZt0tapXasBZg2l1Uqtba
 Erb3W/qFes81XrPIXeyL6mT43uWxcK0=
X-Authority-Analysis: v=2.4 cv=XrVvqlF9 c=1 sm=1 tr=0 ts=6ab3179c cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=w8Vq9JXYIO6u7lRZDJsA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-22_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015
 phishscore=0 bulkscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609230000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_170444_462763_0C5A65F8 
X-CRM114-Status: GOOD (  10.78  )
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

Add the qcom,nord-dwmac-sgmii-phy compatible to the Qualcomm DWMAC
SGMII PHY binding.

Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
index e573abcb937df914ced25ec87add7955bbba7b87..f2df9983d9536654e838bae4e1e23b832cdaea3c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
@@ -21,6 +21,7 @@ properties:
               - qcom,qcs8300-dwmac-sgmii-phy
           - const: qcom,sa8775p-dwmac-sgmii-phy
       - const: qcom,sa8775p-dwmac-sgmii-phy
+      - const: qcom,nord-dwmac-sgmii-phy
 
   reg:
     items:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1127CD3427
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 17:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NwoF3bJTQsLQ4gkWBVmuPLobnsG6SEqaC0lQRCTamrI=; b=upT1cpF/+Lt4CP
	p2MSP/3rNKg1VliM8bjRayGDr0uWvF8gx73i/PhmNVmsXNTOf1dM1T8NUkbGl0czbJg3RjkxFwORh
	1E2gpxPyShjrWqctxc0HGuqwLuPhwNXuDhPOfOP96pwNd8p9kHlbxzTaXemN7jWqddtQd6opM2bEj
	fnxI8r2cUALiC+OkdmZ0uVly2JY6fySg5SKu4T1lLJhXHI0trn2ByC4rlJ1nl5YEOy3vHtILJ23DW
	+F3q6sVyJ4cNEr9Iu3K0byuv8Dn4SY5UrKq1fylxSG/H8W5Q+4GB9dPnyhyFTMXRFGxqvv8FzIKCS
	e6gHRXC6FGSB7l7H3Sug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJwlM-0000000DnLP-2WgZ;
	Mon, 04 May 2026 17:07:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJwlJ-0000000DnKS-1yYw
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 17:07:18 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 644B47QK636022
	for <linux-phy@lists.infradead.org>; Mon, 4 May 2026 17:07:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=7Hcpw6i2pAT
	sENpryDxAQXYUopirQwywsIEKKqL0g/s=; b=ReY+r8nMq5FtN2czRVMgeCUSJyx
	cALaP7MCrcE8uep3GFh+EILEm5wTgc8kfz++3aHLvvTWvPG+S+uZEZTF87aM6B8S
	e8g/NObeyViXeKUt3PzfskSkCvT/foTClziCApO9Y9Q2gbHMgUQNepbSWwAyOHI6
	j8eLIU80Ii4XTMgDfoh/hXqrTewGwHBiOjlmTNacDtjAJzNv7B/TjGKCodbdQr4p
	taIBes+WIXqHI8bCtYdb48G2T/YCiWhHimVFpPmdtEbSHd1iNNo5aZv+JS071biO
	1JLDtVl08MBo1QXw8o9m0swUb2IA62cYs7/gjxeMIeQp6Kv7CWZnCZXJ9wA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dxsx499rn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 17:07:16 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-365290bc5adso895091a91.1
        for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 10:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777914435; x=1778519235; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Hcpw6i2pATsENpryDxAQXYUopirQwywsIEKKqL0g/s=;
        b=FaoYK6xYrJuGRseE/WLaISUEOokvtasiXOoZZMHYfFVuZ8CKyCjs+PztpIh0H2LiCc
         2ZoJt05OF4logdng1+zK+NAhZCkpluHNDCfSBEhZ8yPWoqxmSKeGJJz/MGZxKnj9kr19
         p5vW8QR6iVbwCroq1VunjSWy9V45drTeKdiim+PWtxMDyA7gCPITtsSIive2ZD2fs+wT
         bB+qLTckPG7V5ALY3rVWynyBj/o7qcNgE7aCWrVnPOnYHmBmoNIi56Gkv441pnrVVAlS
         20r6Fk0A+Lf23H+92cicF31r56NJF37F2/j880JGsmmaTNYl8AvX7H2PwLPUHqHKHwCA
         3ZMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777914435; x=1778519235;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7Hcpw6i2pATsENpryDxAQXYUopirQwywsIEKKqL0g/s=;
        b=RqBdeStup2wTPxBMG2sijyuB+kHYV6Nhlft0A3DDtQ3RCvG9iMu9x6B0BJ2wUxhaBt
         7G8hpMjx4RuK8wz6FBrTD3aulFhNmuWD4++xtKwqih/OUA8aEQ73Scr3ZALzPPMAteKa
         mCOl0iNXZezQSMZUWeqscllnyj10FtwPFxbbpNm5t6dmuhSq7VFuCnXacR9e0tgV6YfL
         VlFje4Rs2+kBUad8wSiqvD6bIUDlt/hRE80Y4whxazawEor2A7RenBcoFjBjMUUuo1J5
         XVrS2T6RKLMfW3U89YQ4BfgAuNICs7E3zyVeeE+IQk2MmB1hXOrKjYb0+Xl99+lrusXy
         VoIA==
X-Forwarded-Encrypted: i=1; AFNElJ93CZmUPdWpOx5X6G3kHHGYw8Wl+6cDrQAY93Ohh+jRb6JxTK+82mKL+f3BOjBa8RPLrx+is3DakYo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx82kMFoWcMC6xsFwdKiPW95KqcgDhVqeDRR8tjk4U402dQTFJH
	TjXUSwndcrPqxOGpcR/jlUdPr3FmToiQxAWsFsHWvhTAeQAA2xCt+JD3VVkwzO/yiZ78Y5OIEFp
	CzvDzRR0BhD7tGVw38g04oHW8Uw0TyOUfi+Ze8Clvvm2K5MLk5x318fKDJSGFxzqNkCJe
X-Gm-Gg: AeBDieseTH7DOMNDh0r6MBdnbSl+/THETmQ1uFH/Ze4nIInw8O/28h0pbhUvgtqybBd
	uySpjn0V0ZCYuBXHB4qAASUAaYWk1oRgdr0kBx7EToJau8d+37ei7MzKIbf4/fiP9lalO3ltB8k
	4RA5Ce4fWue6FrhUGNX4fCG878HQvj6vbnhgr44e8+W62Aky1OJrMNUe1OuG1G4+UusdO7BEVB/
	2y/LLkS15YpucYFVPcjXDXRtrL2Me7H4rpSllCTOWB+ux4zxHWlWafeJfpye5ZxfT7z13ckK9Ae
	KSaeRXzquH7YdlqE5qmX1j6aSTsmXTrxs58EngfF9avstUN6lJX/gS+PVcsUKwFD6UHG+1zG1jN
	WLvMi51PUoZb0U6XU/ZQPrDoJOpyEwA2OdBDtwqW7BQPhGC7aYDggnFtaFyS7rATtu+Bt/tyH2h
	drSUl8aDCxP1voxyB8cUX+Vi/Dqw==
X-Received: by 2002:a17:90b:254a:b0:35e:577a:73a9 with SMTP id 98e67ed59e1d1-3650ceecfb1mr9817625a91.26.1777914435233;
        Mon, 04 May 2026 10:07:15 -0700 (PDT)
X-Received: by 2002:a17:90b:254a:b0:35e:577a:73a9 with SMTP id 98e67ed59e1d1-3650ceecfb1mr9817583a91.26.1777914434610;
        Mon, 04 May 2026 10:07:14 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36528ad3154sm6256847a91.2.2026.05.04.10.07.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2026 10:07:14 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2 1/4] dt-bindings: phy: qcom,qusb2: Document QUSB2 Phy for Shikra
Date: Mon,  4 May 2026 22:36:56 +0530
Message-Id: <20260504170659.282532-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
References: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA0MDE1NiBTYWx0ZWRfXxE8UL1K2aqn2
 S8K3aL3sIC9xr0Rm5+pSgw6gupLAmpxbEYTM4v2lEs0Kr1W64RiScSCV8Rj9R9TMlv3bOVyM1aZ
 +tvVn7NBZR91+w7GflePfciH6EzHqzEppVirWIP69/Gl4xa6WGbJ0PFkIiqLx98qBCtgXXXsus0
 BSapsg+XfikNc0uCv73hvpGg8rZCLv085Wp2oiPDV4x7wuYEmskd5Bw1TkC2OaKfJ8lYW90k9p9
 94ntTS9fm5zI8fhVn13+2IiSf1G1ra5a/yLDQcv1D17vvOMAfM+R+VZ3i4Q9+PeIhr48VDvi2iy
 U2qtoHzcvTiWUaW9oi4MiELs6whBv3n24xogkT+SGPMrFe5eC/kEREJOVUY+ESEkmFCH+PnkZ0x
 2ubeRpgUzlEglgVSMkgTJMnQCZ13++Zs5iQFuh6f41WAEMc7V5GLtul/Bk2vNpE2PKo2V7/tJuJ
 tKEsFdOlC4MhfwpSRxQ==
X-Proofpoint-ORIG-GUID: hXymQ0LVJsKYmKVxSUlEMvvF01TBTPEF
X-Proofpoint-GUID: hXymQ0LVJsKYmKVxSUlEMvvF01TBTPEF
X-Authority-Analysis: v=2.4 cv=LdIMLDfi c=1 sm=1 tr=0 ts=69f8d244 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=ybcDLLt5cEg1GZjoCqQA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-04_05,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 impostorscore=0
 malwarescore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2605040156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_100717_645618_6781052C 
X-CRM114-Status: GOOD (  10.59  )
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

Update dt-bindings to add Shikra to QUSB2 Phy list. Shikra SoC
has two High Speed QUSB2 Phys.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 39851ba9de43..ddbddeec6fb1 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -28,6 +28,7 @@ properties:
               - qcom,qcm2290-qusb2-phy
               - qcom,qcs615-qusb2-phy
               - qcom,sdm660-qusb2-phy
+              - qcom,shikra-qusb2-phy
               - qcom,sm4250-qusb2-phy
               - qcom,sm6115-qusb2-phy
       - items:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

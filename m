Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CE11C53209
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jul 2026 10:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o3HgykB+aYCesGdjDexh8KQGmKq7CKjgWHxMmEAltiA=; b=fhI6TGQYRpqzgC
	kYAJdx2MaF4UGi1B1OvtvRdvMzlBjrr/+Djpfo9a6wO2S6xNMKSrBdIcO0jni4ygDB+EHrEZFl1C5
	lmzRr8zaDy2mHTPHJ75FQizL/jNaM6gftIn7kImjw8v6KPxulVpRfaR8M3W+qdVwL9iGVDhtgT46Y
	lJuNgf8/z3o+JSo2aVn7R89ZRUSYJp/TWM9cHTecwM+KQu8bvUYiglq6u26l1YTXMd6OB5mCjVn/p
	D3baQzdjRl6eZQ8A4FLCWYZaKxsJzrCFVwkd8AcYyOtLRC9bgzOlHYh7Up19ZjiEjRROmtqranpcN
	vcifSbO4FJ9X9mcI55UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnCj0-0000000G21O-35lR;
	Fri, 24 Jul 2026 10:01:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnCix-0000000G1zH-2jVA
	for linux-phy@lists.infradead.org;
	Fri, 24 Jul 2026 10:01:48 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66O4lNBo2138098
	for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 10:01:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1xzZ4TYv3eyDh/q626F6lbXEnoEWyDq/x87h4i2WaNM=; b=lM8/GR/xLRlV1WoJ
	F3lDG6tE7Z5cdGNVWElmBsQ7ZIOZRWilEhn3tAZpPt4/d4h5mlLsdVAIjarNUQEk
	1c4GUrZFCwisxJ48L6uHAJUxF4J6Sn2kPtmJ0o+0P0PqP3hGHLzecAjtadPQBhjH
	gBqPgqQGT2yZg5wjr4UEZuo0S2OYOactMqXXY2UQp3i9pfbMNnnbS3q54VYrrITb
	AIPgj8e8x91PxKp36BMQduYO8J2BkJ9O4zj+x2Yc0QnnF3rxrexUUuPJAp2d0X68
	IYGZ8w0AAYSdmE0x8CSAFI6xOhg6tHx1PF2+4M5HkF6MRxAB6jrSeNkNNkTGNFL2
	2LBBBA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fkqa1b8xd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 10:01:47 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cbb6433e9d4so397602a12.3
        for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 03:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784887306; x=1785492106; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1xzZ4TYv3eyDh/q626F6lbXEnoEWyDq/x87h4i2WaNM=;
        b=Go9vS5nDedjeEacJnf36t3g+bGMTmB0J5UXuVXNlJ83IM8zz/Wgo+yzyDRXpehgkoM
         ODRFX3xRRkUs7hkYRoCrcDTO1biw+GxzFLY9PsHszNgsxoq+8nA95Ca/w6GHSGWTrLqf
         crhQ8lDQmPfz0Dhj99TfmVKXb1JOwf7A4Lqh8fPdQ7sPRjfUk9p/Cuf2t7UAXVzsmrQv
         6wWHT9y6td56y3hSeW/flQCg6bOXS0sGdQZRdvv1VckQyyoh1688B5N3t67s/0evicae
         Ts0PtShgs988VNqXx9+wylL/QzL4XKTcBHdeSUPcr2P6Zu606nHuIvEZimkKTsuVD18G
         nzFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784887306; x=1785492106;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1xzZ4TYv3eyDh/q626F6lbXEnoEWyDq/x87h4i2WaNM=;
        b=Mb6AVcRlqrFWHXM50gaJ34VnIYAxBAJa2o5nTifxCa/ExBENh4La2gOTbY7/L8zaNy
         H8jedOmnSZpE0wHf+yrvCdlnC7ay6qdL9Z00hNn+thCoeV5SLx1xSqDkENlM9wVACIKW
         EZzNEwLT52k3jYOq7qFNMz8Rjf8YudIXgRDn5vos67dO2tZidLplFMSk78pSsCHc5yRs
         6SZJhkaoNZlzeSscFflu+Iswg6RCr1EPF+dR+7e85kg/1VGd28pk8ORniWKKK5Jc/P/Y
         D9LSG/0wQG+6ep/cziUAenPzJl+23oh3uxzwcxm8SURxTL63USvcAnvDsEJotje0rJGc
         IZ/w==
X-Forwarded-Encrypted: i=1; AHgh+RpONK3Ct8yHxSdm9vk+ie2LsZdTLf5LpqWFVjTf8RRXVHQLBuPIsFDo/jnXf3IsYdc1WEgDbkJYFf0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxhUhHIicHGFxGMbDIMWf9cC25H55zhjuxRseC6I+gcB9TgLeFL
	fE0rMIlE+Y651p8ZE/uP9NV+8lvRbBZq1g9Vda3MGyBHiI+RhpVKXdlLKUhGQo2NmcFP2o4Hpfw
	hjHU9S/wf7MkBv+k/fom/I587L3b71npPPm8SvzZyQPbZZv9VS7sNw0SvxB1J6eSqr00h
X-Gm-Gg: AR+sD10UfODcQQGH/oZumWwt6erw362g8yF0ar8++04YNFo9n2Ei7e7CStCAcfVG5px
	J2B4dROsBw/e1VwMdd8lrVWHweA6hK9OMwEOOp66nDXhYEaEpWYu4GbcfMNcm6zxFq1S6/0WyXJ
	d5TT/GpyB+mZRG4I8RhScuawkrq7rRSPWR92XtBxYvYAezfKNgC57kOoPUq/gmiY0cVrDBB7fC8
	uSbcKHDQDKlTwrVhX6oyXxM9YwIO6v9hScUi5hL4y6gJwhZsR2wH4aQGZ3hnRMwQ/HQ41kloloC
	2Fh+X5CLgdXSAfmbTgEOEN0hAzVzK/WvcKXjqpw+V/V1q0w3x7AQzsHRWncBh4gfReBoj8rW+bu
	2miqHFrRj9uIM8RLLcIbltw3kTGDuo5e7StCN+8/Svdw6u/k=
X-Received: by 2002:a05:6a21:4d0c:b0:3c3:9251:fe49 with SMTP id adf61e73a8af0-3c44b1ee70dmr7362935637.50.1784887306363;
        Fri, 24 Jul 2026 03:01:46 -0700 (PDT)
X-Received: by 2002:a05:6a21:4d0c:b0:3c3:9251:fe49 with SMTP id adf61e73a8af0-3c44b1ee70dmr7362904637.50.1784887305969;
        Fri, 24 Jul 2026 03:01:45 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3147e1c9289sm29515427eec.29.2026.07.24.03.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 03:01:45 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Fri, 24 Jul 2026 03:01:22 -0700
Subject: [PATCH v7 4/6] arm64: dts: qcom: glymur-crd: Add PHY supplies for
 pcie3_phy
MIME-Version: 1.0
Message-Id: <20260724-glymur_linkmode_0724-v7-4-65c8469c6b65@oss.qualcomm.com>
References: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
In-Reply-To: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784887301; l=909;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=hNJNcXrNH9t/WVgtwP4qKBm+72KdIBYy832AI6C7B9Y=;
 b=Vv9RQne1q6h6Y2c8HqXDglkrX0naBuTuN6Lt7DDTtPB7r0B0T409GqfC9mhVtdgG/xSRbB9XF
 qX0nGE2ivWcBoBPjb/WgmIaL76UAM2QPj0uukGBUdsp5vRC6UYCUvER
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: G7JkUq385NGRhKB9NUsk5JBypV3OcUCp
X-Authority-Analysis: v=2.4 cv=L4wtheT8 c=1 sm=1 tr=0 ts=6a63380b cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=A-Hq22lvr9pePbC5bZQA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI0MDA5MSBTYWx0ZWRfX2ltOIPWzAq3b
 mFK+OM80eYdM9zgGhIeGujKcSzSAOeTtb3rXmvm9yCQ3Rp3GW+ZdSgdykexCBRpJG9eK6gzGr64
 vvJ5Yj3rBx8dV8veCM1XULT+uy7L+O3YLE3JWlQcIO0vC/KIyf6dHgSjnXiEDp8T3KrsryLHVGZ
 fblrObgwjY5FfRXPJ3jqXSIFEPdDm8Y9dGoxuVDwRvbU9dKW46Ily8Fx/TLrkASoDqPt0nrJs2b
 sS1Mntp0H9C12ed0KzHL2DA7wOkG/gl+3ws1I9pxwP1l+igNT3Gi0hdAreleEZWDhhT6gcfxK4F
 /peX46vmIvJbilhy9+ic74gjDal8FGUhWrsG5LQkDAtgZCqLs3/KV+eQ1e7vMDubKXxzw30Ru3l
 KP2zHzrgCx1APxuSZT+tXhrDTSgulQZQyS/X260nA2l0WbERvXNfKtFqkn8o/KFAsZbo67P/Yww
 t/zxrPoW0DB4BHIkjJg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI0MDA5MSBTYWx0ZWRfX2mmly8IgFHKe
 niL+B1/VK09XDS5RXbzYTHGURmYoMRmhuELi9HRttpr51u3rBQ/Iq/DV0gWHZdXCzZvWZM8S9YK
 yX/WzWy774WVzSMzOARIr4x0EHFWRdA=
X-Proofpoint-GUID: G7JkUq385NGRhKB9NUsk5JBypV3OcUCp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-24_01,2026-07-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 impostorscore=0 phishscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607240091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_030147_693823_A157B233 
X-CRM114-Status: UNSURE (   9.80  )
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

CRD wires the shared Gen5x8 PCIe PHY's regulator supplies through
board-specific PMIC rails. Add the vdda-phy, vdda-pll, and
vdda-refgen0p9/1p2 supplies for &pcie3_phy.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 6125617de82a..0aae613a33ad 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -28,3 +28,11 @@ &mdss_dp1 {
 &mdss_dp1_out {
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
+
+&pcie3_phy {
+	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
+	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
+
+	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
+};

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

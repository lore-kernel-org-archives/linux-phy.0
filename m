Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB9F2C5AC7C
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 09:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4tWh8U8fXVUa98cHsBjrD38eimqsjGXgQ/OYjC0kQ4=; b=yv0ubv1VCxsnSo
	pYyqbKFsuoxyVWGU8ubQ/I5wxBJbZ3n+iQXW3+I/M6uYnSxM/fm8Q6ox2NJAURkxPW6jDHdDXWCQw
	Bg8lkc67DGEqAC86CLPT6gC6OP8YkyBldFp7zmurCewTkVfP2PSyLrNsUCHVVnUEbTcZj/k/ek13L
	HMLHdlT6YLDlnbS/s/T5Yiu1YdKG0SnjhR3M3VWdz3Mv9QInmu7sQyOoSpVkb59DsKmP28VZAQuuM
	j+87E5UQtDoOMzt+e36JMbGNAy5kBW++TaiJVOb7P3Gx4qc2RspmUsRiDcvbrBak3v9pf7nuFnTmI
	3DNsXWRPf3dp59kim4Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsHEm-00000007YaG-1fuT;
	Fri, 07 Aug 2026 09:51:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsHEj-00000007YXf-2zNG
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 09:51:34 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6779Y5kO262298
	for <linux-phy@lists.infradead.org>; Fri, 7 Aug 2026 09:51:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pTeEo+Dd65vWHQ4gLv3lLWny6GWaVci+AS0ORkAy8Mw=; b=IgLMhYmK+Hs3Y0Ek
	9jL0Ce1o6qqPWRqDXFAIoZmEzYBdI2Js70sVPGFgSNEt/1aT6xUQuZCprVRqBO2R
	L9XYJTLnfPcAznaLx0CVPEMMs0JIMlbVsQx+2cmXhYxmGwERE2h66HC2JnqkaG3+
	Z8KfJX9/4ThTYF9ePX6rbpFkTLf9/BK6eyV0CaMsv3k5wPTgkCpjr2j7QUu3Ujk6
	O/yhgmYDEo1D0x/cKe5SQhfoBmciLzRprbyGZunxfoldENgexmaZIbCq5pyyQd8e
	RV/UpwkzL4aDGbO/Kgpbw+ZEe3tqEwip0yPNybCSAMqsa8pMFZVzkN1zED40fzYT
	+jnjyQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fwcujg1xm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 07 Aug 2026 09:51:29 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-84e4ef486c7so1772006b3a.1
        for <linux-phy@lists.infradead.org>; Fri, 07 Aug 2026 02:51:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786096289; x=1786701089; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pTeEo+Dd65vWHQ4gLv3lLWny6GWaVci+AS0ORkAy8Mw=;
        b=WhtlqUA/buwOUGWfjxpsR3va1e28U9UYKkQK/6d04+1jv1bnxHE6uJGVW2DC0cLo+q
         iLoL5nOZiLyUH7fSVDHIXKkFMULMKmdmxYh7ZMzVZcSqueHwG+hhNknMdM7r+AwIPXiH
         ax1P9U8yBbLsb5oAo+cuUidUp53jEr86iZc9npx/Ho5oaIGuXZqZY0La+B2neVPghO3L
         qRi2ROexdy/4cXsPbAABkNSnLSrLmJF4KuCaqosbHPInXIifdmSyw7fg5EJFh4iuGEVV
         J02k8aWcTenwC692zfqPzgpZNZYbvukED4WGZkIVzNND1i4FFTmrhPbCNJ4svYnM0g2b
         vMxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786096289; x=1786701089;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pTeEo+Dd65vWHQ4gLv3lLWny6GWaVci+AS0ORkAy8Mw=;
        b=KT5n/ZDOh6XrWDPMeDMBWEyFxe4dQ8aVxRCds5EyfZ3UHI1BkRiQsfyDfh6xAf47d0
         8B7Yh9ngEFqB1i2mI0lVyV2ZhtPd1gLT9pQDcucCkeQHcQ6nrFVO6EiAKD8e73Z5XGIV
         xwH3mNzCIhtGGCsUixnNTr4EacrdbCH9FCKh1zo1XGD4Q/XgRj59d5gRJ7I6fRXdsYNR
         W8owO/Ed3g5HQI8nuHZx4p0znOXISZqF0Bk3hQ1GNqdRyjnRy6Qa7qRfojmJVvI73CeJ
         kzR8mhW+L1R7wdjCJ4JO3jF/982NPT1E6aj6BBpTRpa/7bgHoTOTNqEOXw2tG+HtQl8b
         OKOg==
X-Forwarded-Encrypted: i=1; AHgh+Rp8J/Uy5t28zpENorFc74unsJzmk1hySE6nWQAjNoime5bFryt5JvRReG9qHXJ1x66zcuNqJEhC80s=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7ruySmlhkIHI0GXUus2car99zO+dSyaTyyUvuV9ARqAHE6Tzv
	bK2sqs7t8BOcBbwf8Ikih+bopS4wSQFHdCdD12JoDNkjBztUSr4TUv2FxQh0XYxZTPalabiIY6r
	mHJswkTbWfZL9OOl6nQUYPFY/WEqV72DmFHBkalIAPSXGYKY8z+8Z+l6NmFobZJJDFcoK8/fH/o
	oS
X-Gm-Gg: AR+sD11xgb46XcsgkygHWXH4HPxzivCL8wkPbvr+e5tOZ5oTWhXVa+Dmg1o/wDjc7n7
	JpSCsEBX4hiRZdlNPt1PGW+Ay2J7hqQ9R5rN2EAQ/JKp7j9r2/bj793IQl4PTwBpZilrDFZtVkr
	F0YAB4KQGOnBUEbnWBkrlqzPvD3+ZuZXsAlrXIUlk1w4Z8uQgAktnVOS3cBkbA3ogQbJfWxmhK0
	ZkpkMLL4caKY9/0a4o1CT7fsI5q/DBGHhjRYX1M0INCd7JaPxljgvgZ1i/59cgIPe0PcByJ2ex8
	W8DswQg71LW76vpeOi5LAcynyP7S7dAE5KXXSRIDIbuA/6MyOP/T61bn5Rnc2GqBTrvPOmo+gY+
	ykQNuUSiA/YW0ba0Qcp4Ip1vohQIkOpLe9QG3WQHGQhKGdjQ=
X-Received: by 2002:a05:6a00:4b09:b0:829:b08f:7353 with SMTP id d2e1a72fcca58-84f47d5512fmr11250210b3a.7.1786096288729;
        Fri, 07 Aug 2026 02:51:28 -0700 (PDT)
X-Received: by 2002:a05:6a00:4b09:b0:829:b08f:7353 with SMTP id d2e1a72fcca58-84f47d5512fmr11250159b3a.7.1786096288265;
        Fri, 07 Aug 2026 02:51:28 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f5a3cad9dsm743785b3a.23.2026.08.07.02.51.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Aug 2026 02:51:27 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Fri, 07 Aug 2026 02:51:15 -0700
Subject: [PATCH v9 6/6] arm64: dts: qcom: mahua-crd: Add PHY supplies for
 pcie3b_phy
MIME-Version: 1.0
Message-Id: <20260807-glymur_linkmode_0807-v9-6-dd1c7e236e29@oss.qualcomm.com>
References: <20260807-glymur_linkmode_0807-v9-0-dd1c7e236e29@oss.qualcomm.com>
In-Reply-To: <20260807-glymur_linkmode_0807-v9-0-dd1c7e236e29@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786096278; l=922;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=10NhfOC1gIKAziqSNf6kpZv5eQEAw7aenjc1gCGzbl0=;
 b=x8+krZm+DrW6qkUKMBO+Gnv9Twfj6KHSBbmJvSeUdkrnRdhE4+Rrser1wiFz3Ux4vL5T4MEcf
 M5RqPdMHVC6AYa/m+4WoEWukuNzjP528mrgadLHtsQ9Ua0sgU52Hf61
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Info: AW1haW4tMjYwODA3MDA3NCBTYWx0ZWRfX44fDywc+181Q
 oNI95QAOh+1tsjqowQ51bn+iFU4jB81sa4ik06IGF5CC7U6cShVCH7oxyOKTR0HH5Jj2UfFUsze
 8jQsrre3puQNr60VCdsjgP+PNOWr9bY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODA3MDA3NCBTYWx0ZWRfX0N24iYTW+Jzi
 hLbMNO3eWjQebqdABEvYchfTQazNsYnwAvVD+l7bcB4C5AU7i3V/nJU207wkVNgpfKY4SpGd6QJ
 F22KQncG2hT/e0svn5oO72iR2RgXc7n36//qmVURgEoEh9JDq4ZjP5A8XF16whVtbze7u2zOVUi
 RfFAwgM0pcCPMBfsb9ckoltdr0ECWaac3zeJXX3T/Nd+JOmFR3MGVsED+J9AZvGcbemWBcqaKKX
 eoouupP9pqkrVWTllPBJOKj+adJxURwjK7siS7a8vIZ8VUmWJagsmJ+NjU53xUt9iitb0Uijsc4
 q0FTlkdwO0/Y4k8QEikN3B8ZvCTgrtxp+4dVkDSXTHaNNL3/5WqGJxSp1LqZrCL+/s4TZ6h1qWT
 3C1EfGtPIKcpMM7gT1I11dcADQXhe+AbWAngZhS2uilczzAlYighdj0rPBMG0vmo1sspkMtxqqy
 uEqCaixnCR92ULZnQZQ==
X-Proofpoint-ORIG-GUID: SFi4Sgc02bvx9bEgY0lXK1RZlNoLWI1I
X-Proofpoint-GUID: SFi4Sgc02bvx9bEgY0lXK1RZlNoLWI1I
X-Authority-Analysis: v=2.4 cv=Wssb99fv c=1 sm=1 tr=0 ts=6a75aaa1 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=PkXiIDIAJHO3iIiOwRMA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-07_01,2026-08-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 phishscore=0 bulkscore=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608070074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260807_025133_781340_5E3010DA 
X-CRM114-Status: UNSURE (   9.59  )
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

Mahua CRD wires the dedicated PCIe3b PHY's regulator supplies through
board-specific PMIC rails. Add the vdda-phy and vdda-pll supplies for
&pcie3b_phy.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/mahua-crd.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/mahua-crd.dts b/arch/arm64/boot/dts/qcom/mahua-crd.dts
index fa5229064b10..17e40f2a6259 100644
--- a/arch/arm64/boot/dts/qcom/mahua-crd.dts
+++ b/arch/arm64/boot/dts/qcom/mahua-crd.dts
@@ -20,6 +20,11 @@ / {
 	compatible = "qcom,mahua-crd", "qcom,mahua";
 };
 
+&pcie3b_phy {
+	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
+	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
+};
+
 &tcsr {
 	vdda-qrefrpt0-0p9-supply = <&vreg_l2f_e1_0p83>;
 	vdda-qrefrpt1-0p9-supply = <&vreg_l2f_e1_0p83>;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

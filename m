Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21969C88E53
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 10:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6EHLH4ACNFZha1ITMdPjQH74ZWWcnSI1U+K6l0/cuA=; b=2VhWYJQYSlirpV
	UYRdAZPGz1i8/XzJ+A8ffuP/JRjIc3/15WBW2UzsTQB0PbxG5Rjh5dbSgxTn+zDoiyhDV31IfjSMT
	THCa0OkprrxTAJ5mwmSep/1QTsQhxgOk7g1szZzNqh34WHPnlAqS3eAK3G2iANZcyB3VSItfNNt0v
	9xlZl+ZXPx07shCeJqXY6V6edGYsscoTU+gZrlbG2j8lp9spTti/rzIgKUihtFCZl9/Zt4wLRZgDW
	7jR7PU8oiaXc4thEdyLEzIUgwUZQvxFFjtWHW5oZjbNrMYUvZXumWbRwaJypyU0GObC6LgcgM5Jgg
	1/yXI60IzCRa3ohfmPFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Q7n-00000005riF-2VRn;
	Tue, 15 Sep 2026 10:10:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Q7T-00000005rP6-2qXS
	for linux-phy@bombadil.infradead.org;
	Tue, 15 Sep 2026 10:10:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=6G41HnHEgrSVpZiRgZevEocSE3Y9rd7VdQKi0lBvRfg=; b=qHaE2gopt4Yqj2AxT0dHoDicK+
	rSuQD/tjcXo2kLiODypXZkLDYBQv5+2Fq1Sof8h42UCYwJJpEy/Gdrd0EbLRkKlVZc4Gax3CA/jDr
	YKzrvleO2N0ruaxhiOnEFtHa2UnG/qxxlPbqJuVre/CLhF5yGnMiuAjfK8CTTish06AgBaQ0Dsi0T
	Z9NENF1DXxQddDTM/4Eik20Rvf1S/CQeUB3fDli/tuFXQigDKXgf6RBnZoCSkFwxLvaobFOyqD/3C
	MAESROe89dRWrFlvR09b/nLLZH0ZtGbjM3Tq1TfKI/wsmoxS+Czz5W0ErhM5bzzCA7UlKlEf3k1w1
	4i29dvOw==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6Q7O-00000006X9K-2gRn
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 10:10:29 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68F9h4kd2585205
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 10:10:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6G41HnHEgrSVpZiRgZevEocSE3Y9rd7VdQKi0lBvRfg=; b=h8l7NXCGY1jVm4VB
	EpO/z0UNorqlPR2FYzZDhXXh8L7Z8Eee698qIhQ07Uai6T1I9h9gZX+I6wiiX9p/
	YlyJFFcb5MxErTqs3IsNDa/v68NDYhdeBItJTIDZWu0FQtn9WLEsGWWljrbY4w8n
	jSC6+OLoXGdQF0CIBoGb3mxJEQZfsXtSwyEurph+194AXwW5A215m3Dk5YHeS2Ud
	x3LGyEn37JZsSTx/+MGBgkK1KI2+LTDuEEFN/nu5IerduUIbnoCWX9oq7A3ydIkM
	H7K+mrfX9E4amtHAUtLWapRgE28dAA7BJW191JUww/HjWQsgfH3lc3dlmmJ3x5Vd
	ZLc9Xg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gpx4s9fnu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 10:10:24 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cc11b5dd54dso9512978a12.3
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 03:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789467024; x=1790071824; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6G41HnHEgrSVpZiRgZevEocSE3Y9rd7VdQKi0lBvRfg=;
        b=SnffVee/zJIMvFyrU3UzYLuMP6kere4XwPXXGzfAvtGHd6yvxsa7rCcOi8DcLQG0/R
         mEtoTMxXFsT//L2i1f2T0NiJpPgoO5J4Rf+r8G6/sDKy6gLrRr96L7OOTYmR682SGyQE
         /0Wvc6wXStzSzQ/XYM6A99G0O+hNvJDyCl91KAR3yXqoGmq41nEA7HeHz5AEH/vZXgLH
         0EWxNLqoS77D1TjjP5qRBbmkJ6cnP52paLpeOgiqIHN4QKMvSYK5koFzBP0Fhleu8PP7
         IlrufBvIijkbmvudfolaKlA9xu+l3n/1RyGdSRt8TX6GkhnntKqDhPG6xbS4aMWVkTPu
         3RsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789467024; x=1790071824;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6G41HnHEgrSVpZiRgZevEocSE3Y9rd7VdQKi0lBvRfg=;
        b=xStsCClpGIdV/9BtP27fnn1kj7atidM7V6Ko173HvVfjKLZz0DdRSmh34KJWp+Wmz0
         sQzmUynwxZG57krO1QJDmKEPL/Puv2JuUSHZeDovYMjTyK8lDPlJ35K742tb0BR+xkxM
         FXyZEKW/0BAP0QJBPAlKJXrDU/bmbHGqZ0SajCRkdeci/6+BfD/wGLIs5PFFREx7xKdx
         zNWstHmpnDKnIL84iVYLfaffjqA7n2EqGyG83CQ9yGYclL8l9Z9Ss1gXYKl/Y19AOMBg
         zPQEg1ngkYeL41qS2q8OcYJ4z0tGUYA4eYUKWEJ1jc8U/7H8ObM6g1u48lHZb91ik7VO
         xEBA==
X-Gm-Message-State: AFuF++n0IUh8BO5ynbUFSV3WBz0fH+O08lz5OxwDkak/eZP+vBnSHHan
	0YnM42BwJNhoQ3+M/MnWjTd8A08AhRXtr814w8bxvbFWqXdOwhafkOROFLBqtjO9v3Orc3hg2Y9
	jpko0UFGg6wgXoRcYMhingbTSTzwWZaukcpuOrVKKHQuwZoEtXpt5DrykLplSWmpu2SGA
X-Gm-Gg: AYBFou2KGlbOCI5ZMxfFdcxNFBEAHOlS8TDiNITQB0iREuzdGI2leo0WxyT5u+32N1Z
	VG//LuYts1IV43iFKM/fehTTdvv39IszyTxEg9l7pu7UzvUv4D925H1zHdFQRlHC3ifycBjTfTk
	oepKmjP+zwsCyhb7OwDYZ15DDSbrU6GnJ+jNx/gJ1vQTeUM+llkr/tQDXOyIApUS/TFzrbh5BMW
	PiEDUUmvlQsMqFMHNUcQPUDX2k3EyCYda10Z41KPI0s+Zgm+l3HXIjM1YE8XfIqa7vxyTOZlGLo
	8UXd8/Y7Pi37pK+oKiQ50YmegYn+jQ0WWwlw6VyUKGfVxWkSf2YnVPgYghOShLadCy/nv2NCZjb
	34V5208kPC34c4azrj0o4qtpMHEjKCNv5T+vUgRYJqK5rnSyxhf38sDQ4SltzacIWvsariAIk/h
	wLrsd6PZuEqzo=
X-Received: by 2002:a05:6a21:8cc4:b0:3da:e1b5:2baa with SMTP id adf61e73a8af0-3dd527951dfmr1141432637.2.1789467024233;
        Tue, 15 Sep 2026 03:10:24 -0700 (PDT)
X-Received: by 2002:a05:6a21:8cc4:b0:3da:e1b5:2baa with SMTP id adf61e73a8af0-3dd527951dfmr1141352637.2.1789467023843;
        Tue, 15 Sep 2026 03:10:23 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-14382741839sm14244091c88.6.2026.09.15.03.10.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 03:10:23 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Tue, 15 Sep 2026 03:10:03 -0700
Subject: [PATCH v16 08/11] media: qcom: camss: tpg: Add support for v2.4.0
 TPG
MIME-Version: 1.0
Message-Id: <20260915-kaanapali-camss-v16-8-c9f3f6f4180c@oss.qualcomm.com>
References: <20260915-kaanapali-camss-v16-0-c9f3f6f4180c@oss.qualcomm.com>
In-Reply-To: <20260915-kaanapali-camss-v16-0-c9f3f6f4180c@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE1MDE0NiBTYWx0ZWRfX/Ld+EtkSolFn
 UooCS1L5eMSpysqYFk6kXNxiWpT8ZOccbMtmdZ6NzZEtmpj0ZwfqdvVyvfFe7mAxeMr87WjECsp
 L6uf57uZGlOTlQgimvOwQoHQNBmrCmo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE1MDE0NiBTYWx0ZWRfXw6VOXA3MZ2os
 dwISn+5ROInuLa1MjDvvdCTjDOIZtgN7HeEKyulAOKNEpsafu7sf24c5Pmd6jl/iSSvxQurfEUK
 uKsbgsT/Ehy88+xxpSSrvbZ4SZWrzgTCpBbSVoEfyeywisJEYKnHyBIpkCf21XaRtaKlRB+DkFd
 tgo8AhCelqWbw3wGYS6txuo92O0O8klpeAkB5i8Fc3Ujla5pBTSWlA9JCsP51yojpyvn3VMC8Sv
 NiK7SqLvJw7tmA++HHBxbC9T5nm0eiXecq7NnDKzCz9dpt1NNWOWyidPb2gZLlYknW6xU8WOVF5
 J6Jt/sFfsbPRqPx1yNB72ZkmN8q6WdVBe1iGqu4fJdqbkWNyKSZpU1xAI7lxEgHceT4iMLcWMLN
 BFi3qTjYH3B24A4ylKn3kC1i0vuDy/Sp6eENNSxCORfV7HcGmFYwTY7xocEFZh2+hSHELgNyonX
 g51Id3xrozXohDj0CSw==
X-Authority-Analysis: v=2.4 cv=HsDjiETS c=1 sm=1 tr=0 ts=6aa91990 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=zvpRHedlNIWp6186mRgA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: r14r6ietdDF1iQfv5-YjcUGuQkn5oJkE
X-Proofpoint-ORIG-GUID: r14r6ietdDF1iQfv5-YjcUGuQkn5oJkE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_03,2026-09-14_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 impostorscore=0 suspectscore=0 spamscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609150146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_111027_224741_7430F61D 
X-CRM114-Status: GOOD (  19.31  )
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

Add support for the TPG found on Kaanapali. This TPG uses hardware
version 2.4.0, which drives test-enable and reset through a separate
TPG_CTRL_CMD register instead of TPG_CTRL, and routes its output into
the CSID gen4 RX via the CSI2 TPG mux.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 .../media/platform/qcom/camss/camss-csid-gen4.c    | 15 ++++++++++--
 drivers/media/platform/qcom/camss/camss-tpg-gen1.c | 27 +++++++++++++++++-----
 drivers/media/platform/qcom/camss/camss.c          |  2 ++
 3 files changed, 36 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csid-gen4.c b/drivers/media/platform/qcom/camss/camss-csid-gen4.c
index 4ff2f41f70f7..bc52e4a1135c 100644
--- a/drivers/media/platform/qcom/camss/camss-csid-gen4.c
+++ b/drivers/media/platform/qcom/camss/camss-csid-gen4.c
@@ -63,6 +63,8 @@
 #define		CSI2_RX_CFG0_NUM_ACTIVE_LANES		0
 #define		CSI2_RX_CFG0_DL0_INPUT_SEL		4
 #define		CSI2_RX_CFG0_PHY_NUM_SEL		20
+#define		CSI2_RX_CFG0_TPG_MUX_EN			BIT(27)
+#define		CSI2_RX_CFG0_TPG_MUX_SEL		GENMASK(29, 28)
 #define		CSI2_RX_CFG0_PHY_SEL_BASE_IDX		1
 #define CSID_CSI2_RX_CFG1			0x884
 #define		CSI2_RX_CFG1_ECC_CORRECTION_EN		BIT(0)
@@ -140,12 +142,21 @@ static void __csid_reg_update(struct csid_device *csid, int port_id)
 static void __csid_configure_rx(struct csid_device *csid,
 				struct csid_phy_config *phy)
 {
+	struct camss *camss = csid->camss;
 	int val;
 
 	val = (phy->lane_cnt - 1) << CSI2_RX_CFG0_NUM_ACTIVE_LANES;
 	val |= phy->lane_assign << CSI2_RX_CFG0_DL0_INPUT_SEL;
-	val |= (phy->csiphy_id + CSI2_RX_CFG0_PHY_SEL_BASE_IDX)
-	       << CSI2_RX_CFG0_PHY_NUM_SEL;
+
+	if (camss->tpg && csid->tpg_linked &&
+	    camss->tpg[phy->csiphy_id].testgen.mode != TPG_PAYLOAD_MODE_DISABLED) {
+		val |= FIELD_PREP(CSI2_RX_CFG0_TPG_MUX_SEL, phy->csiphy_id + 1);
+		val |= CSI2_RX_CFG0_TPG_MUX_EN;
+	} else {
+		val |= (phy->csiphy_id + CSI2_RX_CFG0_PHY_SEL_BASE_IDX)
+			<< CSI2_RX_CFG0_PHY_NUM_SEL;
+	}
+
 	writel(val, csid->base + CSID_CSI2_RX_CFG0);
 
 	val = CSI2_RX_CFG1_ECC_CORRECTION_EN;
diff --git a/drivers/media/platform/qcom/camss/camss-tpg-gen1.c b/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
index d29de5f93c18..770a9e5d5ba5 100644
--- a/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
+++ b/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
@@ -22,6 +22,7 @@
 
 #define TPG_HW_VER_2_0_0                TPG_HW_VER(2, 0, 0)
 #define TPG_HW_VER_2_1_0                TPG_HW_VER(2, 1, 0)
+#define TPG_HW_VER_2_4_0                TPG_HW_VER(2, 4, 0)
 
 #define TPG_HW_STATUS		0x4
 
@@ -33,7 +34,9 @@
 # define TPG_CTRL_OVERLAP_SHDR_EN	BIT(10)
 # define TPG_CTRL_NUM_ACTIVE_VC		GENMASK(31, 30)
 
-#define TPG_CLEAR		0x1F4
+#define TPG_CTRL_CMD		0x1F4
+# define TPG_CTRL_CMD_TEST_EN		BIT(4)
+# define TPG_CTRL_CMD_HW_RESET		BIT(0)
 
 /* TPG VC-based registers */
 #define TPG_VC_n_GAIN_CFG(n)		(0x60 + (n) * 0x60)
@@ -164,18 +167,30 @@ static int tpg_stream_on(struct tpg_device *tpg)
 	}
 
 	/* Global TPG control */
-	val = FIELD_PREP(TPG_CTRL_TEST_EN, 1) |
-	      FIELD_PREP(TPG_CTRL_NUM_ACTIVE_LANES, lane_cnt - 1) |
+	val = FIELD_PREP(TPG_CTRL_NUM_ACTIVE_LANES, lane_cnt - 1) |
 	      FIELD_PREP(TPG_CTRL_NUM_ACTIVE_VC, last_vc);
-	writel(val, tpg->base + TPG_CTRL);
+
+	if (tpg->hw_version >= TPG_HW_VER_2_4_0) {
+		writel(val, tpg->base + TPG_CTRL);
+		writel(TPG_CTRL_CMD_TEST_EN, tpg->base + TPG_CTRL_CMD);
+	} else {
+		val |= FIELD_PREP(TPG_CTRL_TEST_EN, 1);
+		writel(val, tpg->base + TPG_CTRL);
+	}
 
 	return 0;
 }
 
 static int tpg_reset(struct tpg_device *tpg)
 {
-	writel(0, tpg->base + TPG_CTRL);
-	writel(1, tpg->base + TPG_CLEAR);
+	/*
+	 * On TPG older than v2.4.0 test-enable lives in TPG_CTRL, so clear it
+	 * first; v2.4.0+ drives both test-enable and reset through TPG_CTRL_CMD.
+	 */
+	if (tpg->hw_version < TPG_HW_VER_2_4_0)
+		writel(0, tpg->base + TPG_CTRL);
+
+	writel(TPG_CTRL_CMD_HW_RESET, tpg->base + TPG_CTRL_CMD);
 
 	return 0;
 }
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 68ddfe911bac..e19f9b54454b 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -5889,11 +5889,13 @@ static const struct camss_resources kaanapali_resources = {
 	.version = CAMSS_KAANAPALI,
 	.pd_name = "top",
 	.csiphy_res = csiphy_res_kaanapali,
+	.tpg_res = tpg_res_x1e80100,
 	.csid_res = csid_res_kaanapali,
 	.vfe_res = vfe_res_kaanapali,
 	.icc_res = icc_res_kaanapali,
 	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
 	.csiphy_num = ARRAY_SIZE(csiphy_res_kaanapali),
+	.tpg_num = ARRAY_SIZE(tpg_res_x1e80100),
 	.csid_num = ARRAY_SIZE(csid_res_kaanapali),
 	.vfe_num = ARRAY_SIZE(vfe_res_kaanapali),
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

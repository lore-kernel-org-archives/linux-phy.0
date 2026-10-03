Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D16CCA5FE6
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIbB5kwZWqdoKwLcoBbVW7IFu+RvzqrOdquUNaJ8l9k=; b=w1oNbymvC1bYgj
	JhsyXE4aIzBlcPYpnHag7q2Sh9hVkgTZjmhxiO/OR8S7/g3NpYfRd+wFlxv018VdJI5h6rizCy1Di
	VpozSJEUPl0VbvrcF2JYKBwWBcGCecOBYOLps30CPpM/WO0ik5XuZEYWMA/51sM/nJNbsTJDX/HGZ
	+KrBvvU2Ryew3dRb6wDpqAkEXUHLX73K/2bOBSxoU3ConucMiCCeRAz5K/8cC4rHb8fBP6bCZmYTF
	wQxaVkqAiAv48Jr7VkIySlKalJGaB7RniwbZzJAMZ7ZnAiMVjA6ia/IqDD+BNtlZfmpUtWS1eW8cR
	Lts7pErxzGGto3XSBxEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvdc-0000000DEGA-0CaV;
	Sat, 03 Oct 2026 09:02:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvdZ-0000000DEDt-0tFF
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:02:35 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6938U7lQ2576013
	for <linux-phy@lists.infradead.org>; Sat, 3 Oct 2026 09:02:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RXUsa80x/1w7XU09zAB/IA5nFL6Qb4lFQWBwrWEvNZo=; b=Q5v453TfNXUD4ACi
	zk0jxYD3aXdA/HOCdsE7bWH417RQuCRjM0JN8+xmmnRCgdGbkFdQBhfYsOhlUH/D
	40w4azfsDgR9VKy2wwodlPS/y/0Kmph4IBvRCtsnCkY4FdGOeJFYbm7r+9cBT3YL
	Lycop4U2NHnW+fKpSM0ZuPNvPdH9sFaFJaMskdPnDnGRErSwCaRpejYu+27b5nho
	tioJu974j1uK4MzhW4bTA2ickdGmmJtrB8YmSY4E+3F2nvgKx31K6iUKuY5ae3RQ
	OGiUs0P9unFSbFK7lBq92kR4F4IYz4y31yqgnCe3Pk5rMKv/rcnMzCDpaN+Iu9AH
	K5mkhA==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h2tverd8e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 09:02:32 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-34e676375d9so148004eec.0
        for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 02:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791018152; x=1791622952; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RXUsa80x/1w7XU09zAB/IA5nFL6Qb4lFQWBwrWEvNZo=;
        b=d7fB27PiPCkmQtjBnfh+GjRQVw08xpiHb0ZBQ55E5MiiS5PQHsRme9sA7h93Z7sIdN
         Sq26RDwXD3BA6LKyoXFMhkEyxRt/vqo989vlaGJMlNoSHJO521rabZuq5d1f8Eu0QGcu
         otse8eqNYO172fhluY/zTydKZKFNjra+q+xyuSv7nfd+jsPcVunWjAkhK2GFzYexw77f
         06r9trZyNQOiT3FQKo9TXLFhOvhUZ+0BMAwfRP/a1iZmF2oMBTNdKLokDWUQXvKcbp6z
         a39DtgkHh7qM6i2LBLj1ec7wXimhHXR4W1HyJhxLojiGflJbmaUPupnrnCiOASF1Y/81
         7pSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791018152; x=1791622952;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RXUsa80x/1w7XU09zAB/IA5nFL6Qb4lFQWBwrWEvNZo=;
        b=gNaNyczaGgGuf3pdTVQT8h1YelN86REHRe+eudKACKWp1ET+7xHv5Uhv+g1WL9+UdQ
         GPZ351wUTv9rP6PbOKNZ9E0DdOBD+mFK6160QR0QkgeS/RC6PGCZRvkkwu0rqvsH0WiA
         fsUKo08ggyhIGoo7qxw6MDzPuxzPy+2AA/W3cCLAe0uV3rIJJN2ff/1xOGtY5gQo/r2o
         In943R44TCNU6HEW1YcYQweuYTGt50BA+QqfMDr6+vOTGs8iSiUVj22C/ahXtcGOLIVL
         7SsOKW0yG84DmozvWXPwPQ0zX6UcUqDXHDN2kHimeyVNFeicGXLihAs5lAJjI1d/+vq+
         RJMA==
X-Gm-Message-State: AFuF++l44wpDeE5BWlW9dKbaniFaImtdDL2XiqdLxScZc4VnVbezOStB
	NQZhZrAemrM86LoHQlO/j2ZMAAWTgvRkbIFNoT8JXR7Xox4V0AyKGnhf2NWa+gkunTfMD9KKqbp
	ZZAk6quSmaJ3PhVAg2r+iBfpuqSdgXhZD3aXU57rR+RZBK+nk6lSlzezYz6T2E7HCcIAH
X-Gm-Gg: AYBFou3Vh5MQ+7ODlaMyUDHHTDVtcg2UZL28IkKuNVImVY/nZopOXFBVYl79EHcxqn0
	IwvRb0SWY5XiHbN8cd9e9cOu9hXAEqzKwrMVCESbDWqA5/tF66JjdX4hPjIQQ1ecqRP/JL1MeGf
	k+BguvYcp6MHJRT9Je/G75Xeo47JBnUOTe8OrTdpPuwp2q2kX/AR5A1toMI6tdY4kk7apBnKj3X
	t1s8utrW57O3mDZH0NrBkled/kv1okIg63Jntgx938Fhpm7I7m/ZHctVJDz0fqvbigBLCmwc72T
	qlrScbI4NoUxU7keJ/1CtN79XP21EQ3Q9tFVLLJrUophW2bljl2X+/18DS9NrES6xYq3XwabiE9
	1Ykiffyl7Md0gS0HUUXbKCmEfX/Yn3jwxXkLHXQ2ysbxrdK7uDgwVbk9rHYpoM/9lEy6cDFBjvs
	U77wC6W3YQ5w==
X-Received: by 2002:a05:701b:451c:10b0:151:ed93:e273 with SMTP id a92af1059eb24-151ed93e5bdmr1698403c88.19.1791018151960;
        Sat, 03 Oct 2026 02:02:31 -0700 (PDT)
X-Received: by 2002:a05:701b:451c:10b0:151:ed93:e273 with SMTP id a92af1059eb24-151ed93e5bdmr1698384c88.19.1791018151403;
        Sat, 03 Oct 2026 02:02:31 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-34f14f9f2afsm29278695eec.18.2026.10.03.02.02.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Oct 2026 02:02:31 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 03 Oct 2026 02:02:14 -0700
Subject: [PATCH v18 03/11] media: qcom: camss: Add Kaanapali compatible
MIME-Version: 1.0
Message-Id: <20261003-kaanapali-camss-v18-3-87ba4ebe0db1@oss.qualcomm.com>
References: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
In-Reply-To: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
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
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-ORIG-GUID: twcrAE9FUzCW8J6TTw7qBQH4q27CwGEn
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAzMDAzNSBTYWx0ZWRfX5i9zX5efM+bo
 hNGwDQsZH23MarpQIcXOMoGMtswiJdEFs/owoJlZ3coWCqZQlMjEiWiQHxfJMEGMY8A4Cg655lr
 1rLWbRyLvQq/Ig/WUHbSOYJIOt9ew/U=
X-Authority-Analysis: v=2.4 cv=YoGa1IYX c=1 sm=1 tr=0 ts=6ac0c4a8 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Eph36bqoL6-XvbZcx_wA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAzMDAzNSBTYWx0ZWRfX4d4lqROQYvhc
 lqaKtghgkYPwulus1F+SDWBbxl/71MVDVyOFJfLcg8Mj3fvhCN64Yb8Vo3wlkjVOt58AzEslBnf
 o+rfFdKCok7KocG+Fc5eVVyCI57Td5yMaKy1ARyPFHuQ/UtupNiwZ7lxbOChaey1uOQ6tB2/hfe
 iivCK0Q1A+NKWImTzStsOyCbuAvFen7/vjV80DH4iOuZf9aqCN08QO485Tl3XXNavDxtxSgq3iy
 iteIkBqdcxfCeu1XZ/TTrY9kF+zWGsZoYV93BiFY//WjLb2jzL/+ktwqGlr+2XnfA0z+dtHsmJu
 /e7MgarhTNhn/PFSED2b/Z6cRZX8MHARp5hmbR9Xl0YWlBQkJR7dqrQoood3FzhDJyg/ZkmDKHO
 ywVkb/WTW8HX/Fv3p21o+VXPPYUxgLxIcWf8q3V++aw7YYkFBdNIhw4vG7W+/J07p7beWRRBPy5
 wVFjuEqZ7vbFgeMGK/Q==
X-Proofpoint-GUID: twcrAE9FUzCW8J6TTw7qBQH4q27CwGEn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-02_07,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 phishscore=0 suspectscore=0 clxscore=1015 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610030035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_020233_264014_BBD000DE 
X-CRM114-Status: GOOD (  14.43  )
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

Add CAMSS_KAANAPALI enum, Kaanapali compatible and Kaanapali CAMSS driver
private data. The private data currently includes only basic information.
Later changes will add CSIPHY, TPG, CSID and VFE resources.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 22 ++++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index c54185c93a8a..fca3de214a92 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -38,6 +38,20 @@
 
 static const struct parent_dev_ops vfe_parent_dev_ops;
 
+static const struct resources_icc icc_res_kaanapali[] = {
+	{
+		.name = "ahb",
+		.icc_bw_tbl.avg = 150000,
+		.icc_bw_tbl.peak = 300000,
+	},
+	/* Based on 4096 x 3072 30 FPS 2496 Mbps mode */
+	{
+		.name = "hf_mnoc",
+		.icc_bw_tbl.avg = 471860,
+		.icc_bw_tbl.peak = 925857,
+	}
+};
+
 static const struct camss_subdev_resources csiphy_res_8x16[] = {
 	/* CSIPHY0 */
 	{
@@ -5576,6 +5590,13 @@ static void camss_remove(struct platform_device *pdev)
 	camss_genpd_cleanup(camss);
 }
 
+static const struct camss_resources kaanapali_resources = {
+	.version = CAMSS_KAANAPALI,
+	.pd_name = "top",
+	.icc_res = icc_res_kaanapali,
+	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
+};
+
 static const struct camss_resources msm8916_resources = {
 	.version = CAMSS_8x16,
 	.csiphy_res = csiphy_res_8x16,
@@ -5810,6 +5831,7 @@ static const struct camss_resources x1e80100_resources = {
 };
 
 static const struct of_device_id camss_dt_match[] = {
+	{ .compatible = "qcom,kaanapali-camss", .data = &kaanapali_resources },
 	{ .compatible = "qcom,msm8916-camss", .data = &msm8916_resources },
 	{ .compatible = "qcom,msm8939-camss", .data = &msm8939_resources },
 	{ .compatible = "qcom,msm8953-camss", .data = &msm8953_resources },
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 7dc2fd9f03e0..0551211f7948 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -96,6 +96,7 @@ enum camss_version {
 	CAMSS_8550,
 	CAMSS_8650,
 	CAMSS_8775P,
+	CAMSS_KAANAPALI,
 	CAMSS_X1E80100,
 };
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

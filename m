Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00283FF885A
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9MdgfbDS8NHXgcgeFKI50wFc1OMJdVWAT0xzysHyciE=; b=yPXZWrwUUvbvw9
	+qlkTtLuJ/YQvSr+2qtr6kjdDpWX9cdIz8Otr8Kz32IeU0YcPoefG47aoVzb3eOBzq9fy9prfniVs
	bVz3Zc1LuYlwDRL2o90/9GKw1NdDcMNYGAUdhG1uMD3WImaxGQ1lM2Rs9dKXrUqdJEIO+ZrXSeUlg
	1wu7+wqCnKYcEpE6fCm+l7fMna5SLy5AivixOe1biXo+ddjTFIhRjUxxHVjODM0PBvF+NK0V0xN5J
	JF6ePztPi2ZVEMd8O4ic+dvma1+PQles1eMdO7z0JDWVKQTYXuaXsyuVhcG/ecmKPPD78WlXY7/rv
	juaF/otlCSh/xyOX6xCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJwlZ-0000000DnPU-2eGy;
	Mon, 04 May 2026 17:07:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJwlW-0000000DnOb-3LNE
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 17:07:32 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 644E2hhm1186892
	for <linux-phy@lists.infradead.org>; Mon, 4 May 2026 17:07:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=j56RPVoQs/E
	HqShchuuBXHfNfL9pTjlMbfxbxuh9Cys=; b=KlqznbClezUFLMrmZTSB/GRVxtJ
	jAtjeI+kCvUYck/SNsnN1uU7DVV4/cUXHp7UzahF76fm9qV2xZiNHfx16ohdPZHw
	6nwd+8Gfhv9IL45YcSVugbSN8HT5S1MHfvtJXWMH0RxPUqLH7fpA+hCqcxePV06Q
	GaUVntOl8pprWCJVdAs9zPLQmrR3XxrvaE2tnAbQudH5ymWbS6Fj00GjHcNvpXK3
	5jtGcU/3+UCxaohyrI4euAHSFdviwzAMtpd71cjGiawkFymXVOnKTopJRRqt0iPT
	B6gcqsMtCxVK7+OviDggsFkhtNk/ttA1giRNNMidXnqtLFyuS2MG+HZ2MFg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dxvvg8q0e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 17:07:29 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-362eaa3aa61so4428289a91.0
        for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 10:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777914449; x=1778519249; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j56RPVoQs/EHqShchuuBXHfNfL9pTjlMbfxbxuh9Cys=;
        b=KaO1jcQf6//gF1B9o5L2WaS1BFC442ENvO+yqe6Z3+aEsAxjrNwHKE/z445FHxyLSy
         gupoyKXq/udj263Gq9cY8zEV5PE+ewhb+jUbdmDgH72KJ9QPqcqVYf9U8lVExMl20C6n
         EtnaK+LHgEqJ+ip5EDvAqZHyPBQ5s06qkee6HjmQGzmbiOGCa4SSkb5co7ykk/isNnoH
         rgCJIhiou8SmnvzHbqNukKM1otMrZMQ4EY7fjIhZAMGaGQT4fxBAPXDzeEjEsvmPgn7M
         T35orqZYVVJTLNzABYIYqFs6r/gsOBn53OJVcIyLZGpqB8FBf6DKaJ+b4736xw9/Hw6c
         rNWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777914449; x=1778519249;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j56RPVoQs/EHqShchuuBXHfNfL9pTjlMbfxbxuh9Cys=;
        b=YBpUhBkeomc0Z6UF+92NTOwlGZmsb2em9+9YIjiEptWOYHNYYle34jkuElHk972yCV
         T9oOg16ZC1Jwr3kfk5o57sWOEDIi3eXsMVqZFKQvxfeJnAyifGZCLO0kgR6tpuIS/5mq
         xGrsH56AuagC6aaoW2alAIYF4Pry653SHDfN/uCIjF9o588pFFokr6GjtpdjpmLgp2gH
         shatF1iLJWE/c1eS6f//vrsXptj0gkEaLOa8prsB/SotnehuRJextsxbD0Y9HomEoetW
         GnAxdZvBqL8d4dhhQ218Lb5E8Ppiw7hpTb7vNjr3kE2YNadqYv7LcI1VoyPoijAHvswP
         zeiA==
X-Forwarded-Encrypted: i=1; AFNElJ9m1MeucwHEtDMPyvo2oWkrAafWR9m+m4+0WrzFvEM//+eIFHDAOQONQ1QK+b1saeM5CVrHmgHCsxM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzDarc548Pp6D/YgPP16tbXkVS2zqDJ/7ix/kbrBVn5dsDXM3We
	Vr6kEx9nupL222Kxl9edfACY0dkbeiEN6EDN5+TtBxLlcx5rcpu7m5xf/eoNbUfv31qe7Z62v/w
	XLPnAGtJOz8TwDDeIyItp0OtoRy381/PnQogMEU3HqJ/w6C3zcPsOAM7zM0HYsztK1q3o
X-Gm-Gg: AeBDieubhj0RyDZbkMwRXdA1QJCStlggc+XG/QtSGLy0mBOMYfbNqTnwQvgBFaRHgOk
	MP5nFYNG4pW2gpsIp1N9Snc1y1e/lz8FptaVMJD0Z7aX/jHJrASewDTvxibVlZR5KmDXqd8Ugg6
	uRzKyt5EkGOefX4Y+foSuLPSFZjZehe/ukcn0CgFespaBD4Mh5A4e3aEOAoWGkVtz21O0mIWKTd
	mPR9WH50ybO2S2syeMJwAPWwR5MKvr/m4Dl1GSoO8V88oycd0AlZzG/CN5NUopp9u6SPHgTwQVV
	kkGTtQPBPKtjd2f5DuuwHBLa5Ne3AQzd1hnlXh9elSLA+gG2sCLKVRLHQjLLKPC0jTGwvBke9F2
	Bug6k+eyWL+UIN0PeZH960RDRBM97y7b8hr4KIO3ctBDTQHVxJARoVwvBaofBAuXUSLAPDzI8yX
	R9Eprf38uNYHlYoRQdx1mbWWdC3A==
X-Received: by 2002:a17:90b:35d1:b0:35e:d012:5a39 with SMTP id 98e67ed59e1d1-3650ce4b8eamr9749068a91.14.1777914448565;
        Mon, 04 May 2026 10:07:28 -0700 (PDT)
X-Received: by 2002:a17:90b:35d1:b0:35e:d012:5a39 with SMTP id 98e67ed59e1d1-3650ce4b8eamr9749013a91.14.1777914447850;
        Mon, 04 May 2026 10:07:27 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36528ad3154sm6256847a91.2.2026.05.04.10.07.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2026 10:07:27 -0700 (PDT)
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
Subject: [PATCH v2 3/4] phy: qcom-qusb2: Add support for Shikra
Date: Mon,  4 May 2026 22:36:58 +0530
Message-Id: <20260504170659.282532-4-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
References: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: rumE6ds7rTM_3_SeRE5PILytqPcjTXjN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA0MDE1NiBTYWx0ZWRfXy9ANXd72TSjm
 D8hOrhiM2aOGAjOUSejjwD2Olc84w8PE58Hmw/ikkjjGZB5nsuXTTMph9i67quTrxKTx1wbNXHM
 gz6ecGO0QgnbxcGd+/5H9zjDa0W5lSyZGCNlsGlW2hYAU9ONbkUJHepms38hgOLcthVrRuiYRrN
 lO0S8hBcQUcCTzIW9ieZTG20Pv5gsE85Now3s9LvaWvw5p+VvxR3Vtx2fZoa5ixkTiLdcfQnqN1
 53soxx1K+P+vkkDUl+EAY5gFF++W3ikC0lA20Y7MxWvsM5TCcXeBniWJpwwtZ8LND6x2KeYadKP
 y5PZuGmhQ3A7YiCFv9A+dGUvH/ldkgt082gQ7rOtXSkTCmLGpzSo3XPiaiy/wDC1M4GD+1Pc8ZC
 Bmng3Sr/sL/NvN8I1fvB46hG1eZmHo8NqLhpuhHsN9jID/EQSxTasc7vS9TKZvGDTodsOA7O9NA
 GqxDJHvWyJzsnLVGvFA==
X-Authority-Analysis: v=2.4 cv=K+AS2SWI c=1 sm=1 tr=0 ts=69f8d251 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=Fn7aRh_OGbpVAvsfffcA:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: rumE6ds7rTM_3_SeRE5PILytqPcjTXjN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-04_05,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 bulkscore=0 impostorscore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2605040156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_100730_973914_BDAD6EE1 
X-CRM114-Status: GOOD (  12.87  )
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

Add init sequence and phy configuration for Shikra.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index eb93015be841..ab7437e7b751 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -381,6 +381,19 @@ static const struct qusb2_phy_cfg sdm660_phy_cfg = {
 	.autoresume_en	 = BIT(3),
 };
 
+static const struct qusb2_phy_cfg shikra_phy_cfg = {
+	.tbl            = qcs615_init_tbl,
+	.tbl_num        = ARRAY_SIZE(qcs615_init_tbl),
+	.regs           = ipq6018_regs_layout,
+
+	.has_pll_test	= true,
+	.se_clk_scheme_default = true,
+	.disable_ctrl   = CLAMP_N_EN | FREEZIO_N | POWER_DOWN,
+	.mask_core_ready = PLL_LOCKED,
+	.autoresume_en   = BIT(3),
+	.update_tune1_with_efuse = false,
+};
+
 static const struct qusb2_phy_cfg sm6115_phy_cfg = {
 	.tbl		= sm6115_init_tbl,
 	.tbl_num	= ARRAY_SIZE(sm6115_init_tbl),
@@ -958,6 +971,9 @@ static const struct of_device_id qusb2_phy_of_match_table[] = {
 	}, {
 		.compatible	= "qcom,sdm660-qusb2-phy",
 		.data		= &sdm660_phy_cfg,
+	}, {
+		.compatible	= "qcom,shikra-qusb2-phy",
+		.data		= &shikra_phy_cfg,
 	}, {
 		.compatible	= "qcom,sm4250-qusb2-phy",
 		.data		= &sm6115_phy_cfg,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

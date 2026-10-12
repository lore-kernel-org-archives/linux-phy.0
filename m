Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 882B1CA9ED8
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 06:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ckX+nKEYXVMQjXNhSgnTTV2+S8/1EYS6xyCWVjGo4qo=; b=PxPTu5a4Eg9wRg
	Xw9GezBhaq6uqU+r0KQ3kDLkQ4BN0wCbLgL4liZPuSgNAoxhtQVNn64neZlbibfARERWJF4SFKpJn
	eVGOF5hfPOzs+NG9cVoeWuj3zezgWYbVVSDIuepD3QRO1JavvEFztMf+4FVzVYUmoS0FA/7xLNzLo
	8//CSqgvECpu9HavYSFW0KNX88+OonfsFLMRd3xiZ3RpVidh4DNwkOR6VxCX/G+IqmXHCJNYPxH9s
	k3R2dOTdJ4riCOZiCIZnqfixoWdA6wE1c2tLck2slw3YquBUj7gDd/1DhgaXMTOooFoPbS7HI6Vh1
	H3qqelhNzy+TVJ1rzllg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9n2-00000009lfg-0z0b;
	Mon, 12 Oct 2026 06:45:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9mx-00000009ldR-2wem
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 06:45:39 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69C55g4q2355004
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O2nGpKGuo9PQV/cUE+oKkjMvrl+HzJ34DmABGfvxrMg=; b=Nwd/GctFMc4h0RgD
	OtOxkz6WQbSW7iFafI5nsRAQJ697wyjepyMikIhbBrn+XM3QxwyhmACo5GiZhBKr
	yMcXbGLPii5bF0s0tCnMkXpqObOwlByHEzXjDTJkKP9q8IbrRNR/lHOiubJ9NJ8s
	rH4Cx/CNVi8r99wxxpAZgEYCxj24E/Y3MmQY9uPLRysEgwn9UTLIV2rwJ8M18pyS
	tQ1sZOSMqythxfpmC+BvvyKpymVk7x5UPizl/Cbha/pf2cxQ85vZBHCKCyjS9ixy
	Yfi1K1oIi3CICKfAZnr7sS0qGG7MBqtZRQOMtQF4RlnnhQ9muZPXqAdtHy9xdMf0
	IWoTGw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h7casdc9k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:35 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-890a9a4e168so846502b3a.2
        for <linux-phy@lists.infradead.org>; Sun, 11 Oct 2026 23:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791787534; x=1792392334; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=O2nGpKGuo9PQV/cUE+oKkjMvrl+HzJ34DmABGfvxrMg=;
        b=NtEH0FTsMGPoum0VeRtb4KPe6quNGY7lRH6c1MAwK0yLTEYSQmsdMjCOc5Rcdus/QA
         x/wGtnTDhsOOfFG+wnn6QIQpDMqtzHWVsebpMcYFoFucTKB7lzZxk9p4tz6RCLuqU4fd
         v9hOPw2VgX6Z3lI1Xf/woTnZ+yNzqdY0sbgq6m4b8s7ZCfsk3HKes5z6TuSvVYh4oc2F
         YqfYJnUFVCeG382TStp5E+caeTMx/b+tkJ/X7SQxm3KmE5LrSVLyeA7oIavLTH/Fts4V
         c4mOqvuqjWWQR4u9SO2rP7YANOsAiVsBZu+tMWvZvMX1SxjJfKNZL5eQ7wSn8lA41Y6D
         g5HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791787534; x=1792392334;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=O2nGpKGuo9PQV/cUE+oKkjMvrl+HzJ34DmABGfvxrMg=;
        b=IBydFHfPV4n0y3bgy7tDkEbvTNbYvfUQZOD5WkFtdbdzMnvXCdevfyK6yB+KJeFT9b
         RlrxvsdJq28ORJRa+uqVmRH/C+HHI3lS1KUSj3YWjA/kHXSnEjLRmX2t1ggH8pXPWz54
         barkGLHx6ln++ET0hgnxBfqV3gSbwJQW/bQ9ERSdZkexBp15wXHOQsyYunYtxQv4fnKb
         bPp4qClB+fEO6LjJBmBV9o4lfu+yenzridcsuOc/Y9fwn8/t21AOujF5VuIOAK5vzmgJ
         tZgY7c2C6bEWtDF4PbNuCRUK8FP9g4R5UJkv7vw4ZhD9D4I1a217/Ca2kdp1aWBPDP/T
         EKPw==
X-Gm-Message-State: AFq9FYLqpGpMmM2Y5Md5WWypvPbr9t0VdQszlr7PN4arBTa5osYIzk7N
	ayBUzAuVn+/Rdt95CMEVJ3O6JTGK4ZDhUJKrPRnNdB/8o4lAPbWbsz87Yw48SqFHbv/A4k28lT8
	SBlibd/cdtAS+XnNs6xtIf6usNdFChdXVPzH7bpjkHlBcu6PiP6FxvCutJWWT79CiqTnG
X-Gm-Gg: AYBFou1Nv63Wu8CbRus67vDyi5Z+2u8K4beTbEt2kGXukoMh99IuMQbBgp/bFWYOcUT
	bkg5kFRraA31lqF1kh5z3fuhLUa2kTe2iuKKN24Sm9aVpkpXVi47kuZ7pS4uwS3U/OaHBp8leWc
	1i/2Dpyc5W+yfzx3eLosqevCNmaeCrZSMbQwvtHd7fzoGBisZIEOOtHn7wq/YFAvqAxTlxVT2jZ
	puIXfEuoU2JZfx6lM/9JMdyYF/vdXhC49MC60OD4IBli5zEdjeNgDxTxXVGbgQg1/VZpzd4Xa7l
	XDOm8ASyrfT9GC269uzAPwJKZmo1x3xJbVj4cyR7FHpWdvOvK66k4BhT7Toe6O40hxdOp1MQL+S
	TPbfYcgyBfIyPGeGNkLUd06YgNQ0LrdKEDb4j3yot82oc2nIVv9HkHTisvubvW7E4MW53etMvS0
	b4y9+Xn2hb2g==
X-Received: by 2002:a05:6a00:b92:b0:890:b4c2:d7df with SMTP id d2e1a72fcca58-897c3ff4ab0mr6947725b3a.8.1791787534457;
        Sun, 11 Oct 2026 23:45:34 -0700 (PDT)
X-Received: by 2002:a05:6a00:b92:b0:890:b4c2:d7df with SMTP id d2e1a72fcca58-897c3ff4ab0mr6947703b3a.8.1791787533983;
        Sun, 11 Oct 2026 23:45:33 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-896c3dc6c93sm3534420b3a.33.2026.10.11.23.45.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2026 23:45:33 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sun, 11 Oct 2026 23:45:09 -0700
Subject: [PATCH v21 07/14] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
MIME-Version: 1.0
Message-Id: <20261011-kaanapali-camss-v21-7-04fd28d815c6@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
In-Reply-To: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
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
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfX5AfczuGT+wND
 c8cfQqMOV9drmZVOnktrmfvA4I09PNzKcQqLKT/Z42h55xYj9UyydcT9eq5b7VX1KGJagRrcW/3
 rwMvcFUoOCweZVwMi9Sf4oYY7cFYh8g=
X-Proofpoint-ORIG-GUID: Iv9t-ojghQyYkxhNqnQMByrs5s1fOaTw
X-Proofpoint-GUID: Iv9t-ojghQyYkxhNqnQMByrs5s1fOaTw
X-Authority-Analysis: v=2.4 cv=eMWGH3p1 c=1 sm=1 tr=0 ts=6acc820f cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=JczS9Y7s0yypmJa40voA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfX2GeBkY7J2qJU
 98CQR91iCq1DB/RaEHRkFLWm9adf1k06bBRntzHL3gVKDjW7BhyH1OZldzraP8BR4A4qp/27PgC
 WNyTj47hYv0L/uli1z6OZMY4DIpK4BHIH+m22WvaY9zq8gl7opqGKkjNmUO0lNuCRDQ2zmrcfHw
 pFXudhh1QoNfGaIvUk+oq718OpdesCXBAjYKzkTY8MSizyAGbbLBWgronLBsyqf+9M/CEPGCODn
 x/OoFE4LxgiNM7qJ2eAVN4YLp0M9d+SieuwuEiQXjYBMjHoUh3993uUBZYrLpV7y39ukEz4JRvs
 XZOIMJwJ7i7pqqIhQR3dMJWLxL9kCpUD22hETRWucq393rpv7p/cn5k8nnNvJuwdvxvwmdhGwiX
 9wZsy83ssPJAUmpoAL7q4WmlTTpxwVJq8dHniqQe79RlvUuG6AQf3nhbbq92byAaxkS5LYV7Hku
 tIMNElywKQcAIUuuMig==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_02,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0
 suspectscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610120026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261011_234537_969365_73D1F53D 
X-CRM114-Status: GOOD (  14.04  )
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

Add support for the v2.4.0 two-phase CSIPHY found on Kaanapali, where
the PHY is driven by the standalone phy-qcom-mipi-csi2 DPHY driver
rather than by CAMSS. Add the mipi_csi2_dphy_3nm_kaanapali configuration,
which reuses the x1e80100 lane sequence, clocks and supplies but selects
the v2.4.0 common status offset, adds Kaanapali power domain and register
the "qcom,kaanapali-csi2-phy" compatible.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 47 +++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index fca3de214a92..eeceb79c1e86 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -38,6 +38,51 @@
 
 static const struct parent_dev_ops vfe_parent_dev_ops;
 
+static const struct camss_subdev_resources csiphy_res_kaanapali[] = {
+	/* CSIPHY0 */
+	{
+		.csiphy = {
+			.id = 0,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY1 */
+	{
+		.csiphy = {
+			.id = 1,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY2 */
+	{
+		.csiphy = {
+			.id = 2,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY3 */
+	{
+		.csiphy = {
+			.id = 3,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY4 */
+	{
+		.csiphy = {
+			.id = 4,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY5 */
+	{
+		.csiphy = {
+			.id = 5,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+};
+
 static const struct resources_icc icc_res_kaanapali[] = {
 	{
 		.name = "ahb",
@@ -5593,8 +5638,10 @@ static void camss_remove(struct platform_device *pdev)
 static const struct camss_resources kaanapali_resources = {
 	.version = CAMSS_KAANAPALI,
 	.pd_name = "top",
+	.csiphy_res = csiphy_res_kaanapali,
 	.icc_res = icc_res_kaanapali,
 	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
+	.csiphy_num = ARRAY_SIZE(csiphy_res_kaanapali),
 };
 
 static const struct camss_resources msm8916_resources = {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4FB7606A327
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KTA25yS5;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=nZzseuKE;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=WZHuArlj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=tD517zJDvP55ZkHUK/Yxne+8iTbk9MByhcAcnz+FRTk=; b=KTA25yS5pKcUPmh5dN1LFz1+VB
	L8zK0RONwzpNeygQtFZ1pXpvjQVkr6ZBw+7PEKfSubOGJL5kLfLomnIuJ99aNoYH7CrlByrR0epay
	F2/Taqd9S/bgpjWgAne1UazzM1KYoxB3Zp5g0UmPuIXIzHAG3TqAz/mqsSUIlZUJY2k45ikCj2sdB
	NOlgpJVmQKPewPSQOBbrgtP1ILrzNlVXJlKz0HfdPEefVW4YvOVVWdcepTgj9OMQ1CVS2b0qNL7QA
	eBHN99kGL1FrDr/lkFrLr1r302w9bk5TW3F/DjCTs6ywgqmp2eCYPhK3S/PGSTq/WgMlp2Cm4zlLh
	o60nNfjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5Sw-00000007Kwt-2nmq;
	Wed, 28 Oct 2026 15:21:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5St-00000007KvH-0FHL
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:21:24 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SFACsR2001630
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:21:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HAoVo5RcQ/NoFGjRJUTPgIdHUenOlnc1PdK0zXPqYhg=; b=nZzseuKEmdajGeTK
	g56F9YULRkwTioXg3c2PI00JMwS/wiMdnkstMV9EQ15zDq7euDY8hncpZOEKNCbH
	EgM0th+McGsiTQbjUeuY4NZmBE9wbM4Djv85Zy9YwxtFvyNxrG7y9r58Ln98jBov
	x+nqTH26SMk8uTUaE157DWTUGFFUyJQg0mgr2b3/IewYwJyGZ80t8S+gp9jW4KA8
	q2RQYqpPglc71/MryyfYUK9oSkxX2zTpkcdluGXKrz4TYxZaLzQWLbRhxYKSeAyl
	4eSaAQumcfORrfLIikFwmLgK0vjpe4KoDBLoypLY54kguOR5IpmgUWCa8dwObk4Q
	C+2m6w==
Received: from mail-yx1-f69.google.com (mail-yx1-f69.google.com [74.125.224.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkdf7sm51-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:21:21 +0000 (GMT)
Received: by mail-yx1-f69.google.com with SMTP id 956f58d0204a3-679a3664e1fso1808221d50.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793200881; x=1793805681; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HAoVo5RcQ/NoFGjRJUTPgIdHUenOlnc1PdK0zXPqYhg=;
        b=WZHuArljDuRT9t9k16lfjbZ7by53NtDK+8kkqxmiZNT/5NdMjd1mzXCVGp6gg/jrSr
         G33RR9R2lSTDeaN7RckXx6aSxlbDTUrXttkoYB3ENlKVDEajAZhbhNpp/DKrDOvAYEwD
         XxRfB1ZypUmqaT0ByISwtl90hOw3tw5VfYBKGdzL9uCEz2QIuOa+WtLtqI4B2pKnYred
         85NeUnSwGVGZqTV7lALe0ZemEMXkR9z2JE1n3WOs5CfpHFEfcxoexDQaIXANo5aiTBhI
         J99APYft+0WiS89PLj8nZECO8JaK/NSCyE2t4MPGBkf1okeg47Q+c+JmsX/mRC/bpSq2
         mwAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793200881; x=1793805681;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HAoVo5RcQ/NoFGjRJUTPgIdHUenOlnc1PdK0zXPqYhg=;
        b=w/lTqJaRbr8Eb59b0KIehigP6Bom8XSHF+pqFFY/aeW7L7Nt1gjWRqPpdEbQY8LLFs
         Q5jCBHG2gMk8u8zA+Qn77bGzsS0GPsLDRZS0t0+a6bAh2VpSe6REtQzJ3ZIkvVZOyxMk
         JgxzscO9TdaZn0dE3N2uPKUsxjzw2wuHR63fkPOrk2PiFFcmcwD34A1mV2T4YYLm0Ncj
         5cZMTvfswzhfQglltFNyO2ptFrlWUfAfWjZaTTLuPRRCvl/jMKa1yWItELDJMPU93Y5M
         ztrfabfJYPunDEvj6DDJ+7VmlbTWU6biA5tlavhQGAzO7wdlOn2XcMjpu+8EwKc0TBM0
         OjBA==
X-Gm-Message-State: AFq9FYIB20ZDNt3MczFbEvrrJWoUOr/nyeaQ6evhTvahZUmXcHgOudsk
	X6p1dMbuSQndehy+VJiaymJ8FrcD9+I0toWj+FSxpyf7Nrd1fDYOisKKpXIgYxRNWmzi77MZa/m
	B+lBE1w/S9KNpQ8LC5aX4aUl/UCP+ZQXNO3SjA9NcUVpASKFVEAJPbtyH2b78TJec+xwS
X-Gm-Gg: AYBFou3zn0hY9wUra5JTBO4OFiRxemtoKc1WFk/6PlPx8kQuyLJgg+C96++vePoBa8b
	GvFlcRi7U5mOU2OGNUhx8pfIyQ0Zd7vU1M0cXLGq+0fh3QoIPKPGhkwGw7sx9NiM+CoPBSitPLz
	ngs4FmPcMshqt7qnTnwi7EgHHZBm7z/10DvfASHy1RY5BVHwD/D/ilzt+GpKUP2vePpM+8yn5EB
	F02CDAwmxiAdOe+XOd2Bp0RN8lLiyfSKNMUx6ZYCyR38kIh/Ua1hyc3qDTFrdRvu+crhjE+H5hc
	vf8yWnAjGHmeXFSl1EWarem1P2WdJt1SFbE2KkslkiUoRrrzkaa3TgZ9iZBGd05Q+3lr8LxHYne
	BG3tIl5EoD84jkUKwKfXppzbk8bjwlZIpg3Bv9mfY6ouqafeOF1Ebds2HwUvebry4iYy8+qfa+3
	Nxlqq0o8ASaWnD0qYjjnT57ScZDfsRCdCEjDa72ZWaS7QHVbGKvVDttHON9y3i
X-Received: by 2002:a05:690e:438c:b0:677:d31f:5a6b with SMTP id 956f58d0204a3-67a7bc157f5mr1294959d50.16.1793200881078;
        Wed, 28 Oct 2026 08:21:21 -0700 (PDT)
X-Received: by 2002:a05:690e:438c:b0:677:d31f:5a6b with SMTP id 956f58d0204a3-67a7bc157f5mr1294931d50.16.1793200880381;
        Wed, 28 Oct 2026 08:21:20 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-67a803cdd1asm1107541d50.4.2026.10.28.08.21.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 08:21:19 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 08:20:42 -0700
Subject: [PATCH v23 08/15] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-kaanapali-camss-v23-8-95f250b18612@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
In-Reply-To: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=M4bYuCws c=1 sm=1 tr=0 ts=6ae212f1 cx=c_pps
 a=J+5FMm3BkXb42VdG8aMU9w==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=JczS9Y7s0yypmJa40voA:9 a=QEXdDO2ut3YA:10
 a=Epx66wHExT0cjJnnR-oj:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: LCtY1YbPb0ydkl_CBMS74U11y8ZERlsM
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX2wuYEVRZ7YUm
 UBWYmJoa+zsWdZdr9VJpoclsXE2Zx6//I9OATqYTsyWFn6ZdQE/FpPnVhqDlgdF6eRWrj/VO491
 UIi4EO/wQveZTJcsRV2c101UQ1oZUrA=
X-Proofpoint-ORIG-GUID: LCtY1YbPb0ydkl_CBMS74U11y8ZERlsM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX6Y/cIvEbf3Ii
 T/81NYO/3YcgZ/DN2AYKVrDz/9YJeBG+OU0zXoTtUGgc4KiO7/sUZTkKX+dxCIWhC0UMaF01pG5
 ZSS1oPad+/1o3/E6eMXaej4Nh8KJ9Fd2hwifLgGr+C8cUhNJ5ZHYGRbBj+3+gqS6J4gTrMCj59U
 bn38zRhWhZLJwoStoYBT3JBQi0kAmfvliDBxbpHVtXysAiyoSCiyzwTTEa7i8YvBtUERZZJ8Jtc
 P/iIW4sbzsnB46D99oI6MyzV9pOtgWfHwtjCONj9IpH1a9TE+p5ptrEPWsSFFpU1v+0gJCQ5UJg
 qTIholn/Z81TZ/9udry9k2SGID59n8RpInc701Xu+jkIWYpxs1FGRnRw1x9QuHfznulKizUfGJY
 rl8DAfedb0elII2+YdXg4Dkk+MhCg7KrRpoFE4Qpn53j9tLXbUwXPH1AQ0VSmxY74soePABeTn+
 U/zcwOgeVtRfRJ4kXtg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 impostorscore=0 malwarescore=0
 bulkscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_082123_221074_C5AD452D 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -1.5 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

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
index a64242c66cf0..b0b63dd3d958 100644
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
@@ -5607,8 +5652,10 @@ static const struct camss_resources kaanapali_resources = {
 	.version = CAMSS_KAANAPALI,
 	.pd_name = "top",
 	.pm_clks = { "cpas_fast_ahb", "cpas_ahb", "gcc_axi_hf" },
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

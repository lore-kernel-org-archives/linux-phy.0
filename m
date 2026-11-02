Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E3A606A32C
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 10:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lh4ENhJI;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=E+QysNm/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=VqsL7yNh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=x/Cx8g6tRtU043gi48FtxL8O0/Pos167U5xNMwJjb0w=; b=lh4ENhJIA0OQ16Wulbk/jdtaUn
	6GQTjwiaW0t8S1pBZvzeBdOEFT3UvzQsyvXFJB4AJV90rG0h2D57GidoKOLL+ruQ33iZRuWa8DbwR
	kT6lbWBXxO5uLRUIO5hh9chN5eJ42PIrorOhSeKdbZihNOKNdIMwDzUU3+oL0Y39+CiC3PS/LMRJX
	3Skbl+lVmplGVgLLDcAGmBnPRdkmDa6//thQvYAZAS7gpR4Z+aH0CF1q/LuCA7x7MylXd5/dNGgvK
	A97v4rO8sUV5vuIASRGmOwmVCOJIgTHYCloZKlT+Vgti1rE00amqueqWr787N9hUc8HZx7U0pnJtg
	9CjhcIXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpUv-0000000GCW9-0fnV;
	Mon, 02 Nov 2026 10:42:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpUt-0000000GCUi-0a0h
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 10:42:40 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A29AMtw1821213
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 10:42:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kaChl1N+iCvgmPzHkGFWk1b6Hw6K8fInINc94iGF4BU=; b=E+QysNm/Qyt7uaHH
	EhBmFhYev/i6tr1AFSIF+c07VXDkYZZPeOY4XQf95VmfRnV7Xa5pUwFuEwCFe0ml
	fryMKyuHMliHXzKu7s/E8ibZ9eiWwCmJvDY64fy5tBqFzoqK4UL1LBHjcU6zl0nf
	d9nlGfmrVWtmrYQQuSbm9ziLKf+P6wS0rcZsEg4eZUZ2xFq1iz47Gc/O16leCeEx
	EwYjMUii3pg5Zgf9uSdOB1Y+QUJETc/TP+EIssk5R1kVuG1gMW/on5KS9PQzRz3a
	9yJG2QFFIdIgSBfHu54dPXMhN6Xjx3ONGR0Q0TaijU98M3ZLuivitiguPBjRBkgz
	JeCYAg==
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hpky4h8wc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 10:42:38 +0000 (GMT)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-55bf11583d9so3920774b6e.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 02:42:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793616158; x=1794220958; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kaChl1N+iCvgmPzHkGFWk1b6Hw6K8fInINc94iGF4BU=;
        b=VqsL7yNhS/VRupwUgRnvDML5P9uasfSn9Ng5ojS6DqdRzPNSfiRVrlPjoIDizs5kt4
         /iOGv7RP7PQeK8lZCZDJt25xwoxcMhvreSZ5Fcj/R/+5lEECnOW4I1mFxeH4iZ25tNjB
         04jum4RLtDBzvejotq6/CRN8f4OKt8HZ3ed6jExEgKCP09bkNc0y9dFRnFJ0eVYcRty3
         jjVOOkDZf5adhr+beRmqVlm3tJ4FhRTHDMwMgkXYshNx6bhxeyroCtC70hDB4TcMSHAv
         57u3R8nOlISWB5+ioJo0e7EhcQBJcd2+5PjsMEKm40g1ZIemT05t8ZNwPFWmZfo+6BPh
         Ws7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793616158; x=1794220958;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kaChl1N+iCvgmPzHkGFWk1b6Hw6K8fInINc94iGF4BU=;
        b=sT4BbYuNTfTIHv5MjUnn0durRvX1Hi4PW75j0ZM+2A+plw32gsQBRW+zetJM2RfSBE
         l0+F5HOv81Rp9qkNmN+PJ/i2AStYrkvVQwSQV0v2LbYFsVAQGU31cED/wF6IFEbgh0Gm
         vT45Tyclwe293Kpk73HQPbxl1YOwFwbvOkLw9s1u01xPcft7TASLw0AdGYuL4eQ7dZwB
         9w0aXvcyX8ye1rchOB3LCHQNiS2gOa140vm0Fhu07MuMkEwpiO9jTp7PbdOu2uXNqPJ2
         ZhF/P9U0BzZbhNHBxcT8kLq0hnX6k0qg4FZAhvoHh1Y6BeS8mxeOScr5FcJCoj6X3IMS
         wlLg==
X-Gm-Message-State: AFq9FYL5I1nge+Am3QBQTYgtkv5inhINoTtzwC4tltT4ycm/Sam7W1sk
	/m7vsVvkRilAi9Wr4LBkFT4KEms4bPgKXQxG1iIzbB0ehYuvBGo6PHo1MGZ38Bkqjzvwg6kYRgO
	th9pN6vi5WO2nAW7zd2JQcpCDHaIyPDFIjZOwMoWkM0AYReoZrvh5YFsrQxI5lLmJm4r8
X-Gm-Gg: AYBFou0JRst3DCkx9zUE6WdDwHj2XBj1mXN4oyiTQX4VZyUpEdQ5ko6iXrRkb1QFHeq
	Xk1KsNVRBJLHhvqRkiv5ZWejDOd3kSb1y6x6hVhC6ouAgqTvJwwFxOfbsFCzNAFVcKsmKgjU5AE
	GeJA12p0sjfnNlOIGgs7boTxHJ6RBd+qbfmnYjFEHj8dVRumdmmWIekDIYcv+p949Z3z5QL8cDl
	5po8Pi63mitvxVM58FiV67s3jYuBgFzHDmp57RoWRkrvVwOfLIggDWY+t15FZFCul2WnN+vUsxC
	QgWtVxesc6xgugpwtaHD9cjGHIDSTMLktldCkJwi2gwHWMypV1jdtNG1NykJbYjp4O47MUqKNGj
	gzneUqt2U4zCLJWHYekFgGvDQFCPxZZSlu5Y/CpNBsmzhAJO9MO91PYLCxEHwy/I7aoCsej0Ki7
	CnDjVZx7TVmAjYlbgMeFYRjhRHdB3XYfsdSbwzpzGp123n3mrBLVmpowLbJ1o=
X-Received: by 2002:a05:6808:1798:b0:4d6:9133:cfea with SMTP id 5614622812f47-563efc537e0mr6202227b6e.47.1793616157739;
        Mon, 02 Nov 2026 02:42:37 -0800 (PST)
X-Received: by 2002:a05:6808:1798:b0:4d6:9133:cfea with SMTP id 5614622812f47-563efc537e0mr6202217b6e.47.1793616157279;
        Mon, 02 Nov 2026 02:42:37 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-5640fe0fc77sm7447171b6e.12.2026.11.02.02.42.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 02:42:36 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 02 Nov 2026 02:42:19 -0800
Subject: [PATCH v24 11/15] media: qcom: camss: tpg: Add support for v2.4.0
 TPG
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261102-kaanapali-camss-v24-11-d6b8f3f6f66f@oss.qualcomm.com>
References: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
In-Reply-To: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: 2P_k2yfJ5rexSWKCdTM0BeRkCZw48ghF
X-Proofpoint-GUID: 2P_k2yfJ5rexSWKCdTM0BeRkCZw48ghF
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfX9liyUtrWU6d5
 8MwvNKS2zIyQMM6vKMIDB7GcpisbvFdnVjmZbmXQqbf0SDZI6ZVGh43TCtQmsrLkVO3F3eYe1tc
 cYXhiKbfyvct13JhmEYl9AbjZVbko34=
X-Authority-Analysis: v=2.4 cv=QoHLTlyd c=1 sm=1 tr=0 ts=6ae8691e cx=c_pps
 a=WJcna6AvsNCxL/DJwPP1KA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=WuBB3ILsY1tR9b9Bs04A:9 a=QEXdDO2ut3YA:10
 a=_Y9Zt4tPzoBS9L09Snn2:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfXyTxX7BilUNw9
 stFQQtYM/Az66ZGBms/1H0P3vvCOk4SlVSFRHvU8WAnjfjyhwFE7QxYgHqF98CW8TBd6+di95FE
 FmjqFMrbGvOWMhhSx9UeTuTZbHh3+YnRP/R0aLI+2HhfW7dkBUOMcgy2FEcBd0/I7tuPUqWP1FT
 8hUUGt0lsi7jxzU7MGeDzcvZSYGZDXBpgbcTZ9V1c+0Mvv2ZrfPWy6pzZkqR0aGdxQ7kwfghh5+
 iSgGhbpIarS7V52GnwNLbsSqeaTkaf4RwPvny4Nq+0BPGrM58hbYVUDtHiJEK/DXp2egmBVVwVB
 9ve2R2tpTbwnRZevIaChQGAmWViEP2h0Lcg/qBAdQzzk2GqS6qXvo+WfkrRTxrX0pOHxGvJ9NCu
 deGsz1wcPBo1G+CM2PLxLd2dyMAqfocTAnVBcSUODSp3Lf6l7eQJbpmBD3TFOicukVnGSpxjJtJ
 G7kYgOIJC2T0wox9UXg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 spamscore=0 bulkscore=0
 suspectscore=0 impostorscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_024239_189388_5993DF98 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: -2.8 (--)
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

Add support for the TPG found on Kaanapali. This TPG uses hardware
version 2.4.0, which drives test-enable and reset through the
TPG_CTRL_CMD register at offset 0x1f4 instead of the TEST_EN bit in
TPG_CTRL and the TPG_CLEAR register. Its output is routed into the
CSID 1080 RX through the CSI2 TPG mux, so the CSID selects the TPG as
the data source when a test pattern is selected.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 .../media/platform/qcom/camss/camss-csid-1080.c    | 15 ++++++++++++--
 drivers/media/platform/qcom/camss/camss-tpg-gen1.c | 23 ++++++++++++++++------
 2 files changed, 30 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csid-1080.c b/drivers/media/platform/qcom/camss/camss-csid-1080.c
index 3d90d31201fa..ec56ba85a0fa 100644
--- a/drivers/media/platform/qcom/camss/camss-csid-1080.c
+++ b/drivers/media/platform/qcom/camss/camss-csid-1080.c
@@ -64,6 +64,8 @@
 #define		CSI2_RX_CFG0_NUM_ACTIVE_LANES		0
 #define		CSI2_RX_CFG0_DL0_INPUT_SEL		4
 #define		CSI2_RX_CFG0_PHY_NUM_SEL		20
+#define		CSI2_RX_CFG0_TPG_MUX_EN			BIT(27)
+#define		CSI2_RX_CFG0_TPG_MUX_SEL		GENMASK(29, 28)
 #define		CSI2_RX_CFG0_PHY_SEL_BASE_IDX		1
 #define CSID_CSI2_RX_CFG1			0x884
 #define		CSI2_RX_CFG1_ECC_CORRECTION_EN		BIT(0)
@@ -148,6 +150,7 @@ static void __csid_reg_update_clear(struct csid_device *csid, int port_id)
 static void __csid_configure_rx(struct csid_device *csid,
 				struct csid_phy_config *phy)
 {
+	struct camss *camss = csid->camss;
 	u8 lane_cnt = phy->lane_cnt;
 	int val;
 
@@ -156,8 +159,16 @@ static void __csid_configure_rx(struct csid_device *csid,
 
 	val = (lane_cnt - 1) << CSI2_RX_CFG0_NUM_ACTIVE_LANES;
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
index d29de5f93c18..cabbb2638cf3 100644
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
@@ -164,18 +167,26 @@ static int tpg_stream_on(struct tpg_device *tpg)
 	}
 
 	/* Global TPG control */
-	val = FIELD_PREP(TPG_CTRL_TEST_EN, 1) |
-	      FIELD_PREP(TPG_CTRL_NUM_ACTIVE_LANES, lane_cnt - 1) |
+	val = FIELD_PREP(TPG_CTRL_NUM_ACTIVE_LANES, lane_cnt - 1) |
 	      FIELD_PREP(TPG_CTRL_NUM_ACTIVE_VC, last_vc);
-	writel(val, tpg->base + TPG_CTRL);
+
+	if (tpg->hw_version < TPG_HW_VER_2_4_0) {
+		val |= FIELD_PREP(TPG_CTRL_TEST_EN, 1);
+		writel(val, tpg->base + TPG_CTRL);
+	} else {
+		writel(val, tpg->base + TPG_CTRL);
+		writel(TPG_CTRL_CMD_TEST_EN, tpg->base + TPG_CTRL_CMD);
+	}
 
 	return 0;
 }
 
 static int tpg_reset(struct tpg_device *tpg)
 {
-	writel(0, tpg->base + TPG_CTRL);
-	writel(1, tpg->base + TPG_CLEAR);
+	if (tpg->hw_version < TPG_HW_VER_2_4_0)
+		writel(0, tpg->base + TPG_CTRL);
+
+	writel(TPG_CTRL_CMD_HW_RESET, tpg->base + TPG_CTRL_CMD);
 
 	return 0;
 }

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

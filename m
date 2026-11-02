Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E968D60A260B
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 10:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zOKFTSPj;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=UpwnpaHS;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=USZXTwCT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7FREi8zreT9E4L1F4n/LK0xJl+yvZbqzxBL0kSNM98E=; b=zOKFTSPjx5KR5rfH8XntTE+WoB
	rFKk7LNK/7JTxVQyetIbw0GWipVyM5XX/FXCWv/m4tozlsp0YNw/+kAjCCD6dVWl0SMfABTgAWLHP
	+JRtev44zIUjOTeutI86CgCnw4wcx2dMXCZjAffyqwxfxsstEXIMGtZut7xtfJJOyWy0tA/xa2liW
	xeoG7M5VhrR+ENfLvQR/wv7aehRaln9gVF4UxPoVTOgSyHt14j1jMKH6HVFqmXJTc2K7Umy75mzz8
	i1UIiLwiqnuOfiGfxjAZf7rbq3GxLjXbxLkEJOLtOkghpq6z4FdqrxUJxOZHHKyWCgOFxt2y5Rbk9
	sPLNQGkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpUp-0000000GCSw-2rek;
	Mon, 02 Nov 2026 10:42:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpUn-0000000GCRp-1DrC
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 10:42:34 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A29AIpA2880814
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 10:42:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZatxASJgP2LkTYNOdR4KsoVlJiV1ZVJXoCNHu7shP6g=; b=UpwnpaHSAilrnpNC
	45ac+f1d54RpuYYqvQdisI8oRkg6dlc0WjmS1ZGtYGc6Q1HyuFUlQ52EP8I4JF5p
	YyvbL1Ow+GiHcWsvfMLuysZqP1Qlk2iwa/hZpkOuMuLCs28oK+zCYTdy2o6FR3Cj
	XtwP5cjAUKh5K0Gxe6j1Xi3U2yHBLpWQQXgsYh6tCPbxiJFwXdZ3Y/qmt4hXgrFB
	rQjLc6FX9LeyZETvpFDDocIqAaMhQC2mM2nFBYtgxxI+lt50doQ9yullgPk/ALo4
	vMnfcwCgruxBTjE98/6sOhTU0EHtaKDO8E8FSEN91iBmm78FjCBoCSAMYG3FqLYk
	EjCJEw==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hpqfrgdvd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 10:42:32 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-8255327a28fso3529496a34.0
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 02:42:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793616152; x=1794220952; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZatxASJgP2LkTYNOdR4KsoVlJiV1ZVJXoCNHu7shP6g=;
        b=USZXTwCTBcB8eAnc2ilK/3lko6e5RdasgmE+pe3fY86cm4yllknA7aH2rTf2EBozQJ
         MPZPxTIutEI1VdTg/kCG98LNj4lZx0e6aToo+JvkifYsjPGNymUGdl7nZAsEIKBNxccw
         xGpJsWq3JYp811Y45xRYQCVSAGI5/h8KPAFQpChN+YPTAZudsw5Q6D6gJjiSpg/yJyoJ
         zrt1T3Ue234qm46iAfjPlY4D7q43YzxUZWBtT9YGAYzqPv0jUrT7im+GKDQELaDNaZRr
         venopxof1TH+Kbv10oFErKGJTzqZpXMTxN9A068MioSBCzPBc6fgmEivzU1OwDfvoMWN
         oxVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793616152; x=1794220952;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZatxASJgP2LkTYNOdR4KsoVlJiV1ZVJXoCNHu7shP6g=;
        b=qQOf3UjZYCFZDwF7cZeoVBkaPCrn2BvoVsgEp9o0tGwpUYbeZaq370C+k2ITDbGtkl
         PawdqHQVN8YuTIsMrVECA6IRiY2vaemS1P+8uQOf1hhN/JzjO4Mv0WpbvdK+CEC1jY8k
         KgGWm4hkNwl9sSuUwRnAViW9yl13aQQJTVfgNf0YXQyD793JEZqgpcBRPI/IIu5u10Q1
         I+WVSlkuQC56aPMgCAoCmMfVZSXlutKFzaIcseGIBopQ/UuRkiP6oNzbVgQbHhqaDZsG
         wFiv8xWyHkEJjW+HNXL3mc/Hq5W2xqS3V5ACdyYZDr7tCaNH7mbmTxwWSJF5c0I6vQ8A
         oe9w==
X-Gm-Message-State: AFq9FYKIOhd3/nMMGgR6mYbOcALqJELHWST1A1zXatNqyXcoaMVRqjCL
	fODLHVCGEHsnJSK5M/6JcFGrS6Nu3O1lClJYHz8iLSMXD4FuWJZ1+nm4xg90z67GFMjJRkYSIA7
	G57zpxcYh+2XAwuHEsqNQi1ESEygyZN3eriFhKOltLYHjtf0wDpHNZUFyQ4WBzpSbCv0k
X-Gm-Gg: AYBFou2DexVEUJBnKg+GUMa8BlRtX3H49+O6bErNQYk+bGFgvbU4+5GUxQIpuNRMePZ
	hHkSGbft/k3p0wscivmj8CwDD1YR7eLWuiYq8I/JN4O16qD6csTy3y75q0nlRrTX4AciupOsJii
	Uu3iBO45IxltJAdnYNOuu9mrvrPAmWZQzTnwCJfH8HPra2xx/LmHMcKzpgwqHqcH7GYjlcM7yty
	8bvNZkuOF7hOW+HnAR/CXE6diS8bbt9+x/ZCkfikWHmSfqM1UYfuJtRaXXZPfs2ZQmPLtEo7b/H
	rJblzihO3OgHYgguaralwZRDbO9Kf8mMpIjEqSRtxmjXMw/JNky6kC1su0B30K6gCwTOV+RxTcO
	hOTT3HF3iXEGySySWAZcmm+l5gzC4k+51pPb1ixcFm9K44p9isKDfnJLTK7fLp9gb6UC2GtV0t7
	K/DHHwJxBWwncRRxZ2X7saa4H2xotfW1ktywjX6kiNJJJ83c7AXAnDRyNac7g=
X-Received: by 2002:a05:6808:16a6:b0:4cb:f21c:a79f with SMTP id 5614622812f47-5640df8d97bmr5915325b6e.39.1793616151922;
        Mon, 02 Nov 2026 02:42:31 -0800 (PST)
X-Received: by 2002:a05:6808:16a6:b0:4cb:f21c:a79f with SMTP id 5614622812f47-5640df8d97bmr5915303b6e.39.1793616151442;
        Mon, 02 Nov 2026 02:42:31 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-5640fe0fc77sm7447171b6e.12.2026.11.02.02.42.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 02:42:30 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 02 Nov 2026 02:42:16 -0800
Subject: [PATCH v24 08/15] media: qcom: camss: Allow CSI2 PHY devices
 without CSIPHY resources
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261102-kaanapali-camss-v24-8-d6b8f3f6f66f@oss.qualcomm.com>
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
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Vladimir Zapolskiy <vz@kernel.org>, Frank Li <Frank.Li@nxp.com>
X-Mailer: b4 0.16.1-dev-17221
X-Authority-Analysis: v=2.4 cv=HMJWhYtv c=1 sm=1 tr=0 ts=6ae86918 cx=c_pps
 a=+3WqYijBVYhDct2f5Fivkw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=8AirrxEcAAAA:8 a=2_0--xn6cTixhlPqFr8A:9
 a=QEXdDO2ut3YA:10 a=eYe2g0i6gJ5uXG_o6N4q:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-GUID: 1hcOEafkC4RyNfF1P7TYyPsR0BoXi3ls
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfXzo4I6CZ0bWo4
 TPYqVTkSxqR56MYd5Vi0i5nVti8UwP7k9h0zXHokYRZxj0SUnqMNPZuWbqIKF/VTwAYfZ4Ru9NC
 eI1iaV642Bvw33iHTUoOM+Eq6vIfZPg=
X-Proofpoint-ORIG-GUID: 1hcOEafkC4RyNfF1P7TYyPsR0BoXi3ls
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfX6Z0FQOfbMekW
 24zhr6am7ZfY2kWOZijMB008m1XBWoEymkhtcMf/pzI9quu/kGnDztpi+S/jsZC/R71zuJdtgYP
 eY9NFKTMWpHsHlRg+ITz0fj3poAUt4B/ig1fWM8rJw2tL833Gmj0s2dv5q3voTXAxEstzCNZWIP
 5QDVynMIbx068b/2a+SDnQISaec564xaGu+kiSBEgHTerOc6w5Lip//UCJY2zRi9hRdQT9uaCHh
 f6ECcL4sF/vN4E3HQRuoZwD7GaFeTNJuohAUG2TnrSjidi7XIY42lezS+gnRniVn9D+d/wOMwtj
 NAMj1wBs6EPEQaP9ntS6MVyjj6sztY3x+KItKWz2BgK74KJVfJ/mzWFYmh08/DsNJHTZCLz+tUC
 XvPWGTtvdBhxytwD8KJIiLfPiR2rthvnuo+YHF1gFImL4yFNscDy2wPxxeTSD9HSn46B79J2tdu
 NMazBcIKOOmu/vL6MMQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 adultscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611020042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_024233_344148_FF51F98D 
X-CRM114-Status: GOOD (  17.46  )
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

From: Vladimir Zapolskiy <vz@kernel.org>

If CAMSS CSIPHYs are supported by the stand-alone CSI2 PHY driver only,
there is no need to provide description of legacy CSIPHY resources in
the CAMSS driver, therefore if CSIPHY resources are not given for some
supported platform, use CAMSS CSIPHY port numbers as CSIPHY identifiers.

Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss-csiphy.c | 16 +++++++++++++---
 drivers/media/platform/qcom/camss/camss.c        |  8 ++++++--
 2 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.c b/drivers/media/platform/qcom/camss/camss-csiphy.c
index f99eea2ef228..8ecd514451d2 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy.c
+++ b/drivers/media/platform/qcom/camss/camss-csiphy.c
@@ -799,6 +799,11 @@ int msm_csiphy_subdev_init_legacy(struct camss *camss,
 	return ret;
 }
 
+/* Fallback to generic SDM845 compatible formats for non-legacy CSIPHYs */
+static const struct csiphy_subdev_resources csiphy_res_phy = {
+	.formats = &csiphy_formats_sdm845,
+};
+
 /*
  * msm_csiphy_subdev_init - Initialize CSIPHY device structure and resources
  * @camss: CAMSS structure
@@ -808,7 +813,7 @@ int msm_csiphy_subdev_init_legacy(struct camss *camss,
  */
 int msm_csiphy_subdev_init(struct camss *camss, u8 port)
 {
-	const struct camss_subdev_resources *res = &camss->res->csiphy_res[port];
+	const struct camss_subdev_resources *res = camss->res->csiphy_res;
 	struct csiphy_device *csiphy = &camss->csiphy[port];
 	struct device *dev = camss->dev;
 	struct device_node *ep, *remote;
@@ -836,8 +841,13 @@ int msm_csiphy_subdev_init(struct camss *camss, u8 port)
 	}
 
 	csiphy->camss = camss;
-	csiphy->id = res->csiphy.id;
-	csiphy->res = &res->csiphy;
+	if (res) {
+		csiphy->id = res[port].csiphy.id;
+		csiphy->res = &res[port].csiphy;
+	} else {
+		csiphy->id = port;
+		csiphy->res = &csiphy_res_phy;
+	}
 
 	snprintf(csiphy->name, ARRAY_SIZE(csiphy->name), "csi%d", csiphy->id);
 
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 3857515aac7c..30c2a0c89100 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -4810,7 +4810,10 @@ static void camss_detect_legacy_phy(struct camss *camss)
 	struct device_node *remote;
 	struct device_node *ep;
 
-	camss->legacy_phy = true;
+	/* Legacy CSIPHY description implies the provided CSIPHY resources */
+	camss->legacy_phy = !!camss->res->csiphy_res;
+	if (!camss->legacy_phy)
+		goto done;
 
 	/* Find first remote-endpoint and determine if its a PHY */
 	for_each_endpoint_of_node(camss->dev->of_node, ep) {
@@ -4824,6 +4827,7 @@ static void camss_detect_legacy_phy(struct camss *camss)
 		break;
 	}
 
+done:
 	dev_dbg(camss->dev, "legacy phy mode %s\n",
 		camss->legacy_phy ? "true" : "false");
 }
@@ -4855,7 +4859,7 @@ static int camss_init_subdevices(struct camss *camss)
 
 		if (ret < 0) {
 			dev_err(camss->dev, "csiphy %d init fail\n",
-				res->csiphy_res[i].csiphy.id);
+				res->csiphy_res ? res->csiphy_res[i].csiphy.id : i);
 			return ret;
 		}
 	}

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

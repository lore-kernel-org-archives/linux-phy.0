Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0BB606A32D
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 10:39:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0d73jEhW;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=ochpRf0V;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=gpaPIK7Q
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Z103OEUEOXDC3WxlVJSu1MRahE8+9cP2O8ElzQ81hVo=; b=0d73jEhW7avqTsdBxm4MOImkYK
	DI0FisiWrPQ55MT5obQv7ZFNAjk4yMmvOcQmWzq42lCaHNW816doZD8pVGrXlWPzIQjz4uv1jLpIP
	bfSy+pYaB/p5e6hNH6jTMe2aapNzZg7u9U26niomShAeHZegzuHDCMjwGWTXX6qdDE5Zcu84ZPmtB
	zmOyyiYw8R1a/YOYyjOisbo7gTsCY8L4Yt2OZJQPKiLVfG6qLHdMPr1sIIKlB2a64GPHYNvJh/ynH
	ImlvYzEFV9sQP3civMw+HjbsL9hmXTV9th3qdgYHHAEDuT4VhZMLzky7OVyYna7Y+dUw6uf+6p1CV
	2b7LA8vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM14B-00000006mLa-0Yty;
	Wed, 28 Oct 2026 10:39:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM148-00000006mKA-0Cag
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 10:39:34 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SAZtfE872094
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:39:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sa3455GO92UVU2gr4OcaS3igM6dxF+tEL6zEH6pm9fM=; b=ochpRf0V6xv8E7h9
	eCDUcixBlb8u/JkHdOENgGKHpJgt/04OW9QHBq6DjWZ2ZmrkL966xzhmYyTAxKX8
	lS2Qa4DphMCizgYmfEsFFYL5gMyzOExOxVClwH3ogQjljnY7oRCYd/G8rGZgkfMp
	7y6VQMT/EbFlcxfL8Wh9ia0GleoqBqqTeflFpuTjXQWxl1UgrxJZcwnZtphjZW/n
	8rixYVdyDGEakN98CO+W7sylop7V12E/jdYLdmQSgt+Dt+xdvYIYd06RnIE7wl0f
	F/mXI0nbMFR6TAEuJah4+dvzZ/ZBEBO98nxH3B8/qO+Ii44FX12TPMhiy5slh9vP
	1szC9A==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkfehg0dk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 10:39:31 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-36a1e2485fdso2004680eec.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 03:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793183970; x=1793788770; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sa3455GO92UVU2gr4OcaS3igM6dxF+tEL6zEH6pm9fM=;
        b=gpaPIK7QYl+y/LCxUVsE2zh+gCeygsN1OKrISpeZjnZlqGLnptyeyk0fA8aXbJP39W
         XOKTQ3IdJNy3eLZAmi1UeuT3IJIHebCC2rLHauuKLJCUny4ublUrxwJL5x9IMzZpuX6D
         Pu/ZGbrIVOCnkx1pAyov8HpdXH1Oso5wk1qemOLlOUKU6kSGGIPWDM74w/gKuSLYzDtY
         fCFTmjF2iS4mGzgfGTaXZPhxDnUqurXDQhg2j0fcIVdl2LMHBiJsV3UpQ27uJGBG7w07
         yhryMVkZ8FuzZe2NntvySj7XaC7TfgnNifhMfPYI260Bn8L9kSV6EPMCFNzcP29T9If1
         yPDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793183970; x=1793788770;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sa3455GO92UVU2gr4OcaS3igM6dxF+tEL6zEH6pm9fM=;
        b=ONAtM1NE6dtI+/2BT8eT1AnMre5TBm5HdwDHyfAw5OofwcstVJ0ivTkGquh2aj6aTT
         b5Fk8/DdXZoPZtFzJ4C8cUaxDmaKEuE/SCZI198gKjUheqRIodCUqiGSXxbjgCo4wg+R
         OzWBiD7pbyyqMu5iKGsJqTTvv5HvPzLDk62ujAWtXhjcG3jSglQ/p+IZ1mHcLunF5E65
         YHzeBHsO6LSU23RbsL/7RUgUmiwcAzund6Ykxq0t8Srbz5dSFg/MyxqZ9zxux+l4+IGm
         zfGFb0z/MMjkTZd1yiqYvIDrGxda4c4+8Do9CKzKJQJk6HAD6TJFFFIDtJdvdVoS0k27
         VOGA==
X-Forwarded-Encrypted: i=1; AKwUvBx6oHeK7Xn3MizqpEXYu78queO/EJP8gPM/RO4M4YQin5ZBXyMaF8rTscBDK8zAm8wGuEEIKS0U/ss=@lists.infradead.org
X-Gm-Message-State: AFq9FYLXY3EqY7LTeCQe9L+Vg4UYCt2cjC5tSP9pO9nprB4VJtxb/X/X
	IR3oGzCJunq9IveyAOLCU/c/OnKJGogdO4M9IxnrtIOVEq35dhgtc6ZzU7a7rPLnupbNXSQYraE
	Hky59BVImprfmBaqIXkfdN6btP+lKXc7Rdpx0E2Kt3xdk/jdNDFijvWrWR6mhZJlMAn79
X-Gm-Gg: AYBFou13gjxrhbcJQtzR70SH0yCPZE2WETUdOTo1spz6giyqCu/faYbfUHzN3B0PLs1
	UnpqxKaGMzmbZvKmoopjIe+ypQuKLGMUprR22NaiFzVX8UuuifiMHIV7cvSHicfmhmsixCiehWT
	sLy4hpjlsKju9MOQNvHfUNohraG7TKaODiIDK/OentObCgDgCd/CMPqzoCX00OB7ZE1Hi2azH46
	Gb+qx9TX/aijCEzEX7ERheq/X8Heo02FC0wqrHF1D+/phWn7rGbaFOpgv3VpCpiqrY5JJmDpLOI
	tKK3sCJUu142E+1D2WQL/xKuOVQCK1R4p5RETFTIM5dMjg1hTiaQELWx9gUfqu9HX+BJTkw0tPE
	fTT0T4cATkORbAgGLRUcoIJ4/5hrLF9W8y2hq3LPf2y8BhdJc/XY8+JMlCyKIBuHh2uuMh+JFQ6
	8=
X-Received: by 2002:a05:7022:ed01:b0:15e:6541:3099 with SMTP id a92af1059eb24-1a6ce01d3afmr2759409c88.7.1793183970031;
        Wed, 28 Oct 2026 03:39:30 -0700 (PDT)
X-Received: by 2002:a05:7022:ed01:b0:15e:6541:3099 with SMTP id a92af1059eb24-1a6ce01d3afmr2759368c88.7.1793183969473;
        Wed, 28 Oct 2026 03:39:29 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1a75e5c6d4fsm8340186c88.14.2026.10.28.03.39.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 03:39:29 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 16:08:07 +0530
Subject: [PATCH v6 11/11] phy: qualcomm: qmp-combo: Fix error propagation
 in qmp_combo_dp_power_on()
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261028-glymur-phy-v3-v6-11-1f1d2e565a66@oss.qualcomm.com>
References: <20261028-glymur-phy-v3-v6-0-1f1d2e565a66@oss.qualcomm.com>
In-Reply-To: <20261028-glymur-phy-v3-v6-0-1f1d2e565a66@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        Jeff Roach <jeff.roach0@gmail.com>, Luke Macken <luke@phorex.org>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793183900; l=1738;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=WL4YAlfjN6MhAdQ0GSQ+FQW7IyH6mURHkrvjaQtIApo=;
 b=cLzwJ3/oKBc+VW7ndAVeXK7ARSNAnEndg/bgCgzCgEHyjoZW0xsAVUe1F3rVCi2OnBBhVmJqA
 5iyeJ9IyRMDDLLYO7LuksNXCkbMzGi0bXcd2M+/jiBMpffxYTSKcrQb
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfX45QEKprVn7m3
 sx1baXyuImx2RTI00xVmNvCoAImy4TTFSQtQamdgCie55QpYs52FMmYnxhkO7P1D4WrlIq5VqzE
 cWtE+hM9K+i3sIsRgmVHGrrYtIQMPEK7E+swZOI4pIhaSAsZMaDk5UsyoWDtjwjID/akIWK2rh1
 asur6H04os8/35ECtTsfg5U3VqQhf2GHHYAQCKA8ms1keZksKY2LuUW7tkLazbfZhiGR3gaquzs
 gQ8+PCCnSmLR8U/wGmM0DVnYDwszyXPcuPMwLjMqUEEDsiTEzJUuo6S1HdrxxnCKKnB9Z50cHBW
 RDTP6on1xWW854/Zx3PITqmY8MkvsX4VC8KFOX4rj5hw97jbY++oSt0o7tZoQwCJ086w9JCsHyL
 PygMAogqVGZPzhWezBRpeGNfT/OemIPZBXaG3N4h3+MAUsmjLcqBQPf3SE8DMm/x9wnwQjdnjQf
 ERgMR6SQvtwK3NxjxlA==
X-Authority-Analysis: v=2.4 cv=A/T5rKWG c=1 sm=1 tr=0 ts=6ae1d0e3 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=mO8_gwkcAAAA:8 a=uxOsGGhB1PPybffeXOwA:9
 a=QEXdDO2ut3YA:10 a=bBxd6f-gb0O0v-kibOvt:22 a=InTEqNb8lIr1xazlwGwc:22
X-Proofpoint-ORIG-GUID: AXEURGat2hHAQSzgelqxIuGWchegdmSv
X-Proofpoint-GUID: AXEURGat2hHAQSzgelqxIuGWchegdmSv
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA0MiBTYWx0ZWRfX53Fff2r1ag6k
 1n99vXAwlhwYoTxSjQkeCjtg/KNkrEKZcMDFY0Zr3GmMSpUrtDTMQQSamYi3cjroi5r0WqmAcYH
 sgHmMS9m+zb/zyUNFaZrfvqNYztjink=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 impostorscore=0 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_033932_209874_8A226599 
X-CRM114-Status: GOOD (  13.19  )
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

The configure_dp_phy() callback can return an error (e.g. -ETIMEDOUT on
PLL lock failure), but qmp_combo_dp_power_on() was ignoring the return
value and always returning 0.

Capture the return value, skip setting dp_powered_on on failure, and
propagate the error to the caller.

Fixes: dd1153651b038 ("phy: qcom-qmp-combo: merge driver data")
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Tested-by: Jeff Roach <jeff.roach0@gmail.com> # HP OmniBook X 16 (Mahua)
Tested-by: Luke Macken <luke@phorex.org>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index b34b892c2702..4def2bd991a8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -4416,8 +4416,9 @@ static int qmp_combo_dp_power_on(struct phy *phy)
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *tx = qmp->dp_tx;
 	void __iomem *tx2 = qmp->dp_tx2;
+	int ret;
 
-	mutex_lock(&qmp->phy_mutex);
+	guard(mutex)(&qmp->phy_mutex);
 
 	qmp_combo_dp_serdes_init(qmp);
 
@@ -4428,12 +4429,14 @@ static int qmp_combo_dp_power_on(struct phy *phy)
 	cfg->configure_dp_tx(qmp);
 
 	/* Configure link rate, swing, etc. */
-	cfg->configure_dp_phy(qmp);
+	ret = cfg->configure_dp_phy(qmp);
+	if (ret) {
+		dev_err(qmp->dev, "DP PHY configuration failed: %d\n", ret);
+		return ret;
+	}
 
 	qmp->dp_powered_on = true;
 
-	mutex_unlock(&qmp->phy_mutex);
-
 	return 0;
 }
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

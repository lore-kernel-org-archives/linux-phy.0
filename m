Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1476FC982E1
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 10:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cjZvVEsqmWhK53eIwQuSFdS3wYRr7SoOlbySAXWX5JM=; b=VjR/Otbcxyska/
	UCVPmrl4FOYD8TzYsSalB8fPEIMqGzuDyG5py5cV1W86sOztCc8tHJ2bS6fJWaC31XFt+rZAyU5D+
	Ml5CY1lrx7jp+7oOBDg+7R9i0FGi75mbas/c0PdcaEKjs9duIl89Vb2WOiG6Y99U0cPUEViO7fscb
	pFQlsKhYsJFWQ4pE2wTzzmBiQuGF6TkknvptoaLd9Vv1N0RfDBIt5SYJno9cFOU0T4hDvZDrSMtgy
	SpigArHTDVbP57dCXfYt8xfp6qgNRtbxo0iWfoWvsBLq8OD5SRWpTn2YmBuxu1vD6HtaMQGD57eWP
	Wavr5K/QKsEQAbNPUgKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8bjj-00000001nUg-2xcI;
	Mon, 21 Sep 2026 10:59:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8bjb-00000001nLx-0ggy
	for linux-phy@bombadil.infradead.org;
	Mon, 21 Sep 2026 10:58:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=sufJF2pE9YrrcacW4N4xJyjFcVvEPNjPOovTV0qVArY=; b=oCCnMObtfMDB3pKbIW2tGNw8kU
	o6HneQh9rFYxK8jCV5+skbqE8+cNtJHHscavozX7OlYN5M+4nROkYCFv79CER/udF5IuxclP2909M
	Afxc6QJb0eVWLtjn5qsgicSwcl7XNwguWXuUAIsAWdi7VBZzguq6oxzIa7BNAWiu6aBP0wZgdwxFW
	uAL9up4kpFzrcBxNv10Bpjunw0qGEOFmDAGeW9ahODY2Xyv/cj2LVPqbCCbP7PPSS3sejyP7LbJ2O
	g+9Ls9PUO2krkGv7A3BM37gHiAsoPNkEwbE4JL8FNz37zoav1n0CEidkZCgYc5B5NNLs7GQtejv80
	YNyoky3g==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8bjX-0000000C9fd-2WQA
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 10:58:53 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68LAe9Yt419322
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 10:58:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sufJF2pE9YrrcacW4N4xJyjFcVvEPNjPOovTV0qVArY=; b=lvo8CIOFxKXC4Rjl
	jZhNNnFesSSiZgEhPVWYpuDOaFQ7+jRinW/LydhPRtqCgHuZvkSGf+7ni6fc0a0n
	tp7Uxoomx/iQLtqZHuyKxtXN1dwzHYnDlW2W+WArIvmQixLc36IXPVnc09XptV9t
	nnnbtSrVyzj4FsiQ366myNwkkdwSZeq2a+3E8rvvsJ53ndOz8ZsZYc1UIGF/82SC
	raI/qMgXbIR04V6OlqiW//bXvKNN7S8D2GaV2rgV8xjGi9PWXjRr8TxfSk4s8Mni
	0qIibTs/ZjgPStuoMv3dkK3o4B5iAMix4HdYhgYVTEbAnVq6v60Pj2YNOnWrOamZ
	DyQW1g==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gtyxq8wad-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 10:58:49 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-39e3dad7ab3so3958549a91.2
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 03:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789988329; x=1790593129; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sufJF2pE9YrrcacW4N4xJyjFcVvEPNjPOovTV0qVArY=;
        b=DnZznIdKaD6BDwRDRktwWoZe6gTUCTuq2dU7eOIr/es3X12jGMEbGTCmLsMEHnLqFg
         +u6OLMnsYWSCIgWG2m8o4diGqS19+oPDokWKu2VJitBxH8t4ymwmPxRSB/4SUYg7w5/v
         Z/8j1aGYkfsKQajJoOomcv2V1QsA3z4mbCkxhYrqfc9l96HREG4cwuWBfSIvwSYk7pjq
         VSVwvhyIeQBpiw4l5b3hWUaeLqdnQdXz6NStp4GhEXZWlGWjQOxVAJAdMY05Fv2lVFG0
         RYNjBkZm3vM8P+HXhLX7mcmaEByjP5Qq2iZE+bdzTcFIcIUPsdWnpQd7eyY+ElDedXtt
         9M1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789988329; x=1790593129;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sufJF2pE9YrrcacW4N4xJyjFcVvEPNjPOovTV0qVArY=;
        b=r6fUdcD5CxVD5Hj2Mg+jVL3Ruady3QauZif/MAiDyBEPaLD8IgalLsko3Cw0uLL1Rz
         GO3v3cbm054hsaGWbeNF6mKyDL0HSqAsDDoDKmgUzHdpLG1qrQlBpOILd5HLm7jnKQTq
         MlnCAVASkQwvnLkuvVimoAPscHsDw3iRC97pEs0gtmCqAtGsfepCYXFJ/UJYhvb4rZ+C
         3bHKT0LF9/g6k4wasGzsIto9bq13a0l0ffvzYXlGG/jpfnbm9e4wOcORFZ/r1gZwG4mS
         nZdokpV1IGanoIfr6+L6Yh9qq7fGstOJaDjeJfx/u/oAKUzuxRZQluR4LcVDVYIitxU0
         UYkg==
X-Forwarded-Encrypted: i=1; AKwUvBz0dsrjgJzKqcp0RIPe8UvNoXyIJxWAa8KqFrSjd6I42Z/vVkiXNgsSrudMnfIATnR/CGYxozkpTcw=@lists.infradead.org
X-Gm-Message-State: AFuF++kayRe1SiYGu1mj30e5ETuwT45FN0WPugleG15Hjl2KJsXCPym8
	A4iXlHl0MVd6zScVDiIbfU14gPi0wxI9ITBMEsX0rvH6ieLku7vHewNFprGGgrOkmDmk9ajoKG6
	0S8xG+bOJiKZlIxshgvBOixz1zjOL9BCU8cvUcdNw64Z6d+soRnhJgA9+Jgr22b/u/MhS
X-Gm-Gg: AYBFou23P68daqrf8gM8X6Pjj7R+u1/dchSDBR3F7z7sVO5U+UNqw/V4/uqHcijYEHj
	T4NntqGq+fNlxQs3cxm7FkNcO4jvaBixQakUhZOGFymxajhzKoMpx+tkvVabgLqf2+nguiIOO2S
	cE3MgvwcBj/E3Jo3+I6cfo4nZiOAVjVYk1mON1b6yCG9qh5uF1CnjMHAUuFIuwQxtt+Nk+3FsvT
	DNmIQgbYDQWaHjt3ZeUqedw+LezEVv6FijNwQxUKSOsKP1kQ41Urm88O5HpvuCErn281TbYbDZ5
	qa84pj8ilxqRc6F8rq/U3QPHSVljvofDMvIAMQW/5Gc2H0tlf9adkWMSc3LiwUD+UWYluJtX0+s
	GkFmJSPUR5vbtFgIoonuHocyoPYAjaAFJlQ==
X-Received: by 2002:a17:90b:1dcd:b0:3a0:42a9:9c82 with SMTP id 98e67ed59e1d1-3a04d4b9ec4mr2387398a91.43.1789988329048;
        Mon, 21 Sep 2026 03:58:49 -0700 (PDT)
X-Received: by 2002:a17:90b:1dcd:b0:3a0:42a9:9c82 with SMTP id 98e67ed59e1d1-3a04d4b9ec4mr2387370a91.43.1789988328566;
        Mon, 21 Sep 2026 03:58:48 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33c331d55cfsm23544128eec.30.2026.09.21.03.58.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 03:58:48 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 16:28:14 +0530
Subject: [PATCH 3/6] phy: qcom: qmp-pcie: Add endpoint PHY configuration
 for QCS8300
MIME-Version: 1.0
Message-Id: <20260921-monaco_ep-v1-3-63c5282fb0db@oss.qualcomm.com>
References: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
In-Reply-To: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789988304; l=7227;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=oduM9aL1FT+aHgtEmP/1duAVEbqV4jHfob2776LVoOQ=;
 b=zkd0ILMA3W3e+HS/deym5WQ31iRun0M4IL1mFHzn16/7UwsG4IbBcbmR+6G3Ggouxoh6c5F/U
 QQ9bdwuVit+B51ovRRdr+uLiJt+0donrx5lOVCaGcQuBssDWnw3O29P
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: BYgFhjkYQIORalZDJp-2k7tdWnEvJ-fP
X-Proofpoint-ORIG-GUID: BYgFhjkYQIORalZDJp-2k7tdWnEvJ-fP
X-Authority-Analysis: v=2.4 cv=OtraWC/t c=1 sm=1 tr=0 ts=6ab10de9 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=eLJRkEBLYn0i9-GjmtoA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDE1NyBTYWx0ZWRfXz6OYGAs6+H/v
 DNlyKIQ9DKwQm2KV3pil3oLMETyKfrQtRx2fCLeUE8JBePS1p5bNv2QVBb2BC3R799Nd08yoZjs
 QNt5/rSaC9iU/57PCANNAXF4YP5WoIOaU0GI0RrM3KrUDQVB0zVpxR8gBG++b/SwxujypJd0zEk
 oxCnKuj3bcoKckAS39qH/smyhy/G0rBLR/oHoIiL+4jPJth2SVvLJrtXvmH9t9xF86pPLyb44uJ
 94iKUMHz/kbA2pu6ukr+RTk/m2iSfo2dMqOvfncUErWbvTtteH6zi4/AQCzrByhZ/j/YDPRbGp6
 nC1B19/qEa3LD2k67WVpCE+bD7InkjBuXNbkQnmDPYBoytotPbO+MOesyxlrC73gXmwmMPmkO5D
 VW45BqF0grscxtuetAnmdOSliLH6GXFbNq7tCUKirVMlnnu59/N/T6rCnJ7kygz8MiMRxnA/BAY
 AJsh+1WqEOqchdORVLQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDE1NyBTYWx0ZWRfX7ViAxJLp4/8r
 9VR0PspApPBBD+toEZEoKehvE30jnIacxFRyYV4i51txhJSuIq9lnYV0XeuEbqOi2MdHSkNIA92
 /lVXiz04pBgS3BBrDE9q/qjrc/VeIYY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_04,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 adultscore=0 phishscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609210157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_115852_369674_6911F9A7 
X-CRM114-Status: GOOD (  12.83  )
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

Monaco supports PCIe Endpoint mode on both PCIe controllers. Reuse
the existing SA8775P Endpoint PHY programming for the 16 GT/s x2 PHY and
add a new 16 GT/s x4 Endpoint PHY configuration with the required RX
tuning parameters.

This allows both Monaco PCIe controllers to operate reliably in
Endpoint mode.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 105 +++++++++++++++++++++++++++++++
 1 file changed, 105 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index da83358c97ea..cf169d7cbd92 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1231,6 +1231,58 @@ static const struct qmp_phy_init_tbl qcs8300_qmp_gen4x2_pcie_rx_alt_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_TX_ADAPT_POST_THRESH2, 0x1f),
 };
 
+static const struct qmp_phy_init_tbl qcs8300_qmp_gen4x4_pcie_rx_alt_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_AUX_DATA_THRESH_BIN_RATE_0_1, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_AUX_DATA_THRESH_BIN_RATE_2_3, 0x37),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_DFE_3, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_DFE_DAC_ENABLE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_GM_CAL, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_PHPRE_CTRL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x7c),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_IDAC_SAOFFSET, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH1_RATE210, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH1_RATE3, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH2_RATE210, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH2_RATE3, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH3_RATE210, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH3_RATE3, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH4_RATE3, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH5_RATE3, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH6_RATE3, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_Q_PI_INTRINSIC_BIAS_RATE32, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B0, 0x9b),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B1, 0xb0),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B2, 0xd2),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B3, 0xf0),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B4, 0x42),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B5, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B6, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B0, 0x9b),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B1, 0xb6),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B2, 0xd2),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B3, 0xf0),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B4, 0x43),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B5, 0xdd),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B6, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B0, 0xf3),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B1, 0xf6),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B2, 0xee),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B3, 0xd2),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B4, 0x83),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B5, 0xf9),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B6, 0x3d),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_TX_ADAPT_POST_THRESH1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_TX_ADAPT_POST_THRESH2, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_UCDR_FO_GAIN_RATE2, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_UCDR_FO_GAIN_RATE3, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_UCDR_SO_GAIN_RATE3, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_UCDR_PI_CONTROLS, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_VGA_CAL_CNTRL1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_VGA_CAL_MAN_VAL, 0x08),
+};
+
 static const struct qmp_phy_init_tbl sdm845_qmp_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
@@ -4583,6 +4635,56 @@ static const struct qmp_phy_cfg qcs8300_qmp_gen4x2_pciephy_cfg = {
 		.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl),
 	},
 
+	.tbls_ep = &(const struct qmp_phy_cfg_tbls) {
+		.serdes		= sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl,
+		.serdes_num	= ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl),
+		.pcs_misc	= sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl),
+		.pcs		= sa8775p_qmp_gen4x2_pcie_ep_pcs_alt_tbl,
+		.pcs_num	= ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_ep_pcs_alt_tbl),
+	},
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= pciephy_v5_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+};
+
+static const struct qmp_phy_cfg qcs8300_qmp_gen4x4_pciephy_cfg = {
+	.lanes = 4,
+	.offsets		= &qmp_pcie_offsets_v5_30,
+
+	.tbls = {
+		.serdes		= sa8775p_qmp_gen4x4_pcie_serdes_alt_tbl,
+		.serdes_num		= ARRAY_SIZE(sa8775p_qmp_gen4x4_pcie_serdes_alt_tbl),
+		.tx		= sa8775p_qmp_gen4_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_tx_tbl),
+		.rx		= qcs8300_qmp_gen4x4_pcie_rx_alt_tbl,
+		.rx_num		= ARRAY_SIZE(qcs8300_qmp_gen4x4_pcie_rx_alt_tbl),
+		.pcs		= sa8775p_qmp_gen4_pcie_pcs_alt_tbl,
+		.pcs_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_pcs_alt_tbl),
+		.pcs_misc	= sa8775p_qmp_gen4_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_pcs_misc_tbl),
+	},
+
+	.tbls_rc = &(const struct qmp_phy_cfg_tbls) {
+		.serdes		= sa8775p_qmp_gen4x4_pcie_rc_serdes_alt_tbl,
+		.serdes_num	= ARRAY_SIZE(sa8775p_qmp_gen4x4_pcie_rc_serdes_alt_tbl),
+		.pcs_misc	= sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl),
+	},
+
+	.tbls_ep = &(const struct qmp_phy_cfg_tbls) {
+		.serdes		= sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl,
+		.serdes_num	= ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl),
+		.pcs_misc	= sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl),
+	},
+
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -6411,6 +6513,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,qcs8300-qmp-gen4x2-pcie-phy",
 		.data = &qcs8300_qmp_gen4x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,qcs8300-qmp-gen4x4-pcie-phy",
+		.data = &qcs8300_qmp_gen4x4_pciephy_cfg,
 	}, {
 		.compatible = "qcom,sa8775p-qmp-gen4x2-pcie-phy",
 		.data = &sa8775p_qmp_gen4x2_pciephy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

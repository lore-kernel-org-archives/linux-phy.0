Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45BE6C982E1
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 10:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oo5nHw5363mRDYchosdX0WxHcz3EdhTKWc68p0DARJQ=; b=xiXLp7R63FyimE
	0LFMTOjKhFvFtmAIYaYvOLY9zY4rsDCJ8iPUosFW3DxNBO4jsSd9A8aZ1nBWL1R0UGpidawGz8+N/
	iyHy5ikFu+zvQF09GvMCCrzBNJCdUpJDly8xpWnNyaoYMmrJQ9v/ZFO9Z87b0+FAUii7vbxBV5WNg
	U1EGeCNXS2EC5EXDYnpTTtXDDw4RkKQDkU+59o2fHcWpyrfnX3lFsqe9PXEKnJEEWlX1h01on+EBR
	T54dxzwOw8UlEcT1aRLpJy0XF7SIg2KC4pGKlDQnDTHpaHPoNhoWq4ihs2ruEVw++0Shzol9QPnJl
	BYSHTW4YETiTBztAuZpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8bjq-00000001nZQ-37YB;
	Mon, 21 Sep 2026 10:59:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8bjh-00000001nRP-3ejh
	for linux-phy@bombadil.infradead.org;
	Mon, 21 Sep 2026 10:59:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=hsewHEvUZj6/jgMhxVC1D2uYQR86gXMPhAyfrZVSSvU=; b=nPTByUO+T7Vmx8ETg3CmTrcPDK
	DQ2f4tQnDP5oDaRC14n/dxVgoY6qmGohtxY7nxdL1Q3VyjnSFKcUAfjG4ZVAC0xGAUmwZBKxeTrPl
	MWbziZ+eAJYz9Qe5faEhzN6S+wt2R/qH7Ejc9czfxW0tr9FoStWu3KYmFOLBj6MdWwdWpBWONF20z
	sE5ZNKWT7MHsouypgD8OxeK/+9lF0vgIwBuah8f2+hsvNltOPznGpgwEH3oQIgMDsUpzpsli1LwQJ
	ty3MkgvgwZMZjbqrfhO3S6v9cvbiMlAozIPka4UvIbqysABQccCFyoHtERsdsgsVTCexUJmfb+OTX
	DQIJ2pZw==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8bjd-0000000C9hf-2NYT
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 10:59:00 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68LAeAES837792
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 10:58:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hsewHEvUZj6/jgMhxVC1D2uYQR86gXMPhAyfrZVSSvU=; b=aVBQule3ToplSUEG
	ecTs0F+WdQzz7NFu4Jax+2KnoNt+IgiR3C+rIb0cw+N9YOJdwlgK3WBXRVF4Ix+A
	hCiGcLXO90f99vV40qOi8kT1wJxOnCO8vD3ijOS6/zzWqTXWwC0gEX+trGLfbzUS
	0ddw1KMO77759pFCKAmirfB1jIeHpK7NE3muO7EzC7slg0sWeocMX7or1YB9/pCI
	A09/RR/GZUbULbor4Vt9fXxVAkUV8A1O7ipIYGo/kowY64SfaokZHzPoQVZyvJ2H
	KxDXrH5f8c8WQYYG5qcyps2p4Y3zDxQU7K0FpsgVefcJL/wb3cgenp8z7CEEj5gz
	5yxQaw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gtwf5hf29-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 10:58:56 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2dc92350888so51446655ad.3
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 03:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789988335; x=1790593135; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hsewHEvUZj6/jgMhxVC1D2uYQR86gXMPhAyfrZVSSvU=;
        b=Uda/6bli6Q/rhEFrURtrLc0StWh5EXTS4y1FVEX6g3F5Nisqae0c0XbIluHLureew+
         5krgkBiwbRyutd57VuzJ+enzbS/zI34I06qG0oydfjfmyiDDWgUMA5itb0VFHKNO6zg1
         kv1Kszh6g+JVGThknbqe7wRYElYNj0Rp4+6BpAb4N5vKqlGjjGQ9FlPOh8tjI7uM9nVa
         xxrEUu28dH3DvkrXexjFAtM2SXpPB1R5gim9jJVvh3S6Zj2oEDEzQl0BflhchzFBz2V5
         DPMZOknHxPfY9QKyJ2OjuQcHcT+LvDFCpPTSivwg8fNPcz8RTtk1g+v+HASVdpJ28YzZ
         0EAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789988335; x=1790593135;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hsewHEvUZj6/jgMhxVC1D2uYQR86gXMPhAyfrZVSSvU=;
        b=Rr/X+0TGdSukE6iMliyAUnnLlSfA2A5hZI5bxD5ye84U/z1BbzBN1GIyM7ol+slYEz
         igp5+U9j7NZDtyEJrj0qoCB+6zfkHVIhmCt+X6F8F0BVzc8WIsRQgZErUQyhXzplgNCB
         +bg4sso5fRVGuwEWAU9+yNRAhnAIgj8Ms1FlBqsAq51pGSPEA0WGbI5idalEKRcZrs6V
         EvVY9w8RMrGSD4RUMK/alWL+E40FtvvfDRVsudGLfAm5MjOKNejPLmHSJZNP7fFLVh2n
         Vq5FqS39KiBmS58J4/4ClU1EilgR6a0vT97fs48vsMgQa23qWSFGfqdImZc6RQYEdja5
         UurQ==
X-Forwarded-Encrypted: i=1; AKwUvBxYWgPtXIexyJcI/fv6AOPFVTeQHoYObnVtmwEsMhMGy5bgGGDg3GBxddV26YpW7HmqKIsxKa6Wuo0=@lists.infradead.org
X-Gm-Message-State: AFuF++nGjzJbn1UN3LqQjLepCGxdzBrCjskiHP0p0nE9UbKqKMKdQxLG
	bP9Jt3g+DX9bjPZcP7QQa0XoHYQeFhtBrkFs//SXkvq99XrO+ZClZBdRZ4teM+NhSq1Nky72PPO
	aVs4j5slhpMOOEkGgY8npBjbYYARvzN8w12+ne57VZlJPTZ47UEAPxfpid0If0arlgKiZ
X-Gm-Gg: AYBFou3Thb2b60Mc4HiAfFm1eAZOeDcYy1J8+82VxZ6Ck7XAODQqCg8g4Vd2R+Ab+eN
	H4igrZvZ/YU0vZbpTxUGgLLNvf0v/Ec75qts93tQjpH6UbLqn1izqoBA0WQ8VdAsJkdTvx8AESb
	CRVze/l+QQH2IpTjWbR6tXSwgBnTogaHYAWBToQek0sNG3nUfojUm6He/UTwcjbzchTLlzQmPWZ
	9Bm0tEZ8dLxV9DDce2xs4sArBG11i/3jWnryt/+wzsIlaWLhWBzA88cCfciseiVmwxQ9i9aHZ4H
	7/qntm+D5xVlh5p1hc3g6Xe2Kx5shFOP7P79itFQ7rAOB3yP5K3yF52aTiYowyGIounzPdTQEFt
	wrSizt6dyOjLOzotQIWgx6o6mJBJ3jS0LMA==
X-Received: by 2002:a17:902:fe97:b0:2dd:c053:a6f4 with SMTP id d9443c01a7336-2ddc053a77dmr66909795ad.38.1789988335079;
        Mon, 21 Sep 2026 03:58:55 -0700 (PDT)
X-Received: by 2002:a17:902:fe97:b0:2dd:c053:a6f4 with SMTP id d9443c01a7336-2ddc053a77dmr66909605ad.38.1789988334620;
        Mon, 21 Sep 2026 03:58:54 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33c331d55cfsm23544128eec.30.2026.09.21.03.58.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 03:58:54 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 16:28:15 +0530
Subject: [PATCH 4/6] PCI: qcom-ep: Set initial interconnect bandwidth
 before enabling clocks
MIME-Version: 1.0
Message-Id: <20260921-monaco_ep-v1-4-63c5282fb0db@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789988304; l=2353;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=KZNT5gsQg/XmkABF1JqGQnfDNfLXSsEH0jm5Y2AXDHU=;
 b=m4OH4ZgVmJ/VwWnMlB7XiWpD7mGR3rBa5IvvsplPV4v/TnJDRhwkuOnWQykVOe+fkkKvsy456
 YlojbEg98ijAERfCjhqnsonRdngUkXQRPyPAiMdOUzMHN2XzoBE9F8N
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=SJLXx+vH c=1 sm=1 tr=0 ts=6ab10df0 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=kXhGf0cxdCgfIYue-YsA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: xBPblcWB7UlHQ8wxPjjtafe3nlzVSABO
X-Proofpoint-ORIG-GUID: xBPblcWB7UlHQ8wxPjjtafe3nlzVSABO
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDE1NyBTYWx0ZWRfX/wPDK6bc3O7S
 m1KdwTB7GTjtElpGqSyRPDFtcRwNFVuFiplqgA/dUnuYxP7pcZ869VEfCnt6nishaw1i8Gm+JKE
 OeiyBea/lHfWsC6ngm+dMb1Wvyruh3k=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDE1NyBTYWx0ZWRfX9V5r6iEKr5CV
 grbwvyg1iO3W7E+ARE4trKiQPrufZUn00ibb8YxVyQG+hDViNyQPV9PXfIOr02Ue6W5Gl8s5HNw
 tuNPJr7Uc3sjYvPuFWzqIaKi24RH6fnjGpey+dYQsStZ4DjwbRDGU0wPszfmwKUGMjaTr0y2wM5
 tDXT/21Gd5OYx65ugGX5wdqMf59T5gAzOVwO/l675UXnD19OcN7+Yu/DmaGfKxTMDXxHJFE9IC8
 cTkMpiBcR/ZvAFJnPs6L0Illybnj6KKIgkACQ/0OQfzOp2ixyNdwouF9OIppX0TKGru+TRYCHt2
 FpBWA3WH2mXT6ay1YbXYv+hfj36Yx9D0lmGmmtcr8OPr32W/pMsTrIEl8CWBl5mILQm+/w6wn4o
 8r+K9S9jACjwcReDAMLbozqTcBAZbXf1fvaXj6e/KygoSn5WGQZwaUq/J4d7L7tlQUs4GhZLNDP
 H0z5ar0S/0HNzU4ynuA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_04,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609210157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_115858_417083_62DDC9F3 
X-CRM114-Status: GOOD (  15.34  )
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

Some Qualcomm platforms require the interconnect bandwidth constraints
to be set before enabling the interconnect clocks, otherwise some
clocks get stuck in the off state.

Move the icc_set_bw() call before clk_bulk_prepare_enable() so the
bandwidth vote is in place first.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom-ep.c | 34 +++++++++++++++----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
index 56184e6ca6e6..0b23d7181539 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -331,9 +331,23 @@ static int qcom_pcie_enable_resources(struct qcom_pcie_ep *pcie_ep)
 	struct dw_pcie *pci = &pcie_ep->pci;
 	int ret;
 
+	/*
+	 * Some Qualcomm platforms require interconnect bandwidth constraints
+	 * to be set before enabling interconnect clocks.
+	 *
+	 * Set an initial peak bandwidth corresponding to single-lane Gen 1
+	 * for the pcie-mem path.
+	 */
+	ret = icc_set_bw(pcie_ep->icc_mem, 0, QCOM_PCIE_LINK_SPEED_TO_BW(1));
+	if (ret) {
+		dev_err(pci->dev, "failed to set interconnect bandwidth: %d\n",
+			ret);
+		return ret;
+	}
+
 	ret = clk_bulk_prepare_enable(pcie_ep->num_clks, pcie_ep->clks);
 	if (ret)
-		return ret;
+		goto err_disable_icc;
 
 	ret = qcom_pcie_ep_core_reset(pcie_ep);
 	if (ret)
@@ -351,28 +365,14 @@ static int qcom_pcie_enable_resources(struct qcom_pcie_ep *pcie_ep)
 	if (ret)
 		goto err_phy_exit;
 
-	/*
-	 * Some Qualcomm platforms require interconnect bandwidth constraints
-	 * to be set before enabling interconnect clocks.
-	 *
-	 * Set an initial peak bandwidth corresponding to single-lane Gen 1
-	 * for the pcie-mem path.
-	 */
-	ret = icc_set_bw(pcie_ep->icc_mem, 0, QCOM_PCIE_LINK_SPEED_TO_BW(1));
-	if (ret) {
-		dev_err(pci->dev, "failed to set interconnect bandwidth: %d\n",
-			ret);
-		goto err_phy_off;
-	}
-
 	return 0;
 
-err_phy_off:
-	phy_power_off(pcie_ep->phy);
 err_phy_exit:
 	phy_exit(pcie_ep->phy);
 err_disable_clk:
 	clk_bulk_disable_unprepare(pcie_ep->num_clks, pcie_ep->clks);
+err_disable_icc:
+	icc_set_bw(pcie_ep->icc_mem, 0, 0);
 
 	return ret;
 }

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

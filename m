Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C58F7C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 30 Apr 2024 16:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=McNQnkmGCWZ1oFnv2ky/9QkSX4UeJHU+V+qbcdu2dRY=; b=3YsWHYz3+8fDje
	Cx2ZBr1G8AOaLMwa1ZGWCieqpj+CBTbg0cn9QA4kU9G/T63J7QAZCY5hI0JHvPJeqt2ByWkXsuYM/
	Q7NWnogl2V7zPea/C1vCrfl/W68LPp7aCmPFc3nA90+fTa5Rju8EXPwIjn4csYTlatkZT6kY5AwVc
	Wakpu8oZOs0BaESyzilaHwfPMj9fSYk3zDHRggZqoQlu37VepSnoOxQZbj94fV/gkLInixpE+95ID
	3uLStN0YAG8hwA1O9y1Gt0aj6YXmST6FlWQmgDjOFjWGxoBpF/Fo6Rc2wbYttKDjyUPoOHCJa90AK
	AN0E5e+SLY8/EB9BxKrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1qEl-00000007CI5-1Lpz;
	Tue, 30 Apr 2024 16:21:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1qEh-00000007CGL-3zAK
	for linux-phy@lists.infradead.org;
	Tue, 30 Apr 2024 16:21:45 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 43UC8beA027011;
	Tue, 30 Apr 2024 16:21:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id; s=qcppdkim1; bh=wDr8dzJLpaiP
	P1TFmJF3Q6ce8I4MPRSecRkI20be+cg=; b=a1n7U23KhNq0raaHzPE0kgd/qJi6
	x8VmR1mJ1cdiaV8cjH2XwW+mEItW14WfMn/ZKebjfr5oyRg7dw1HIArPRbO9YQVu
	xQqaSKCFDlD4EyLOS/oCu2KKlnrrcC93TNSOFaFRdhgv8PFzkbzfgJtfOVgFqsRt
	aIeDIzPOsTYVTKtpjmpd+FAqtJ4FaIg7tsjBLYyUnI1Och3adhwEUsEV34X9h63W
	F8ke5gp73cM1ckXfYa0k714nj20LZOc0B5dVgTpkaD2bhjeSXQmWVshqkw1t+Kbd
	/wF4hTOT1/YAbQSp7DJamh4m8KGMiDBUPB7iv0+xsR0HYGu/Ot7+qb8hJw==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xtfys411r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 30 Apr 2024 16:21:38 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 43UGLYu1025510;
	Tue, 30 Apr 2024 16:21:34 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3xrtem1dqe-1;
	Tue, 30 Apr 2024 16:21:34 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 43UGLX2I025504;
	Tue, 30 Apr 2024 16:21:33 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-msarkar-hyd.qualcomm.com [10.213.111.194])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 43UGLXk8025502;
	Tue, 30 Apr 2024 16:21:33 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3891782)
	id 638E02287; Tue, 30 Apr 2024 21:51:32 +0530 (+0530)
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
To: andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, konrad.dybcio@linaro.org,
        manivannan.sadhasivam@linaro.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
        quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        quic_schintav@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Qiang Yu <quic_qianyu@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v2 0/2] arm64: qcom: sa8775p: add support for x4 EP PCIe controller
Date: Tue, 30 Apr 2024 21:51:25 +0530
Message-Id: <1714494089-7917-1-git-send-email-quic_msarkar@quicinc.com>
X-Mailer: git-send-email 2.7.4
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: ikTmId_na6_5At1CtcZhguBiwEjZqFG4
X-Proofpoint-ORIG-GUID: ikTmId_na6_5At1CtcZhguBiwEjZqFG4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-04-30_09,2024-04-30_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 phishscore=0
 spamscore=0 mlxscore=0 clxscore=1011 suspectscore=0 mlxlogscore=618
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2404010003 definitions=main-2404300117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_092144_051987_D3AE886D 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This series updates PHY and add EP PCIe node in dtsi file for
ep pcie1 controller that supports gen4 and x4 lane width.

Dependency for Patch 2
----------------------

Depends on: 
https://lore.kernel.org/all/1714492540-15419-1-git-send-email-quic_msarkar@quicinc.com/

V1 -> V2:
- Added Reviewed-by tag in patch 1
- Fixed indentation in patch 2
- Fixed merged conflict on patch 2 and rebased on top of v6.9-rc6
- link to v1: https://lore.kernel.org/all/1699362294-15558-1-git-send-email-quic_msarkar@quicinc.com/

Mrinmay Sarkar (2):
  phy: qcom-qmp-pcie: add x4 lane EP support for sa8775p
  arm64: dts: qcom: sa8775p: Add ep pcie1 controller node

 arch/arm64/boot/dts/qcom/sa8775p.dtsi    | 47 ++++++++++++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c |  9 +++++-
 2 files changed, 55 insertions(+), 1 deletion(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

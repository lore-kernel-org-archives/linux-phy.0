Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2C39E71076
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 14:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7J+0IVhKSQOrH6zGCA7BXcdrTWQSqd0HcHl5qdM+VI=; b=m0ddLHLHBqLRTC
	cotoERiWael+8dM/JEiZyblaxJNgUuo+SJEILDf8UP2G+QaPSVNczvJfpnSX9QFpTT86z8Bf1fkLx
	6gs9tC0fo+TAqEsfme4yObxpHe9fk2k1dolOa+dNG6DaN6Gz8eq9puFgkc9Ia6yalYFn80NgC8CQa
	RBdV9fqrG5ycn4q7TW7cBSgE+yT6v4SklzdmBzLOSwkndaDJ/FMGY5TtMVsc33YnJQxFMcd/yiul4
	nQ4335HiV3RtzyyZC3YeXGos5jywB4KO27F91T4npsnUoKhEIDdNVNDSfzaGCiEdB27mvh8srj8br
	sfGPm7+XcxfyeTqgmwLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKGG-006CoD-1f;
	Thu, 21 Sep 2023 14:02:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKGD-006Cmr-37
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 14:02:31 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38LCdiUV001393;
	Thu, 21 Sep 2023 14:02:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=aW/fwfZocgTth6z4aNCdXloyBlreCQz+qRL+1DZ+eOE=;
 b=DPyXz2vDVzYlblxwK9q/IRxTLMqQ8I//t7K9GQKSeUv8psj6cBJIuCOVlkP4ng45hXj4
 0eO6PwuipAxnxgSBMTkiVW+vsG+FBaTL3vbk5h8YuX/lapu+TCY3LnANsVfARG4vzYlL
 g+58Ya5dldNo4nbcacxKlyaYLFXdRH0ytfhBsIK3m2/ia9aS7QdEn7WgwFxvbib9esHM
 T5wZOEkQekK1F10p2WYWoUq+6tB9VEsOxhryYvKHGNjB+agKoEkh3pD/DMWUnqWgraFY
 i28bjCgMrqezVzpeULyFPXix0v/yvOmSX4gMCh7CK6KYFsEBzldXWo2/Ds6JADx0njay iw== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t8dds97wb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Sep 2023 14:02:23 +0000
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38LE2MOS012607
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Sep 2023 14:02:22 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nasanex01c.na.qualcomm.com (10.45.79.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Thu, 21 Sep 2023 07:02:21 -0700
Date: Thu, 21 Sep 2023 07:02:20 -0700
From: Bjorn Andersson <quic_bjorande@quicinc.com>
To: Manivannan Sadhasivam <mani@kernel.org>
CC: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Can Guo
	<quic_cang@quicinc.com>, <quic_nguyenb@quicinc.com>,
        <quic_nitirawa@quicinc.com>, <martin.petersen@oracle.com>,
        <linux-scsi@vger.kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson
	<andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul
	<vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel
	<p.zabel@pengutronix.de>,
        open list <linux-kernel@vger.kernel.org>,
        "open
 list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>,
        "open
 list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH 4/6] phy: qualcomm: phy-qcom-qmp-ufs: Move data structs
 and setting tables to header
Message-ID: <20230921140220.GK1487598@hu-bjorande-lv.qualcomm.com>
References: <1694411968-14413-1-git-send-email-quic_cang@quicinc.com>
 <1694411968-14413-5-git-send-email-quic_cang@quicinc.com>
 <CAA8EJpoWnXeJKPB04kJW6Qo7ifAnt1u2ZSiq+W2HWOez=hi5gA@mail.gmail.com>
 <20230919121524.GD4732@thinkpad>
 <CAA8EJpoqRBxS7HJrFdRAvv677hKJw+d_K+fN_4ABDrj+68r28w@mail.gmail.com>
 <20230920101923.GG4732@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230920101923.GG4732@thinkpad>
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: YfF4KqDFNxfWFXT8NoXbB-7rgmKu3PLk
X-Proofpoint-ORIG-GUID: YfF4KqDFNxfWFXT8NoXbB-7rgmKu3PLk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-21_12,2023-09-21_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 mlxscore=0 suspectscore=0 adultscore=0
 bulkscore=0 mlxlogscore=809 malwarescore=0 phishscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2308100000
 definitions=main-2309210121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_070230_145884_D129CFE5 
X-CRM114-Status: GOOD (  11.36  )
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

On Wed, Sep 20, 2023 at 12:19:23PM +0200, Manivannan Sadhasivam wrote:
[..]
> Btw, why do we have "phy-qcom" prefix inside drivers/phy/qualcomm/?
> 

That would be a historical artifact, but it does provide nice
namespacing for the generated .ko files - and iirc mkinitcpio doesn't
automatically pick these up, so changing it would cause issues for our
users.

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

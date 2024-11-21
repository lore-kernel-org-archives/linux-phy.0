Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8ECBD75BC8
	for <linux-phy@archiver.kernel.org>; Thu, 21 Nov 2024 07:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xTiWs8kKJBJpTzfHknWTUNp586iISxKYUZ2o868HoYg=; b=KUWuF07gsYHkvb
	u8Qf8n8nsKwNYlO8uunzMWQBtwoE35bG/76d3C5fZ1mabFJsYpnektbGiHXfjTbp9z0ywQMfZV5Rk
	X4eqAzYN3tavKe+6mcouEjsdk+htn5dz9i97KqgBDFTuGd8n4itXzO+qRQL6INS8/Sx5OUknqNZRH
	RwkN+a0hqPL5GOi18xLsr+ChQaHfPbWwSbkqzSP/FrARYh1DIPuYz9ld1FlvYkSyXaB7jn5g5u5hy
	iIZN+LmulGs78gtCd+tZbfWPU5fftL4Dyif766IFQVBHm7PdiNdQEZuTszEtybS2CE8rPXS7y1QVG
	vp/GLkpkTu9tiQze4jLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tE1Vf-0000000H087-29Kk;
	Thu, 21 Nov 2024 07:21:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tE1Vd-0000000H07p-2URg
	for linux-phy@lists.infradead.org;
	Thu, 21 Nov 2024 07:21:50 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AKLAvUE029738;
	Thu, 21 Nov 2024 07:21:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pkKmEjGXFCbY89x8i0mw3RQnH+VKGzj9t1bJnyLFEHE=; b=X516MI4RxNdEEOb1
	fHl1mutsgpOzUlvSd/wr+CIiVPd0S2T83+ZzetEahMx6kghxyZWyse25eTeFAkvn
	Xbxto0OTIxrLvmx/xIYtppG5FCjoUF3fN3jePhL5U/+Lqmdsw1GgCSjbMIcIjH3X
	S4bVNxaS2V7101+Vnwflj62uDx+DVOn/e6OFFVAXSEBxkzW/gGyZn+T32lJYGH8w
	0A3jffkmOTh9iZBicWSrG0lE/OaWUU3NafdXmyN/SbeQeSQpjV6NJoD0d6rFjiaQ
	Jy2mn2jFgkO3M9+sn3P1Do4nOGlyv7QR8Arj8FmLsKrRlBuSI/4pDT0+rXM1D3Nt
	ajVZCA==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 431952bjwh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Nov 2024 07:21:40 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AL7LemR008152
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Nov 2024 07:21:40 GMT
Received: from [10.64.68.102] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 20 Nov
 2024 23:21:29 -0800
Message-ID: <294220b6-8359-4fe6-90d9-e52c363e6cfc@quicinc.com>
Date: Thu, 21 Nov 2024 15:21:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] phy: qcom: qmp: Add phy register and clk setting for
 QCS615 PCIe
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <manivannan.sadhasivam@linaro.org>, <bhelgaas@google.com>,
        <kw@linux.com>, <lpieralisi@kernel.org>, <quic_qianyu@quicinc.com>,
        <conor+dt@kernel.org>, <neil.armstrong@linaro.org>,
        <andersson@kernel.org>, <konradybcio@kernel.org>,
        <quic_shashim@quicinc.com>, <quic_kaushalk@quicinc.com>,
        <quic_tdas@quicinc.com>, <quic_tingweiz@quicinc.com>,
        <quic_aiquny@quicinc.com>, <kernel@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        "Krishna
 chaitanya chundru" <quic_krichai@quicinc.com>
References: <20241118082619.177201-1-quic_ziyuzhan@quicinc.com>
 <20241118082619.177201-3-quic_ziyuzhan@quicinc.com>
 <2rygkimclano4hcgf5vaz7eyuhcqdal5ybnh5eyci3ig2b5jcl@sq5ygemgdhwr>
Content-Language: en-US
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
In-Reply-To: <2rygkimclano4hcgf5vaz7eyuhcqdal5ybnh5eyci3ig2b5jcl@sq5ygemgdhwr>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 7n6VYEW1fwh8VjoS7PwYauQARe3DEPm4
X-Proofpoint-GUID: 7n6VYEW1fwh8VjoS7PwYauQARe3DEPm4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 lowpriorityscore=0 mlxscore=0 clxscore=1015 spamscore=0 malwarescore=0
 mlxlogscore=601 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411210056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241120_232149_637799_21AF74DC 
X-CRM114-Status: UNSURE (   5.42  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Will modified in v2

On 11/18/2024 7:15 PM, Dmitry Baryshkov wrote:
> lowercase the hex. LGTM otherwise.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

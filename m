Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF648C6FA82
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 22:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jO4EtY9vit9gyqaWwH7DAmNbJP5x8PRSUWQiLKqBPjM=; b=tGyBCVRzUtiMGs
	nadqig2Wj8mY2O18bXlnOQHZUVqcHpIzUrcf7uildxaaMMBaiqUszsq7tku4okOJ3bYd1ZWVwBksT
	I2P7HHSFPYYAOWOesSN3EmNzj3iUjMTPNKhHcntLZ3T2ntXYhzoWi0oErQs0hG8MKBECRuuhVMBMy
	dARUcbybEex2WkD+blHalBr54h909Cp2CgdtJGornXXt89/3qFCfUfZ3sHhp9tveDvaui45HEL2Tz
	DdZL3o/Iz2o/NxS4Y6xyCxxb+R+Lpi5SuXndCJ7CB2/su47zqbRb67ajHzmI4c3QhGH6vEibKLbaU
	S025XL50+/IhLPStuCPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oalIW-007HkH-0o; Tue, 20 Sep 2022 22:00:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oalIT-007Hji-EP
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 22:00:55 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28KLUtS0003059;
	Tue, 20 Sep 2022 22:00:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=sCPHhdMCA5UHEzDVmKfQItxqhOkn0UhphqOy3bvLSlY=;
 b=aP2K6xMOecVRnkDipxYmDQMCvYle551nW8K6wcM7lWsbm8Dk0/VpFrXFNcTNhXjLHZo4
 n+YkhIAAJ0B2KXDMMzcPJ8EaeaASktpzOoU62nXPny7gmMMiBoAdgqUnzIghQPaRNCQR
 RM8umCuw9Yw+Mh8J2t9r1sXzb2wY8+T8SRKQO2Vg10bvtuTMOmBIGqsd4BJTE2f5kRSy
 sqjU0SQdU7Aqw4iioDWlhq5PpZBL5Fym+hXyWWoNwpbZ6KL3hNFMYQF0YxETC4famiXj
 My5FvekJmFi9nysEp3pLBUoVIW67Jr9nP6PVNvlJoOiR2NBl56gQW0qtjRRrBYJzPFE3 cQ== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3jpxaemhu6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 22:00:44 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 28KM0iTd018361
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 22:00:44 GMT
Received: from [10.110.44.78] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Tue, 20 Sep
 2022 15:00:39 -0700
Message-ID: <86909e66-32a9-8f61-3d17-8356b5552597@quicinc.com>
Date: Tue, 20 Sep 2022 15:00:38 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v7 2/5] PCI: qcom: Add retry logic for link to be stable
 in either L1.1 or L1.2
Content-Language: en-US
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>, <helgaas@kernel.org>
CC: <linux-pci@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <mka@chromium.org>,
        <quic_vbadigan@quicinc.com>, <quic_hemantk@quicinc.com>,
        <quic_nitegupt@quicinc.com>, <quic_skananth@quicinc.com>,
        <quic_ramkri@quicinc.com>, <manivannan.sadhasivam@linaro.org>,
        <swboyd@chromium.org>, <dmitry.baryshkov@linaro.org>,
        <svarbanov@mm-sol.com>, <agross@kernel.org>, <andersson@kernel.org>,
        <konrad.dybcio@somainline.org>, <lpieralisi@kernel.org>,
        <robh@kernel.org>, <kw@linux.com>, <bhelgaas@google.com>,
        <linux-phy@lists.infradead.org>, <vkoul@kernel.org>, <kishon@ti.com>,
        <mturquette@baylibre.com>, <linux-clk@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
References: <1663669347-29308-1-git-send-email-quic_krichai@quicinc.com>
 <1663669347-29308-3-git-send-email-quic_krichai@quicinc.com>
From: Jeff Johnson <quic_jjohnson@quicinc.com>
In-Reply-To: <1663669347-29308-3-git-send-email-quic_krichai@quicinc.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: cIyxl9UDLqs_YPhZA0JINvBJ5dxUAQ1G
X-Proofpoint-ORIG-GUID: cIyxl9UDLqs_YPhZA0JINvBJ5dxUAQ1G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-20_10,2022-09-20_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 mlxlogscore=999
 adultscore=0 clxscore=1015 malwarescore=0 phishscore=0 impostorscore=0
 mlxscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209200134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_150053_521750_2C4B54E2 
X-CRM114-Status: GOOD (  27.26  )
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

On 9/20/2022 3:22 AM, Krishna chaitanya chundru wrote:
> When link is in L1ss(L1.1 or L1.2), all the clocks will gate off and there
> will be no activity on the link. At that point clocks and phy
> can be turned off. If clocks got disabled before link enters
> L1ss the PCIe link goes down.
> 
> Few endpoints are taking time more time to settle the link in L1 substates.

"time more time" does not parse

> When we check the traffic in protocol analyzer, we see some DLLP packets
> going on still. So Wait for max time of 200ms for the link to be stable in

s/Wait/wait/

> L1 substates.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
> changes since v6:
> 	- updated comments.
> ---
>   drivers/pci/controller/dwc/pcie-qcom.c | 46 ++++++++++++++++++++++++++--------
>   1 file changed, 35 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 3f5424a..7a6f69e 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1809,23 +1809,47 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>   static int __maybe_unused qcom_pcie_pm_suspend(struct qcom_pcie *pcie)
>   {
>   	u32 val;
> +	ktime_t timeout, start;
>   	struct dw_pcie *pci = pcie->pci;
>   	struct device *dev = pci->dev;
>   
> -	/* if the link is not active turn off clocks */
> -	if (!dw_pcie_link_up(pci)) {
> -		dev_dbg(dev, "Link is not active\n");
> -		goto suspend;
> -	}
> +	/*
> +	 * When link is in L1ss, all the clocks will gate off and
> +	 * there will be no activity on the link. At that point clocks
> +	 * and phy can be turned off. If clocks got disabled before
> +	 * link enters L1ss the PCIe link goes down.
> +	 *
> +	 * Few endpoints are taking time more time to settle the link

"time more time" does not parse

> +	 * in L1ss. Wait for max of 200ms for the link to be stable in
> +	 * L1ss.
> +	 */
> +	start = ktime_get();
> +	/* Wait max 200 ms */
> +	timeout = ktime_add_ms(start, 200);
> +
> +	while (1) {
> +		/* if the liink is not active turn off clocks */
> +		if (!dw_pcie_link_up(pci)) {
> +			dev_dbg(dev, "Link is not active\n");
> +			break;
> +		}
>   
> -	/* if the link is not in l1ss don't turn off clocks */
> -	val = readl(pcie->parf + PCIE20_PARF_PM_STTS);
> -	if (!(val & PCIE20_PARF_PM_STTS_LINKST_IN_L1SUB)) {
> -		dev_warn(dev, "Link is not in L1ss\n");
> -		return 0;
> +		/* if the link is not in l1ss don't turn off clocks */
> +		val = readl(pcie->parf + PCIE20_PARF_PM_STTS);
> +		if ((val & PCIE20_PARF_PM_STTS_LINKST_IN_L1SUB)) {
> +			dev_dbg(dev, "Link enters L1ss after %lld  ms\n",
> +					ktime_to_ms(ktime_get() - start));
> +			break;
> +		}
> +
> +		if (ktime_after(ktime_get(), timeout)) {
> +			dev_warn(dev, "Link is not in L1ss\n");
> +			return 0;
> +		}
> +
> +		udelay(1000);
>   	}
>   
> -suspend:
>   	if (pcie->cfg->ops->suspend)
>   		pcie->cfg->ops->suspend(pcie);
>   


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
